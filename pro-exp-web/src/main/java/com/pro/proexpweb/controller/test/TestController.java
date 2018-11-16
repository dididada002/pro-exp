package com.pro.proexpweb.controller.test;

import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 0:51
 */
@RestController
@Api(value = "申请类型管理", tags = "基础信息-申请-申请类型管理", description = "申请类型管理")
@RequestMapping("/api")
public class TestController {

    @GetMapping("/test")
    public String testMethod(){
        System.out.println("请求到达");
        return "test success";
    }
}
