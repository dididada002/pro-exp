package com.pro.exp.service.pay.config;

/**
 * @author: jingteng
 * @date: 2019/7/30 18:11
 */
public class AliPayConfig {


    // 1.商户appid
    public static String APPID = "XXXXXXX";

    //2.私钥 pkcs8格式的
    public static String RSA_PRIVATE_KEY ="XXXXX";

    // 3.支付宝公钥
    public static String ALIPAY_PUBLIC_KEY = "xxxxxx";

    // 4.服务器异步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "xxxx";

    //5.页面跳转同步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问 商户可以自定义同步跳转地址
    public static String return_url = "xxxxxxx";

    // 6.请求支付宝的网关地址
    public static String URL = "xxxxxxxo";

    // 7.编码
    public static String CHARSET = "UTF-8";

    // 8.返回格式
    public static String FORMAT = "json";

    // 9.加密类型
    public static String SIGNTYPE = "RSA2";
}
