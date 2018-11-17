package com.pro.exp.model.example;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:12
 */
@ApiModel("分页")
public class BaseNewPageModel {
    /**
     * 页码
     */
    @ApiModelProperty(name = "页码")
    private Integer page;

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPage() {
        if (page == null || page == 0) {
            page = 1;
        }
        return page;
    }

    /**
     * 页大小
     */
    @ApiModelProperty(name = "页大小")
    private Integer limit;

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getLimit() {
        if (limit == null || limit == 0) {
            limit = 10;
        }
        return limit;
    }
}
