package com.pro.exp.model.example;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:16
 */
@ApiModel("查询排序接收类")
@Data
public class SelectOrderBy {
    @ApiModelProperty(value = "排序字段，是请填写实体的基础属性，自定义属性请勿添加")
    String orderValue;
    @ApiModelProperty(value = "排序类似/asc 升序/desc 降序")
    OrderType orderType;
}
