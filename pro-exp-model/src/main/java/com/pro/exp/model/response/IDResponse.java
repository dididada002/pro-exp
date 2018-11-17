package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:19
 */
@ApiModel("ID响应模型")
@Data
public class IDResponse {

    @ApiModelProperty(value = "ID，主键")
    private String id;

    public IDResponse(String id){
        this.id = id;
    }
}
