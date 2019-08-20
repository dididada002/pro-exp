package com.pro.exp.controller;

import com.pro.exp.model.biz.EmployeeInfo;
import com.pro.exp.model.vo.TemplateData;
import com.pro.exp.model.vo.WechatRequest;
import com.pro.exp.utils.WechatUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: jingteng
 * @date: 2019/8/20 21:50
 */
@RestController
@Api(value = "用户注册" , tags = "基础功能-用户注册",description = "用户注册功能")
@RequestMapping("/wechat")
public class WechatController {



    @Value("${httpService.sendWechat.appId}")
    String wechatAppId;

    @Value("${httpService.sendWechat.secret}")
    String wechatSecret;

    @Value("${httpService.sendWechat.templateId}")
    String templateId;


    @ApiOperation("公众号发送模板消息")
    @RequestMapping(value = "/send/open/template/msg",method = RequestMethod.POST)
    public void sendMsg(){
        WechatRequest wechatRequest = new WechatRequest();
        wechatRequest.setAppId(wechatAppId);
        String openId = "demo";
        wechatRequest.setOpenid(openId);
        wechatRequest.setSecret(wechatSecret);
        wechatRequest.setTemplateId(templateId);
        //封装模板数据
        EmployeeInfo s = new EmployeeInfo();
        Map<String, TemplateData> mapdata = warpMapDate(s);
        wechatRequest.setMapdata(mapdata);
        WechatUtil.sendWechat(wechatRequest);
    }


    private Map<String,TemplateData> warpMapDate(EmployeeInfo s) {
        Map<String, TemplateData> mapdata = new HashMap<>();
        TemplateData first = new TemplateData();
        first.setValue("模板显示的值");
        first.setColor("#173177");
        mapdata.put("first", first);

        TemplateData keyword1 = new TemplateData();
        keyword1.setValue(s.getSysEmployeeId());
        keyword1.setColor("#173177");
        mapdata.put("keyword1", keyword1);

        return mapdata;
    }

}
