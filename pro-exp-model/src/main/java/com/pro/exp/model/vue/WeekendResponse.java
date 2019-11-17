package com.pro.exp.model.vue;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author: jingteng
 * @date: 2019/11/13 21:13
 */
@Data
@ApiModel("vue项目首页本周推荐响应")
public class WeekendResponse {
    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "imgUrl")
    private String imgUrl;

    @ApiModelProperty(value = "title")
    private String title;

    @ApiModelProperty(value = "desc")
    private String desc;

}
