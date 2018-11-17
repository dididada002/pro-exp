package com.pro.exp.model.example;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:14
 */
@ApiModel("条件查询类")
@Data
public class SelectExampleForm {
    @ApiModelProperty(value = "查询属性或者字段")
    private String field;

    @ApiModelProperty(value = "查询的值")
    private List<String> fieldValue;

    @ApiModelProperty(value = "查询的方法")
    private SelectKeyWordType type;

    @ApiModelProperty(value = "查询条件与后一个条件关系")
    private SelectLinkType link;
}
