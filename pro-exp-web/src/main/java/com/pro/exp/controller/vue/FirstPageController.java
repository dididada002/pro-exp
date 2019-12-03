package com.pro.exp.controller.vue;

import com.pro.exp.controller.BaseController;
import com.pro.exp.model.vo.Result;
import com.pro.exp.model.vue.response.FirstVueResponse;
import com.pro.exp.service.vue.interfaces.VueFirstPageService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: jingteng
 * @date: 2019/11/13 20:46
 */
@RestController
@Api(value = "首页接口", tags = "vue-首页", description = "首页")
@RequestMapping("/api/firstpage")
public class FirstPageController extends BaseController {

    @Autowired
    private VueFirstPageService firstPageService;

    @GetMapping("/msg")
    public Result msg(){
        FirstVueResponse response = firstPageService.getFirstPageMsg();
        return Result.success(response);
    }

}
