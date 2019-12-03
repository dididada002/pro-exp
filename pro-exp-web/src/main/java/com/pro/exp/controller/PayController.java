package com.pro.exp.controller;

import com.pro.exp.model.request.OrderPayForm;
import com.pro.exp.model.response.PayResponse;
import com.pro.exp.service.PayService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: jingteng
 * @date: 2019/7/26 10:02
 */
@Api(value = "/pay", tags = "支付")
@RestController
@RequestMapping("/pay")
public class PayController {

    @Autowired
    private PayService payService;


    @ApiOperation(value = "订单支付", notes = "订单支付")
    @PostMapping("/app/orderPay")
    public PayResponse orderPay(@RequestBody OrderPayForm form){
        return payService.orderPay(form);
    }

}
