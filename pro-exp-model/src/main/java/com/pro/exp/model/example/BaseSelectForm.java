package com.pro.exp.model.example;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:13
 */
@ApiModel("条件查询的接收类")
@Data
public class BaseSelectForm extends BaseNewPageModel {
    @ApiModelProperty(hidden = true)
    private String className;

    @ApiModelProperty(value = "条件")
    List<SelectExampleForm> selectExampleForms;

    @ApiModelProperty(value = "排序类型字段")
    private List<SelectOrderBy> orderByValueAndType;
}
