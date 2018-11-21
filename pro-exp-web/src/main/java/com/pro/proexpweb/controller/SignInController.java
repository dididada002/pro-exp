package com.pro.proexpweb.controller;

import com.hejun.lib.util.GsonUtil;
import com.pro.exp.common.RedisKeys;
import com.pro.exp.model.request.SignInCheckForm;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.SendEmailService;
import com.pro.exp.service.utils.IDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/20 22:46
 */
@RestController
@RequestMapping("/api/sign/in")
public class SignInController extends BaseController{

    @Autowired
    RedisService redisService;

    @Autowired
    SendEmailService sendEmailService;

    @Value("${mail.active.baseurl}")
    String mailActiveUrl;


    private static final long expireTime = 5;

    /**
     * 通过email注册，将信息存入redis中待激活,并发送邮件
     * */
    @RequestMapping(value = "/by/email",method = RequestMethod.POST)
    public boolean signInByEmail(@RequestBody SignInCheckForm form,
                                 HttpServletResponse response){
        //1、先将信息存入redis中
        //1.1、生成一个随机码作为验证的key
        //todo 待考虑将key换为可以和注册用户绑定的标志，以防重复发验证码
        String id = IDUtil.generateID();
        //1.2、加工信息，存入redis中:用户名、密码、邮件地址、电话
        String userForm = GsonUtil.toJson(form);
        redisService.setHash(RedisKeys.USER_SIGN_IN_CHECK,id,userForm,expireTime);
        //2、发送邮件
        //2.1、生成验证地址
        String activecode = IDUtil.generateID();
        String activeUrl = mailActiveUrl+"?id="+id+"&code="+activecode;
        //2.2、给用户发送特定格式的邮件
        //todo

        return true;

    }
}











