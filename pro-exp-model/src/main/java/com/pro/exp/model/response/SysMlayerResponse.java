package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/19 11:26
 */
@ApiModel("一级菜单返回值信息")
@Data
public class SysMlayerResponse {

    @ApiModelProperty("一级模块编码")
    private String sysMlayerId;

    @ApiModelProperty("一级模块名称")
    private String sysMlayerName;

    @ApiModelProperty("模块标志:例如：模块：mdl_XXX ")
    private String sysMlayerTag;

    @ApiModelProperty("是否活动    Y或者N  N:删除")
    private String sysIsactive;

    @ApiModelProperty("一级模块url")
    private String sysUrl;

    @ApiModelProperty("一级模块优先级：排序")
    private Integer sysPriority;

    @ApiModelProperty("本地目录")
    private String sysComponent;

    @ApiModelProperty("图标")
    private String sysIcon;
}
