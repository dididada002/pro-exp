package com.pro.exp.aspect;

import com.aliyun.openservices.shade.com.alibaba.fastjson.JSON;
import com.pro.exp.service.utils.GsonUtil;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @author: jingteng
 * @date: 2019/4/24 18:28
 * 对接口的访问进行日志记录
 */
@Slf4j
@Aspect
@Component
public class OperateLogAspect {

    @Autowired(required=false)
    HttpServletRequest request;

    @Pointcut(value = "execution(* com.pro.exp.controller.*.*.* (..))")
    public void log(){}

    @AfterReturning(value = "log()",returning = "returnValue")
    public void logOperate(JoinPoint joinPoint,Object returnValue){
        StringBuffer stringBuffer = new StringBuffer();
        //获取方法的参数
        Object[] args = joinPoint.getArgs();
        //获取方法的路径
        String requestURI = request.getRequestURI();
        stringBuffer.append(" requestURI : ");
        stringBuffer.append(requestURI);
        //获取请求的IP地址
        String ip = request.getRemoteHost();
        stringBuffer.append(" , ip : ");
        stringBuffer.append(ip);
        //获取请求的方法类型
        String methodType = request.getMethod();
        stringBuffer.append(" , methodType : ");
        stringBuffer.append(methodType);
        //获取方法的类名和方法名
        Signature signature = joinPoint.getSignature();
        String methodName = signature.getName();//方法名
        stringBuffer.append(" , methodName : ");
        stringBuffer.append(methodName);
        String className = signature.getDeclaringTypeName();//当前代理对象的简单类名
        stringBuffer.append(" , className : ");
        stringBuffer.append(className);
        for (int i = 0 ; i< args.length ; i++){
            //日志记录参数
            String s = GsonUtil.toJson(args[i]);
            stringBuffer.append(" , param number : ");
            stringBuffer.append(i+1);
            stringBuffer.append(" , param value : ");
            stringBuffer.append(s);

        }
        if (returnValue != null) {
            stringBuffer.append(",返回值： ");
            stringBuffer.append(JSON.toJSONString(returnValue));
        }
        //记录日志
        String logStr = stringBuffer.toString();
        log.info(logStr);
    }

}
