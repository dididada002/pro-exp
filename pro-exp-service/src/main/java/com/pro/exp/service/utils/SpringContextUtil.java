package com.pro.exp.service.utils;

import lombok.extern.log4j.Log4j2;
import org.springframework.context.ApplicationContext;

@Log4j2
public abstract class SpringContextUtil {

    private static ApplicationContext context = null;

    /**
     * @param applicationContext
     */
    protected static void setContext(ApplicationContext applicationContext) {
        context = applicationContext;
    }

    /**
     *
     */
    protected static ApplicationContext getContext() {
        return context;
    }

    /**
     * 获取Spring管理的Bean
     *
     * @param clazz
     * @return
     */
    public synchronized static <T> T getBean(Class<T> clazz) {
        return context.getBean(clazz);
    }

    /**
     * 获取Spring配置属性
     *
     * @param key
     * @return
     */
    public synchronized static String getProperty(String key) {
        return context.getEnvironment().getProperty(key);
    }
}
