package com.pro.exp.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 22:46
 */
@ApiModel("通知公告表单")
@Data
public class BaseNoticeForm {

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
}
