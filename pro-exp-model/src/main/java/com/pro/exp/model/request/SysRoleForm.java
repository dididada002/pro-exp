package com.pro.exp.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:18
 */
@ApiModel("角色基础信息表")
@Data
public class SysRoleForm {

    @ApiModelProperty(value = "角色名称", required = true)
    private String sysRoleName;

    @ApiModelProperty(value = "人员类型指定编码")
    private String sysEmployeeTypeCode;

    @ApiModelProperty(value = "备注")
    private String sysRemark;

}
