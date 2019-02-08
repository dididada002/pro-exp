package com.pro.proexpweb.controller.base;

import com.github.pagehelper.PageInfo;
import com.pro.exp.common.HttpStatus;
import com.pro.exp.common.ObjectResponse;
import com.pro.exp.common.PagedResponse;
import com.pro.exp.common.action.DeleteAction;
import com.pro.exp.common.action.InsertAction;
import com.pro.exp.common.action.SelectAction;
import com.pro.exp.common.action.UpdateAction;
import com.pro.exp.dao.entity.BaseNoticeType;
import com.pro.exp.model.example.BaseSelectForm;
import com.pro.exp.model.request.BaseNoticeTypeForm;
import com.pro.exp.model.response.BaseNoticeTypeResponse;
import com.pro.exp.model.response.IDResponse;
import com.pro.exp.service.BaseExampleService;
import com.pro.exp.service.base.interfaces.BaseNoticeTypeService;
import com.pro.exp.service.exception.ApiRuntimeException;
import com.pro.proexpweb.controller.BaseController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 23:00
 */
@RestController
@Api(value = "通知公告类型管理",tags = "基础管理-通知公告类型管理",description = "通知公告类型管理")
@RequestMapping("/api/base/notice/type")
public class BaseNoticeTypeController extends BaseController {

    @Autowired
    BaseNoticeTypeService service;

    @Autowired
    BaseExampleService baseExampleService;


    @ApiOperation(value = "增加基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/")
    @InsertAction
    public ObjectResponse<IDResponse> addRole(@RequestBody BaseNoticeTypeForm form,
                                              HttpServletRequest request, HttpServletResponse response) {
        BaseNoticeType bean = new BaseNoticeType();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        bean.setSysCreatedby(getEmployeeInfo(request).getSysEmployeeId());
        String id = service.insert(bean);
        response.setStatus(HttpStatus.CREATED);
        return response(new IDResponse(id));
    }

    @ApiOperation(value = "获取基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @GetMapping("/{id}")
    @SelectAction
    public ObjectResponse<BaseNoticeTypeResponse> getSysRole(@PathVariable("id") String id) {
        BaseNoticeType bean = service.selectByPrimaryKey(id);
        BaseNoticeTypeResponse beanResponse = new BaseNoticeTypeResponse();
        if (bean == null) {
            throw new ApiRuntimeException(HttpStatus.NOT_FOUND, 2, "您查询的数据已删除");
        }
        BeanUtils.copyProperties(bean, beanResponse);
        return response(beanResponse);
    }

    @ApiOperation(value = "删除基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @DeleteMapping("/{id}")
    @DeleteAction
    public ObjectResponse<?> deleteSysRole(@PathVariable("id") String id, HttpServletResponse response) {
        boolean flag = service.deleteByPrimaryKey(id);
        response.setStatus(flag ? HttpStatus.NO_CONTENT : HttpStatus.INTERNAL_SERVER_ERROR);
        return response(flag);
    }

    @ApiOperation(value = "更新基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PutMapping("/{id}")
    @UpdateAction
    public ObjectResponse<IDResponse> updateSysRole(@PathVariable("id") String id,
                                                    @RequestBody BaseNoticeTypeForm form,
                                                    HttpServletRequest request, HttpServletResponse response) {
        BaseNoticeType bean = new BaseNoticeType();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        bean.setSysUpdatedby(getEmployeeInfo(request).getSysEmployeeId());
        bean.setBaseNoticeTypeId(id);
        service.updateByPrimaryKey(bean);
        response.setStatus(HttpStatus.CREATED);
        return response(new IDResponse(id));
    }

    @ApiOperation(value = "条件查询基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/query")
    @SelectAction
    public PagedResponse<BaseNoticeTypeResponse> querySysRole(@RequestBody BaseSelectForm form, HttpServletResponse response) {
        form.setClassName("BaseNoticeType");
        PageInfo<Map<String, Object>> list = baseExampleService.selectByPrimary(form);
        PageInfo<BaseNoticeTypeResponse> pageInfo = new PageInfo<>();
        BeanUtils.copyProperties(list, pageInfo);
        return pageResponse(pageInfo);
    }
}
