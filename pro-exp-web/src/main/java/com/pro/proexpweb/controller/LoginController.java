package com.pro.proexpweb.controller;

import com.hejun.lib.common.ObjectResponse;
import com.hejun.lib.common.OpenInterface;
import com.pro.exp.model.request.LoginForm;
import com.pro.exp.model.response.LoginResponse;
import com.pro.exp.service.LoginService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 22:28
 */
@RestController
@Api(value = "用户登录", tags = "基础功能-用户登录", description = "用户登录")
@RequestMapping("/api/login")
public class LoginController extends BaseController{

    @Autowired
    private LoginService loginService;

    @ApiOperation("系统登录")
    @OpenInterface
    @PostMapping("/")
    public ObjectResponse<LoginResponse> login(@RequestBody LoginForm form, HttpServletRequest request){
        checkParamNotNull(form);
        LoginResponse loginResponse = loginService.login(form);
        return response(loginResponse);
    }
}
