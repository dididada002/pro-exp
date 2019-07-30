package com.pro.exp.controller;

import com.pro.exp.common.HttpStatus;
import com.pro.exp.common.RedisKeys;
import com.pro.exp.dao.entity.RedisCheckUserInfo;
import com.pro.exp.dao.entity.SysEmployee;
import com.pro.exp.model.request.SignInCheckForm;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.SendEmailService;
import com.pro.exp.service.sys.interfaces.SysEmployeeService;
import com.pro.exp.service.utils.GsonUtil;
import com.pro.exp.service.utils.IDUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.servlet.http.HttpServletResponse;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/20 22:46
 */
@RestController
@Api(value = "用户注册" , tags = "基础功能-用户注册",description = "用户注册功能")
@RequestMapping("/api/sign/in")
public class SignInController extends BaseController{

    @Autowired
    RedisService redisService;

    @Autowired
    SendEmailService sendEmailService;

    @Value("${mail.active.baseurl}")
    String mailActiveUrl;

    @Autowired
    private TemplateEngine templateEngine;

    @Autowired
    SysEmployeeService sysEmployeeService;

    private static final long expireTime = 10;

    /**
     * 通过email注册，将信息存入redis中待激活,并发送邮件
     * */
    @ApiOperation("用户通过email注册")
    @RequestMapping(value = "/by/email",method = RequestMethod.POST)
    public boolean signInByEmail(@RequestBody SignInCheckForm form,
                                 HttpServletResponse response){
        //验证人事是否已经入库
        String email = form.getEmail();
        SysEmployee sysEmployee =sysEmployeeService.selectByEmail(email);
        if (sysEmployee != null){

            //1、先将信息存入redis中
            //1.1、生成一个随机码作为验证的key

            //todo 待考虑将key换为可以和注册用户绑定的标志，以防重复发验证码
            String id = IDUtil.generateID();
            //1.2、加工信息，存入redis中:用户名、密码、邮件地址、电话
            RedisCheckUserInfo redisCheckUserInfo = new RedisCheckUserInfo();
            BeanUtils.copyProperties(form,redisCheckUserInfo);
            //2、发送邮件
            //2.1、生成验证地址
            String activecode = IDUtil.generateID();
            redisCheckUserInfo.setCode(activecode);
            String s = GsonUtil.toJson(redisCheckUserInfo);
            redisService.set(RedisKeys.USER_SIGN_IN_CHECK+id,s,10*60*1000);
            String activeUrl = mailActiveUrl+"?id="+id+"&code="+activecode;
            //2.2、给用户发送特定格式的邮件
            //todo
            Context context = new Context();
            context.setVariable("code",activeUrl);
            String template = templateEngine.process("emailTemplate", context);
            sendEmailService.sendHtmlMail(form.getEmail(),"用户注册",template);
        }else {
            response.setStatus(HttpStatus.UNAUTHORIZED);
            return false;
        }
        return true;

    }
}











