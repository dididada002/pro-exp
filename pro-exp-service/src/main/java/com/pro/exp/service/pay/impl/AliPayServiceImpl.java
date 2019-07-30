package com.pro.exp.service.pay.impl;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeAppPayModel;
import com.alipay.api.request.AlipayTradeAppPayRequest;
import com.alipay.api.response.AlipayTradeAppPayResponse;
import com.pro.exp.dao.entity.PayOrderInfo;
import com.pro.exp.service.pay.config.AliPayConfig;
import com.pro.exp.service.pay.config.PayConfig;
import com.pro.exp.service.pay.interfaces.AliPayService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

/**
 * @author: jingteng
 * @date: 2019/7/30 17:19
 */
@Service
public class AliPayServiceImpl implements AliPayService {
    @Override
    public String payOrder(PayOrderInfo payOrderInfo, BigDecimal orderAmount) {
        AlipayClient alipayClient = new DefaultAlipayClient(AliPayConfig.URL, AliPayConfig.APPID,
                AliPayConfig.RSA_PRIVATE_KEY, AliPayConfig.FORMAT, AliPayConfig.CHARSET,
                AliPayConfig.ALIPAY_PUBLIC_KEY, AliPayConfig.SIGNTYPE);
        AlipayTradeAppPayRequest alipayTradeAppPayRequest = new AlipayTradeAppPayRequest();
        AlipayTradeAppPayModel model = new AlipayTradeAppPayModel();
        //业务参数传入,可以传很多，参考API
        //model.setPassbackParams(URLEncoder.encode(request.getBody().toString())); //公用参数（附加数据）
        //model.setBody(orderTest.getBody());                       //对一笔交易的具体描述信息。如果是多种商品，请将商品描述字符串累加传给body。
        //model.setSubject(orderTest.getSubjecy());                 //商品名称
        // model.setOutTradeNo(orderTest.getOutTradeNo());           //商户订单号(自动生成)
        // model.setTimeoutExpress("30m");     			  //交易超时时间
        //model.setTotalAmount(orderTest.getTotalAmount());         //支付金额

        model.setBody(PayConfig.GOOD_NAME);                       //对一笔交易的具体描述信息。如果是多种商品，请将商品描述字符串累加传给body。
        model.setSubject(PayConfig.GOOD_NAME);                 //商品名称
        model.setOutTradeNo(payOrderInfo.getOrderId());           //商户订单号(自动生成)
        // model.setTimeoutExpress("30m");     			  //交易超时时间
        //todo 修改金额
            model.setTotalAmount("0.01");

        model.setProductCode("QUICK_MSECURITY_PAY");              //销售产品码（固定值）
        alipayTradeAppPayRequest.setBizModel(model);

        alipayTradeAppPayRequest.setNotifyUrl(AliPayConfig.notify_url);        //异步回调地址（后台）
        alipayTradeAppPayRequest.setReturnUrl(AliPayConfig.return_url);        //同步回调地址（APP）

        // 这里和普通的接口调用不同，使用的是sdkExecute
        AlipayTradeAppPayResponse alipayTradeAppPayResponse = null; //返回支付宝订单信息(预处理)
        try {
            alipayTradeAppPayResponse = alipayClient.sdkExecute(alipayTradeAppPayRequest);
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        String orderString = alipayTradeAppPayResponse.getBody();//就是orderString 可以直接给APP请求，无需再做处理。

        return orderString;

    }
}
