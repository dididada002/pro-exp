package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/19 11:11
 */
@ApiModel("登录后的角色信息")
@Data
public class RoleResponse {

    @ApiModelProperty(value="角色ID")
    private String roleId;

    @ApiModelProperty(value="角色名称")
    private String roleName;

    @ApiModelProperty(value="角色操作权限列表")
    private List<SysPowerResponse> sysPowerResponseList;

    @ApiModelProperty(value="角色资源列表")
    private List<SysResourceResponse> sysResourceResponseList;
}
