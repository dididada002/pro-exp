package com.pro.exp.controller.vue;

import com.pro.exp.common.HttpStatus;
import com.pro.exp.common.action.DeleteAction;
import com.pro.exp.common.action.InsertAction;
import com.pro.exp.common.action.SelectAction;
import com.pro.exp.common.action.UpdateAction;
import com.pro.exp.controller.BaseController;
import com.pro.exp.dao.entity.VueIcon;
import com.pro.exp.model.vo.Result;
import com.pro.exp.model.vo.ResultCode;
import com.pro.exp.model.vue.request.VueIconForm;
import com.pro.exp.model.vue.response.IconResponse;
import com.pro.exp.service.exception.ApiRuntimeException;
import com.pro.exp.service.vue.interfaces.VueIconService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author: jingteng
 * @date: 2019/12/2 9:59
 */
@Api(value = "Icon管理",tags = "Vue管理-首页Icon管理",description = "Icon管理")
@RestController
@RequestMapping("/api/vue/first/icon")
public class VueIconController extends BaseController {

    @Autowired
    private VueIconService service;

    @ApiOperation(value = "增加首页Icon")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/insert")
    @InsertAction
    public Result addIcon(@RequestBody VueIconForm form) {
        VueIcon bean = new VueIcon();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        Long id = service.insert(bean);
        return Result.success(id);
    }

    @ApiOperation(value = "获取首页Icon")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @GetMapping("/{id}")
    @SelectAction
    public Result getIcon(@PathVariable("id") Long id) {
        VueIcon bean = service.selectByPrimaryKey(id);
        IconResponse beanResponse = new IconResponse();
        if (bean == null) {
            throw new ApiRuntimeException(HttpStatus.NOT_FOUND, 2, "您查询的数据已删除");
        }
        BeanUtils.copyProperties(bean, beanResponse);
        return Result.success(beanResponse);
    }

    @ApiOperation(value = "删除首页Icon")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @DeleteMapping("/{id}")
    @DeleteAction
    public Result deleteIcon(@PathVariable("id") Long id) {
        boolean flag = service.deleteByPrimaryKey(id);
        return flag ? Result.success() : Result.failure(ResultCode.NO_CONTENT);
    }

    @ApiOperation(value = "更新首页Icon")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PutMapping("/{id}")
    @UpdateAction
    public Result updateIcon(@PathVariable("id") Long id,
                                                    @RequestBody VueIconForm form) {
        VueIcon bean = new VueIcon();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        bean.setId(id);
        service.updateByPrimaryKey(bean);
        return Result.success();
    }

}
