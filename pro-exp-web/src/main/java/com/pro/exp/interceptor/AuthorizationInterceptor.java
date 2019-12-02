package com.pro.exp.interceptor;

import com.pro.exp.exception.JTException;
import com.pro.exp.service.utils.StringUtils;
import com.pro.exp.utils.JwtUtil;
import io.jsonwebtoken.Claims;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: jingteng
 * @date: 2019/11/26 21:29
 */
@Component
public class AuthorizationInterceptor extends HandlerInterceptorAdapter {

    private Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private JwtUtil jwtUtil;

    public static final String USER_KEY = "userId";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object o){

        String token = request.getHeader(jwtUtil.getHeader());
        if (StringUtils.isBlank(token)){
            token = request.getParameter(jwtUtil.getHeader());
        }

        if (StringUtils.isBlank(token)){
            throw  new JTException(jwtUtil.getHeader() + "不能为空", HttpStatus.UNAUTHORIZED.value());
        }
        Claims claims = jwtUtil.getClaimByToken(token);
        if (claims == null || jwtUtil.isTokenExpired(claims.getExpiration())){
            throw new JTException(jwtUtil.getHeader() + "失效，请重新登录",HttpStatus.UNAUTHORIZED.value());
        }
        Long userId = Long.valueOf(claims.get("userId", Integer.class));
        request.setAttribute(USER_KEY,userId);
        return true;
    }

}
