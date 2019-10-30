package com.pro.exp.controller.test;

import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 0:51
 */
@RestController
@Api(value = "申请类型管理", tags = "基础信息-申请-申请类型管理", description = "申请类型管理")
@RequestMapping("/api")
public class TestController {
    @Value("${test}")
    private String testjingteng;

    @GetMapping("/test")
    public String testMethod(){
        System.out.println("请求到达");
        return "test success";
    }

    @PostMapping("/post/test")
    public String testPostMethod(@RequestBody Map map){
        System.out.println("请求到达");
        System.out.println(testjingteng);
        return "test success";
    }
}
