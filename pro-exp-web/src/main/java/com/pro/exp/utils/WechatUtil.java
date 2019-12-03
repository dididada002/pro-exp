package com.pro.exp.utils;

import com.pro.exp.model.vo.TemplateData;
import com.pro.exp.model.vo.WechatRequest;
import com.pro.exp.model.vo.WechatTemplate;
import com.pro.exp.service.utils.GsonUtil;
import com.pro.exp.service.utils.HttpClientUtil;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/**
 * Description: sms-mail-service
 * Created by JT on 2018/10/24 14:18
 */
public  class WechatUtil {
    //从微信后台拿到APPID和APPSECRET 并封装为常量

    public static String getAccessToken(String APPID, String APPSECRET) throws Exception{
        String accessTokenUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
                +APPID+ "&secret="+APPSECRET;
        System.out.println("URL for getting accessToken accessTokenUrl="+accessTokenUrl);

        URL url = new URL(accessTokenUrl);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();

        connection.setRequestMethod("GET");
        connection.setDoOutput(true);
        connection.setDoInput(true);
        connection.connect();

        //获取返回的字符
        InputStream inputStream = connection.getInputStream();
        int size =inputStream.available();
        byte[] bs =new byte[size];
        inputStream.read(bs);
        String message=new String(bs,"UTF-8");

        //获取access_token
        Map<String, String> jsonObject = GsonUtil.toStringMap(message);
        String accessToken = jsonObject.get("access_token");
        String expires_in = jsonObject.get("expires_in");
        System.out.println("accessToken="+accessToken);
        System.out.println("expires_in="+expires_in);
        return accessToken;
    }

    public static void sendWechat(WechatRequest wechatRequest){
        String appId = wechatRequest.getAppId();
        String openid = wechatRequest.getOpenid();
        String secret = wechatRequest.getSecret();
        String template_id = wechatRequest.getTemplateId();
        // 获取基础支持的access_token
        System.out.println(template_id);
        String access_token = null;
        try {
            access_token = getAccessToken(appId,secret);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 发送模板消息
        String resultUrl2 = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token="+access_token;
        // 封装基础数据
        WechatTemplate wechatTemplate = new WechatTemplate();
        wechatTemplate.setTemplate_id(template_id);
        wechatTemplate.setTouser(openid);
        Map<String, TemplateData> mapdata = wechatRequest.getMapdata();
        wechatTemplate.setData(mapdata);
        String toString = GsonUtil.toJson(wechatTemplate);
        System.out.println(toString);
        String s = null;
        try {
            s = HttpClientUtil.sendPostDataByJson(resultUrl2, GsonUtil.toJson(wechatTemplate), "utf-8");
            System.out.println(s);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
