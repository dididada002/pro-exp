package com.pro.exp.service.pay.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author: jingteng
 * @date: 2019/7/30 18:31
 */
@Component
@ConfigurationProperties(prefix = "appacc.paywx")
public class PayConfig {


    public static String GOOD_NAME = "dididada002";


    public static String getGoodName() {
        return GOOD_NAME;
    }

    public static void setGoodName(String goodName) {
        GOOD_NAME = goodName;
    }
}
