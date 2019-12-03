package com.pro.exp.service.pay.interfaces;

import com.pro.exp.dao.entity.PayOrderInfo;

import java.math.BigDecimal;

/**
 * @author: jingteng
 * @date: 2019/7/30 17:19
 */
public interface AliPayService {
    String payOrder(PayOrderInfo payOrderInfo, BigDecimal orderAmount);
}
