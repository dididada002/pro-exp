package com.pro.exp.model.vue.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author: jingteng
 * @date: 2019/11/13 21:13
 */
@Data
@ApiModel("vue项目首页轮播图响应")
public class SwiperResponse {
    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "imgUrl")
    private String url;

}
