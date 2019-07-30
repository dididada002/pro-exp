package com.pro.exp.service.impl;

import com.pro.exp.common.PayCommon;
import com.pro.exp.dao.entity.PayOrderInfo;
import com.pro.exp.model.request.OrderPayForm;
import com.pro.exp.model.response.PayResponse;
import com.pro.exp.service.PayService;
import com.pro.exp.service.pay.interfaces.AliPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Map;

/**
 * @author: jingteng
 * @date: 2019/7/26 12:05
 */
@Service
public class PayServiceImpl implements PayService {

    @Autowired
    private AliPayService aliPayService;


    @Override
    public PayResponse orderPay(OrderPayForm form) {
        //todo 待完善微信支付和银联支付
        Map map = payOrderByOrderId(form.getOrderId(),form.getPayType());

        return null;
    }

    private Map payOrderByOrderId(String orderId, Integer payType) {

        //todo 检查订单是否已经支付完成

        if (PayCommon.PAY_TYPE_ALI.equals(payType)){
            //支付宝
            PayOrderInfo payOrderInfo = new PayOrderInfo();
            payOrderInfo.setOrderId(orderId);
            BigDecimal orderAmount = new BigDecimal("0.01");
            String orderStr = aliPayService.payOrder(payOrderInfo,orderAmount);

        }else if (PayCommon.PAY_TYPE_WX.equals(payType)){
            //微信

        }else if (PayCommon.PAY_TYPE_YL.equals(payType)){
            //银联

        }

        return null;

    }
}
