package com.pro.exp.model.vue.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author: jingteng
 * @date: 2019/12/2 11:33
 */
@Data
@ApiModel("vue项目首页Icon表单")
public class VueIconForm {

    @ApiModelProperty(value = "图片地址")
    private String imgSrc;

    @ApiModelProperty(value = "icon标题")
    private String textContent;

    @ApiModelProperty(value = "排序")
    private Byte sortIndex;

    @ApiModelProperty(value = "备注")
    private String remark;
}
