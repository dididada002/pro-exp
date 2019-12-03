package com.pro.exp.exception;

import com.pro.exp.vo.R;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @author: jingteng
 * 备注：自定义全局异常处理器
 */
@RestControllerAdvice
public class JTExceptionHandler {
    private Logger log = LoggerFactory.getLogger(getClass());

    /**
     * 处理自定义异常
     * */
    @ExceptionHandler(JTException.class)
    public R handleJTException(JTException e){
        R r = new R();
        r.put("code",e.getCode());
        r.put("msg",e.getMsg());
        log.error(e.getMessage(),e);
        return r;
    }
}














