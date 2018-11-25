package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 22:49
 */
@Data
@ApiModel("基础通知公告响应")
public class BaseNoticeResponse {
    @ApiModelProperty(value = "通知公告编码")
    private String baseNoticeId;

    @ApiModelProperty(value = "通知公告名称")
    private String baseNoticeName;

    @ApiModelProperty(value = "通知公告标题")
    private String baseNoticeTitle;

    @ApiModelProperty(value = "通知公告内容")
    private String baseNoticeText;

    @ApiModelProperty(value = "目标公司编码集合，逗号分隔")
    private String targetSysCompanyIds;

    @ApiModelProperty(value = "目标部门编码集合，逗号分隔")
    private String targetSysDepartmentIds;

    @ApiModelProperty(value = "目标小组编码集合，逗号分隔")
    private String targetSysUnitIds;

    @ApiModelProperty(value = "目标人员编码集合，逗号分隔")
    private String targetSysEmployeeIds;

    @ApiModelProperty(value = "备注说明")
    private String sysRemark;

    @ApiModelProperty(value = "类型id")
    private String baseNoticeTypeId;

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

}
