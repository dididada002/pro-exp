package com.pro.exp.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author: jingteng
 * @date: 2019/7/26 12:10
 */
@ApiModel("订单支付表单")
@Data
public class OrderPayForm {

    @ApiModelProperty(value = "订单id", required = true)
    private String orderId;

    @ApiModelProperty(value = "支付渠道类型", required = true, notes = "1-微信 2-支付宝 3-银联")
    private Integer payType;

    @ApiModelProperty(value = "支付类型", required = true, notes = "1-单次支付，2-多次支付，为2时payAmount为支付金额")
    private Integer payCount;

    @ApiModelProperty(value = "支付金额", notes = "当支付类型为1-单次支付时，此项为空，当支付类型为2-多次支付时，此项不能为空")
    private BigDecimal payAmount;
}
