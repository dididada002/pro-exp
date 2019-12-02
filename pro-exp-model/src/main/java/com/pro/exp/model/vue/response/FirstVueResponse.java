package com.pro.exp.model.vue.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @author: jingteng
 * @date: 2019/11/13 21:13
 */
@Data
@ApiModel("vue项目首页响应")
public class FirstVueResponse {
    @ApiModelProperty(value = "vue项目首页icon响应")
    private List<IconResponse> iconList;

    @ApiModelProperty(value = "vue项目首页推荐响应")
    private List<RecommendResponse> recommendList;

    @ApiModelProperty(value = "vue项目首页轮播图响应")
    private List<SwiperResponse> swiperList;

    @ApiModelProperty(value = "vue项目首页本周推荐响应")
    private List<WeekendResponse> weekendList;

    @ApiModelProperty(value = "城市")
    private String city;
}
