package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 22:26
 */
@ApiModel("人员基础信息表返回")
@Data
public class SysEmployeeResponse {

    @ApiModelProperty(value = "人员工号")
    private String sysEmployeeId;

    @ApiModelProperty(value = "人员的真实名称")
    private String sysEmployeeName;

    @ApiModelProperty(value = "人员的论坛昵称")
    private String sysEmployeeNickname;

    @ApiModelProperty(value = "身份证号")
    private String idCard;

    @ApiModelProperty(value = "员工曾用名")
    private String sysEmployeeNameBefore;

    @ApiModelProperty(value = "员工出生日期")
    private Date sysEmployeeBirthday;

    @ApiModelProperty(value = "人员民族")
    private String sysEmployeeNation;

    @ApiModelProperty(value = "人员户口类型")
    private String sysEmployeeHouseholdType;

    @ApiModelProperty(value = "人员婚姻状况，0：未婚，1：已婚")
    private String sysEmployeeMarry;

    @ApiModelProperty(value = "人员籍贯")
    private String sysEmployeeNativePlace;

    @ApiModelProperty(value = "人员户籍所在地")
    private String sysEmployeeHouseholdAddr;

    @ApiModelProperty(value = "人员现居住地")
    private String sysEmployeeLiveAddr;

    @ApiModelProperty(value = "人员政治面貌")
    private String sysEmployeePolitic;

    @ApiModelProperty(value = "直接上级工号")
    private String sysEmployeeUp;

    @ApiModelProperty(value = "人员办公地点")
    private String sysEmployeeWorkAddr;

    @ApiModelProperty(value = "人员办公电话")
    private String sysEmployeeWorkMobile;

    @ApiModelProperty(value = "入职时间")
    private Date sysEmployeeEntryDate;

    @ApiModelProperty(value = "转正时间")
    private Date sysEmployeeConfirmDate;

    @ApiModelProperty(value = "岗位id")
    private String sysPostId;

    @ApiModelProperty(value = "性别， 女为0 ，男为1")
    private String sex;

    @ApiModelProperty(value = "人员邮箱")
    private String sysEmployeeEmail;

    @ApiModelProperty(value = "微信号")
    private String sysEmployeeWechat;

    @ApiModelProperty(value = "人员手机号")
    private String sysEmployeeMobile;

    @ApiModelProperty(value = "部门编码")
    private String sysDepartmentId;

    @ApiModelProperty(value = "项目组编码")
    private String sysUnitId;

    @ApiModelProperty(value = "是否活动    Y或者N  N:删除")
    private String sysIsactive;

    @ApiModelProperty(value = "创建时间")
    private Date sysCreated;

    @ApiModelProperty(value = "创建人编码")
    private String sysCreatedby;

    @ApiModelProperty(value = "修改时间")
    private Date sysUpdated;

    @ApiModelProperty(value = "修改人编码")
    private String sysUpdatedby;

    @ApiModelProperty(value = "备注说明")
    private String sysRemark;

    @ApiModelProperty(value = "状态")
    private String sysEmployeeStatus;

    @ApiModelProperty(value = "头像")
    private String avatar;
}
