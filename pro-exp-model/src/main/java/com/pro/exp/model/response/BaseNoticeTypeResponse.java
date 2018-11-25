package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 23:05
 */
@ApiModel("通知公告类型响应")
@Data
public class BaseNoticeTypeResponse {

    @ApiModelProperty(value = "通知类型编码")
    private String baseNoticeTypeId;

    @ApiModelProperty(value = "通知类型名称：如：公告、通知")
    private String baseNoticeTypeName;

    @ApiModelProperty(value = "通知类型标示：如：公告：AN，通知：NT")
    private String baseNoticeTypeFlag;

    @ApiModelProperty(value = "是否允许回复，Y：允许，N：不允许")
    private String baseNoticeTypeReplied;

    @ApiModelProperty(value = "是否活动")
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
}
