package com.pro.proexpweb.controller;

import com.pro.exp.common.HttpStatus;
import com.pro.exp.common.RedisKeys;
import com.pro.exp.common.interfaces.OpenInterface;
import com.pro.exp.dao.entity.RedisCheckUserInfo;
import com.pro.exp.dao.entity.SysEmployee;
import com.pro.exp.dao.entity.SysEmployeeVerification;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.sys.interfaces.SysEmployeeService;
import com.pro.exp.service.sys.interfaces.SysEmployeeVerificationService;
import com.pro.exp.service.utils.GsonUtil;
import com.pro.exp.service.utils.StringUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/23 15:40
 */
@RestController
@Api(value = "用户登录注册验证", tags = "基础功能-登录注册验证", description = "用户登录和注册的验证")
@RequestMapping("/api/active")
public class ActiveAccountController extends BaseController{

    @Autowired
    RedisService redisService;

    @Autowired
    SysEmployeeVerificationService sysEmployeeVerificationService;

    @Autowired
    SysEmployeeService sysEmployeeService;

    @ApiOperation("验证邮箱注册的验证码")
    @OpenInterface
    @GetMapping("/by/email")
    public String activeByEmail(String id , String code, HttpServletResponse response){
        //todo
        String s = redisService.get(RedisKeys.USER_SIGN_IN_CHECK+id);
        if (StringUtils.isNotEmpty(s) ){
            RedisCheckUserInfo redisCheckUserInfo = GsonUtil.toBean(s, RedisCheckUserInfo.class);
            if (redisCheckUserInfo.getCode().equals(code)){
                //如果验证码匹配，跳到登录页面
                response.setStatus(HttpStatus.OK);
                //执行其他后续操作:1、删除redis中的这条数据，2、将这条用户的数据入库
                String employeeId = inputUserInfoToMySql(redisCheckUserInfo ,id);
                return "注册成功";
            }
        }
        //如果验证码不匹配，跳到注册页面
        response.setStatus(HttpStatus.UNAUTHORIZED);
        return "注册失败";
    }

    //验证成功后，将redis中的该条数据清空，并将人员数据初步入库
    private String inputUserInfoToMySql(RedisCheckUserInfo redisCheckUserInfo ,String id) {
        boolean delete = redisService.delete(RedisKeys.USER_SIGN_IN_CHECK + id);
        SysEmployee sysEmployee = sysEmployeeService.selectByEmail(redisCheckUserInfo.getEmail());
        SysEmployeeVerification verify = new SysEmployeeVerification();
        verify.setSysEmployeeId(sysEmployee.getSysEmployeeId());
        verify.setSysEmployeeEmail(redisCheckUserInfo.getEmail());
        verify.setSysEmployeePassword(redisCheckUserInfo.getPassword());
        return sysEmployeeVerificationService.insert(verify);
    }
}
