package com.pro.exp.service;

import com.pro.exp.model.request.LoginForm;
import com.pro.exp.model.response.LoginResponse;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 1:05
 */
public interface LoginService {
    LoginResponse login(LoginForm form);
}
