package com.pro.exp.config;

import com.pro.exp.service.utils.SpringContextUtil;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 23:45
 */
@Component
@Lazy(value = false)
@Log4j2
public class SpringBeanLoad extends SpringContextUtil implements ApplicationContextAware, DisposableBean {
    /**
     * 清除SpringContextUtil中的ApplicationContext为Null.
     */
    private static void clearHolder() {
        if (log.isDebugEnabled()) {
            log.info("清除SpringContextUtil中的ApplicationContext:" + getContext());
        }
        setContext(null);
    }

    /**
     * 实现ApplicationContextAware接口, 注入Context到静态变量中.
     */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) {
        setContext(applicationContext);
    }

    /**
     * 实现DisposableBean接口, 在Context关闭时清理静态变量.
     */
    @Override
    public void destroy() {
        clearHolder();
    }
}
