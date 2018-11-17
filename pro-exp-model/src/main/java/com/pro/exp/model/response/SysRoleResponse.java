package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:20
 */
@ApiModel("角色基础信息表返回")
@Data
public class SysRoleResponse implements Serializable {

    @ApiModelProperty(value = "角色名称")
    private String sysRoleName;
    @ApiModelProperty(value = "角色id")
    private String sysRoleId;

    @ApiModelProperty(value = "人员类型指定编码")
    private String sysEmployeeTypeCode;

    @ApiModelProperty(value = "集团名称")
    private String sysGroupName;

    @ApiModelProperty(value = "公司编码")
    private String sysCompanyId;

    @ApiModelProperty(value = "公司名称")
    private String sysCompanyName;

    @ApiModelProperty(value = "部门编码")
    private String sysDepartmentId;

    @ApiModelProperty(value = "部门名称")
    private String sysDepartmentName;

    @ApiModelProperty(value = "项目小组编码")
    private String sysUnitId;

    @ApiModelProperty(value = "项目小组名称")
    private String sysUnitName;

    @ApiModelProperty(value = "创建时间", notes = "时间戳，比如：1527998197619")
    private Date sysCreated;

    @ApiModelProperty("创建人ID")
    private String sysCreatedby;

    @ApiModelProperty("创建人名称")
    private String sysCreatedbyName;

    @ApiModelProperty(value = "更新时间", notes = "时间戳，比如：1527998197619")
    private Date sysUpdated;

    @ApiModelProperty("修改人ID")
    private String sysUpdatedby;

    @ApiModelProperty("修改人名称")
    private String sysUpdatedbyName;

    @ApiModelProperty(value = "备注")
    private String sysRemark;

    @ApiModelProperty(value="是否活动")
    private String sysIsactive;
}
