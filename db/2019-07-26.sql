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

CREATE TABLE `vue_swiper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(200) DEFAULT NULL COMMENT '轮播图地址',
  `sort_index` tinyint(4) NOT NULL COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vue项目-轮播图';

CREATE TABLE `vue_recommend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img_url` varchar(200) DEFAULT NULL COMMENT '轮播图地址',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `desc_txt` varchar(200) DEFAULT NULL COMMENT '描述',
  `sort_index` tinyint(4) NOT NULL COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='vue项目-每日推荐';

CREATE TABLE `vue_weekend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img_url` varchar(200) DEFAULT NULL COMMENT '轮播图地址',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `desc_txt` varchar(200) DEFAULT NULL COMMENT '描述',
  `sort_index` tinyint(4) NOT NULL COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='vue项目-每周推荐';

CREATE TABLE `vue_icon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img_src` varchar(200) DEFAULT NULL COMMENT '轮播图地址',
  `text_content` varchar(200) DEFAULT NULL COMMENT '描述',
  `sort_index` tinyint(4) NOT NULL COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='vue项目-图标';





