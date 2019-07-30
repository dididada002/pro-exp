package com.pro.exp.service;

import com.pro.exp.model.request.OrderPayForm;
import com.pro.exp.model.response.PayResponse;

/**
 * @author: jingteng
 * @date: 2019/7/26 11:26
 */
public interface PayService {
    PayResponse orderPay(OrderPayForm form);
}
