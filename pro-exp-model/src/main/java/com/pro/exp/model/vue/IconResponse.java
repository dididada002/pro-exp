package com.pro.exp.model.vue;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author: jingteng
 * @date: 2019/11/13 21:19
 */
@Data
@ApiModel("vue项目首页icon响应")
public class IconResponse {
    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "imgSrc")
    private String imgSrc;

    @ApiModelProperty(value = "textContent")
    private String textContent;

}
