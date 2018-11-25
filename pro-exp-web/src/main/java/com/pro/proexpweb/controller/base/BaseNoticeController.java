package com.pro.proexpweb.controller.base;

import com.github.pagehelper.PageInfo;
import com.hejun.lib.common.HttpStatus;
import com.hejun.lib.common.ObjectResponse;
import com.hejun.lib.common.PagedResponse;
import com.hejun.lib.common.exception.ApiRuntimeException;
import com.pro.exp.common.action.DeleteAction;
import com.pro.exp.common.action.InsertAction;
import com.pro.exp.common.action.SelectAction;
import com.pro.exp.common.action.UpdateAction;
import com.pro.exp.dao.entity.BaseNotice;
import com.pro.exp.model.example.BaseSelectForm;
import com.pro.exp.model.request.BaseNoticeForm;
import com.pro.exp.model.response.BaseNoticeResponse;
import com.pro.exp.model.response.IDResponse;
import com.pro.exp.service.BaseExampleService;
import com.pro.exp.service.base.interfaces.BaseNoticeService;
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
 * Created by JT on 2018/11/25 22:40
 */
@Api(value = "通知管理",tags = "基础管理-通知公告管理",description = "通知管理")
@RestController
@RequestMapping("/api/base/notice")
public class BaseNoticeController extends BaseController {

    @Autowired
    BaseNoticeService service;

    @Autowired
    BaseExampleService baseExampleService;


    @ApiOperation(value = "增加基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/")
    @InsertAction
    public ObjectResponse<IDResponse> addRole(@RequestBody BaseNoticeForm form,
                                              HttpServletRequest request, HttpServletResponse response) {
        BaseNotice bean = new BaseNotice();
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
    public ObjectResponse<BaseNoticeResponse> getSysRole(@PathVariable("id") String id) {
        BaseNotice bean = service.selectByPrimaryKey(id);
        BaseNoticeResponse beanResponse = new BaseNoticeResponse();
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
                                                    @RequestBody BaseNoticeForm form,
                                                    HttpServletRequest request, HttpServletResponse response) {
        BaseNotice bean = new BaseNotice();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        bean.setSysUpdatedby(getEmployeeInfo(request).getSysEmployeeId());
        bean.setBaseNoticeId(id);
        service.updateByPrimaryKey(bean);
        response.setStatus(HttpStatus.CREATED);
        return response(new IDResponse(id));
    }

    @ApiOperation(value = "条件查询基础通知公告")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/query")
    @SelectAction
    public PagedResponse<BaseNoticeResponse> querySysRole(@RequestBody BaseSelectForm form, HttpServletResponse response) {
        form.setClassName("BaseNotice");
        PageInfo<Map<String, Object>> list = baseExampleService.selectByPrimary(form);
        PageInfo<BaseNoticeResponse> pageInfo = new PageInfo<>();
        BeanUtils.copyProperties(list, pageInfo);
        return pageResponse(pageInfo);
    }
}
