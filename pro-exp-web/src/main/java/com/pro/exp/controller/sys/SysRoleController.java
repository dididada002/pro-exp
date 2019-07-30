package com.pro.exp.controller.sys;

import com.github.pagehelper.PageInfo;
import com.pro.exp.common.HttpStatus;
import com.pro.exp.common.ObjectResponse;
import com.pro.exp.common.PagedResponse;
import com.pro.exp.common.action.DeleteAction;
import com.pro.exp.common.action.InsertAction;
import com.pro.exp.common.action.SelectAction;
import com.pro.exp.common.action.UpdateAction;
import com.pro.exp.dao.entity.SysRole;
import com.pro.exp.model.example.BaseSelectForm;
import com.pro.exp.model.request.SysRoleForm;
import com.pro.exp.model.response.IDResponse;
import com.pro.exp.model.response.SysRoleResponse;
import com.pro.exp.service.BaseExampleService;
import com.pro.exp.service.exception.ApiRuntimeException;
import com.pro.exp.service.sys.interfaces.SysRoleService;
import com.pro.exp.controller.BaseController;
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
 * Created by JT on 2018/11/17 23:55
 */
@RestController
@Api(value = "角色管理", tags = "系统权限-角色管理", description = "角色管理")
@RequestMapping("/api/sys/role")
public class SysRoleController extends BaseController {

    @Autowired
    SysRoleService service;
    @Autowired
    BaseExampleService baseExampleService;


    @ApiOperation(value = "增加基础角色")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/")
    @InsertAction
    public ObjectResponse<IDResponse> addRole(@RequestBody SysRoleForm form,
                                              HttpServletRequest request, HttpServletResponse response) {
        SysRole bean = new SysRole();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        bean.setSysCreatedby(getEmployeeInfo(request).getSysEmployeeId());
        String id = service.insert(bean);
        response.setStatus(HttpStatus.CREATED);
        return response(new IDResponse(id));
    }

    @ApiOperation(value = "获取基础角色")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @GetMapping("/{id}")
    @SelectAction
    public ObjectResponse<SysRoleResponse> getSysRole(@PathVariable("id") String id) {
        SysRole sysRole = service.selectByPrimaryKey(id);
        SysRoleResponse sysRoleResponse = new SysRoleResponse();
        if (sysRole == null) {
            throw new ApiRuntimeException(HttpStatus.NOT_FOUND, 2, "您查询的数据已删除");
        }
        BeanUtils.copyProperties(sysRole, sysRoleResponse);
        return response(sysRoleResponse);
    }

    @ApiOperation(value = "删除基础角色")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @DeleteMapping("/{id}")
    @DeleteAction
    public ObjectResponse<?> deleteSysRole(@PathVariable("id") String id, HttpServletResponse response) {
        boolean flag = service.deleteByPrimaryKey(id);
        response.setStatus(flag ? HttpStatus.NO_CONTENT : HttpStatus.INTERNAL_SERVER_ERROR);
        return response(flag);
    }

    @ApiOperation(value = "更新基础角色")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PutMapping("/{id}")
    @UpdateAction
    public ObjectResponse<IDResponse> updateSysRole(@PathVariable("id") String id,
                                                    @RequestBody SysRoleForm form,
                                                    HttpServletRequest request, HttpServletResponse response) {
        SysRole bean = new SysRole();
        checkParamNotNull(form);
        BeanUtils.copyProperties(form, bean);
        bean.setSysUpdatedby(getEmployeeInfo(request).getSysEmployeeId());
        bean.setSysRoleId(id);
        service.updateByPrimaryKey(bean);
        response.setStatus(HttpStatus.CREATED);
        return response(new IDResponse(id));
    }

    @ApiOperation(value = "条件查询基础角色")
    @ApiImplicitParam(name = "pr-token", value = "登录凭证", required = true, paramType = "header")
    @PostMapping("/query")
    @SelectAction
    public PagedResponse<SysRoleResponse> querySysRole(@RequestBody BaseSelectForm form, HttpServletResponse response) {
        form.setClassName("SysRole");
        PageInfo<Map<String, Object>> list = baseExampleService.selectByPrimary(form);
        PageInfo<SysRoleResponse> pageInfo = new PageInfo<>();
        BeanUtils.copyProperties(list, pageInfo);
        return pageResponse(pageInfo);
    }
}
