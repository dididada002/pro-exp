package com.pro.exp.model.vo;

import java.util.Map;

/**
 * @author: jingteng
 * @date: 2019/8/20 21:52
 */
public class WechatRequest {

    private String openid;
    private String appId;
    private String secret;
    private String templateId;
    private Map<String,TemplateData> mapdata;

    public Map<String, TemplateData> getMapdata() {
        return mapdata;
    }

    public void setMapdata(Map<String, TemplateData> mapdata) {
        this.mapdata = mapdata;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public String getTemplateId() {
        return templateId;
    }

    public void setTemplateId(String templateId) {
        this.templateId = templateId;
    }
}
