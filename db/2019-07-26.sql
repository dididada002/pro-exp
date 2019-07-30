CREATE TABLE `pay_order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL COMMENT '商城订单号',
  `pay_order_id` varchar(255) DEFAULT NULL COMMENT '支付订单号',
  `pay_type` int(2) DEFAULT NULL COMMENT '1-微信 2-支付宝 3-银联',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT '支付订单号',
  `prepay_id` varchar(255) DEFAULT NULL COMMENT '第三方生成的预支付单号',
  `total_fee` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `status` varchar(255) DEFAULT NULL COMMENT '状态（1-添加成功，2-发送成功，3-支付成功）',
  `success_time` timestamp NULL DEFAULT NULL COMMENT '支付成功时间',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;