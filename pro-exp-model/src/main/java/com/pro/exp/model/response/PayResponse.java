package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author: jingteng
 * @date: 2019/7/26 14:00
 */
@ApiModel("支付后返回的信息")
@Data
public class PayResponse {

    @ApiModelProperty("orderId")
    private String orderId;
}
