/*
Navicat MySQL Data Transfer

Source Server         : 我的阿里云
Source Server Version : 50724
Source Host           : 101.200.58.119:3306
Source Database       : pro_dev

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-07-23 11:35:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_notice
-- ----------------------------
DROP TABLE IF EXISTS `base_notice`;
CREATE TABLE `base_notice` (
  `base_notice_id` varchar(50) NOT NULL COMMENT '通知公告编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `base_notice_name` varchar(200) DEFAULT NULL COMMENT '通知公告名称',
  `base_notice_title` varchar(200) DEFAULT NULL COMMENT '通知公告标题',
  `base_notice_text` varchar(2000) DEFAULT NULL COMMENT '通知公告内容',
  `target_sys_company_ids` varchar(300) DEFAULT NULL COMMENT '目标公司编码集合，逗号分隔',
  `target_sys_department_ids` varchar(300) DEFAULT NULL COMMENT '目标部门编码集合，逗号分隔',
  `target_sys_unit_ids` varchar(300) DEFAULT NULL COMMENT '目标小组编码集合，逗号分隔',
  `target_sys_employee_ids` varchar(300) DEFAULT NULL COMMENT '目标人员编码集合，逗号分隔',
  `sys_isactive` varchar(2) DEFAULT NULL COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `base_notice_type_id` varchar(200) DEFAULT NULL COMMENT '类型id',
  PRIMARY KEY (`base_notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通知公告';

-- ----------------------------
-- Records of base_notice
-- ----------------------------
INSERT INTO `base_notice` VALUES ('PR201811302221117455gL7', '111', '111', '111', '111', '111', '111', '111', 'Y', '2018-11-30 22:21:12', null, null, null, '111', '111');

-- ----------------------------
-- Table structure for base_notice_type
-- ----------------------------
DROP TABLE IF EXISTS `base_notice_type`;
CREATE TABLE `base_notice_type` (
  `base_notice_type_id` varchar(50) NOT NULL COMMENT '通知类型编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `base_notice_type_name` varchar(200) DEFAULT NULL COMMENT '通知类型名称：如：公告、通知',
  `base_notice_type_flag` varchar(2) DEFAULT NULL COMMENT '通知类型标示：如：公告：AN，通知：NT',
  `base_notice_type_replied` varchar(2) DEFAULT NULL COMMENT '是否允许回复，Y：允许，N：不允许',
  `sys_isactive` varchar(2) DEFAULT NULL COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`base_notice_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通知类型';

-- ----------------------------
-- Records of base_notice_type
-- ----------------------------

-- ----------------------------
-- Table structure for relation_sys_employee_role
-- ----------------------------
DROP TABLE IF EXISTS `relation_sys_employee_role`;
CREATE TABLE `relation_sys_employee_role` (
  `relation_sys_employee_role_id` varchar(50) NOT NULL COMMENT '角色与权限关系表编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `relation_sys_employee_role_name` varchar(200) DEFAULT NULL COMMENT '角色与权限关系表角色名称',
  `sys_employee_id` varchar(50) DEFAULT NULL COMMENT '人员编码 来源于角色表sys_employee(相当于外键',
  `sys_role_id` varchar(50) DEFAULT NULL COMMENT '角色编码 来源于权限表sys_role(相当于外键)',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`relation_sys_employee_role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_sys_employee_role
-- ----------------------------

-- ----------------------------
-- Table structure for relation_sys_role_power
-- ----------------------------
DROP TABLE IF EXISTS `relation_sys_role_power`;
CREATE TABLE `relation_sys_role_power` (
  `relation_sys_role_power_id` varchar(50) NOT NULL COMMENT '角色与权限关系表编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `relation_sys_role_power_name` varchar(200) DEFAULT NULL COMMENT '角色与权限关系表角色名称',
  `sys_role_id` varchar(50) DEFAULT NULL COMMENT '角色编码 来源于角色表sys_role(相当于外键作用)',
  `sys_power_id` varchar(50) DEFAULT NULL COMMENT '权限编码 来源于权限表sys_power(相当于外键作用)',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`relation_sys_role_power_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_sys_role_power
-- ----------------------------

-- ----------------------------
-- Table structure for relation_sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `relation_sys_role_resource`;
CREATE TABLE `relation_sys_role_resource` (
  `relation_sys_role_resource_id` varchar(50) NOT NULL DEFAULT '' COMMENT '角色与权限关系表编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `relation_sys_role_resource_name` varchar(200) DEFAULT NULL COMMENT '角色与权限关系表角色名称',
  `sys_role_id` varchar(50) DEFAULT NULL COMMENT '角色编码 来源于角色表sys_role(相当于外键作用)',
  `sys_resource_id` varchar(50) DEFAULT NULL COMMENT '资源编码 来源于权限表sys_resource(相当于外键作用)',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`relation_sys_role_resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_sys_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city` (
  `sys_province_id` varchar(50) DEFAULT NULL COMMENT '省编码  ',
  `sys_city_id` varchar(50) NOT NULL COMMENT '市编码 主键顺序编码  规则：HJ + 日期戳+XXXX (四位随机数 ) ',
  `sys_city_name` varchar(200) DEFAULT NULL COMMENT '市名称',
  `sys_city_code` varchar(50) DEFAULT NULL COMMENT '城市区号 ',
  `sys_zipcode` varchar(50) DEFAULT NULL COMMENT '邮政编码 ',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_city_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区、地级市  city';

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO `sys_city` VALUES ('110000', '110100', '北京市', '010', '100000', 'Y', null, null, null, null, 'Beijing');
INSERT INTO `sys_city` VALUES ('120000', '120100', '天津市', '022', '300000', 'Y', null, null, null, null, 'Tianjin');
INSERT INTO `sys_city` VALUES ('130000', '130100', '石家庄市', '0311', '050011', 'Y', null, null, null, null, 'Shijiazhuang');
INSERT INTO `sys_city` VALUES ('130000', '130200', '唐山市', '0315', '063000', 'Y', null, null, null, null, 'Tangshan');
INSERT INTO `sys_city` VALUES ('130000', '130300', '秦皇岛市', '0335', '066000', 'Y', null, null, null, null, 'Qinhuangdao');
INSERT INTO `sys_city` VALUES ('130000', '130400', '邯郸市', '0310', '056002', 'Y', null, null, null, null, 'Handan');
INSERT INTO `sys_city` VALUES ('130000', '130500', '邢台市', '0319', '054001', 'Y', null, null, null, null, 'Xingtai');
INSERT INTO `sys_city` VALUES ('130000', '130600', '保定市', '0312', '071052', 'Y', null, null, null, null, 'Baoding');
INSERT INTO `sys_city` VALUES ('130000', '130700', '张家口市', '0313', '075000', 'Y', null, null, null, null, 'Zhangjiakou');
INSERT INTO `sys_city` VALUES ('130000', '130800', '承德市', '0314', '067000', 'Y', null, null, null, null, 'Chengde');
INSERT INTO `sys_city` VALUES ('130000', '130900', '沧州市', '0317', '061001', 'Y', null, null, null, null, 'Cangzhou');
INSERT INTO `sys_city` VALUES ('130000', '131000', '廊坊市', '0316', '065000', 'Y', null, null, null, null, 'Langfang');
INSERT INTO `sys_city` VALUES ('130000', '131100', '衡水市', '0318', '053000', 'Y', null, null, null, null, 'Hengshui');
INSERT INTO `sys_city` VALUES ('140000', '140100', '太原市', '0351', '030082', 'Y', null, null, null, null, 'Taiyuan');
INSERT INTO `sys_city` VALUES ('140000', '140200', '大同市', '0352', '037008', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_city` VALUES ('140000', '140300', '阳泉市', '0353', '045000', 'Y', null, null, null, null, 'Yangquan');
INSERT INTO `sys_city` VALUES ('140000', '140400', '长治市', '0355', '046000', 'Y', null, null, null, null, 'Changzhi');
INSERT INTO `sys_city` VALUES ('140000', '140500', '晋城市', '0356', '048000', 'Y', null, null, null, null, 'Jincheng');
INSERT INTO `sys_city` VALUES ('140000', '140600', '朔州市', '0349', '038500', 'Y', null, null, null, null, 'Shuozhou');
INSERT INTO `sys_city` VALUES ('140000', '140700', '晋中市', '0354', '030600', 'Y', null, null, null, null, 'Jinzhong');
INSERT INTO `sys_city` VALUES ('140000', '140800', '运城市', '0359', '044000', 'Y', null, null, null, null, 'Yuncheng');
INSERT INTO `sys_city` VALUES ('140000', '140900', '忻州市', '0350', '034000', 'Y', null, null, null, null, 'Xinzhou');
INSERT INTO `sys_city` VALUES ('140000', '141000', '临汾市', '0357', '041000', 'Y', null, null, null, null, 'Linfen');
INSERT INTO `sys_city` VALUES ('140000', '141100', '吕梁市', '0358', '033000', 'Y', null, null, null, null, 'Lvliang');
INSERT INTO `sys_city` VALUES ('150000', '150100', '呼和浩特市', '0471', '010000', 'Y', null, null, null, null, 'Hohhot');
INSERT INTO `sys_city` VALUES ('150000', '150200', '包头市', '0472', '014025', 'Y', null, null, null, null, 'Baotou');
INSERT INTO `sys_city` VALUES ('150000', '150300', '乌海市', '0473', '016000', 'Y', null, null, null, null, 'Wuhai');
INSERT INTO `sys_city` VALUES ('150000', '150400', '赤峰市', '0476', '024000', 'Y', null, null, null, null, 'Chifeng');
INSERT INTO `sys_city` VALUES ('150000', '150500', '通辽市', '0475', '028000', 'Y', null, null, null, null, 'Tongliao');
INSERT INTO `sys_city` VALUES ('150000', '150600', '鄂尔多斯市', '0477', '017004', 'Y', null, null, null, null, 'Ordos');
INSERT INTO `sys_city` VALUES ('150000', '150700', '呼伦贝尔市', '0470', '021008', 'Y', null, null, null, null, 'Hulunber');
INSERT INTO `sys_city` VALUES ('150000', '150800', '巴彦淖尔市', '0478', '015001', 'Y', null, null, null, null, 'Bayan Nur');
INSERT INTO `sys_city` VALUES ('150000', '150900', '乌兰察布市', '0474', '012000', 'Y', null, null, null, null, 'Ulanqab');
INSERT INTO `sys_city` VALUES ('150000', '152200', '兴安盟', '0482', '137401', 'Y', null, null, null, null, 'Hinggan');
INSERT INTO `sys_city` VALUES ('150000', '152500', '锡林郭勒盟', '0479', '026000', 'Y', null, null, null, null, 'Xilin Gol');
INSERT INTO `sys_city` VALUES ('150000', '152900', '阿拉善盟', '0483', '750306', 'Y', null, null, null, null, 'Alxa');
INSERT INTO `sys_city` VALUES ('210000', '210100', '沈阳市', '024', '110013', 'Y', null, null, null, null, 'Shenyang');
INSERT INTO `sys_city` VALUES ('210000', '210200', '大连市', '0411', '116011', 'Y', null, null, null, null, 'Dalian');
INSERT INTO `sys_city` VALUES ('210000', '210300', '鞍山市', '0412', '114001', 'Y', null, null, null, null, 'Anshan');
INSERT INTO `sys_city` VALUES ('210000', '210400', '抚顺市', '024', '113008', 'Y', null, null, null, null, 'Fushun');
INSERT INTO `sys_city` VALUES ('210000', '210500', '本溪市', '0414', '117000', 'Y', null, null, null, null, 'Benxi');
INSERT INTO `sys_city` VALUES ('210000', '210600', '丹东市', '0415', '118000', 'Y', null, null, null, null, 'Dandong');
INSERT INTO `sys_city` VALUES ('210000', '210700', '锦州市', '0416', '121000', 'Y', null, null, null, null, 'Jinzhou');
INSERT INTO `sys_city` VALUES ('210000', '210800', '营口市', '0417', '115003', 'Y', null, null, null, null, 'Yingkou');
INSERT INTO `sys_city` VALUES ('210000', '210900', '阜新市', '0418', '123000', 'Y', null, null, null, null, 'Fuxin');
INSERT INTO `sys_city` VALUES ('210000', '211000', '辽阳市', '0419', '111000', 'Y', null, null, null, null, 'Liaoyang');
INSERT INTO `sys_city` VALUES ('210000', '211100', '盘锦市', '0427', '124010', 'Y', null, null, null, null, 'Panjin');
INSERT INTO `sys_city` VALUES ('210000', '211200', '铁岭市', '024', '112000', 'Y', null, null, null, null, 'Tieling');
INSERT INTO `sys_city` VALUES ('210000', '211300', '朝阳市', '0421', '122000', 'Y', null, null, null, null, 'Chaoyang');
INSERT INTO `sys_city` VALUES ('210000', '211400', '葫芦岛市', '0429', '125000', 'Y', null, null, null, null, 'Huludao');
INSERT INTO `sys_city` VALUES ('210000', '211500', '金普新区', '0411', '116100', 'Y', null, null, null, null, 'Jinpuxinqu');
INSERT INTO `sys_city` VALUES ('220000', '220100', '长春市', '0431', '130022', 'Y', null, null, null, null, 'Changchun');
INSERT INTO `sys_city` VALUES ('220000', '220200', '吉林市', '0432', '132011', 'Y', null, null, null, null, 'Jilin');
INSERT INTO `sys_city` VALUES ('220000', '220300', '四平市', '0434', '136000', 'Y', null, null, null, null, 'Siping');
INSERT INTO `sys_city` VALUES ('220000', '220400', '辽源市', '0437', '136200', 'Y', null, null, null, null, 'Liaoyuan');
INSERT INTO `sys_city` VALUES ('220000', '220500', '通化市', '0435', '134001', 'Y', null, null, null, null, 'Tonghua');
INSERT INTO `sys_city` VALUES ('220000', '220600', '白山市', '0439', '134300', 'Y', null, null, null, null, 'Baishan');
INSERT INTO `sys_city` VALUES ('220000', '220700', '松原市', '0438', '138000', 'Y', null, null, null, null, 'Songyuan');
INSERT INTO `sys_city` VALUES ('220000', '220800', '白城市', '0436', '137000', 'Y', null, null, null, null, 'Baicheng');
INSERT INTO `sys_city` VALUES ('220000', '222400', '延边朝鲜族自治州', '0433', '133000', 'Y', null, null, null, null, 'Yanbian');
INSERT INTO `sys_city` VALUES ('230000', '230100', '哈尔滨市', '0451', '150010', 'Y', null, null, null, null, 'Harbin');
INSERT INTO `sys_city` VALUES ('230000', '230200', '齐齐哈尔市', '0452', '161005', 'Y', null, null, null, null, 'Qiqihar');
INSERT INTO `sys_city` VALUES ('230000', '230300', '鸡西市', '0467', '158100', 'Y', null, null, null, null, 'Jixi');
INSERT INTO `sys_city` VALUES ('230000', '230400', '鹤岗市', '0468', '154100', 'Y', null, null, null, null, 'Hegang');
INSERT INTO `sys_city` VALUES ('230000', '230500', '双鸭山市', '0469', '155100', 'Y', null, null, null, null, 'Shuangyashan');
INSERT INTO `sys_city` VALUES ('230000', '230600', '大庆市', '0459', '163000', 'Y', null, null, null, null, 'Daqing');
INSERT INTO `sys_city` VALUES ('230000', '230700', '伊春市', '0458', '153000', 'Y', null, null, null, null, 'Yichun');
INSERT INTO `sys_city` VALUES ('230000', '230800', '佳木斯市', '0454', '154002', 'Y', null, null, null, null, 'Jiamusi');
INSERT INTO `sys_city` VALUES ('230000', '230900', '七台河市', '0464', '154600', 'Y', null, null, null, null, 'Qitaihe');
INSERT INTO `sys_city` VALUES ('230000', '231000', '牡丹江市', '0453', '157000', 'Y', null, null, null, null, 'Mudanjiang');
INSERT INTO `sys_city` VALUES ('230000', '231100', '黑河市', '0456', '164300', 'Y', null, null, null, null, 'Heihe');
INSERT INTO `sys_city` VALUES ('230000', '231200', '绥化市', '0455', '152000', 'Y', null, null, null, null, 'Suihua');
INSERT INTO `sys_city` VALUES ('230000', '232700', '大兴安岭地区', '0457', '165000', 'Y', null, null, null, null, 'DaXingAnLing');
INSERT INTO `sys_city` VALUES ('310000', '310100', '上海市', '021', '200000', 'Y', null, null, null, null, 'Shanghai');
INSERT INTO `sys_city` VALUES ('320000', '320100', '南京市', '025', '210008', 'Y', null, null, null, null, 'Nanjing');
INSERT INTO `sys_city` VALUES ('320000', '320200', '无锡市', '0510', '214000', 'Y', null, null, null, null, 'Wuxi');
INSERT INTO `sys_city` VALUES ('320000', '320300', '徐州市', '0516', '221003', 'Y', null, null, null, null, 'Xuzhou');
INSERT INTO `sys_city` VALUES ('320000', '320400', '常州市', '0519', '213000', 'Y', null, null, null, null, 'Changzhou');
INSERT INTO `sys_city` VALUES ('320000', '320500', '苏州市', '0512', '215002', 'Y', null, null, null, null, 'Suzhou');
INSERT INTO `sys_city` VALUES ('320000', '320600', '南通市', '0513', '226001', 'Y', null, null, null, null, 'Nantong');
INSERT INTO `sys_city` VALUES ('320000', '320700', '连云港市', '0518', '222002', 'Y', null, null, null, null, 'Lianyungang');
INSERT INTO `sys_city` VALUES ('320000', '320800', '淮安市', '0517', '223001', 'Y', null, null, null, null, 'Huai\'an');
INSERT INTO `sys_city` VALUES ('320000', '320900', '盐城市', '0515', '224005', 'Y', null, null, null, null, 'Yancheng');
INSERT INTO `sys_city` VALUES ('320000', '321000', '扬州市', '0514', '225002', 'Y', null, null, null, null, 'Yangzhou');
INSERT INTO `sys_city` VALUES ('320000', '321100', '镇江市', '0511', '212004', 'Y', null, null, null, null, 'Zhenjiang');
INSERT INTO `sys_city` VALUES ('320000', '321200', '泰州市', '0523', '225300', 'Y', null, null, null, null, 'Taizhou');
INSERT INTO `sys_city` VALUES ('320000', '321300', '宿迁市', '0527', '223800', 'Y', null, null, null, null, 'Suqian');
INSERT INTO `sys_city` VALUES ('330000', '330100', '杭州市', '0571', '310026', 'Y', null, null, null, null, 'Hangzhou');
INSERT INTO `sys_city` VALUES ('330000', '330200', '宁波市', '0574', '315000', 'Y', null, null, null, null, 'Ningbo');
INSERT INTO `sys_city` VALUES ('330000', '330300', '温州市', '0577', '325000', 'Y', null, null, null, null, 'Wenzhou');
INSERT INTO `sys_city` VALUES ('330000', '330400', '嘉兴市', '0573', '314000', 'Y', null, null, null, null, 'Jiaxing');
INSERT INTO `sys_city` VALUES ('330000', '330500', '湖州市', '0572', '313000', 'Y', null, null, null, null, 'Huzhou');
INSERT INTO `sys_city` VALUES ('330000', '330600', '绍兴市', '0575', '312000', 'Y', null, null, null, null, 'Shaoxing');
INSERT INTO `sys_city` VALUES ('330000', '330700', '金华市', '0579', '321000', 'Y', null, null, null, null, 'Jinhua');
INSERT INTO `sys_city` VALUES ('330000', '330800', '衢州市', '0570', '324002', 'Y', null, null, null, null, 'Quzhou');
INSERT INTO `sys_city` VALUES ('330000', '330900', '舟山市', '0580', '316000', 'Y', null, null, null, null, 'Zhoushan');
INSERT INTO `sys_city` VALUES ('330000', '331000', '台州市', '0576', '318000', 'Y', null, null, null, null, 'Taizhou');
INSERT INTO `sys_city` VALUES ('330000', '331100', '丽水市', '0578', '323000', 'Y', null, null, null, null, 'Lishui');
INSERT INTO `sys_city` VALUES ('330000', '331200', '舟山群岛新区', '0580', '316000', 'Y', null, null, null, null, 'Zhoushan');
INSERT INTO `sys_city` VALUES ('340000', '340100', '合肥市', '0551', '230001', 'Y', null, null, null, null, 'Hefei');
INSERT INTO `sys_city` VALUES ('340000', '340200', '芜湖市', '0551', '241000', 'Y', null, null, null, null, 'Wuhu');
INSERT INTO `sys_city` VALUES ('340000', '340300', '蚌埠市', '0552', '233000', 'Y', null, null, null, null, 'Bengbu');
INSERT INTO `sys_city` VALUES ('340000', '340400', '淮南市', '0554', '232001', 'Y', null, null, null, null, 'Huainan');
INSERT INTO `sys_city` VALUES ('340000', '340500', '马鞍山市', '0555', '243001', 'Y', null, null, null, null, 'Ma\'anshan');
INSERT INTO `sys_city` VALUES ('340000', '340600', '淮北市', '0561', '235000', 'Y', null, null, null, null, 'Huaibei');
INSERT INTO `sys_city` VALUES ('340000', '340700', '铜陵市', '0562', '244000', 'Y', null, null, null, null, 'Tongling');
INSERT INTO `sys_city` VALUES ('340000', '340800', '安庆市', '0556', '246001', 'Y', null, null, null, null, 'Anqing');
INSERT INTO `sys_city` VALUES ('340000', '341000', '黄山市', '0559', '245000', 'Y', null, null, null, null, 'Huangshan');
INSERT INTO `sys_city` VALUES ('340000', '341100', '滁州市', '0550', '239000', 'Y', null, null, null, null, 'Chuzhou');
INSERT INTO `sys_city` VALUES ('340000', '341200', '阜阳市', '0558', '236033', 'Y', null, null, null, null, 'Fuyang');
INSERT INTO `sys_city` VALUES ('340000', '341300', '宿州市', '0557', '234000', 'Y', null, null, null, null, 'Suzhou');
INSERT INTO `sys_city` VALUES ('340000', '341500', '六安市', '0564', '237000', 'Y', null, null, null, null, 'Lu\'an');
INSERT INTO `sys_city` VALUES ('340000', '341600', '亳州市', '0558', '236802', 'Y', null, null, null, null, 'Bozhou');
INSERT INTO `sys_city` VALUES ('340000', '341700', '池州市', '0566', '247100', 'Y', null, null, null, null, 'Chizhou');
INSERT INTO `sys_city` VALUES ('340000', '341800', '宣城市', '0563', '242000', 'Y', null, null, null, null, 'Xuancheng');
INSERT INTO `sys_city` VALUES ('350000', '350100', '福州市', '0591', '350001', 'Y', null, null, null, null, 'Fuzhou');
INSERT INTO `sys_city` VALUES ('350000', '350200', '厦门市', '0592', '361003', 'Y', null, null, null, null, 'Xiamen');
INSERT INTO `sys_city` VALUES ('350000', '350300', '莆田市', '0594', '351100', 'Y', null, null, null, null, 'Putian');
INSERT INTO `sys_city` VALUES ('350000', '350400', '三明市', '0598', '365000', 'Y', null, null, null, null, 'Sanming');
INSERT INTO `sys_city` VALUES ('350000', '350500', '泉州市', '0595', '362000', 'Y', null, null, null, null, 'Quanzhou');
INSERT INTO `sys_city` VALUES ('350000', '350600', '漳州市', '0596', '363005', 'Y', null, null, null, null, 'Zhangzhou');
INSERT INTO `sys_city` VALUES ('350000', '350700', '南平市', '0599', '353000', 'Y', null, null, null, null, 'Nanping');
INSERT INTO `sys_city` VALUES ('350000', '350800', '龙岩市', '0597', '364000', 'Y', null, null, null, null, 'Longyan');
INSERT INTO `sys_city` VALUES ('350000', '350900', '宁德市', '0593', '352100', 'Y', null, null, null, null, 'Ningde');
INSERT INTO `sys_city` VALUES ('360000', '360100', '南昌市', '0791', '330008', 'Y', null, null, null, null, 'Nanchang');
INSERT INTO `sys_city` VALUES ('360000', '360200', '景德镇市', '0798', '333000', 'Y', null, null, null, null, 'Jingdezhen');
INSERT INTO `sys_city` VALUES ('360000', '360300', '萍乡市', '0799', '337000', 'Y', null, null, null, null, 'Pingxiang');
INSERT INTO `sys_city` VALUES ('360000', '360400', '九江市', '0792', '332000', 'Y', null, null, null, null, 'Jiujiang');
INSERT INTO `sys_city` VALUES ('360000', '360500', '新余市', '0790', '338025', 'Y', null, null, null, null, 'Xinyu');
INSERT INTO `sys_city` VALUES ('360000', '360600', '鹰潭市', '0701', '335000', 'Y', null, null, null, null, 'Yingtan');
INSERT INTO `sys_city` VALUES ('360000', '360700', '赣州市', '0797', '341000', 'Y', null, null, null, null, 'Ganzhou');
INSERT INTO `sys_city` VALUES ('360000', '360800', '吉安市', '0796', '343000', 'Y', null, null, null, null, 'Ji\'an');
INSERT INTO `sys_city` VALUES ('360000', '360900', '宜春市', '0795', '336000', 'Y', null, null, null, null, 'Yichun');
INSERT INTO `sys_city` VALUES ('360000', '361000', '抚州市', '0794', '344000', 'Y', null, null, null, null, 'Fuzhou');
INSERT INTO `sys_city` VALUES ('360000', '361100', '上饶市', '0793', '334000', 'Y', null, null, null, null, 'Shangrao');
INSERT INTO `sys_city` VALUES ('370000', '370100', '济南市', '0531', '250001', 'Y', null, null, null, null, 'Jinan');
INSERT INTO `sys_city` VALUES ('370000', '370200', '青岛市', '0532', '266001', 'Y', null, null, null, null, 'Qingdao');
INSERT INTO `sys_city` VALUES ('370000', '370300', '淄博市', '0533', '255039', 'Y', null, null, null, null, 'Zibo');
INSERT INTO `sys_city` VALUES ('370000', '370400', '枣庄市', '0632', '277101', 'Y', null, null, null, null, 'Zaozhuang');
INSERT INTO `sys_city` VALUES ('370000', '370500', '东营市', '0546', '257093', 'Y', null, null, null, null, 'Dongying');
INSERT INTO `sys_city` VALUES ('370000', '370600', '烟台市', '0635', '264010', 'Y', null, null, null, null, 'Yantai');
INSERT INTO `sys_city` VALUES ('370000', '370700', '潍坊市', '0536', '261041', 'Y', null, null, null, null, 'Weifang');
INSERT INTO `sys_city` VALUES ('370000', '370800', '济宁市', '0537', '272119', 'Y', null, null, null, null, 'Jining');
INSERT INTO `sys_city` VALUES ('370000', '370900', '泰安市', '0538', '271000', 'Y', null, null, null, null, 'Tai\'an');
INSERT INTO `sys_city` VALUES ('370000', '371000', '威海市', '0631', '264200', 'Y', null, null, null, null, 'Weihai');
INSERT INTO `sys_city` VALUES ('370000', '371100', '日照市', '0633', '276800', 'Y', null, null, null, null, 'Rizhao');
INSERT INTO `sys_city` VALUES ('370000', '371200', '莱芜市', '0634', '271100', 'Y', null, null, null, null, 'Laiwu');
INSERT INTO `sys_city` VALUES ('370000', '371300', '临沂市', '0539', '253000', 'Y', null, null, null, null, 'Linyi');
INSERT INTO `sys_city` VALUES ('370000', '371400', '德州市', '0534', '253000', 'Y', null, null, null, null, 'Dezhou');
INSERT INTO `sys_city` VALUES ('370000', '371500', '聊城市', '0635', '252052', 'Y', null, null, null, null, 'Liaocheng');
INSERT INTO `sys_city` VALUES ('370000', '371600', '滨州市', '0543', '256619', 'Y', null, null, null, null, 'Binzhou');
INSERT INTO `sys_city` VALUES ('370000', '371700', '菏泽市', '0530', '274020', 'Y', null, null, null, null, 'Heze');
INSERT INTO `sys_city` VALUES ('410000', '410100', '郑州市', '0371', '450000', 'Y', null, null, null, null, 'Zhengzhou');
INSERT INTO `sys_city` VALUES ('410000', '410200', '开封市', '0378', '475001', 'Y', null, null, null, null, 'Kaifeng');
INSERT INTO `sys_city` VALUES ('410000', '410300', '洛阳市', '0379', '471000', 'Y', null, null, null, null, 'Luoyang');
INSERT INTO `sys_city` VALUES ('410000', '410400', '平顶山市', '0375', '467000', 'Y', null, null, null, null, 'Pingdingshan');
INSERT INTO `sys_city` VALUES ('410000', '410500', '安阳市', '0372', '455000', 'Y', null, null, null, null, 'Anyang');
INSERT INTO `sys_city` VALUES ('410000', '410600', '鹤壁市', '0392', '458030', 'Y', null, null, null, null, 'Hebi');
INSERT INTO `sys_city` VALUES ('410000', '410700', '新乡市', '0373', '453000', 'Y', null, null, null, null, 'Xinxiang');
INSERT INTO `sys_city` VALUES ('410000', '410800', '焦作市', '0391', '454002', 'Y', null, null, null, null, 'Jiaozuo');
INSERT INTO `sys_city` VALUES ('410000', '410900', '濮阳市', '0393', '457000', 'Y', null, null, null, null, 'Puyang');
INSERT INTO `sys_city` VALUES ('410000', '411000', '许昌市', '0374', '461000', 'Y', null, null, null, null, 'Xuchang');
INSERT INTO `sys_city` VALUES ('410000', '411100', '漯河市', '0395', '462000', 'Y', null, null, null, null, 'Luohe');
INSERT INTO `sys_city` VALUES ('410000', '411200', '三门峡市', '0398', '472000', 'Y', null, null, null, null, 'Sanmenxia');
INSERT INTO `sys_city` VALUES ('410000', '411300', '南阳市', '0377', '473002', 'Y', null, null, null, null, 'Nanyang');
INSERT INTO `sys_city` VALUES ('410000', '411400', '商丘市', '0370', '476000', 'Y', null, null, null, null, 'Shangqiu');
INSERT INTO `sys_city` VALUES ('410000', '411500', '信阳市', '0376', '464000', 'Y', null, null, null, null, 'Xinyang');
INSERT INTO `sys_city` VALUES ('410000', '411600', '周口市', '0394', '466000', 'Y', null, null, null, null, 'Zhoukou');
INSERT INTO `sys_city` VALUES ('410000', '411700', '驻马店市', '0396', '463000', 'Y', null, null, null, null, 'Zhumadian');
INSERT INTO `sys_city` VALUES ('410000', '419000', '直辖县级', null, null, 'Y', null, null, null, null, null);
INSERT INTO `sys_city` VALUES ('420000', '420100', '武汉市', '027', '430014', 'Y', null, null, null, null, 'Wuhan');
INSERT INTO `sys_city` VALUES ('420000', '420200', '黄石市', '0714', '435003', 'Y', null, null, null, null, 'Huangshi');
INSERT INTO `sys_city` VALUES ('420000', '420300', '十堰市', '0719', '442000', 'Y', null, null, null, null, 'Shiyan');
INSERT INTO `sys_city` VALUES ('420000', '420500', '宜昌市', '0717', '443000', 'Y', null, null, null, null, 'Yichang');
INSERT INTO `sys_city` VALUES ('420000', '420600', '襄阳市', '0710', '441021', 'Y', null, null, null, null, 'Xiangyang');
INSERT INTO `sys_city` VALUES ('420000', '420700', '鄂州市', '0711', '436000', 'Y', null, null, null, null, 'Ezhou');
INSERT INTO `sys_city` VALUES ('420000', '420800', '荆门市', '0724', '448000', 'Y', null, null, null, null, 'Jingmen');
INSERT INTO `sys_city` VALUES ('420000', '420900', '孝感市', '0712', '432100', 'Y', null, null, null, null, 'Xiaogan');
INSERT INTO `sys_city` VALUES ('420000', '421000', '荆州市', '0716', '434000', 'Y', null, null, null, null, 'Jingzhou');
INSERT INTO `sys_city` VALUES ('420000', '421100', '黄冈市', '0713', '438000', 'Y', null, null, null, null, 'Huanggang');
INSERT INTO `sys_city` VALUES ('420000', '421200', '咸宁市', '0715', '437000', 'Y', null, null, null, null, 'Xianning');
INSERT INTO `sys_city` VALUES ('420000', '421300', '随州市', '0722', '441300', 'Y', null, null, null, null, 'Suizhou');
INSERT INTO `sys_city` VALUES ('420000', '422800', '恩施土家族苗族自治州', '0718', '445000', 'Y', null, null, null, null, 'Enshi');
INSERT INTO `sys_city` VALUES ('420000', '429000', '直辖县级', null, null, 'Y', null, null, null, null, null);
INSERT INTO `sys_city` VALUES ('430000', '430100', '长沙市', '0731', '410005', 'Y', null, null, null, null, 'Changsha');
INSERT INTO `sys_city` VALUES ('430000', '430200', '株洲市', '0731', '412000', 'Y', null, null, null, null, 'Zhuzhou');
INSERT INTO `sys_city` VALUES ('430000', '430300', '湘潭市', '0731', '411100', 'Y', null, null, null, null, 'Xiangtan');
INSERT INTO `sys_city` VALUES ('430000', '430400', '衡阳市', '0734', '421001', 'Y', null, null, null, null, 'Hengyang');
INSERT INTO `sys_city` VALUES ('430000', '430500', '邵阳市', '0739', '422000', 'Y', null, null, null, null, 'Shaoyang');
INSERT INTO `sys_city` VALUES ('430000', '430600', '岳阳市', '0730', '414000', 'Y', null, null, null, null, 'Yueyang');
INSERT INTO `sys_city` VALUES ('430000', '430700', '常德市', '0736', '415000', 'Y', null, null, null, null, 'Changde');
INSERT INTO `sys_city` VALUES ('430000', '430800', '张家界市', '0744', '427000', 'Y', null, null, null, null, 'Zhangjiajie');
INSERT INTO `sys_city` VALUES ('430000', '430900', '益阳市', '0737', '413000', 'Y', null, null, null, null, 'Yiyang');
INSERT INTO `sys_city` VALUES ('430000', '431000', '郴州市', '0735', '423000', 'Y', null, null, null, null, 'Chenzhou');
INSERT INTO `sys_city` VALUES ('430000', '431100', '永州市', '0746', '425000', 'Y', null, null, null, null, 'Yongzhou');
INSERT INTO `sys_city` VALUES ('430000', '431200', '怀化市', '0745', '418000', 'Y', null, null, null, null, 'Huaihua');
INSERT INTO `sys_city` VALUES ('430000', '431300', '娄底市', '0738', '417000', 'Y', null, null, null, null, 'Loudi');
INSERT INTO `sys_city` VALUES ('430000', '433100', '湘西土家族苗族自治州', '0743', '416000', 'Y', null, null, null, null, 'Xiangxi');
INSERT INTO `sys_city` VALUES ('440000', '440100', '广州市', '020', '510032', 'Y', null, null, null, null, 'Guangzhou');
INSERT INTO `sys_city` VALUES ('440000', '440200', '韶关市', '0751', '512002', 'Y', null, null, null, null, 'Shaoguan');
INSERT INTO `sys_city` VALUES ('440000', '440300', '深圳市', '0755', '518035', 'Y', null, null, null, null, 'Shenzhen');
INSERT INTO `sys_city` VALUES ('440000', '440400', '珠海市', '0756', '519000', 'Y', null, null, null, null, 'Zhuhai');
INSERT INTO `sys_city` VALUES ('440000', '440500', '汕头市', '0754', '515041', 'Y', null, null, null, null, 'Shantou');
INSERT INTO `sys_city` VALUES ('440000', '440600', '佛山市', '0757', '528000', 'Y', null, null, null, null, 'Foshan');
INSERT INTO `sys_city` VALUES ('440000', '440700', '江门市', '0750', '529000', 'Y', null, null, null, null, 'Jiangmen');
INSERT INTO `sys_city` VALUES ('440000', '440800', '湛江市', '0759', '524047', 'Y', null, null, null, null, 'Zhanjiang');
INSERT INTO `sys_city` VALUES ('440000', '440900', '茂名市', '0668', '525000', 'Y', null, null, null, null, 'Maoming');
INSERT INTO `sys_city` VALUES ('440000', '441200', '肇庆市', '0758', '526040', 'Y', null, null, null, null, 'Zhaoqing');
INSERT INTO `sys_city` VALUES ('440000', '441300', '惠州市', '0752', '516000', 'Y', null, null, null, null, 'Huizhou');
INSERT INTO `sys_city` VALUES ('440000', '441400', '梅州市', '0753', '514021', 'Y', null, null, null, null, 'Meizhou');
INSERT INTO `sys_city` VALUES ('440000', '441500', '汕尾市', '0660', '516600', 'Y', null, null, null, null, 'Shanwei');
INSERT INTO `sys_city` VALUES ('440000', '441600', '河源市', '0762', '517000', 'Y', null, null, null, null, 'Heyuan');
INSERT INTO `sys_city` VALUES ('440000', '441700', '阳江市', '0662', '529500', 'Y', null, null, null, null, 'Yangjiang');
INSERT INTO `sys_city` VALUES ('440000', '441800', '清远市', '0763', '511500', 'Y', null, null, null, null, 'Qingyuan');
INSERT INTO `sys_city` VALUES ('440000', '441900', '东莞市', '0769', '523888', 'Y', null, null, null, null, 'Dongguan');
INSERT INTO `sys_city` VALUES ('440000', '442000', '中山市', '0760', '528403', 'Y', null, null, null, null, 'Zhongshan');
INSERT INTO `sys_city` VALUES ('440000', '445100', '潮州市', '0768', '521000', 'Y', null, null, null, null, 'Chaozhou');
INSERT INTO `sys_city` VALUES ('440000', '445200', '揭阳市', '0633', '522000', 'Y', null, null, null, null, 'Jieyang');
INSERT INTO `sys_city` VALUES ('440000', '445300', '云浮市', '0766', '527300', 'Y', null, null, null, null, 'Yunfu');
INSERT INTO `sys_city` VALUES ('450000', '450100', '南宁市', '0771', '530028', 'Y', null, null, null, null, 'Nanning');
INSERT INTO `sys_city` VALUES ('450000', '450200', '柳州市', '0772', '545001', 'Y', null, null, null, null, 'Liuzhou');
INSERT INTO `sys_city` VALUES ('450000', '450300', '桂林市', '0773', '541100', 'Y', null, null, null, null, 'Guilin');
INSERT INTO `sys_city` VALUES ('450000', '450400', '梧州市', '0774', '543002', 'Y', null, null, null, null, 'Wuzhou');
INSERT INTO `sys_city` VALUES ('450000', '450500', '北海市', '0779', '536000', 'Y', null, null, null, null, 'Beihai');
INSERT INTO `sys_city` VALUES ('450000', '450600', '防城港市', '0770', '538001', 'Y', null, null, null, null, 'Fangchenggang');
INSERT INTO `sys_city` VALUES ('450000', '450700', '钦州市', '0777', '535099', 'Y', null, null, null, null, 'Qinzhou');
INSERT INTO `sys_city` VALUES ('450000', '450800', '贵港市', '0775', '537100', 'Y', null, null, null, null, 'Guigang');
INSERT INTO `sys_city` VALUES ('450000', '450900', '玉林市', '0775', '537000', 'Y', null, null, null, null, 'Yulin');
INSERT INTO `sys_city` VALUES ('450000', '451000', '百色市', '0776', '533000', 'Y', null, null, null, null, 'Baise');
INSERT INTO `sys_city` VALUES ('450000', '451100', '贺州市', '0774', '542800', 'Y', null, null, null, null, 'Hezhou');
INSERT INTO `sys_city` VALUES ('450000', '451200', '河池市', '0778', '547000', 'Y', null, null, null, null, 'Hechi');
INSERT INTO `sys_city` VALUES ('450000', '451300', '来宾市', '0772', '546100', 'Y', null, null, null, null, 'Laibin');
INSERT INTO `sys_city` VALUES ('450000', '451400', '崇左市', '0771', '532299', 'Y', null, null, null, null, 'Chongzuo');
INSERT INTO `sys_city` VALUES ('460000', '460100', '海口市', '0898', '570000', 'Y', null, null, null, null, 'Haikou');
INSERT INTO `sys_city` VALUES ('460000', '460200', '三亚市', '0898', '572000', 'Y', null, null, null, null, 'Sanya');
INSERT INTO `sys_city` VALUES ('460000', '460300', '三沙市', '0898', '573199', 'Y', null, null, null, null, 'Sansha');
INSERT INTO `sys_city` VALUES ('460000', '469000', '直辖县级', null, null, 'Y', null, null, null, null, null);
INSERT INTO `sys_city` VALUES ('500000', '500100', '重庆市', '023', '400000', 'Y', null, null, null, null, 'Chongqing');
INSERT INTO `sys_city` VALUES ('500000', '500300', '两江新区', '023', '400000', 'Y', null, null, null, null, 'Liangjiangxinqu');
INSERT INTO `sys_city` VALUES ('510000', '510100', '成都市', '028', '610015', 'Y', null, null, null, null, 'Chengdu');
INSERT INTO `sys_city` VALUES ('510000', '510300', '自贡市', '0813', '643000', 'Y', null, null, null, null, 'Zigong');
INSERT INTO `sys_city` VALUES ('510000', '510400', '攀枝花市', '0812', '617000', 'Y', null, null, null, null, 'Panzhihua');
INSERT INTO `sys_city` VALUES ('510000', '510500', '泸州市', '0830', '646000', 'Y', null, null, null, null, 'Luzhou');
INSERT INTO `sys_city` VALUES ('510000', '510600', '德阳市', '0838', '618000', 'Y', null, null, null, null, 'Deyang');
INSERT INTO `sys_city` VALUES ('510000', '510700', '绵阳市', '0816', '621000', 'Y', null, null, null, null, 'Mianyang');
INSERT INTO `sys_city` VALUES ('510000', '510800', '广元市', '0839', '628000', 'Y', null, null, null, null, 'Guangyuan');
INSERT INTO `sys_city` VALUES ('510000', '510900', '遂宁市', '0825', '629000', 'Y', null, null, null, null, 'Suining');
INSERT INTO `sys_city` VALUES ('510000', '511000', '内江市', '0832', '641000', 'Y', null, null, null, null, 'Neijiang');
INSERT INTO `sys_city` VALUES ('510000', '511100', '乐山市', '0833', '614000', 'Y', null, null, null, null, 'Leshan');
INSERT INTO `sys_city` VALUES ('510000', '511300', '南充市', '0817', '637000', 'Y', null, null, null, null, 'Nanchong');
INSERT INTO `sys_city` VALUES ('510000', '511400', '眉山市', '028', '620020', 'Y', null, null, null, null, 'Meishan');
INSERT INTO `sys_city` VALUES ('510000', '511500', '宜宾市', '0831', '644000', 'Y', null, null, null, null, 'Yibin');
INSERT INTO `sys_city` VALUES ('510000', '511600', '广安市', '0826', '638000', 'Y', null, null, null, null, 'Guang\'an');
INSERT INTO `sys_city` VALUES ('510000', '511700', '达州市', '0818', '635000', 'Y', null, null, null, null, 'Dazhou');
INSERT INTO `sys_city` VALUES ('510000', '511800', '雅安市', '0835', '625000', 'Y', null, null, null, null, 'Ya\'an');
INSERT INTO `sys_city` VALUES ('510000', '511900', '巴中市', '0827', '636000', 'Y', null, null, null, null, 'Bazhong');
INSERT INTO `sys_city` VALUES ('510000', '512000', '资阳市', '028', '641300', 'Y', null, null, null, null, 'Ziyang');
INSERT INTO `sys_city` VALUES ('510000', '513200', '阿坝藏族羌族自治州', '0837', '624000', 'Y', null, null, null, null, 'Aba');
INSERT INTO `sys_city` VALUES ('510000', '513300', '甘孜藏族自治州', '0836', '626000', 'Y', null, null, null, null, 'Garze');
INSERT INTO `sys_city` VALUES ('510000', '513400', '凉山彝族自治州', '0834', '615000', 'Y', null, null, null, null, 'Liangshan');
INSERT INTO `sys_city` VALUES ('520000', '520100', '贵阳市', '0851', '550001', 'Y', null, null, null, null, 'Guiyang');
INSERT INTO `sys_city` VALUES ('520000', '520200', '六盘水市', '0858', '553400', 'Y', null, null, null, null, 'Liupanshui');
INSERT INTO `sys_city` VALUES ('520000', '520300', '遵义市', '0852', '563000', 'Y', null, null, null, null, 'Zunyi');
INSERT INTO `sys_city` VALUES ('520000', '520400', '安顺市', '0853', '561000', 'Y', null, null, null, null, 'Anshun');
INSERT INTO `sys_city` VALUES ('520000', '520500', '毕节市', '0857', '551700', 'Y', null, null, null, null, 'Bijie');
INSERT INTO `sys_city` VALUES ('520000', '520600', '铜仁市', '0856', '554300', 'Y', null, null, null, null, 'Tongren');
INSERT INTO `sys_city` VALUES ('520000', '522300', '黔西南布依族苗族自治州', '0859', '562400', 'Y', null, null, null, null, 'Qianxinan');
INSERT INTO `sys_city` VALUES ('520000', '522600', '黔东南苗族侗族自治州', '0855', '556000', 'Y', null, null, null, null, 'Qiandongnan');
INSERT INTO `sys_city` VALUES ('520000', '522700', '黔南布依族苗族自治州', '0854', '558000', 'Y', null, null, null, null, 'Qiannan');
INSERT INTO `sys_city` VALUES ('530000', '530100', '昆明市', '0871', '650500', 'Y', null, null, null, null, 'Kunming');
INSERT INTO `sys_city` VALUES ('530000', '530300', '曲靖市', '0874', '655000', 'Y', null, null, null, null, 'Qujing');
INSERT INTO `sys_city` VALUES ('530000', '530400', '玉溪市', '0877', '653100', 'Y', null, null, null, null, 'Yuxi');
INSERT INTO `sys_city` VALUES ('530000', '530500', '保山市', '0875', '678000', 'Y', null, null, null, null, 'Baoshan');
INSERT INTO `sys_city` VALUES ('530000', '530600', '昭通市', '0870', '657000', 'Y', null, null, null, null, 'Zhaotong');
INSERT INTO `sys_city` VALUES ('530000', '530700', '丽江市', '0888', '674100', 'Y', null, null, null, null, 'Lijiang');
INSERT INTO `sys_city` VALUES ('530000', '530800', '普洱市', '0879', '665000', 'Y', null, null, null, null, 'Pu\'er');
INSERT INTO `sys_city` VALUES ('530000', '530900', '临沧市', '0883', '677000', 'Y', null, null, null, null, 'Lincang');
INSERT INTO `sys_city` VALUES ('530000', '532300', '楚雄彝族自治州', '0878', '675000', 'Y', null, null, null, null, 'Chuxiong');
INSERT INTO `sys_city` VALUES ('530000', '532500', '红河哈尼族彝族自治州', '0873', '661400', 'Y', null, null, null, null, 'Honghe');
INSERT INTO `sys_city` VALUES ('530000', '532600', '文山壮族苗族自治州', '0876', '663000', 'Y', null, null, null, null, 'Wenshan');
INSERT INTO `sys_city` VALUES ('530000', '532800', '西双版纳傣族自治州', '0691', '666100', 'Y', null, null, null, null, 'Xishuangbanna');
INSERT INTO `sys_city` VALUES ('530000', '532900', '大理白族自治州', '0872', '671000', 'Y', null, null, null, null, 'Dali');
INSERT INTO `sys_city` VALUES ('530000', '533100', '德宏傣族景颇族自治州', '0692', '678400', 'Y', null, null, null, null, 'Dehong');
INSERT INTO `sys_city` VALUES ('530000', '533300', '怒江傈僳族自治州', '0886', '673100', 'Y', null, null, null, null, 'Nujiang');
INSERT INTO `sys_city` VALUES ('530000', '533400', '迪庆藏族自治州', '0887', '674400', 'Y', null, null, null, null, 'Deqen');
INSERT INTO `sys_city` VALUES ('540000', '540100', '拉萨市', '0891', '850000', 'Y', null, null, null, null, 'Lhasa');
INSERT INTO `sys_city` VALUES ('540000', '540200', '日喀则市', '0892', '857000', 'Y', null, null, null, null, 'Rikaze');
INSERT INTO `sys_city` VALUES ('540000', '540300', '昌都市', '0895', '854000', 'Y', null, null, null, null, 'Qamdo');
INSERT INTO `sys_city` VALUES ('540000', '542200', '山南地区', '0893', '856000', 'Y', null, null, null, null, 'Shannan');
INSERT INTO `sys_city` VALUES ('540000', '542400', '那曲地区', '0896', '852000', 'Y', null, null, null, null, 'Nagqu');
INSERT INTO `sys_city` VALUES ('540000', '542500', '阿里地区', '0897', '859000', 'Y', null, null, null, null, 'Ngari');
INSERT INTO `sys_city` VALUES ('540000', '542600', '林芝地区', '0894', '850400', 'Y', null, null, null, null, 'Nyingchi');
INSERT INTO `sys_city` VALUES ('610000', '610100', '西安市', '029', '710003', 'Y', null, null, null, null, 'Xi\'an');
INSERT INTO `sys_city` VALUES ('610000', '610200', '铜川市', '0919', '727100', 'Y', null, null, null, null, 'Tongchuan');
INSERT INTO `sys_city` VALUES ('610000', '610300', '宝鸡市', '0917', '721000', 'Y', null, null, null, null, 'Baoji');
INSERT INTO `sys_city` VALUES ('610000', '610400', '咸阳市', '029', '712000', 'Y', null, null, null, null, 'Xianyang');
INSERT INTO `sys_city` VALUES ('610000', '610500', '渭南市', '0913', '714000', 'Y', null, null, null, null, 'Weinan');
INSERT INTO `sys_city` VALUES ('610000', '610600', '延安市', '0911', '716000', 'Y', null, null, null, null, 'Yan\'an');
INSERT INTO `sys_city` VALUES ('610000', '610700', '汉中市', '0916', '723000', 'Y', null, null, null, null, 'Hanzhong');
INSERT INTO `sys_city` VALUES ('610000', '610800', '榆林市', '0912', '719000', 'Y', null, null, null, null, 'Yulin');

-- ----------------------------
-- Table structure for sys_clayer
-- ----------------------------
DROP TABLE IF EXISTS `sys_clayer`;
CREATE TABLE `sys_clayer` (
  `sys_wlayer_id` varchar(50) DEFAULT NULL COMMENT '窗体编码 ',
  `sys_clayer_id` varchar(50) NOT NULL COMMENT '控件编码 主键顺序编码  规则：HJ + 日期戳+XXXX (四位随机数 ) ',
  `sys_clayer_name` varchar(200) DEFAULT NULL COMMENT '控件名称',
  `sys_clayer_tag` varchar(50) DEFAULT NULL COMMENT '控件标志:例如：edit：edt_XXX  button:btn_XXX  grid:grd_XXX',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_clayer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_clayer
-- ----------------------------

-- ----------------------------
-- Table structure for sys_company
-- ----------------------------
DROP TABLE IF EXISTS `sys_company`;
CREATE TABLE `sys_company` (
  `sys_company_id` varchar(50) NOT NULL COMMENT '公司编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_company_name` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_company_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_company
-- ----------------------------

-- ----------------------------
-- Table structure for sys_country
-- ----------------------------
DROP TABLE IF EXISTS `sys_country`;
CREATE TABLE `sys_country` (
  `sys_country_id` varchar(50) NOT NULL COMMENT '国家编码 区号编码',
  `sys_country_name` varchar(200) DEFAULT NULL COMMENT '国家名称',
  `sys_country_englishname` varchar(200) DEFAULT NULL COMMENT '英语国家名称',
  `sys_country_engname` varchar(200) DEFAULT NULL COMMENT '英文简写国家名称',
  `sys_country_jetlag` varchar(50) DEFAULT NULL COMMENT '时差',
  `sys_country_phonecode` varchar(50) DEFAULT NULL COMMENT '电话代码',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_country_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国家  country';

-- ----------------------------
-- Records of sys_country
-- ----------------------------
INSERT INTO `sys_country` VALUES ('HJ201807180001', '加拿大', 'Canada', 'CA', '-13', '1', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180002', '美国', 'United States of America', 'US', '-13', '1', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180003', '俄罗斯', 'Russia', 'RU', '-5', '7', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180004', '埃及', 'Egypt', 'EG', '-6', '20', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180005', '南非', 'South Africa', 'ZA', '-6', '27', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180006', '希腊', 'Greece', 'GR', '-6', '30', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180007', '荷兰', 'Netherlands', 'NL', '-7', '31', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180008', '比利时', 'Belgium', 'BE', '-7', '32', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180009', '法国', 'France', 'FR', '-8', '33', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180010', '西班牙', 'Spain', 'ES', '-8', '34', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180011', '匈牙利', 'Hungary', 'HU', '-7', '36', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180012', '意大利', 'Italy', 'IT', '-7', '39', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180013', '罗马尼亚', 'Romania', 'RO', '-6', '40', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180014', '瑞士', 'Switzerland', 'CH', '-7', '41', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180015', '奥地利', 'Austria', 'AT', '-7', '43', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180016', '英国', 'United Kiongdom', 'GB', '-8', '44', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180017', '丹麦', 'Denmark', 'DK', '-7', '45', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180018', '瑞典', 'Sweden', 'SE', '-7', '46', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180019', '挪威', 'Norway', 'NO', '-7', '47', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180020', '波兰', 'Poland', 'PL', '-7', '48', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180021', '德国', 'Germany', 'DE', '-7', '49', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180022', '秘鲁', 'Peru', 'PE', '-13', '51', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180023', '墨西哥', 'Mexico', 'MX', '-15', '52', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180024', '古巴', 'Cuba', 'CU', '-13', '53', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180025', '阿根廷', 'Argentina', 'AR', '-11', '54', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180026', '巴西', 'Brazil', 'BR', '-11', '55', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180027', '智利', 'Chile', 'CL', '-13', '56', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180028', '哥伦比亚', 'Colombia', 'CO', '0', '57', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180029', '委内瑞拉', 'Venezuela', 'VE', '-12.3', '58', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180030', '马来西亚', 'Malaysia', 'MY', '-0.5', '60', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180031', '澳大利亚', 'Australia', 'AU', '2', '61', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180032', '印度尼西亚', 'Indonesia', 'ID', '-0.3', '62', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180033', '菲律宾', 'Philippines', 'PH', '0', '63', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180034', '新西兰', 'New Zealand', 'NZ', '4', '64', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180035', '新加坡', 'Singapore', 'SG', '0.3', '65', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180036', '泰国', 'Thailand', 'TH', '-1', '66', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180037', '日本', 'Japan', 'JP', '1', '81', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180038', '韩国', 'Korea', 'KR', '1', '82', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180039', '越南', 'Vietnam', 'VN', '-1', '84', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180040', '中国', 'China', 'CN', '0', '86', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180041', '土耳其', 'Turkey', 'TR', '-6', '90', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180042', '印度', 'India', 'IN', '-2.3', '91', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180043', '巴基斯坦', 'Pakistan', 'PK', '-2.3', '92', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180044', '阿富汗', 'Afghanistan', 'AF', '0', '93', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180045', '斯里兰卡', 'Sri Lanka', 'LK', '0', '94', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180046', '缅甸', 'Burma', 'MM', '-1.3', '95', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180047', '伊朗', 'Iran', 'IR', '-4.3', '98', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180048', '摩洛哥', 'Morocco', 'MA', '-6', '212', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180049', '阿尔及利亚', 'Algeria', 'DZ', '-8', '213', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180050', '突尼斯', 'Tunisia', 'TN', '-7', '216', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180051', '利比亚', 'Libya', 'LY', '-6', '218', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180052', '冈比亚', 'Gambia', 'GM', '-8', '220', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180053', '塞内加尔', 'Senegal', 'SN', '-8', '221', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180054', '马里', 'Mali', 'ML', '-8', '223', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180055', '几内亚', 'Guinea', 'GN', '-8', '224', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180056', '科特迪瓦', 'Ivory Coast', 'KT', '-6', '225', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180057', '布基纳法索', 'Burkina-faso', 'BF', '-8', '226', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180058', '尼日尔', 'Niger', 'NE', '-8', '227', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180059', '多哥', 'Togo', 'TG', '-8', '228', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180060', '贝宁', 'Benin', 'BJ', '-7', '229', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180061', '毛里求斯', 'Mauritius', 'MU', '-4', '230', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180062', '利比里亚', 'Liberia', 'LR', '-8', '231', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180063', '塞拉利昂', 'Sierra Leone', 'SL', '-8', '232', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180064', '加纳', 'Ghana', 'GH', '-8', '233', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180065', '乌兹别克斯坦', 'Uzbekistan', 'UZ', '-5', '233', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180066', '尼日利亚', 'Nigeria', 'NG', '-7', '234', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180067', '乍得', 'Chad', 'TD', '-7', '235', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180068', '中非共和国', 'Central African Republic', 'CF', '-7', '236', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180069', '喀麦隆', 'Cameroon', 'CM', '-7', '237', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180070', '圣多美和普林西比', 'Sao Tome and Principe', 'ST', '-8', '239', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180071', '加蓬', 'Gabon', 'GA', '-7', '241', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180072', '刚果', 'Congo', 'CG', '-7', '242', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180073', '扎伊尔', 'Zaire', 'ZR', '-7', '243', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180074', '安哥拉', 'Angola', 'AO', '-7', '244', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180075', '阿森松', 'Ascension', null, '-8', '247', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180076', '塞舌尔', 'Seychelles', 'SC', '-4', '248', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180077', '苏丹', 'Sudan', 'SD', '-6', '249', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180078', '埃塞俄比亚', 'Ethiopia', 'ET', '-5', '251', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180079', '索马里', 'Somali', 'SO', '-5', '252', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180080', '吉布提', 'Djibouti', 'DJ', '-5', '253', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180081', '肯尼亚', 'Kenya', 'KE', '-5', '254', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180082', '坦桑尼亚', 'Tanzania', 'TZ', '-5', '255', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180083', '乌干达', 'Uganda', 'UG', '-5', '256', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180084', '布隆迪', 'Burundi', 'BI', '-6', '257', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180085', '莫桑比克', 'Mozambique', 'MZ', '-6', '258', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180086', '赞比亚', 'Zambia', 'ZM', '-6', '260', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180087', '马达加斯加', 'Madagascar', 'MG', '-5', '261', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180088', '津巴布韦', 'Zimbabwe', 'ZW', '-6', '263', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180089', '纳米比亚', 'Namibia', 'NA', '-7', '264', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180090', '马拉维', 'Malawi', 'MW', '-6', '265', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180091', '莱索托', 'Lesotho', 'LS', '-6', '266', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180092', '博茨瓦纳', 'Botswana', 'BW', '-6', '267', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180093', '斯威士兰', 'Swaziland', 'SZ', '-6', '268', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180094', '哈萨克斯坦', 'Kazakstan', 'KZ', '-5', '327', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180095', '吉尔吉斯坦', 'Kyrgyzstan', 'KG', '-5', '331', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180096', '直布罗陀', 'Gibraltar', 'GI', '-8', '350', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180097', '葡萄牙', 'Portugal', 'PT', '-8', '351', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180098', '卢森堡', 'Luxembourg', 'LU', '-7', '352', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180099', '爱尔兰', 'Ireland', 'IE', '-4.3', '353', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180100', '冰岛', 'Iceland', 'IS', '-9', '354', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180101', '阿尔巴尼亚', 'Albania', 'AL', '-7', '355', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180102', '马耳他', 'Malta', 'MT', '-7', '356', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180103', '塞浦路斯', 'Cyprus', 'CY', '-6', '357', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180104', '芬兰', 'Finland', 'FI', '-6', '358', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180105', '保加利亚', 'Bulgaria', 'BG', '-6', '359', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180106', '立陶宛', 'Lithuania', 'LT', '-5', '370', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180107', '拉脱维亚', 'Latvia', 'LV', '-5', '371', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180108', '爱沙尼亚', 'Estonia', 'EE', '-5', '372', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180109', '摩尔多瓦', 'Moldova, Republic of', 'MD', '-5', '373', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180110', '亚美尼亚', 'Armenia', 'AM', '-6', '374', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180111', '白俄罗斯', 'Belarus', 'BY', '-6', '375', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180112', '安道尔共和国', 'Andorra', 'AD', '-8', '376', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180113', '摩纳哥', 'Monaco', 'MC', '-7', '377', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180114', '圣马力诺', 'San Marino', 'SM', '-7', '378', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180115', '乌克兰', 'Ukraine', 'UA', '-5', '380', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180116', '南斯拉夫', 'Yugoslavia', 'YU', '-7', '381', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180117', '斯洛文尼亚', 'Slovenia', 'SI', '-7', '386', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180118', '捷克', 'Czech Republic', 'CZ', '-7', '420', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180119', '斯洛伐克', 'Slovakia', 'SK', '-7', '421', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180120', '列支敦士登', 'Liechtenstein', 'LI', '-7', '423', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180121', '伯利兹', 'Belize', 'BZ', '-14', '501', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180122', '危地马拉', 'Guatemala', 'GT', '-14', '502', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180123', '萨尔瓦多', 'EI Salvador', 'SV', '-14', '503', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180124', '洪都拉斯', 'Honduras', 'HN', '-14', '504', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180125', '尼加拉瓜', 'Nicaragua', 'NI', '-14', '505', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180126', '哥斯达黎加', 'Costa Rica', 'CR', '-14', '506', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180127', '巴拿马', 'Panama', 'PA', '-13', '507', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180128', '海地', 'Haiti', 'HT', '-13', '509', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180129', '玻利维亚', 'Bolivia', 'BO', '-12', '591', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180130', '圭亚那', 'Guyana', 'GY', '-11', '592', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180131', '厄瓜多尔', 'Ecuador', 'EC', '-13', '593', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180132', '法属圭亚那', 'French Guiana', 'GF', '-12', '594', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180133', '巴拉圭', 'Paraguay', 'PY', '-12', '595', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180134', '马提尼克', 'Martinique', null, '-12', '596', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180135', '苏里南', 'Suriname', 'SR', '-11.3', '597', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180136', '乌拉圭', 'Uruguay', 'UY', '-10.3', '598', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180137', '文莱', 'Brunei', 'BN', '0', '673', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180138', '瑙鲁', 'Nauru', 'NR', '4', '674', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180139', '巴布亚新几内亚', 'Papua New Cuinea', 'PG', '2', '675', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180140', '汤加', 'Tonga', 'TO', '4', '676', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180141', '所罗门群岛', 'Solomon Is', 'SB', '3', '677', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180142', '斐济', 'Fiji', 'FJ', '4', '679', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180143', '库克群岛', 'Cook Is.', 'CK', '-18.3', '682', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180144', '西萨摩亚', 'Samoa Western', null, '-19', '685', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180145', '法属玻利尼西亚', 'French Polynesia', 'PF', '3', '689', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180146', '朝鲜', 'North Korea', 'KP', '1', '850', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180147', '香港', 'Hongkong', 'HK', '0', '852', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180148', '澳门', 'Macao', 'MO', '0', '853', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180149', '柬埔寨', 'Kampuchea (Cambodia )', 'KH', '-1', '855', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180150', '老挝', 'Laos', 'LA', '-1', '856', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180151', '孟加拉国', 'Bangladesh', 'BD', '-2', '880', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180152', '台湾省', 'Taiwan', 'TW', '0', '886', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180153', '马尔代夫', 'Maldives', 'MV', '-7', '960', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180154', '黎巴嫩', 'Lebanon', 'LB', '-6', '961', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180155', '约旦', 'Jordan', 'JO', '-6', '962', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180156', '叙利亚', 'Syria', 'SY', '-6', '963', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180157', '伊拉克', 'Iraq', 'IQ', '-5', '964', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180158', '科威特', 'Kuwait', 'KW', '-5', '965', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180159', '沙特阿拉伯', 'Saudi Arabia', 'SA', '-5', '966', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180160', '也门', 'Yemen', 'YE', '-5', '967', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180161', '阿曼', 'Oman', 'OM', '-4', '968', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180162', '阿拉伯联合酋长国', 'United Arab Emirates', 'AE', '-4', '971', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180163', '以色列', 'Israel', 'IL', '-6', '972', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180164', '巴林', 'Bahrain', 'BH', '-5', '973', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180165', '卡塔尔', 'Qatar', 'QA', '-5', '974', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180166', '蒙古', 'Mongolia', 'MN', '0', '976', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180167', '尼泊尔', 'Nepal', 'NP', '-2.3', '977', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180168', '塔吉克斯坦', 'Tajikstan', 'TJ', '-5', '992', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180169', '土库曼斯坦', 'Turkmenistan', 'TM', '-5', '993', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180170', '阿塞拜疆', 'Azerbaijan', 'AZ', '-5', '994', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180171', '格鲁吉亚', 'Georgia', 'GE', '0', '995', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180172', '巴哈马', 'Bahamas', 'BS', '-13', '1242', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180173', '巴巴多斯', 'Barbados', 'BB', '-12', '1246', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180174', '安圭拉岛', 'Anguilla', 'AI', '-12', '1264', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180175', '安提瓜和巴布达', 'Antigua and Barbuda', 'AG', '-12', '1268', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180176', '开曼群岛', 'Cayman Is.', null, '-13', '1345', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180177', '百慕大群岛', 'Bermuda Is.', 'BM', '-12', '1441', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180178', '蒙特塞拉特岛', 'Montserrat Is', 'MS', '-12', '1664', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180179', '关岛', 'Guam', 'GU', '2', '1671', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180180', '圣卢西亚', 'Saint Lueia', 'LC', '-12', '1758', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180181', '圣文森特岛', 'Saint Vincent', 'VC', '-12', '1784', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180182', '圣文森特', 'St.Vincent', 'VC', '-12', '1784', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180183', '波多黎各', 'Puerto Rico', 'PR', '-12', '1787', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180184', '格林纳达', 'Grenada', 'GD', '-14', '1809', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180185', '特立尼达和多巴哥', 'Trinidad and Tobago', 'TT', '-12', '1809', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180186', '牙买加', 'Jamaica', 'JM', '-12', '1876', 'Y', null, null, null, null, null);
INSERT INTO `sys_country` VALUES ('HJ201807180187', '多米尼加共和国', 'Dominica Rep.', 'DO', '-13', '1890', 'Y', null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `sys_company_id` varchar(50) DEFAULT NULL COMMENT '公司编码',
  `sys_department_id` varchar(50) NOT NULL COMMENT '部门编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_department_name` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_department
-- ----------------------------

-- ----------------------------
-- Table structure for sys_district
-- ----------------------------
DROP TABLE IF EXISTS `sys_district`;
CREATE TABLE `sys_district` (
  `sys_city_id` varchar(50) DEFAULT NULL COMMENT '市编码 ',
  `sys_district_id` varchar(50) NOT NULL COMMENT '市编码 主键顺序编码  规则：HJ + 日期戳+XXXX (四位随机数 ) ',
  `sys_district_name` varchar(200) DEFAULT NULL COMMENT '市名称',
  `sys_district_code` varchar(50) DEFAULT NULL COMMENT '城市区号 ',
  `sys_zipcode` varchar(50) DEFAULT NULL COMMENT '邮政编码 ',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_district_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='县、县级市  city';

-- ----------------------------
-- Records of sys_district
-- ----------------------------
INSERT INTO `sys_district` VALUES ('110100', '110101', '东城区', '010', '100010', 'Y', null, null, null, null, 'Dongcheng');
INSERT INTO `sys_district` VALUES ('110100', '110102', '西城区', '010', '100032', 'Y', null, null, null, null, 'Xicheng');
INSERT INTO `sys_district` VALUES ('110100', '110105', '朝阳区', '010', '100020', 'Y', null, null, null, null, 'Chaoyang');
INSERT INTO `sys_district` VALUES ('110100', '110106', '丰台区', '010', '100071', 'Y', null, null, null, null, 'Fengtai');
INSERT INTO `sys_district` VALUES ('110100', '110107', '石景山区', '010', '100043', 'Y', null, null, null, null, 'Shijingshan');
INSERT INTO `sys_district` VALUES ('110100', '110108', '海淀区', '010', '100089', 'Y', null, null, null, null, 'Haidian');
INSERT INTO `sys_district` VALUES ('110100', '110109', '门头沟区', '010', '102300', 'Y', null, null, null, null, 'Mentougou');
INSERT INTO `sys_district` VALUES ('110100', '110111', '房山区', '010', '102488', 'Y', null, null, null, null, 'Fangshan');
INSERT INTO `sys_district` VALUES ('110100', '110112', '通州区', '010', '101149', 'Y', null, null, null, null, 'Tongzhou');
INSERT INTO `sys_district` VALUES ('110100', '110113', '顺义区', '010', '101300', 'Y', null, null, null, null, 'Shunyi');
INSERT INTO `sys_district` VALUES ('110100', '110114', '昌平区', '010', '102200', 'Y', null, null, null, null, 'Changping');
INSERT INTO `sys_district` VALUES ('110100', '110115', '大兴区', '010', '102600', 'Y', null, null, null, null, 'Daxing');
INSERT INTO `sys_district` VALUES ('110100', '110116', '怀柔区', '010', '101400', 'Y', null, null, null, null, 'Huairou');
INSERT INTO `sys_district` VALUES ('110100', '110117', '平谷区', '010', '101200', 'Y', null, null, null, null, 'Pinggu');
INSERT INTO `sys_district` VALUES ('110100', '110228', '密云县', '010', '101500', 'Y', null, null, null, null, 'Miyun');
INSERT INTO `sys_district` VALUES ('110100', '110229', '延庆县', '010', '102100', 'Y', null, null, null, null, 'Yanqing');
INSERT INTO `sys_district` VALUES ('120100', '120101', '和平区', '022', '300041', 'Y', null, null, null, null, 'Heping');
INSERT INTO `sys_district` VALUES ('120100', '120102', '河东区', '022', '300171', 'Y', null, null, null, null, 'Hedong');
INSERT INTO `sys_district` VALUES ('120100', '120103', '河西区', '022', '300202', 'Y', null, null, null, null, 'Hexi');
INSERT INTO `sys_district` VALUES ('120100', '120104', '南开区', '022', '300110', 'Y', null, null, null, null, 'Nankai');
INSERT INTO `sys_district` VALUES ('120100', '120105', '河北区', '022', '300143', 'Y', null, null, null, null, 'Hebei');
INSERT INTO `sys_district` VALUES ('120100', '120106', '红桥区', '022', '300131', 'Y', null, null, null, null, 'Hongqiao');
INSERT INTO `sys_district` VALUES ('120100', '120110', '东丽区', '022', '300300', 'Y', null, null, null, null, 'Dongli');
INSERT INTO `sys_district` VALUES ('120100', '120111', '西青区', '022', '300380', 'Y', null, null, null, null, 'Xiqing');
INSERT INTO `sys_district` VALUES ('120100', '120112', '津南区', '022', '300350', 'Y', null, null, null, null, 'Jinnan');
INSERT INTO `sys_district` VALUES ('120100', '120113', '北辰区', '022', '300400', 'Y', null, null, null, null, 'Beichen');
INSERT INTO `sys_district` VALUES ('120100', '120114', '武清区', '022', '301700', 'Y', null, null, null, null, 'Wuqing');
INSERT INTO `sys_district` VALUES ('120100', '120115', '宝坻区', '022', '301800', 'Y', null, null, null, null, 'Baodi');
INSERT INTO `sys_district` VALUES ('120100', '120116', '滨海新区', '022', '300451', 'Y', null, null, null, null, 'Binhaixinqu');
INSERT INTO `sys_district` VALUES ('120100', '120221', '宁河县', '022', '301500', 'Y', null, null, null, null, 'Ninghe');
INSERT INTO `sys_district` VALUES ('120100', '120223', '静海县', '022', '301600', 'Y', null, null, null, null, 'Jinghai');
INSERT INTO `sys_district` VALUES ('120100', '120225', '蓟县', '022', '301900', 'Y', null, null, null, null, 'Jixian');
INSERT INTO `sys_district` VALUES ('130100', '130102', '长安区', '0311', '050011', 'Y', null, null, null, null, 'Chang\'an');
INSERT INTO `sys_district` VALUES ('130100', '130104', '桥西区', '0311', '050091', 'Y', null, null, null, null, 'Qiaoxi');
INSERT INTO `sys_district` VALUES ('130100', '130105', '新华区', '0311', '050051', 'Y', null, null, null, null, 'Xinhua');
INSERT INTO `sys_district` VALUES ('130100', '130107', '井陉矿区', '0311', '050100', 'Y', null, null, null, null, 'Jingxingkuangqu');
INSERT INTO `sys_district` VALUES ('130100', '130108', '裕华区', '0311', '050031', 'Y', null, null, null, null, 'Yuhua');
INSERT INTO `sys_district` VALUES ('130100', '130109', '藁城区', '0311', '052160', 'Y', null, null, null, null, 'Gaocheng');
INSERT INTO `sys_district` VALUES ('130100', '130110', '鹿泉区', '0311', '050200', 'Y', null, null, null, null, 'Luquan');
INSERT INTO `sys_district` VALUES ('130100', '130111', '栾城区', '0311', '051430', 'Y', null, null, null, null, 'Luancheng');
INSERT INTO `sys_district` VALUES ('130100', '130121', '井陉县', '0311', '050300', 'Y', null, null, null, null, 'Jingxing');
INSERT INTO `sys_district` VALUES ('130100', '130123', '正定县', '0311', '050800', 'Y', null, null, null, null, 'Zhengding');
INSERT INTO `sys_district` VALUES ('130100', '130125', '行唐县', '0311', '050600', 'Y', null, null, null, null, 'Xingtang');
INSERT INTO `sys_district` VALUES ('130100', '130126', '灵寿县', '0311', '050500', 'Y', null, null, null, null, 'Lingshou');
INSERT INTO `sys_district` VALUES ('130100', '130127', '高邑县', '0311', '051330', 'Y', null, null, null, null, 'Gaoyi');
INSERT INTO `sys_district` VALUES ('130100', '130128', '深泽县', '0311', '052560', 'Y', null, null, null, null, 'Shenze');
INSERT INTO `sys_district` VALUES ('130100', '130129', '赞皇县', '0311', '051230', 'Y', null, null, null, null, 'Zanhuang');
INSERT INTO `sys_district` VALUES ('130100', '130130', '无极县', '0311', '052460', 'Y', null, null, null, null, 'Wuji');
INSERT INTO `sys_district` VALUES ('130100', '130131', '平山县', '0311', '050400', 'Y', null, null, null, null, 'Pingshan');
INSERT INTO `sys_district` VALUES ('130100', '130132', '元氏县', '0311', '051130', 'Y', null, null, null, null, 'Yuanshi');
INSERT INTO `sys_district` VALUES ('130100', '130133', '赵县', '0311', '051530', 'Y', null, null, null, null, 'Zhaoxian');
INSERT INTO `sys_district` VALUES ('130100', '130181', '辛集市', '0311', '052360', 'Y', null, null, null, null, 'Xinji');
INSERT INTO `sys_district` VALUES ('130100', '130183', '晋州市', '0311', '052260', 'Y', null, null, null, null, 'Jinzhou');
INSERT INTO `sys_district` VALUES ('130100', '130184', '新乐市', '0311', '050700', 'Y', null, null, null, null, 'Xinle');
INSERT INTO `sys_district` VALUES ('130200', '130202', '路南区', '0315', '063000', 'Y', null, null, null, null, 'Lunan');
INSERT INTO `sys_district` VALUES ('130200', '130203', '路北区', '0315', '063000', 'Y', null, null, null, null, 'Lubei');
INSERT INTO `sys_district` VALUES ('130200', '130204', '古冶区', '0315', '063100', 'Y', null, null, null, null, 'Guye');
INSERT INTO `sys_district` VALUES ('130200', '130205', '开平区', '0315', '063021', 'Y', null, null, null, null, 'Kaiping');
INSERT INTO `sys_district` VALUES ('130200', '130207', '丰南区', '0315', '063300', 'Y', null, null, null, null, 'Fengnan');
INSERT INTO `sys_district` VALUES ('130200', '130208', '丰润区', '0315', '064000', 'Y', null, null, null, null, 'Fengrun');
INSERT INTO `sys_district` VALUES ('130200', '130209', '曹妃甸区', '0315', '063200', 'Y', null, null, null, null, 'Caofeidian');
INSERT INTO `sys_district` VALUES ('130200', '130223', '滦县', '0315', '063700', 'Y', null, null, null, null, 'Luanxian');
INSERT INTO `sys_district` VALUES ('130200', '130224', '滦南县', '0315', '063500', 'Y', null, null, null, null, 'Luannan');
INSERT INTO `sys_district` VALUES ('130200', '130225', '乐亭县', '0315', '063600', 'Y', null, null, null, null, 'Laoting');
INSERT INTO `sys_district` VALUES ('130200', '130227', '迁西县', '0315', '064300', 'Y', null, null, null, null, 'Qianxi');
INSERT INTO `sys_district` VALUES ('130200', '130229', '玉田县', '0315', '064100', 'Y', null, null, null, null, 'Yutian');
INSERT INTO `sys_district` VALUES ('130200', '130281', '遵化市', '0315', '064200', 'Y', null, null, null, null, 'Zunhua');
INSERT INTO `sys_district` VALUES ('130200', '130283', '迁安市', '0315', '064400', 'Y', null, null, null, null, 'Qian\'an');
INSERT INTO `sys_district` VALUES ('130300', '130302', '海港区', '0335', '066000', 'Y', null, null, null, null, 'Haigang');
INSERT INTO `sys_district` VALUES ('130300', '130303', '山海关区', '0335', '066200', 'Y', null, null, null, null, 'Shanhaiguan');
INSERT INTO `sys_district` VALUES ('130300', '130304', '北戴河区', '0335', '066100', 'Y', null, null, null, null, 'Beidaihe');
INSERT INTO `sys_district` VALUES ('130300', '130321', '青龙满族自治县', '0335', '066500', 'Y', null, null, null, null, 'Qinglong');
INSERT INTO `sys_district` VALUES ('130300', '130322', '昌黎县', '0335', '066600', 'Y', null, null, null, null, 'Changli');
INSERT INTO `sys_district` VALUES ('130300', '130323', '抚宁县', '0335', '066300', 'Y', null, null, null, null, 'Funing');
INSERT INTO `sys_district` VALUES ('130300', '130324', '卢龙县', '0335', '066400', 'Y', null, null, null, null, 'Lulong');
INSERT INTO `sys_district` VALUES ('130400', '130402', '邯山区', '0310', '056001', 'Y', null, null, null, null, 'Hanshan');
INSERT INTO `sys_district` VALUES ('130400', '130403', '丛台区', '0310', '056002', 'Y', null, null, null, null, 'Congtai');
INSERT INTO `sys_district` VALUES ('130400', '130404', '复兴区', '0310', '056003', 'Y', null, null, null, null, 'Fuxing');
INSERT INTO `sys_district` VALUES ('130400', '130406', '峰峰矿区', '0310', '056200', 'Y', null, null, null, null, 'Fengfengkuangqu');
INSERT INTO `sys_district` VALUES ('130400', '130421', '邯郸县', '0310', '056101', 'Y', null, null, null, null, 'Handan');
INSERT INTO `sys_district` VALUES ('130400', '130423', '临漳县', '0310', '056600', 'Y', null, null, null, null, 'Linzhang');
INSERT INTO `sys_district` VALUES ('130400', '130424', '成安县', '0310', '056700', 'Y', null, null, null, null, 'Cheng\'an');
INSERT INTO `sys_district` VALUES ('130400', '130425', '大名县', '0310', '056900', 'Y', null, null, null, null, 'Daming');
INSERT INTO `sys_district` VALUES ('130400', '130426', '涉县', '0310', '056400', 'Y', null, null, null, null, 'Shexian');
INSERT INTO `sys_district` VALUES ('130400', '130427', '磁县', '0310', '056500', 'Y', null, null, null, null, 'Cixian');
INSERT INTO `sys_district` VALUES ('130400', '130428', '肥乡县', '0310', '057550', 'Y', null, null, null, null, 'Feixiang');
INSERT INTO `sys_district` VALUES ('130400', '130429', '永年县', '0310', '057150', 'Y', null, null, null, null, 'Yongnian');
INSERT INTO `sys_district` VALUES ('130400', '130430', '邱县', '0310', '057450', 'Y', null, null, null, null, 'Qiuxian');
INSERT INTO `sys_district` VALUES ('130400', '130431', '鸡泽县', '0310', '057350', 'Y', null, null, null, null, 'Jize');
INSERT INTO `sys_district` VALUES ('130400', '130432', '广平县', '0310', '057650', 'Y', null, null, null, null, 'Guangping');
INSERT INTO `sys_district` VALUES ('130400', '130433', '馆陶县', '0310', '057750', 'Y', null, null, null, null, 'Guantao');
INSERT INTO `sys_district` VALUES ('130400', '130434', '魏县', '0310', '056800', 'Y', null, null, null, null, 'Weixian');
INSERT INTO `sys_district` VALUES ('130400', '130435', '曲周县', '0310', '057250', 'Y', null, null, null, null, 'Quzhou');
INSERT INTO `sys_district` VALUES ('130400', '130481', '武安市', '0310', '056300', 'Y', null, null, null, null, 'Wu\'an');
INSERT INTO `sys_district` VALUES ('130500', '130502', '桥东区', '0319', '054001', 'Y', null, null, null, null, 'Qiaodong');
INSERT INTO `sys_district` VALUES ('130500', '130503', '桥西区', '0319', '054000', 'Y', null, null, null, null, 'Qiaoxi');
INSERT INTO `sys_district` VALUES ('130500', '130521', '邢台县', '0319', '054001', 'Y', null, null, null, null, 'Xingtai');
INSERT INTO `sys_district` VALUES ('130500', '130522', '临城县', '0319', '054300', 'Y', null, null, null, null, 'Lincheng');
INSERT INTO `sys_district` VALUES ('130500', '130523', '内丘县', '0319', '054200', 'Y', null, null, null, null, 'Neiqiu');
INSERT INTO `sys_district` VALUES ('130500', '130524', '柏乡县', '0319', '055450', 'Y', null, null, null, null, 'Baixiang');
INSERT INTO `sys_district` VALUES ('130500', '130525', '隆尧县', '0319', '055350', 'Y', null, null, null, null, 'Longyao');
INSERT INTO `sys_district` VALUES ('130500', '130526', '任县', '0319', '055150', 'Y', null, null, null, null, 'Renxian');
INSERT INTO `sys_district` VALUES ('130500', '130527', '南和县', '0319', '054400', 'Y', null, null, null, null, 'Nanhe');
INSERT INTO `sys_district` VALUES ('130500', '130528', '宁晋县', '0319', '055550', 'Y', null, null, null, null, 'Ningjin');
INSERT INTO `sys_district` VALUES ('130500', '130529', '巨鹿县', '0319', '055250', 'Y', null, null, null, null, 'Julu');
INSERT INTO `sys_district` VALUES ('130500', '130530', '新河县', '0319', '055650', 'Y', null, null, null, null, 'Xinhe');
INSERT INTO `sys_district` VALUES ('130500', '130531', '广宗县', '0319', '054600', 'Y', null, null, null, null, 'Guangzong');
INSERT INTO `sys_district` VALUES ('130500', '130532', '平乡县', '0319', '054500', 'Y', null, null, null, null, 'Pingxiang');
INSERT INTO `sys_district` VALUES ('130500', '130533', '威县', '0319', '054700', 'Y', null, null, null, null, 'Weixian');
INSERT INTO `sys_district` VALUES ('130500', '130534', '清河县', '0319', '054800', 'Y', null, null, null, null, 'Qinghe');
INSERT INTO `sys_district` VALUES ('130500', '130535', '临西县', '0319', '054900', 'Y', null, null, null, null, 'Linxi');
INSERT INTO `sys_district` VALUES ('130500', '130581', '南宫市', '0319', '055750', 'Y', null, null, null, null, 'Nangong');
INSERT INTO `sys_district` VALUES ('130500', '130582', '沙河市', '0319', '054100', 'Y', null, null, null, null, 'Shahe');
INSERT INTO `sys_district` VALUES ('130600', '130602', '新市区', '0312', '071051', 'Y', null, null, null, null, 'Xinshi');
INSERT INTO `sys_district` VALUES ('130600', '130603', '北市区', '0312', '071000', 'Y', null, null, null, null, 'Beishi');
INSERT INTO `sys_district` VALUES ('130600', '130604', '南市区', '0312', '071001', 'Y', null, null, null, null, 'Nanshi');
INSERT INTO `sys_district` VALUES ('130600', '130621', '满城县', '0312', '072150', 'Y', null, null, null, null, 'Mancheng');
INSERT INTO `sys_district` VALUES ('130600', '130622', '清苑县', '0312', '071100', 'Y', null, null, null, null, 'Qingyuan');
INSERT INTO `sys_district` VALUES ('130600', '130623', '涞水县', '0312', '074100', 'Y', null, null, null, null, 'Laishui');
INSERT INTO `sys_district` VALUES ('130600', '130624', '阜平县', '0312', '073200', 'Y', null, null, null, null, 'Fuping');
INSERT INTO `sys_district` VALUES ('130600', '130625', '徐水县', '0312', '072550', 'Y', null, null, null, null, 'Xushui');
INSERT INTO `sys_district` VALUES ('130600', '130626', '定兴县', '0312', '072650', 'Y', null, null, null, null, 'Dingxing');
INSERT INTO `sys_district` VALUES ('130600', '130627', '唐县', '0312', '072350', 'Y', null, null, null, null, 'Tangxian');
INSERT INTO `sys_district` VALUES ('130600', '130628', '高阳县', '0312', '071500', 'Y', null, null, null, null, 'Gaoyang');
INSERT INTO `sys_district` VALUES ('130600', '130629', '容城县', '0312', '071700', 'Y', null, null, null, null, 'Rongcheng');
INSERT INTO `sys_district` VALUES ('130600', '130630', '涞源县', '0312', '074300', 'Y', null, null, null, null, 'Laiyuan');
INSERT INTO `sys_district` VALUES ('130600', '130631', '望都县', '0312', '072450', 'Y', null, null, null, null, 'Wangdu');
INSERT INTO `sys_district` VALUES ('130600', '130632', '安新县', '0312', '071600', 'Y', null, null, null, null, 'Anxin');
INSERT INTO `sys_district` VALUES ('130600', '130633', '易县', '0312', '074200', 'Y', null, null, null, null, 'Yixian');
INSERT INTO `sys_district` VALUES ('130600', '130634', '曲阳县', '0312', '073100', 'Y', null, null, null, null, 'Quyang');
INSERT INTO `sys_district` VALUES ('130600', '130635', '蠡县', '0312', '071400', 'Y', null, null, null, null, 'Lixian');
INSERT INTO `sys_district` VALUES ('130600', '130636', '顺平县', '0312', '072250', 'Y', null, null, null, null, 'Shunping');
INSERT INTO `sys_district` VALUES ('130600', '130637', '博野县', '0312', '071300', 'Y', null, null, null, null, 'Boye');
INSERT INTO `sys_district` VALUES ('130600', '130638', '雄县', '0312', '071800', 'Y', null, null, null, null, 'Xiongxian');
INSERT INTO `sys_district` VALUES ('130600', '130681', '涿州市', '0312', '072750', 'Y', null, null, null, null, 'Zhuozhou');
INSERT INTO `sys_district` VALUES ('130600', '130682', '定州市', '0312', '073000', 'Y', null, null, null, null, 'Dingzhou');
INSERT INTO `sys_district` VALUES ('130600', '130683', '安国市', '0312', '071200', 'Y', null, null, null, null, 'Anguo');
INSERT INTO `sys_district` VALUES ('130600', '130684', '高碑店市', '0312', '074000', 'Y', null, null, null, null, 'Gaobeidian');
INSERT INTO `sys_district` VALUES ('130700', '130702', '桥东区', '0313', '075000', 'Y', null, null, null, null, 'Qiaodong');
INSERT INTO `sys_district` VALUES ('130700', '130703', '桥西区', '0313', '075061', 'Y', null, null, null, null, 'Qiaoxi');
INSERT INTO `sys_district` VALUES ('130700', '130705', '宣化区', '0313', '075100', 'Y', null, null, null, null, 'Xuanhua');
INSERT INTO `sys_district` VALUES ('130700', '130706', '下花园区', '0313', '075300', 'Y', null, null, null, null, 'Xiahuayuan');
INSERT INTO `sys_district` VALUES ('130700', '130721', '宣化县', '0313', '075100', 'Y', null, null, null, null, 'Xuanhua');
INSERT INTO `sys_district` VALUES ('130700', '130722', '张北县', '0313', '076450', 'Y', null, null, null, null, 'Zhangbei');
INSERT INTO `sys_district` VALUES ('130700', '130723', '康保县', '0313', '076650', 'Y', null, null, null, null, 'Kangbao');
INSERT INTO `sys_district` VALUES ('130700', '130724', '沽源县', '0313', '076550', 'Y', null, null, null, null, 'Guyuan');
INSERT INTO `sys_district` VALUES ('130700', '130725', '尚义县', '0313', '076750', 'Y', null, null, null, null, 'Shangyi');
INSERT INTO `sys_district` VALUES ('130700', '130726', '蔚县', '0313', '075700', 'Y', null, null, null, null, 'Yuxian');
INSERT INTO `sys_district` VALUES ('130700', '130727', '阳原县', '0313', '075800', 'Y', null, null, null, null, 'Yangyuan');
INSERT INTO `sys_district` VALUES ('130700', '130728', '怀安县', '0313', '076150', 'Y', null, null, null, null, 'Huai\'an');
INSERT INTO `sys_district` VALUES ('130700', '130729', '万全县', '0313', '076250', 'Y', null, null, null, null, 'Wanquan');
INSERT INTO `sys_district` VALUES ('130700', '130730', '怀来县', '0313', '075400', 'Y', null, null, null, null, 'Huailai');
INSERT INTO `sys_district` VALUES ('130700', '130731', '涿鹿县', '0313', '075600', 'Y', null, null, null, null, 'Zhuolu');
INSERT INTO `sys_district` VALUES ('130700', '130732', '赤城县', '0313', '075500', 'Y', null, null, null, null, 'Chicheng');
INSERT INTO `sys_district` VALUES ('130700', '130733', '崇礼县', '0313', '076350', 'Y', null, null, null, null, 'Chongli');
INSERT INTO `sys_district` VALUES ('130800', '130802', '双桥区', '0314', '067000', 'Y', null, null, null, null, 'Shuangqiao');
INSERT INTO `sys_district` VALUES ('130800', '130803', '双滦区', '0314', '067001', 'Y', null, null, null, null, 'Shuangluan');
INSERT INTO `sys_district` VALUES ('130800', '130804', '鹰手营子矿区', '0314', '067200', 'Y', null, null, null, null, 'Yingshouyingzikuangqu');
INSERT INTO `sys_district` VALUES ('130800', '130821', '承德县', '0314', '067400', 'Y', null, null, null, null, 'Chengde');
INSERT INTO `sys_district` VALUES ('130800', '130822', '兴隆县', '0314', '067300', 'Y', null, null, null, null, 'Xinglong');
INSERT INTO `sys_district` VALUES ('130800', '130823', '平泉县', '0314', '067500', 'Y', null, null, null, null, 'Pingquan');
INSERT INTO `sys_district` VALUES ('130800', '130824', '滦平县', '0314', '068250', 'Y', null, null, null, null, 'Luanping');
INSERT INTO `sys_district` VALUES ('130800', '130825', '隆化县', '0314', '068150', 'Y', null, null, null, null, 'Longhua');
INSERT INTO `sys_district` VALUES ('130800', '130826', '丰宁满族自治县', '0314', '068350', 'Y', null, null, null, null, 'Fengning');
INSERT INTO `sys_district` VALUES ('130800', '130827', '宽城满族自治县', '0314', '067600', 'Y', null, null, null, null, 'Kuancheng');
INSERT INTO `sys_district` VALUES ('130800', '130828', '围场满族蒙古族自治县', '0314', '068450', 'Y', null, null, null, null, 'Weichang');
INSERT INTO `sys_district` VALUES ('130900', '130902', '新华区', '0317', '061000', 'Y', null, null, null, null, 'Xinhua');
INSERT INTO `sys_district` VALUES ('130900', '130903', '运河区', '0317', '061001', 'Y', null, null, null, null, 'Yunhe');
INSERT INTO `sys_district` VALUES ('130900', '130921', '沧县', '0317', '061000', 'Y', null, null, null, null, 'Cangxian');
INSERT INTO `sys_district` VALUES ('130900', '130922', '青县', '0317', '062650', 'Y', null, null, null, null, 'Qingxian');
INSERT INTO `sys_district` VALUES ('130900', '130923', '东光县', '0317', '061600', 'Y', null, null, null, null, 'Dongguang');
INSERT INTO `sys_district` VALUES ('130900', '130924', '海兴县', '0317', '061200', 'Y', null, null, null, null, 'Haixing');
INSERT INTO `sys_district` VALUES ('130900', '130925', '盐山县', '0317', '061300', 'Y', null, null, null, null, 'Yanshan');
INSERT INTO `sys_district` VALUES ('130900', '130926', '肃宁县', '0317', '062350', 'Y', null, null, null, null, 'Suning');
INSERT INTO `sys_district` VALUES ('130900', '130927', '南皮县', '0317', '061500', 'Y', null, null, null, null, 'Nanpi');
INSERT INTO `sys_district` VALUES ('130900', '130928', '吴桥县', '0317', '061800', 'Y', null, null, null, null, 'Wuqiao');
INSERT INTO `sys_district` VALUES ('130900', '130929', '献县', '0317', '062250', 'Y', null, null, null, null, 'Xianxian');
INSERT INTO `sys_district` VALUES ('130900', '130930', '孟村回族自治县', '0317', '061400', 'Y', null, null, null, null, 'Mengcun');
INSERT INTO `sys_district` VALUES ('130900', '130981', '泊头市', '0317', '062150', 'Y', null, null, null, null, 'Botou');
INSERT INTO `sys_district` VALUES ('130900', '130982', '任丘市', '0317', '062550', 'Y', null, null, null, null, 'Renqiu');
INSERT INTO `sys_district` VALUES ('130900', '130983', '黄骅市', '0317', '061100', 'Y', null, null, null, null, 'Huanghua');
INSERT INTO `sys_district` VALUES ('130900', '130984', '河间市', '0317', '062450', 'Y', null, null, null, null, 'Hejian');
INSERT INTO `sys_district` VALUES ('131000', '131002', '安次区', '0316', '065000', 'Y', null, null, null, null, 'Anci');
INSERT INTO `sys_district` VALUES ('131000', '131003', '广阳区', '0316', '065000', 'Y', null, null, null, null, 'Guangyang');
INSERT INTO `sys_district` VALUES ('131000', '131022', '固安县', '0316', '065500', 'Y', null, null, null, null, 'Gu\'an');
INSERT INTO `sys_district` VALUES ('131000', '131023', '永清县', '0316', '065600', 'Y', null, null, null, null, 'Yongqing');
INSERT INTO `sys_district` VALUES ('131000', '131024', '香河县', '0316', '065400', 'Y', null, null, null, null, 'Xianghe');
INSERT INTO `sys_district` VALUES ('131000', '131025', '大城县', '0316', '065900', 'Y', null, null, null, null, 'Daicheng');
INSERT INTO `sys_district` VALUES ('131000', '131026', '文安县', '0316', '065800', 'Y', null, null, null, null, 'Wen\'an');
INSERT INTO `sys_district` VALUES ('131000', '131028', '大厂回族自治县', '0316', '065300', 'Y', null, null, null, null, 'Dachang');
INSERT INTO `sys_district` VALUES ('131000', '131081', '霸州市', '0316', '065700', 'Y', null, null, null, null, 'Bazhou');
INSERT INTO `sys_district` VALUES ('131000', '131082', '三河市', '0316', '065200', 'Y', null, null, null, null, 'Sanhe');
INSERT INTO `sys_district` VALUES ('131100', '131102', '桃城区', '0318', '053000', 'Y', null, null, null, null, 'Taocheng');
INSERT INTO `sys_district` VALUES ('131100', '131121', '枣强县', '0318', '053100', 'Y', null, null, null, null, 'Zaoqiang');
INSERT INTO `sys_district` VALUES ('131100', '131122', '武邑县', '0318', '053400', 'Y', null, null, null, null, 'Wuyi');
INSERT INTO `sys_district` VALUES ('131100', '131123', '武强县', '0318', '053300', 'Y', null, null, null, null, 'Wuqiang');
INSERT INTO `sys_district` VALUES ('131100', '131124', '饶阳县', '0318', '053900', 'Y', null, null, null, null, 'Raoyang');
INSERT INTO `sys_district` VALUES ('131100', '131125', '安平县', '0318', '053600', 'Y', null, null, null, null, 'Anping');
INSERT INTO `sys_district` VALUES ('131100', '131126', '故城县', '0318', '053800', 'Y', null, null, null, null, 'Gucheng');
INSERT INTO `sys_district` VALUES ('131100', '131127', '景县', '0318', '053500', 'Y', null, null, null, null, 'Jingxian');
INSERT INTO `sys_district` VALUES ('131100', '131128', '阜城县', '0318', '053700', 'Y', null, null, null, null, 'Fucheng');
INSERT INTO `sys_district` VALUES ('131100', '131181', '冀州市', '0318', '053200', 'Y', null, null, null, null, 'Jizhou');
INSERT INTO `sys_district` VALUES ('131100', '131182', '深州市', '0318', '053800', 'Y', null, null, null, null, 'Shenzhou');
INSERT INTO `sys_district` VALUES ('140100', '140105', '小店区', '0351', '030032', 'Y', null, null, null, null, 'Xiaodian');
INSERT INTO `sys_district` VALUES ('140100', '140106', '迎泽区', '0351', '030002', 'Y', null, null, null, null, 'Yingze');
INSERT INTO `sys_district` VALUES ('140100', '140107', '杏花岭区', '0351', '030009', 'Y', null, null, null, null, 'Xinghualing');
INSERT INTO `sys_district` VALUES ('140100', '140108', '尖草坪区', '0351', '030023', 'Y', null, null, null, null, 'Jiancaoping');
INSERT INTO `sys_district` VALUES ('140100', '140109', '万柏林区', '0351', '030024', 'Y', null, null, null, null, 'Wanbailin');
INSERT INTO `sys_district` VALUES ('140100', '140110', '晋源区', '0351', '030025', 'Y', null, null, null, null, 'Jinyuan');
INSERT INTO `sys_district` VALUES ('140100', '140121', '清徐县', '0351', '030400', 'Y', null, null, null, null, 'Qingxu');
INSERT INTO `sys_district` VALUES ('140100', '140122', '阳曲县', '0351', '030100', 'Y', null, null, null, null, 'Yangqu');
INSERT INTO `sys_district` VALUES ('140100', '140123', '娄烦县', '0351', '030300', 'Y', null, null, null, null, 'Loufan');
INSERT INTO `sys_district` VALUES ('140100', '140181', '古交市', '0351', '030200', 'Y', null, null, null, null, 'Gujiao');
INSERT INTO `sys_district` VALUES ('140200', '140202', '城区', '0352', '037008', 'Y', null, null, null, null, 'Chengqu');
INSERT INTO `sys_district` VALUES ('140200', '140203', '矿区', '0352', '037003', 'Y', null, null, null, null, 'Kuangqu');
INSERT INTO `sys_district` VALUES ('140200', '140211', '南郊区', '0352', '037001', 'Y', null, null, null, null, 'Nanjiao');
INSERT INTO `sys_district` VALUES ('140200', '140212', '新荣区', '0352', '037002', 'Y', null, null, null, null, 'Xinrong');
INSERT INTO `sys_district` VALUES ('140200', '140221', '阳高县', '0352', '038100', 'Y', null, null, null, null, 'Yanggao');
INSERT INTO `sys_district` VALUES ('140200', '140222', '天镇县', '0352', '038200', 'Y', null, null, null, null, 'Tianzhen');
INSERT INTO `sys_district` VALUES ('140200', '140223', '广灵县', '0352', '037500', 'Y', null, null, null, null, 'Guangling');
INSERT INTO `sys_district` VALUES ('140200', '140224', '灵丘县', '0352', '034400', 'Y', null, null, null, null, 'Lingqiu');
INSERT INTO `sys_district` VALUES ('140200', '140225', '浑源县', '0352', '037400', 'Y', null, null, null, null, 'Hunyuan');
INSERT INTO `sys_district` VALUES ('140200', '140226', '左云县', '0352', '037100', 'Y', null, null, null, null, 'Zuoyun');
INSERT INTO `sys_district` VALUES ('140200', '140227', '大同县', '0352', '037300', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_district` VALUES ('140300', '140302', '城区', '0353', '045000', 'Y', null, null, null, null, 'Chengqu');
INSERT INTO `sys_district` VALUES ('140300', '140303', '矿区', '0353', '045000', 'Y', null, null, null, null, 'Kuangqu');
INSERT INTO `sys_district` VALUES ('140300', '140311', '郊区', '0353', '045011', 'Y', null, null, null, null, 'Jiaoqu');
INSERT INTO `sys_district` VALUES ('140300', '140321', '平定县', '0353', '045200', 'Y', null, null, null, null, 'Pingding');
INSERT INTO `sys_district` VALUES ('140300', '140322', '盂县', '0353', '045100', 'Y', null, null, null, null, 'Yuxian');
INSERT INTO `sys_district` VALUES ('140400', '140402', '城区', '0355', '046011', 'Y', null, null, null, null, 'Chengqu');
INSERT INTO `sys_district` VALUES ('140400', '140411', '郊区', '0355', '046011', 'Y', null, null, null, null, 'Jiaoqu');
INSERT INTO `sys_district` VALUES ('140400', '140421', '长治县', '0355', '047100', 'Y', null, null, null, null, 'Changzhi');
INSERT INTO `sys_district` VALUES ('140400', '140423', '襄垣县', '0355', '046200', 'Y', null, null, null, null, 'Xiangyuan');
INSERT INTO `sys_district` VALUES ('140400', '140424', '屯留县', '0355', '046100', 'Y', null, null, null, null, 'Tunliu');
INSERT INTO `sys_district` VALUES ('140400', '140425', '平顺县', '0355', '047400', 'Y', null, null, null, null, 'Pingshun');
INSERT INTO `sys_district` VALUES ('140400', '140426', '黎城县', '0355', '047600', 'Y', null, null, null, null, 'Licheng');
INSERT INTO `sys_district` VALUES ('140400', '140427', '壶关县', '0355', '047300', 'Y', null, null, null, null, 'Huguan');
INSERT INTO `sys_district` VALUES ('140400', '140428', '长子县', '0355', '046600', 'Y', null, null, null, null, 'Zhangzi');
INSERT INTO `sys_district` VALUES ('140400', '140429', '武乡县', '0355', '046300', 'Y', null, null, null, null, 'Wuxiang');
INSERT INTO `sys_district` VALUES ('140400', '140430', '沁县', '0355', '046400', 'Y', null, null, null, null, 'Qinxian');
INSERT INTO `sys_district` VALUES ('140400', '140431', '沁源县', '0355', '046500', 'Y', null, null, null, null, 'Qinyuan');
INSERT INTO `sys_district` VALUES ('140400', '140481', '潞城市', '0355', '047500', 'Y', null, null, null, null, 'Lucheng');
INSERT INTO `sys_district` VALUES ('140500', '140502', '城区', '0356', '048000', 'Y', null, null, null, null, 'Chengqu');
INSERT INTO `sys_district` VALUES ('140500', '140521', '沁水县', '0356', '048200', 'Y', null, null, null, null, 'Qinshui');
INSERT INTO `sys_district` VALUES ('140500', '140522', '阳城县', '0356', '048100', 'Y', null, null, null, null, 'Yangcheng');
INSERT INTO `sys_district` VALUES ('140500', '140524', '陵川县', '0356', '048300', 'Y', null, null, null, null, 'Lingchuan');
INSERT INTO `sys_district` VALUES ('140500', '140525', '泽州县', '0356', '048012', 'Y', null, null, null, null, 'Zezhou');
INSERT INTO `sys_district` VALUES ('140500', '140581', '高平市', '0356', '048400', 'Y', null, null, null, null, 'Gaoping');
INSERT INTO `sys_district` VALUES ('140600', '140602', '朔城区', '0349', '036000', 'Y', null, null, null, null, 'Shuocheng');
INSERT INTO `sys_district` VALUES ('140600', '140603', '平鲁区', '0349', '038600', 'Y', null, null, null, null, 'Pinglu');
INSERT INTO `sys_district` VALUES ('140600', '140621', '山阴县', '0349', '036900', 'Y', null, null, null, null, 'Shanyin');
INSERT INTO `sys_district` VALUES ('140600', '140622', '应县', '0349', '037600', 'Y', null, null, null, null, 'Yingxian');
INSERT INTO `sys_district` VALUES ('140600', '140623', '右玉县', '0349', '037200', 'Y', null, null, null, null, 'Youyu');
INSERT INTO `sys_district` VALUES ('140600', '140624', '怀仁县', '0349', '038300', 'Y', null, null, null, null, 'Huairen');
INSERT INTO `sys_district` VALUES ('140700', '140702', '榆次区', '0354', '030600', 'Y', null, null, null, null, 'Yuci');
INSERT INTO `sys_district` VALUES ('140700', '140721', '榆社县', '0354', '031800', 'Y', null, null, null, null, 'Yushe');
INSERT INTO `sys_district` VALUES ('140700', '140722', '左权县', '0354', '032600', 'Y', null, null, null, null, 'Zuoquan');
INSERT INTO `sys_district` VALUES ('140700', '140723', '和顺县', '0354', '032700', 'Y', null, null, null, null, 'Heshun');
INSERT INTO `sys_district` VALUES ('140700', '140724', '昔阳县', '0354', '045300', 'Y', null, null, null, null, 'Xiyang');
INSERT INTO `sys_district` VALUES ('140700', '140725', '寿阳县', '0354', '045400', 'Y', null, null, null, null, 'Shouyang');
INSERT INTO `sys_district` VALUES ('140700', '140726', '太谷县', '0354', '030800', 'Y', null, null, null, null, 'Taigu');
INSERT INTO `sys_district` VALUES ('140700', '140727', '祁县', '0354', '030900', 'Y', null, null, null, null, 'Qixian');
INSERT INTO `sys_district` VALUES ('140700', '140728', '平遥县', '0354', '031100', 'Y', null, null, null, null, 'Pingyao');
INSERT INTO `sys_district` VALUES ('140700', '140729', '灵石县', '0354', '031300', 'Y', null, null, null, null, 'Lingshi');
INSERT INTO `sys_district` VALUES ('140700', '140781', '介休市', '0354', '032000', 'Y', null, null, null, null, 'Jiexiu');
INSERT INTO `sys_district` VALUES ('140800', '140802', '盐湖区', '0359', '044000', 'Y', null, null, null, null, 'Yanhu');
INSERT INTO `sys_district` VALUES ('140800', '140821', '临猗县', '0359', '044100', 'Y', null, null, null, null, 'Linyi');
INSERT INTO `sys_district` VALUES ('140800', '140822', '万荣县', '0359', '044200', 'Y', null, null, null, null, 'Wanrong');
INSERT INTO `sys_district` VALUES ('140800', '140823', '闻喜县', '0359', '043800', 'Y', null, null, null, null, 'Wenxi');
INSERT INTO `sys_district` VALUES ('140800', '140824', '稷山县', '0359', '043200', 'Y', null, null, null, null, 'Jishan');
INSERT INTO `sys_district` VALUES ('140800', '140825', '新绛县', '0359', '043100', 'Y', null, null, null, null, 'Xinjiang');
INSERT INTO `sys_district` VALUES ('140800', '140826', '绛县', '0359', '043600', 'Y', null, null, null, null, 'Jiangxian');
INSERT INTO `sys_district` VALUES ('140800', '140827', '垣曲县', '0359', '043700', 'Y', null, null, null, null, 'Yuanqu');
INSERT INTO `sys_district` VALUES ('140800', '140828', '夏县', '0359', '044400', 'Y', null, null, null, null, 'Xiaxian');
INSERT INTO `sys_district` VALUES ('140800', '140829', '平陆县', '0359', '044300', 'Y', null, null, null, null, 'Pinglu');
INSERT INTO `sys_district` VALUES ('140800', '140830', '芮城县', '0359', '044600', 'Y', null, null, null, null, 'Ruicheng');
INSERT INTO `sys_district` VALUES ('140800', '140881', '永济市', '0359', '044500', 'Y', null, null, null, null, 'Yongji');
INSERT INTO `sys_district` VALUES ('140800', '140882', '河津市', '0359', '043300', 'Y', null, null, null, null, 'Hejin');
INSERT INTO `sys_district` VALUES ('140900', '140902', '忻府区', '0350', '034000', 'Y', null, null, null, null, 'Xinfu');
INSERT INTO `sys_district` VALUES ('140900', '140921', '定襄县', '0350', '035400', 'Y', null, null, null, null, 'Dingxiang');
INSERT INTO `sys_district` VALUES ('140900', '140922', '五台县', '0350', '035500', 'Y', null, null, null, null, 'Wutai');
INSERT INTO `sys_district` VALUES ('140900', '140923', '代县', '0350', '034200', 'Y', null, null, null, null, 'Daixian');
INSERT INTO `sys_district` VALUES ('140900', '140924', '繁峙县', '0350', '034300', 'Y', null, null, null, null, 'Fanshi');
INSERT INTO `sys_district` VALUES ('140900', '140925', '宁武县', '0350', '036700', 'Y', null, null, null, null, 'Ningwu');
INSERT INTO `sys_district` VALUES ('140900', '140926', '静乐县', '0350', '035100', 'Y', null, null, null, null, 'Jingle');
INSERT INTO `sys_district` VALUES ('140900', '140927', '神池县', '0350', '036100', 'Y', null, null, null, null, 'Shenchi');
INSERT INTO `sys_district` VALUES ('140900', '140928', '五寨县', '0350', '036200', 'Y', null, null, null, null, 'Wuzhai');
INSERT INTO `sys_district` VALUES ('140900', '140929', '岢岚县', '0350', '036300', 'Y', null, null, null, null, 'Kelan');
INSERT INTO `sys_district` VALUES ('140900', '140930', '河曲县', '0350', '036500', 'Y', null, null, null, null, 'Hequ');
INSERT INTO `sys_district` VALUES ('140900', '140931', '保德县', '0350', '036600', 'Y', null, null, null, null, 'Baode');
INSERT INTO `sys_district` VALUES ('140900', '140932', '偏关县', '0350', '036400', 'Y', null, null, null, null, 'Pianguan');
INSERT INTO `sys_district` VALUES ('140900', '140981', '原平市', '0350', '034100', 'Y', null, null, null, null, 'Yuanping');
INSERT INTO `sys_district` VALUES ('141000', '141002', '尧都区', '0357', '041000', 'Y', null, null, null, null, 'Yaodu');
INSERT INTO `sys_district` VALUES ('141000', '141021', '曲沃县', '0357', '043400', 'Y', null, null, null, null, 'Quwo');
INSERT INTO `sys_district` VALUES ('141000', '141022', '翼城县', '0357', '043500', 'Y', null, null, null, null, 'Yicheng');
INSERT INTO `sys_district` VALUES ('141000', '141023', '襄汾县', '0357', '041500', 'Y', null, null, null, null, 'Xiangfen');
INSERT INTO `sys_district` VALUES ('141000', '141024', '洪洞县', '0357', '041600', 'Y', null, null, null, null, 'Hongtong');
INSERT INTO `sys_district` VALUES ('141000', '141025', '古县', '0357', '042400', 'Y', null, null, null, null, 'Guxian');
INSERT INTO `sys_district` VALUES ('141000', '141026', '安泽县', '0357', '042500', 'Y', null, null, null, null, 'Anze');
INSERT INTO `sys_district` VALUES ('141000', '141027', '浮山县', '0357', '042600', 'Y', null, null, null, null, 'Fushan');
INSERT INTO `sys_district` VALUES ('141000', '141028', '吉县', '0357', '042200', 'Y', null, null, null, null, 'Jixian');
INSERT INTO `sys_district` VALUES ('141000', '141029', '乡宁县', '0357', '042100', 'Y', null, null, null, null, 'Xiangning');
INSERT INTO `sys_district` VALUES ('141000', '141030', '大宁县', '0357', '042300', 'Y', null, null, null, null, 'Daning');
INSERT INTO `sys_district` VALUES ('141000', '141031', '隰县', '0357', '041300', 'Y', null, null, null, null, 'Xixian');
INSERT INTO `sys_district` VALUES ('141000', '141032', '永和县', '0357', '041400', 'Y', null, null, null, null, 'Yonghe');
INSERT INTO `sys_district` VALUES ('141000', '141033', '蒲县', '0357', '041200', 'Y', null, null, null, null, 'Puxian');
INSERT INTO `sys_district` VALUES ('141000', '141034', '汾西县', '0357', '031500', 'Y', null, null, null, null, 'Fenxi');
INSERT INTO `sys_district` VALUES ('141000', '141081', '侯马市', '0357', '043000', 'Y', null, null, null, null, 'Houma');
INSERT INTO `sys_district` VALUES ('141000', '141082', '霍州市', '0357', '031400', 'Y', null, null, null, null, 'Huozhou');
INSERT INTO `sys_district` VALUES ('141100', '141102', '离石区', '0358', '033000', 'Y', null, null, null, null, 'Lishi');
INSERT INTO `sys_district` VALUES ('141100', '141121', '文水县', '0358', '032100', 'Y', null, null, null, null, 'Wenshui');
INSERT INTO `sys_district` VALUES ('141100', '141122', '交城县', '0358', '030500', 'Y', null, null, null, null, 'Jiaocheng');
INSERT INTO `sys_district` VALUES ('141100', '141123', '兴县', '0358', '033600', 'Y', null, null, null, null, 'Xingxian');
INSERT INTO `sys_district` VALUES ('141100', '141124', '临县', '0358', '033200', 'Y', null, null, null, null, 'Linxian');
INSERT INTO `sys_district` VALUES ('141100', '141125', '柳林县', '0358', '033300', 'Y', null, null, null, null, 'Liulin');
INSERT INTO `sys_district` VALUES ('141100', '141126', '石楼县', '0358', '032500', 'Y', null, null, null, null, 'Shilou');
INSERT INTO `sys_district` VALUES ('141100', '141127', '岚县', '0358', '033500', 'Y', null, null, null, null, 'Lanxian');
INSERT INTO `sys_district` VALUES ('141100', '141128', '方山县', '0358', '033100', 'Y', null, null, null, null, 'Fangshan');
INSERT INTO `sys_district` VALUES ('141100', '141129', '中阳县', '0358', '033400', 'Y', null, null, null, null, 'Zhongyang');
INSERT INTO `sys_district` VALUES ('141100', '141130', '交口县', '0358', '032400', 'Y', null, null, null, null, 'Jiaokou');
INSERT INTO `sys_district` VALUES ('141100', '141181', '孝义市', '0358', '032300', 'Y', null, null, null, null, 'Xiaoyi');
INSERT INTO `sys_district` VALUES ('141100', '141182', '汾阳市', '0358', '032200', 'Y', null, null, null, null, 'Fenyang');
INSERT INTO `sys_district` VALUES ('150100', '150102', '新城区', '0471', '010050', 'Y', null, null, null, null, 'Xincheng');
INSERT INTO `sys_district` VALUES ('150100', '150103', '回民区', '0471', '010030', 'Y', null, null, null, null, 'Huimin');
INSERT INTO `sys_district` VALUES ('150100', '150104', '玉泉区', '0471', '010020', 'Y', null, null, null, null, 'Yuquan');
INSERT INTO `sys_district` VALUES ('150100', '150105', '赛罕区', '0471', '010020', 'Y', null, null, null, null, 'Saihan');
INSERT INTO `sys_district` VALUES ('150100', '150121', '土默特左旗', '0471', '010100', 'Y', null, null, null, null, 'Tumotezuoqi');
INSERT INTO `sys_district` VALUES ('150100', '150122', '托克托县', '0471', '010200', 'Y', null, null, null, null, 'Tuoketuo');
INSERT INTO `sys_district` VALUES ('150100', '150123', '和林格尔县', '0471', '011500', 'Y', null, null, null, null, 'Helingeer');
INSERT INTO `sys_district` VALUES ('150100', '150124', '清水河县', '0471', '011600', 'Y', null, null, null, null, 'Qingshuihe');
INSERT INTO `sys_district` VALUES ('150100', '150125', '武川县', '0471', '011700', 'Y', null, null, null, null, 'Wuchuan');
INSERT INTO `sys_district` VALUES ('150200', '150202', '东河区', '0472', '014040', 'Y', null, null, null, null, 'Donghe');
INSERT INTO `sys_district` VALUES ('150200', '150203', '昆都仑区', '0472', '014010', 'Y', null, null, null, null, 'Kundulun');
INSERT INTO `sys_district` VALUES ('150200', '150204', '青山区', '0472', '014030', 'Y', null, null, null, null, 'Qingshan');
INSERT INTO `sys_district` VALUES ('150200', '150205', '石拐区', '0472', '014070', 'Y', null, null, null, null, 'Shiguai');
INSERT INTO `sys_district` VALUES ('150200', '150206', '白云鄂博矿区', '0472', '014080', 'Y', null, null, null, null, 'Baiyunebokuangqu');
INSERT INTO `sys_district` VALUES ('150200', '150207', '九原区', '0472', '014060', 'Y', null, null, null, null, 'Jiuyuan');
INSERT INTO `sys_district` VALUES ('150200', '150221', '土默特右旗', '0472', '014100', 'Y', null, null, null, null, 'Tumoteyouqi');
INSERT INTO `sys_district` VALUES ('150200', '150222', '固阳县', '0472', '014200', 'Y', null, null, null, null, 'Guyang');
INSERT INTO `sys_district` VALUES ('150200', '150223', '达尔罕茂明安联合旗', '0472', '014500', 'Y', null, null, null, null, 'Damaoqi');
INSERT INTO `sys_district` VALUES ('150300', '150302', '海勃湾区', '0473', '016000', 'Y', null, null, null, null, 'Haibowan');
INSERT INTO `sys_district` VALUES ('150300', '150303', '海南区', '0473', '016030', 'Y', null, null, null, null, 'Hainan');
INSERT INTO `sys_district` VALUES ('150300', '150304', '乌达区', '0473', '016040', 'Y', null, null, null, null, 'Wuda');
INSERT INTO `sys_district` VALUES ('150400', '150402', '红山区', '0476', '024020', 'Y', null, null, null, null, 'Hongshan');
INSERT INTO `sys_district` VALUES ('150400', '150403', '元宝山区', '0476', '024076', 'Y', null, null, null, null, 'Yuanbaoshan');
INSERT INTO `sys_district` VALUES ('150400', '150404', '松山区', '0476', '024005', 'Y', null, null, null, null, 'Songshan');
INSERT INTO `sys_district` VALUES ('150400', '150421', '阿鲁科尔沁旗', '0476', '025550', 'Y', null, null, null, null, 'Alukeerqinqi');
INSERT INTO `sys_district` VALUES ('150400', '150422', '巴林左旗', '0476', '025450', 'Y', null, null, null, null, 'Balinzuoqi');
INSERT INTO `sys_district` VALUES ('150400', '150423', '巴林右旗', '0476', '025150', 'Y', null, null, null, null, 'Balinyouqi');
INSERT INTO `sys_district` VALUES ('150400', '150424', '林西县', '0476', '025250', 'Y', null, null, null, null, 'Linxi');
INSERT INTO `sys_district` VALUES ('150400', '150425', '克什克腾旗', '0476', '025350', 'Y', null, null, null, null, 'Keshiketengqi');
INSERT INTO `sys_district` VALUES ('150400', '150426', '翁牛特旗', '0476', '024500', 'Y', null, null, null, null, 'Wengniuteqi');
INSERT INTO `sys_district` VALUES ('150400', '150428', '喀喇沁旗', '0476', '024400', 'Y', null, null, null, null, 'Kalaqinqi');
INSERT INTO `sys_district` VALUES ('150400', '150429', '宁城县', '0476', '024200', 'Y', null, null, null, null, 'Ningcheng');
INSERT INTO `sys_district` VALUES ('150400', '150430', '敖汉旗', '0476', '024300', 'Y', null, null, null, null, 'Aohanqi');
INSERT INTO `sys_district` VALUES ('150500', '150502', '科尔沁区', '0475', '028000', 'Y', null, null, null, null, 'Keerqin');
INSERT INTO `sys_district` VALUES ('150500', '150521', '科尔沁左翼中旗', '0475', '029300', 'Y', null, null, null, null, 'Keerqinzuoyizhongqi');
INSERT INTO `sys_district` VALUES ('150500', '150522', '科尔沁左翼后旗', '0475', '028100', 'Y', null, null, null, null, 'Keerqinzuoyihouqi');
INSERT INTO `sys_district` VALUES ('150500', '150523', '开鲁县', '0475', '028400', 'Y', null, null, null, null, 'Kailu');
INSERT INTO `sys_district` VALUES ('150500', '150524', '库伦旗', '0475', '028200', 'Y', null, null, null, null, 'Kulunqi');
INSERT INTO `sys_district` VALUES ('150500', '150525', '奈曼旗', '0475', '028300', 'Y', null, null, null, null, 'Naimanqi');
INSERT INTO `sys_district` VALUES ('150500', '150526', '扎鲁特旗', '0475', '029100', 'Y', null, null, null, null, 'Zhaluteqi');
INSERT INTO `sys_district` VALUES ('150500', '150581', '霍林郭勒市', '0475', '029200', 'Y', null, null, null, null, 'Huolinguole');
INSERT INTO `sys_district` VALUES ('150600', '150602', '东胜区', '0477', '017000', 'Y', null, null, null, null, 'Dongsheng');
INSERT INTO `sys_district` VALUES ('150600', '150621', '达拉特旗', '0477', '014300', 'Y', null, null, null, null, 'Dalateqi');
INSERT INTO `sys_district` VALUES ('150600', '150622', '准格尔旗', '0477', '017100', 'Y', null, null, null, null, 'Zhungeerqi');
INSERT INTO `sys_district` VALUES ('150600', '150623', '鄂托克前旗', '0477', '016200', 'Y', null, null, null, null, 'Etuokeqianqi');
INSERT INTO `sys_district` VALUES ('150600', '150624', '鄂托克旗', '0477', '016100', 'Y', null, null, null, null, 'Etuokeqi');
INSERT INTO `sys_district` VALUES ('150600', '150625', '杭锦旗', '0477', '017400', 'Y', null, null, null, null, 'Hangjinqi');
INSERT INTO `sys_district` VALUES ('150600', '150626', '乌审旗', '0477', '017300', 'Y', null, null, null, null, 'Wushenqi');
INSERT INTO `sys_district` VALUES ('150600', '150627', '伊金霍洛旗', '0477', '017200', 'Y', null, null, null, null, 'Yijinhuoluoqi');
INSERT INTO `sys_district` VALUES ('150700', '150702', '海拉尔区', '0470', '021000', 'Y', null, null, null, null, 'Hailaer');
INSERT INTO `sys_district` VALUES ('150700', '150703', '扎赉诺尔区', '0470', '021410', 'Y', null, null, null, null, 'Zhalainuoer');
INSERT INTO `sys_district` VALUES ('150700', '150721', '阿荣旗', '0470', '162750', 'Y', null, null, null, null, 'Arongqi');
INSERT INTO `sys_district` VALUES ('150700', '150722', '莫力达瓦达斡尔族自治旗', '0470', '162850', 'Y', null, null, null, null, 'Moqi');
INSERT INTO `sys_district` VALUES ('150700', '150723', '鄂伦春自治旗', '0470', '165450', 'Y', null, null, null, null, 'Elunchun');
INSERT INTO `sys_district` VALUES ('150700', '150724', '鄂温克族自治旗', '0470', '021100', 'Y', null, null, null, null, 'Ewen');
INSERT INTO `sys_district` VALUES ('150700', '150725', '陈巴尔虎旗', '0470', '021500', 'Y', null, null, null, null, 'Chenbaerhuqi');
INSERT INTO `sys_district` VALUES ('150700', '150726', '新巴尔虎左旗', '0470', '021200', 'Y', null, null, null, null, 'Xinbaerhuzuoqi');
INSERT INTO `sys_district` VALUES ('150700', '150727', '新巴尔虎右旗', '0470', '021300', 'Y', null, null, null, null, 'Xinbaerhuyouqi');
INSERT INTO `sys_district` VALUES ('150700', '150781', '满洲里市', '0470', '021400', 'Y', null, null, null, null, 'Manzhouli');
INSERT INTO `sys_district` VALUES ('150700', '150782', '牙克石市', '0470', '022150', 'Y', null, null, null, null, 'Yakeshi');
INSERT INTO `sys_district` VALUES ('150700', '150783', '扎兰屯市', '0470', '162650', 'Y', null, null, null, null, 'Zhalantun');
INSERT INTO `sys_district` VALUES ('150700', '150784', '额尔古纳市', '0470', '022250', 'Y', null, null, null, null, 'Eerguna');
INSERT INTO `sys_district` VALUES ('150700', '150785', '根河市', '0470', '022350', 'Y', null, null, null, null, 'Genhe');
INSERT INTO `sys_district` VALUES ('150800', '150802', '临河区', '0478', '015001', 'Y', null, null, null, null, 'Linhe');
INSERT INTO `sys_district` VALUES ('150800', '150821', '五原县', '0478', '015100', 'Y', null, null, null, null, 'Wuyuan');
INSERT INTO `sys_district` VALUES ('150800', '150822', '磴口县', '0478', '015200', 'Y', null, null, null, null, 'Dengkou');
INSERT INTO `sys_district` VALUES ('150800', '150823', '乌拉特前旗', '0478', '014400', 'Y', null, null, null, null, 'Wulateqianqi');
INSERT INTO `sys_district` VALUES ('150800', '150824', '乌拉特中旗', '0478', '015300', 'Y', null, null, null, null, 'Wulatezhongqi');
INSERT INTO `sys_district` VALUES ('150800', '150825', '乌拉特后旗', '0478', '015500', 'Y', null, null, null, null, 'Wulatehouqi');
INSERT INTO `sys_district` VALUES ('150800', '150826', '杭锦后旗', '0478', '015400', 'Y', null, null, null, null, 'Hangjinhouqi');
INSERT INTO `sys_district` VALUES ('150900', '150902', '集宁区', '0474', '012000', 'Y', null, null, null, null, 'Jining');
INSERT INTO `sys_district` VALUES ('150900', '150921', '卓资县', '0474', '012300', 'Y', null, null, null, null, 'Zhuozi');
INSERT INTO `sys_district` VALUES ('150900', '150922', '化德县', '0474', '013350', 'Y', null, null, null, null, 'Huade');
INSERT INTO `sys_district` VALUES ('150900', '150923', '商都县', '0474', '013450', 'Y', null, null, null, null, 'Shangdu');
INSERT INTO `sys_district` VALUES ('150900', '150924', '兴和县', '0474', '013650', 'Y', null, null, null, null, 'Xinghe');
INSERT INTO `sys_district` VALUES ('150900', '150925', '凉城县', '0474', '013750', 'Y', null, null, null, null, 'Liangcheng');
INSERT INTO `sys_district` VALUES ('150900', '150926', '察哈尔右翼前旗', '0474', '012200', 'Y', null, null, null, null, 'Chayouqianqi');
INSERT INTO `sys_district` VALUES ('150900', '150927', '察哈尔右翼中旗', '0474', '013550', 'Y', null, null, null, null, 'Chayouzhongqi');
INSERT INTO `sys_district` VALUES ('150900', '150928', '察哈尔右翼后旗', '0474', '012400', 'Y', null, null, null, null, 'Chayouhouqi');
INSERT INTO `sys_district` VALUES ('150900', '150929', '四子王旗', '0474', '011800', 'Y', null, null, null, null, 'Siziwangqi');
INSERT INTO `sys_district` VALUES ('150900', '150981', '丰镇市', '0474', '012100', 'Y', null, null, null, null, 'Fengzhen');
INSERT INTO `sys_district` VALUES ('152200', '152201', '乌兰浩特市', '0482', '137401', 'Y', null, null, null, null, 'Wulanhaote');
INSERT INTO `sys_district` VALUES ('152200', '152202', '阿尔山市', '0482', '137800', 'Y', null, null, null, null, 'Aershan');
INSERT INTO `sys_district` VALUES ('152200', '152221', '科尔沁右翼前旗', '0482', '137423', 'Y', null, null, null, null, 'Keyouqianqi');
INSERT INTO `sys_district` VALUES ('152200', '152222', '科尔沁右翼中旗', '0482', '029400', 'Y', null, null, null, null, 'Keyouzhongqi');
INSERT INTO `sys_district` VALUES ('152200', '152223', '扎赉特旗', '0482', '137600', 'Y', null, null, null, null, 'Zhalaiteqi');
INSERT INTO `sys_district` VALUES ('152200', '152224', '突泉县', '0482', '137500', 'Y', null, null, null, null, 'Tuquan');
INSERT INTO `sys_district` VALUES ('152500', '152501', '二连浩特市', '0479', '011100', 'Y', null, null, null, null, 'Erlianhaote');
INSERT INTO `sys_district` VALUES ('152500', '152502', '锡林浩特市', '0479', '026021', 'Y', null, null, null, null, 'Xilinhaote');
INSERT INTO `sys_district` VALUES ('152500', '152522', '阿巴嘎旗', '0479', '011400', 'Y', null, null, null, null, 'Abagaqi');
INSERT INTO `sys_district` VALUES ('152500', '152523', '苏尼特左旗', '0479', '011300', 'Y', null, null, null, null, 'Sunitezuoqi');
INSERT INTO `sys_district` VALUES ('152500', '152524', '苏尼特右旗', '0479', '011200', 'Y', null, null, null, null, 'Suniteyouqi');
INSERT INTO `sys_district` VALUES ('152500', '152525', '东乌珠穆沁旗', '0479', '026300', 'Y', null, null, null, null, 'Dongwuqi');
INSERT INTO `sys_district` VALUES ('152500', '152526', '西乌珠穆沁旗', '0479', '026200', 'Y', null, null, null, null, 'Xiwuqi');
INSERT INTO `sys_district` VALUES ('152500', '152527', '太仆寺旗', '0479', '027000', 'Y', null, null, null, null, 'Taipusiqi');
INSERT INTO `sys_district` VALUES ('152500', '152528', '镶黄旗', '0479', '013250', 'Y', null, null, null, null, 'Xianghuangqi');
INSERT INTO `sys_district` VALUES ('152500', '152529', '正镶白旗', '0479', '013800', 'Y', null, null, null, null, 'Zhengxiangbaiqi');
INSERT INTO `sys_district` VALUES ('152500', '152530', '正蓝旗', '0479', '027200', 'Y', null, null, null, null, 'Zhenglanqi');
INSERT INTO `sys_district` VALUES ('152500', '152531', '多伦县', '0479', '027300', 'Y', null, null, null, null, 'Duolun');
INSERT INTO `sys_district` VALUES ('152900', '152921', '阿拉善左旗', '0483', '750306', 'Y', null, null, null, null, 'Alashanzuoqi');
INSERT INTO `sys_district` VALUES ('152900', '152922', '阿拉善右旗', '0483', '737300', 'Y', null, null, null, null, 'Alashanyouqi');
INSERT INTO `sys_district` VALUES ('152900', '152923', '额济纳旗', '0483', '735400', 'Y', null, null, null, null, 'Ejinaqi');
INSERT INTO `sys_district` VALUES ('210100', '210102', '和平区', '024', '110001', 'Y', null, null, null, null, 'Heping');
INSERT INTO `sys_district` VALUES ('210100', '210103', '沈河区', '024', '110011', 'Y', null, null, null, null, 'Shenhe');
INSERT INTO `sys_district` VALUES ('210100', '210104', '大东区', '024', '110041', 'Y', null, null, null, null, 'Dadong');
INSERT INTO `sys_district` VALUES ('210100', '210105', '皇姑区', '024', '110031', 'Y', null, null, null, null, 'Huanggu');
INSERT INTO `sys_district` VALUES ('210100', '210106', '铁西区', '024', '110021', 'Y', null, null, null, null, 'Tiexi');
INSERT INTO `sys_district` VALUES ('210100', '210111', '苏家屯区', '024', '110101', 'Y', null, null, null, null, 'Sujiatun');
INSERT INTO `sys_district` VALUES ('210100', '210112', '浑南区', '024', '110015', 'Y', null, null, null, null, 'Hunnan');
INSERT INTO `sys_district` VALUES ('210100', '210113', '沈北新区', '024', '110121', 'Y', null, null, null, null, 'Shenbeixinqu');
INSERT INTO `sys_district` VALUES ('210100', '210114', '于洪区', '024', '110141', 'Y', null, null, null, null, 'Yuhong');
INSERT INTO `sys_district` VALUES ('210100', '210122', '辽中县', '024', '110200', 'Y', null, null, null, null, 'Liaozhong');
INSERT INTO `sys_district` VALUES ('210100', '210123', '康平县', '024', '110500', 'Y', null, null, null, null, 'Kangping');
INSERT INTO `sys_district` VALUES ('210100', '210124', '法库县', '024', '110400', 'Y', null, null, null, null, 'Faku');
INSERT INTO `sys_district` VALUES ('210100', '210181', '新民市', '024', '110300', 'Y', null, null, null, null, 'Xinmin');
INSERT INTO `sys_district` VALUES ('210200', '210202', '中山区', '0411', '116001', 'Y', null, null, null, null, 'Zhongshan');
INSERT INTO `sys_district` VALUES ('210200', '210203', '西岗区', '0411', '116011', 'Y', null, null, null, null, 'Xigang');
INSERT INTO `sys_district` VALUES ('210200', '210204', '沙河口区', '0411', '116021', 'Y', null, null, null, null, 'Shahekou');
INSERT INTO `sys_district` VALUES ('210200', '210211', '甘井子区', '0411', '116033', 'Y', null, null, null, null, 'Ganjingzi');
INSERT INTO `sys_district` VALUES ('210200', '210212', '旅顺口区', '0411', '116041', 'Y', null, null, null, null, 'Lvshunkou');
INSERT INTO `sys_district` VALUES ('210200', '210213', '金州区', '0411', '116100', 'Y', null, null, null, null, 'Jinzhou');
INSERT INTO `sys_district` VALUES ('210200', '210224', '长海县', '0411', '116500', 'Y', null, null, null, null, 'Changhai');
INSERT INTO `sys_district` VALUES ('210200', '210281', '瓦房店市', '0411', '116300', 'Y', null, null, null, null, 'Wafangdian');
INSERT INTO `sys_district` VALUES ('210200', '210282', '普兰店市', '0411', '116200', 'Y', null, null, null, null, 'Pulandian');
INSERT INTO `sys_district` VALUES ('210200', '210283', '庄河市', '0411', '116400', 'Y', null, null, null, null, 'Zhuanghe');
INSERT INTO `sys_district` VALUES ('210300', '210302', '铁东区', '0412', '114001', 'Y', null, null, null, null, 'Tiedong');
INSERT INTO `sys_district` VALUES ('210300', '210303', '铁西区', '0413', '114013', 'Y', null, null, null, null, 'Tiexi');
INSERT INTO `sys_district` VALUES ('210300', '210304', '立山区', '0414', '114031', 'Y', null, null, null, null, 'Lishan');
INSERT INTO `sys_district` VALUES ('210300', '210311', '千山区', '0415', '114041', 'Y', null, null, null, null, 'Qianshan');
INSERT INTO `sys_district` VALUES ('210300', '210321', '台安县', '0417', '114100', 'Y', null, null, null, null, 'Tai\'an');
INSERT INTO `sys_district` VALUES ('210300', '210323', '岫岩满族自治县', '0418', '114300', 'Y', null, null, null, null, 'Xiuyan');
INSERT INTO `sys_district` VALUES ('210300', '210381', '海城市', '0416', '114200', 'Y', null, null, null, null, 'Haicheng');
INSERT INTO `sys_district` VALUES ('210400', '210402', '新抚区', '024', '113008', 'Y', null, null, null, null, 'Xinfu');
INSERT INTO `sys_district` VALUES ('210400', '210403', '东洲区', '024', '113003', 'Y', null, null, null, null, 'Dongzhou');
INSERT INTO `sys_district` VALUES ('210400', '210404', '望花区', '024', '113001', 'Y', null, null, null, null, 'Wanghua');
INSERT INTO `sys_district` VALUES ('210400', '210411', '顺城区', '024', '113006', 'Y', null, null, null, null, 'Shuncheng');
INSERT INTO `sys_district` VALUES ('210400', '210421', '抚顺县', '024', '113006', 'Y', null, null, null, null, 'Fushun');
INSERT INTO `sys_district` VALUES ('210400', '210422', '新宾满族自治县', '024', '113200', 'Y', null, null, null, null, 'Xinbin');
INSERT INTO `sys_district` VALUES ('210400', '210423', '清原满族自治县', '024', '113300', 'Y', null, null, null, null, 'Qingyuan');
INSERT INTO `sys_district` VALUES ('210500', '210502', '平山区', '0414', '117000', 'Y', null, null, null, null, 'Pingshan');
INSERT INTO `sys_district` VALUES ('210500', '210503', '溪湖区', '0414', '117002', 'Y', null, null, null, null, 'Xihu');
INSERT INTO `sys_district` VALUES ('210500', '210504', '明山区', '0414', '117021', 'Y', null, null, null, null, 'Mingshan');
INSERT INTO `sys_district` VALUES ('210500', '210505', '南芬区', '0414', '117014', 'Y', null, null, null, null, 'Nanfen');
INSERT INTO `sys_district` VALUES ('210500', '210521', '本溪满族自治县', '0414', '117100', 'Y', null, null, null, null, 'Benxi');
INSERT INTO `sys_district` VALUES ('210500', '210522', '桓仁满族自治县', '0414', '117200', 'Y', null, null, null, null, 'Huanren');
INSERT INTO `sys_district` VALUES ('210600', '210602', '元宝区', '0415', '118000', 'Y', null, null, null, null, 'Yuanbao');
INSERT INTO `sys_district` VALUES ('210600', '210603', '振兴区', '0415', '118002', 'Y', null, null, null, null, 'Zhenxing');
INSERT INTO `sys_district` VALUES ('210600', '210604', '振安区', '0415', '118001', 'Y', null, null, null, null, 'Zhen\'an');
INSERT INTO `sys_district` VALUES ('210600', '210624', '宽甸满族自治县', '0415', '118200', 'Y', null, null, null, null, 'Kuandian');
INSERT INTO `sys_district` VALUES ('210600', '210681', '东港市', '0415', '118300', 'Y', null, null, null, null, 'Donggang');
INSERT INTO `sys_district` VALUES ('210600', '210682', '凤城市', '0415', '118100', 'Y', null, null, null, null, 'Fengcheng');
INSERT INTO `sys_district` VALUES ('210700', '210702', '古塔区', '0416', '121001', 'Y', null, null, null, null, 'Guta');
INSERT INTO `sys_district` VALUES ('210700', '210703', '凌河区', '0416', '121000', 'Y', null, null, null, null, 'Linghe');
INSERT INTO `sys_district` VALUES ('210700', '210711', '太和区', '0416', '121011', 'Y', null, null, null, null, 'Taihe');
INSERT INTO `sys_district` VALUES ('210700', '210726', '黑山县', '0416', '121400', 'Y', null, null, null, null, 'Heishan');
INSERT INTO `sys_district` VALUES ('210700', '210727', '义县', '0416', '121100', 'Y', null, null, null, null, 'Yixian');
INSERT INTO `sys_district` VALUES ('210700', '210781', '凌海市', '0416', '121200', 'Y', null, null, null, null, 'Linghai');
INSERT INTO `sys_district` VALUES ('210700', '210782', '北镇市', '0416', '121300', 'Y', null, null, null, null, 'Beizhen');
INSERT INTO `sys_district` VALUES ('210800', '210802', '站前区', '0417', '115002', 'Y', null, null, null, null, 'Zhanqian');
INSERT INTO `sys_district` VALUES ('210800', '210803', '西市区', '0417', '115004', 'Y', null, null, null, null, 'Xishi');
INSERT INTO `sys_district` VALUES ('210800', '210804', '鲅鱼圈区', '0417', '115007', 'Y', null, null, null, null, 'Bayuquan');
INSERT INTO `sys_district` VALUES ('210800', '210811', '老边区', '0417', '115005', 'Y', null, null, null, null, 'Laobian');
INSERT INTO `sys_district` VALUES ('210800', '210881', '盖州市', '0417', '115200', 'Y', null, null, null, null, 'Gaizhou');
INSERT INTO `sys_district` VALUES ('210800', '210882', '大石桥市', '0417', '115100', 'Y', null, null, null, null, 'Dashiqiao');
INSERT INTO `sys_district` VALUES ('210900', '210902', '海州区', '0418', '123000', 'Y', null, null, null, null, 'Haizhou');
INSERT INTO `sys_district` VALUES ('210900', '210903', '新邱区', '0418', '123005', 'Y', null, null, null, null, 'Xinqiu');
INSERT INTO `sys_district` VALUES ('210900', '210904', '太平区', '0418', '123003', 'Y', null, null, null, null, 'Taiping');
INSERT INTO `sys_district` VALUES ('210900', '210905', '清河门区', '0418', '123006', 'Y', null, null, null, null, 'Qinghemen');
INSERT INTO `sys_district` VALUES ('210900', '210911', '细河区', '0418', '123000', 'Y', null, null, null, null, 'Xihe');
INSERT INTO `sys_district` VALUES ('210900', '210921', '阜新蒙古族自治县', '0418', '123100', 'Y', null, null, null, null, 'Fuxin');
INSERT INTO `sys_district` VALUES ('210900', '210922', '彰武县', '0418', '123200', 'Y', null, null, null, null, 'Zhangwu');
INSERT INTO `sys_district` VALUES ('211000', '211002', '白塔区', '0419', '111000', 'Y', null, null, null, null, 'Baita');
INSERT INTO `sys_district` VALUES ('211000', '211003', '文圣区', '0419', '111000', 'Y', null, null, null, null, 'Wensheng');
INSERT INTO `sys_district` VALUES ('211000', '211004', '宏伟区', '0419', '111003', 'Y', null, null, null, null, 'Hongwei');
INSERT INTO `sys_district` VALUES ('211000', '211005', '弓长岭区', '0419', '111008', 'Y', null, null, null, null, 'Gongchangling');
INSERT INTO `sys_district` VALUES ('211000', '211011', '太子河区', '0419', '111000', 'Y', null, null, null, null, 'Taizihe');
INSERT INTO `sys_district` VALUES ('211000', '211021', '辽阳县', '0419', '111200', 'Y', null, null, null, null, 'Liaoyang');
INSERT INTO `sys_district` VALUES ('211000', '211081', '灯塔市', '0419', '111300', 'Y', null, null, null, null, 'Dengta');
INSERT INTO `sys_district` VALUES ('211100', '211102', '双台子区', '0427', '124000', 'Y', null, null, null, null, 'Shuangtaizi');
INSERT INTO `sys_district` VALUES ('211100', '211103', '兴隆台区', '0427', '124010', 'Y', null, null, null, null, 'Xinglongtai');
INSERT INTO `sys_district` VALUES ('211100', '211121', '大洼县', '0427', '124200', 'Y', null, null, null, null, 'Dawa');
INSERT INTO `sys_district` VALUES ('211100', '211122', '盘山县', '0427', '124000', 'Y', null, null, null, null, 'Panshan');
INSERT INTO `sys_district` VALUES ('211200', '211202', '银州区', '024', '112000', 'Y', null, null, null, null, 'Yinzhou');
INSERT INTO `sys_district` VALUES ('211200', '211204', '清河区', '024', '112003', 'Y', null, null, null, null, 'Qinghe');
INSERT INTO `sys_district` VALUES ('211200', '211221', '铁岭县', '024', '112000', 'Y', null, null, null, null, 'Tieling');
INSERT INTO `sys_district` VALUES ('211200', '211223', '西丰县', '024', '112400', 'Y', null, null, null, null, 'Xifeng');
INSERT INTO `sys_district` VALUES ('211200', '211224', '昌图县', '024', '112500', 'Y', null, null, null, null, 'Changtu');
INSERT INTO `sys_district` VALUES ('211200', '211281', '调兵山市', '024', '112700', 'Y', null, null, null, null, 'Diaobingshan');
INSERT INTO `sys_district` VALUES ('211200', '211282', '开原市', '024', '112300', 'Y', null, null, null, null, 'Kaiyuan');
INSERT INTO `sys_district` VALUES ('211300', '211302', '双塔区', '0421', '122000', 'Y', null, null, null, null, 'Shuangta');
INSERT INTO `sys_district` VALUES ('211300', '211303', '龙城区', '0421', '122000', 'Y', null, null, null, null, 'Longcheng');
INSERT INTO `sys_district` VALUES ('211300', '211321', '朝阳县', '0421', '122000', 'Y', null, null, null, null, 'Chaoyang');
INSERT INTO `sys_district` VALUES ('211300', '211322', '建平县', '0421', '122400', 'Y', null, null, null, null, 'Jianping');
INSERT INTO `sys_district` VALUES ('211300', '211324', '喀喇沁左翼蒙古族自治县', '0421', '122300', 'Y', null, null, null, null, 'Kalaqinzuoyi');
INSERT INTO `sys_district` VALUES ('211300', '211381', '北票市', '0421', '122100', 'Y', null, null, null, null, 'Beipiao');
INSERT INTO `sys_district` VALUES ('211300', '211382', '凌源市', '0421', '122500', 'Y', null, null, null, null, 'Lingyuan');
INSERT INTO `sys_district` VALUES ('211400', '211402', '连山区', '0429', '125001', 'Y', null, null, null, null, 'Lianshan');
INSERT INTO `sys_district` VALUES ('211400', '211403', '龙港区', '0429', '125003', 'Y', null, null, null, null, 'Longgang');
INSERT INTO `sys_district` VALUES ('211400', '211404', '南票区', '0429', '125027', 'Y', null, null, null, null, 'Nanpiao');
INSERT INTO `sys_district` VALUES ('211400', '211421', '绥中县', '0429', '125200', 'Y', null, null, null, null, 'Suizhong');
INSERT INTO `sys_district` VALUES ('211400', '211422', '建昌县', '0429', '125300', 'Y', null, null, null, null, 'Jianchang');
INSERT INTO `sys_district` VALUES ('211400', '211481', '兴城市', '0429', '125100', 'Y', null, null, null, null, 'Xingcheng');
INSERT INTO `sys_district` VALUES ('211500', '211501', '金州新区', '0411', '116100', 'Y', null, null, null, null, 'Jinzhouxinqu');
INSERT INTO `sys_district` VALUES ('211500', '211502', '普湾新区', '0411', '116200', 'Y', null, null, null, null, 'Puwanxinqu');
INSERT INTO `sys_district` VALUES ('211500', '211503', '保税区', '0411', '116100', 'Y', null, null, null, null, 'Baoshuiqu');
INSERT INTO `sys_district` VALUES ('220100', '220102', '南关区', '0431', '130022', 'Y', null, null, null, null, 'Nanguan');
INSERT INTO `sys_district` VALUES ('220100', '220103', '宽城区', '0431', '130051', 'Y', null, null, null, null, 'Kuancheng');
INSERT INTO `sys_district` VALUES ('220100', '220104', '朝阳区', '0431', '130012', 'Y', null, null, null, null, 'Chaoyang');
INSERT INTO `sys_district` VALUES ('220100', '220105', '二道区', '0431', '130031', 'Y', null, null, null, null, 'Erdao');
INSERT INTO `sys_district` VALUES ('220100', '220106', '绿园区', '0431', '130062', 'Y', null, null, null, null, 'Lvyuan');
INSERT INTO `sys_district` VALUES ('220100', '220112', '双阳区', '0431', '130600', 'Y', null, null, null, null, 'Shuangyang');
INSERT INTO `sys_district` VALUES ('220100', '220113', '九台区', '0431', '130500', 'Y', null, null, null, null, 'Jiutai');
INSERT INTO `sys_district` VALUES ('220100', '220122', '农安县', '0431', '130200', 'Y', null, null, null, null, 'Nong\'an');
INSERT INTO `sys_district` VALUES ('220100', '220182', '榆树市', '0431', '130400', 'Y', null, null, null, null, 'Yushu');
INSERT INTO `sys_district` VALUES ('220100', '220183', '德惠市', '0431', '130300', 'Y', null, null, null, null, 'Dehui');
INSERT INTO `sys_district` VALUES ('220200', '220202', '昌邑区', '0432', '132002', 'Y', null, null, null, null, 'Changyi');
INSERT INTO `sys_district` VALUES ('220200', '220203', '龙潭区', '0432', '132021', 'Y', null, null, null, null, 'Longtan');
INSERT INTO `sys_district` VALUES ('220200', '220204', '船营区', '0432', '132011', 'Y', null, null, null, null, 'Chuanying');
INSERT INTO `sys_district` VALUES ('220200', '220211', '丰满区', '0432', '132013', 'Y', null, null, null, null, 'Fengman');
INSERT INTO `sys_district` VALUES ('220200', '220221', '永吉县', '0432', '132200', 'Y', null, null, null, null, 'Yongji');
INSERT INTO `sys_district` VALUES ('220200', '220281', '蛟河市', '0432', '132500', 'Y', null, null, null, null, 'Jiaohe');
INSERT INTO `sys_district` VALUES ('220200', '220282', '桦甸市', '0432', '132400', 'Y', null, null, null, null, 'Huadian');
INSERT INTO `sys_district` VALUES ('220200', '220283', '舒兰市', '0432', '132600', 'Y', null, null, null, null, 'Shulan');
INSERT INTO `sys_district` VALUES ('220200', '220284', '磐石市', '0432', '132300', 'Y', null, null, null, null, 'Panshi');
INSERT INTO `sys_district` VALUES ('220300', '220302', '铁西区', '0434', '136000', 'Y', null, null, null, null, 'Tiexi');
INSERT INTO `sys_district` VALUES ('220300', '220303', '铁东区', '0434', '136001', 'Y', null, null, null, null, 'Tiedong');
INSERT INTO `sys_district` VALUES ('220300', '220322', '梨树县', '0434', '136500', 'Y', null, null, null, null, 'Lishu');
INSERT INTO `sys_district` VALUES ('220300', '220323', '伊通满族自治县', '0434', '130700', 'Y', null, null, null, null, 'Yitong');
INSERT INTO `sys_district` VALUES ('220300', '220381', '公主岭市', '0434', '136100', 'Y', null, null, null, null, 'Gongzhuling');
INSERT INTO `sys_district` VALUES ('220300', '220382', '双辽市', '0434', '136400', 'Y', null, null, null, null, 'Shuangliao');
INSERT INTO `sys_district` VALUES ('220400', '220402', '龙山区', '0437', '136200', 'Y', null, null, null, null, 'Longshan');
INSERT INTO `sys_district` VALUES ('220400', '220403', '西安区', '0437', '136201', 'Y', null, null, null, null, 'Xi\'an');
INSERT INTO `sys_district` VALUES ('220400', '220421', '东丰县', '0437', '136300', 'Y', null, null, null, null, 'Dongfeng');
INSERT INTO `sys_district` VALUES ('220400', '220422', '东辽县', '0437', '136600', 'Y', null, null, null, null, 'Dongliao');
INSERT INTO `sys_district` VALUES ('220500', '220502', '东昌区', '0435', '134001', 'Y', null, null, null, null, 'Dongchang');
INSERT INTO `sys_district` VALUES ('220500', '220503', '二道江区', '0435', '134003', 'Y', null, null, null, null, 'Erdaojiang');
INSERT INTO `sys_district` VALUES ('220500', '220521', '通化县', '0435', '134100', 'Y', null, null, null, null, 'Tonghua');
INSERT INTO `sys_district` VALUES ('220500', '220523', '辉南县', '0435', '135100', 'Y', null, null, null, null, 'Huinan');
INSERT INTO `sys_district` VALUES ('220500', '220524', '柳河县', '0435', '135300', 'Y', null, null, null, null, 'Liuhe');
INSERT INTO `sys_district` VALUES ('220500', '220581', '梅河口市', '0435', '135000', 'Y', null, null, null, null, 'Meihekou');
INSERT INTO `sys_district` VALUES ('220500', '220582', '集安市', '0435', '134200', 'Y', null, null, null, null, 'Ji\'an');
INSERT INTO `sys_district` VALUES ('220600', '220602', '浑江区', '0439', '134300', 'Y', null, null, null, null, 'Hunjiang');
INSERT INTO `sys_district` VALUES ('220600', '220605', '江源区', '0439', '134700', 'Y', null, null, null, null, 'Jiangyuan');
INSERT INTO `sys_district` VALUES ('220600', '220621', '抚松县', '0439', '134500', 'Y', null, null, null, null, 'Fusong');
INSERT INTO `sys_district` VALUES ('220600', '220622', '靖宇县', '0439', '135200', 'Y', null, null, null, null, 'Jingyu');
INSERT INTO `sys_district` VALUES ('220600', '220623', '长白朝鲜族自治县', '0439', '134400', 'Y', null, null, null, null, 'Changbai');
INSERT INTO `sys_district` VALUES ('220600', '220681', '临江市', '0439', '134600', 'Y', null, null, null, null, 'Linjiang');
INSERT INTO `sys_district` VALUES ('220700', '220702', '宁江区', '0438', '138000', 'Y', null, null, null, null, 'Ningjiang');
INSERT INTO `sys_district` VALUES ('220700', '220721', '前郭尔罗斯蒙古族自治县', '0438', '138000', 'Y', null, null, null, null, 'Qianguoerluosi');
INSERT INTO `sys_district` VALUES ('220700', '220722', '长岭县', '0438', '131500', 'Y', null, null, null, null, 'Changling');
INSERT INTO `sys_district` VALUES ('220700', '220723', '乾安县', '0438', '131400', 'Y', null, null, null, null, 'Qian\'an');
INSERT INTO `sys_district` VALUES ('220700', '220781', '扶余市', '0438', '131200', 'Y', null, null, null, null, 'Fuyu');
INSERT INTO `sys_district` VALUES ('220800', '220802', '洮北区', '0436', '137000', 'Y', null, null, null, null, 'Taobei');
INSERT INTO `sys_district` VALUES ('220800', '220821', '镇赉县', '0436', '137300', 'Y', null, null, null, null, 'Zhenlai');
INSERT INTO `sys_district` VALUES ('220800', '220822', '通榆县', '0436', '137200', 'Y', null, null, null, null, 'Tongyu');
INSERT INTO `sys_district` VALUES ('220800', '220881', '洮南市', '0436', '137100', 'Y', null, null, null, null, 'Taonan');
INSERT INTO `sys_district` VALUES ('220800', '220882', '大安市', '0436', '131300', 'Y', null, null, null, null, 'Da\'an');
INSERT INTO `sys_district` VALUES ('222400', '222401', '延吉市', '0433', '133000', 'Y', null, null, null, null, 'Yanji');
INSERT INTO `sys_district` VALUES ('222400', '222402', '图们市', '0433', '133100', 'Y', null, null, null, null, 'Tumen');
INSERT INTO `sys_district` VALUES ('222400', '222403', '敦化市', '0433', '133700', 'Y', null, null, null, null, 'Dunhua');
INSERT INTO `sys_district` VALUES ('222400', '222404', '珲春市', '0433', '133300', 'Y', null, null, null, null, 'Hunchun');
INSERT INTO `sys_district` VALUES ('222400', '222405', '龙井市', '0433', '133400', 'Y', null, null, null, null, 'Longjing');
INSERT INTO `sys_district` VALUES ('222400', '222406', '和龙市', '0433', '133500', 'Y', null, null, null, null, 'Helong');
INSERT INTO `sys_district` VALUES ('222400', '222424', '汪清县', '0433', '133200', 'Y', null, null, null, null, 'Wangqing');
INSERT INTO `sys_district` VALUES ('222400', '222426', '安图县', '0433', '133600', 'Y', null, null, null, null, 'Antu');
INSERT INTO `sys_district` VALUES ('230100', '230102', '道里区', '0451', '150010', 'Y', null, null, null, null, 'Daoli');
INSERT INTO `sys_district` VALUES ('230100', '230103', '南岗区', '0451', '150006', 'Y', null, null, null, null, 'Nangang');
INSERT INTO `sys_district` VALUES ('230100', '230104', '道外区', '0451', '150020', 'Y', null, null, null, null, 'Daowai');
INSERT INTO `sys_district` VALUES ('230100', '230108', '平房区', '0451', '150060', 'Y', null, null, null, null, 'Pingfang');
INSERT INTO `sys_district` VALUES ('230100', '230109', '松北区', '0451', '150028', 'Y', null, null, null, null, 'Songbei');
INSERT INTO `sys_district` VALUES ('230100', '230110', '香坊区', '0451', '150036', 'Y', null, null, null, null, 'Xiangfang');
INSERT INTO `sys_district` VALUES ('230100', '230111', '呼兰区', '0451', '150500', 'Y', null, null, null, null, 'Hulan');
INSERT INTO `sys_district` VALUES ('230100', '230112', '阿城区', '0451', '150300', 'Y', null, null, null, null, 'A\'cheng');
INSERT INTO `sys_district` VALUES ('230100', '230113', '双城区', '0451', '150100', 'Y', null, null, null, null, 'Shuangcheng');
INSERT INTO `sys_district` VALUES ('230100', '230123', '依兰县', '0451', '154800', 'Y', null, null, null, null, 'Yilan');
INSERT INTO `sys_district` VALUES ('230100', '230124', '方正县', '0451', '150800', 'Y', null, null, null, null, 'Fangzheng');
INSERT INTO `sys_district` VALUES ('230100', '230125', '宾县', '0451', '150400', 'Y', null, null, null, null, 'Binxian');
INSERT INTO `sys_district` VALUES ('230100', '230126', '巴彦县', '0451', '151800', 'Y', null, null, null, null, 'Bayan');
INSERT INTO `sys_district` VALUES ('230100', '230127', '木兰县', '0451', '151900', 'Y', null, null, null, null, 'Mulan');
INSERT INTO `sys_district` VALUES ('230100', '230128', '通河县', '0451', '150900', 'Y', null, null, null, null, 'Tonghe');
INSERT INTO `sys_district` VALUES ('230100', '230129', '延寿县', '0451', '150700', 'Y', null, null, null, null, 'Yanshou');
INSERT INTO `sys_district` VALUES ('230100', '230183', '尚志市', '0451', '150600', 'Y', null, null, null, null, 'Shangzhi');
INSERT INTO `sys_district` VALUES ('230100', '230184', '五常市', '0451', '150200', 'Y', null, null, null, null, 'Wuchang');
INSERT INTO `sys_district` VALUES ('230200', '230202', '龙沙区', '0452', '161000', 'Y', null, null, null, null, 'Longsha');
INSERT INTO `sys_district` VALUES ('230200', '230203', '建华区', '0452', '161006', 'Y', null, null, null, null, 'Jianhua');
INSERT INTO `sys_district` VALUES ('230200', '230204', '铁锋区', '0452', '161000', 'Y', null, null, null, null, 'Tiefeng');
INSERT INTO `sys_district` VALUES ('230200', '230205', '昂昂溪区', '0452', '161031', 'Y', null, null, null, null, 'Angangxi');
INSERT INTO `sys_district` VALUES ('230200', '230206', '富拉尔基区', '0452', '161041', 'Y', null, null, null, null, 'Fulaerji');
INSERT INTO `sys_district` VALUES ('230200', '230207', '碾子山区', '0452', '161046', 'Y', null, null, null, null, 'Nianzishan');
INSERT INTO `sys_district` VALUES ('230200', '230208', '梅里斯达斡尔族区', '0452', '161021', 'Y', null, null, null, null, 'Meilisi');
INSERT INTO `sys_district` VALUES ('230200', '230221', '龙江县', '0452', '161100', 'Y', null, null, null, null, 'Longjiang');
INSERT INTO `sys_district` VALUES ('230200', '230223', '依安县', '0452', '161500', 'Y', null, null, null, null, 'Yi\'an');
INSERT INTO `sys_district` VALUES ('230200', '230224', '泰来县', '0452', '162400', 'Y', null, null, null, null, 'Tailai');
INSERT INTO `sys_district` VALUES ('230200', '230225', '甘南县', '0452', '162100', 'Y', null, null, null, null, 'Gannan');
INSERT INTO `sys_district` VALUES ('230200', '230227', '富裕县', '0452', '161200', 'Y', null, null, null, null, 'Fuyu');
INSERT INTO `sys_district` VALUES ('230200', '230229', '克山县', '0452', '161600', 'Y', null, null, null, null, 'Keshan');
INSERT INTO `sys_district` VALUES ('230200', '230230', '克东县', '0452', '164800', 'Y', null, null, null, null, 'Kedong');
INSERT INTO `sys_district` VALUES ('230200', '230231', '拜泉县', '0452', '164700', 'Y', null, null, null, null, 'Baiquan');
INSERT INTO `sys_district` VALUES ('230200', '230281', '讷河市', '0452', '161300', 'Y', null, null, null, null, 'Nehe');
INSERT INTO `sys_district` VALUES ('230300', '230302', '鸡冠区', '0467', '158100', 'Y', null, null, null, null, 'Jiguan');
INSERT INTO `sys_district` VALUES ('230300', '230303', '恒山区', '0467', '158130', 'Y', null, null, null, null, 'Hengshan');
INSERT INTO `sys_district` VALUES ('230300', '230304', '滴道区', '0467', '158150', 'Y', null, null, null, null, 'Didao');
INSERT INTO `sys_district` VALUES ('230300', '230305', '梨树区', '0467', '158160', 'Y', null, null, null, null, 'Lishu');
INSERT INTO `sys_district` VALUES ('230300', '230306', '城子河区', '0467', '158170', 'Y', null, null, null, null, 'Chengzihe');
INSERT INTO `sys_district` VALUES ('230300', '230307', '麻山区', '0467', '158180', 'Y', null, null, null, null, 'Mashan');
INSERT INTO `sys_district` VALUES ('230300', '230321', '鸡东县', '0467', '158200', 'Y', null, null, null, null, 'Jidong');
INSERT INTO `sys_district` VALUES ('230300', '230381', '虎林市', '0467', '158400', 'Y', null, null, null, null, 'Hulin');
INSERT INTO `sys_district` VALUES ('230300', '230382', '密山市', '0467', '158300', 'Y', null, null, null, null, 'Mishan');
INSERT INTO `sys_district` VALUES ('230400', '230402', '向阳区', '0468', '154100', 'Y', null, null, null, null, 'Xiangyang');
INSERT INTO `sys_district` VALUES ('230400', '230403', '工农区', '0468', '154101', 'Y', null, null, null, null, 'Gongnong');
INSERT INTO `sys_district` VALUES ('230400', '230404', '南山区', '0468', '154104', 'Y', null, null, null, null, 'Nanshan');
INSERT INTO `sys_district` VALUES ('230400', '230405', '兴安区', '0468', '154102', 'Y', null, null, null, null, 'Xing\'an');
INSERT INTO `sys_district` VALUES ('230400', '230406', '东山区', '0468', '154106', 'Y', null, null, null, null, 'Dongshan');
INSERT INTO `sys_district` VALUES ('230400', '230407', '兴山区', '0468', '154105', 'Y', null, null, null, null, 'Xingshan');
INSERT INTO `sys_district` VALUES ('230400', '230421', '萝北县', '0468', '154200', 'Y', null, null, null, null, 'Luobei');
INSERT INTO `sys_district` VALUES ('230400', '230422', '绥滨县', '0468', '156200', 'Y', null, null, null, null, 'Suibin');
INSERT INTO `sys_district` VALUES ('230500', '230502', '尖山区', '0469', '155100', 'Y', null, null, null, null, 'Jianshan');
INSERT INTO `sys_district` VALUES ('230500', '230503', '岭东区', '0469', '155120', 'Y', null, null, null, null, 'Lingdong');
INSERT INTO `sys_district` VALUES ('230500', '230505', '四方台区', '0469', '155130', 'Y', null, null, null, null, 'Sifangtai');
INSERT INTO `sys_district` VALUES ('230500', '230506', '宝山区', '0469', '155131', 'Y', null, null, null, null, 'Baoshan');
INSERT INTO `sys_district` VALUES ('230500', '230521', '集贤县', '0469', '155900', 'Y', null, null, null, null, 'Jixian');
INSERT INTO `sys_district` VALUES ('230500', '230522', '友谊县', '0469', '155800', 'Y', null, null, null, null, 'Youyi');
INSERT INTO `sys_district` VALUES ('230500', '230523', '宝清县', '0469', '155600', 'Y', null, null, null, null, 'Baoqing');
INSERT INTO `sys_district` VALUES ('230500', '230524', '饶河县', '0469', '155700', 'Y', null, null, null, null, 'Raohe');
INSERT INTO `sys_district` VALUES ('230600', '230602', '萨尔图区', '0459', '163001', 'Y', null, null, null, null, 'Saertu');
INSERT INTO `sys_district` VALUES ('230600', '230603', '龙凤区', '0459', '163711', 'Y', null, null, null, null, 'Longfeng');
INSERT INTO `sys_district` VALUES ('230600', '230604', '让胡路区', '0459', '163712', 'Y', null, null, null, null, 'Ranghulu');
INSERT INTO `sys_district` VALUES ('230600', '230605', '红岗区', '0459', '163511', 'Y', null, null, null, null, 'Honggang');
INSERT INTO `sys_district` VALUES ('230600', '230606', '大同区', '0459', '163515', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_district` VALUES ('230600', '230621', '肇州县', '0459', '166400', 'Y', null, null, null, null, 'Zhaozhou');
INSERT INTO `sys_district` VALUES ('230600', '230622', '肇源县', '0459', '166500', 'Y', null, null, null, null, 'Zhaoyuan');
INSERT INTO `sys_district` VALUES ('230600', '230623', '林甸县', '0459', '166300', 'Y', null, null, null, null, 'Lindian');
INSERT INTO `sys_district` VALUES ('230600', '230624', '杜尔伯特蒙古族自治县', '0459', '166200', 'Y', null, null, null, null, 'Duerbote');
INSERT INTO `sys_district` VALUES ('230700', '230702', '伊春区', '0458', '153000', 'Y', null, null, null, null, 'Yichun');
INSERT INTO `sys_district` VALUES ('230700', '230703', '南岔区', '0458', '153100', 'Y', null, null, null, null, 'Nancha');
INSERT INTO `sys_district` VALUES ('230700', '230704', '友好区', '0458', '153031', 'Y', null, null, null, null, 'Youhao');
INSERT INTO `sys_district` VALUES ('230700', '230705', '西林区', '0458', '153025', 'Y', null, null, null, null, 'Xilin');
INSERT INTO `sys_district` VALUES ('230700', '230706', '翠峦区', '0458', '153013', 'Y', null, null, null, null, 'Cuiluan');
INSERT INTO `sys_district` VALUES ('230700', '230707', '新青区', '0458', '153036', 'Y', null, null, null, null, 'Xinqing');
INSERT INTO `sys_district` VALUES ('230700', '230708', '美溪区', '0458', '153021', 'Y', null, null, null, null, 'Meixi');
INSERT INTO `sys_district` VALUES ('230700', '230709', '金山屯区', '0458', '153026', 'Y', null, null, null, null, 'Jinshantun');
INSERT INTO `sys_district` VALUES ('230700', '230710', '五营区', '0458', '153033', 'Y', null, null, null, null, 'Wuying');
INSERT INTO `sys_district` VALUES ('230700', '230711', '乌马河区', '0458', '153011', 'Y', null, null, null, null, 'Wumahe');
INSERT INTO `sys_district` VALUES ('230700', '230712', '汤旺河区', '0458', '153037', 'Y', null, null, null, null, 'Tangwanghe');
INSERT INTO `sys_district` VALUES ('230700', '230713', '带岭区', '0458', '153106', 'Y', null, null, null, null, 'Dailing');
INSERT INTO `sys_district` VALUES ('230700', '230714', '乌伊岭区', '0458', '153038', 'Y', null, null, null, null, 'Wuyiling');
INSERT INTO `sys_district` VALUES ('230700', '230715', '红星区', '0458', '153035', 'Y', null, null, null, null, 'Hongxing');
INSERT INTO `sys_district` VALUES ('230700', '230716', '上甘岭区', '0458', '153032', 'Y', null, null, null, null, 'Shangganling');
INSERT INTO `sys_district` VALUES ('230700', '230722', '嘉荫县', '0458', '153200', 'Y', null, null, null, null, 'Jiayin');
INSERT INTO `sys_district` VALUES ('230700', '230781', '铁力市', '0458', '152500', 'Y', null, null, null, null, 'Tieli');
INSERT INTO `sys_district` VALUES ('230800', '230803', '向阳区', '0454', '154002', 'Y', null, null, null, null, 'Xiangyang');
INSERT INTO `sys_district` VALUES ('230800', '230804', '前进区', '0454', '154002', 'Y', null, null, null, null, 'Qianjin');
INSERT INTO `sys_district` VALUES ('230800', '230805', '东风区', '0454', '154005', 'Y', null, null, null, null, 'Dongfeng');
INSERT INTO `sys_district` VALUES ('230800', '230811', '郊区', '0454', '154004', 'Y', null, null, null, null, 'Jiaoqu');
INSERT INTO `sys_district` VALUES ('230800', '230822', '桦南县', '0454', '154400', 'Y', null, null, null, null, 'Huanan');
INSERT INTO `sys_district` VALUES ('230800', '230826', '桦川县', '0454', '154300', 'Y', null, null, null, null, 'Huachuan');
INSERT INTO `sys_district` VALUES ('230800', '230828', '汤原县', '0454', '154700', 'Y', null, null, null, null, 'Tangyuan');
INSERT INTO `sys_district` VALUES ('230800', '230833', '抚远县', '0454', '156500', 'Y', null, null, null, null, 'Fuyuan');
INSERT INTO `sys_district` VALUES ('230800', '230881', '同江市', '0454', '156400', 'Y', null, null, null, null, 'Tongjiang');
INSERT INTO `sys_district` VALUES ('230800', '230882', '富锦市', '0454', '156100', 'Y', null, null, null, null, 'Fujin');
INSERT INTO `sys_district` VALUES ('230900', '230902', '新兴区', '0464', '154604', 'Y', null, null, null, null, 'Xinxing');
INSERT INTO `sys_district` VALUES ('230900', '230903', '桃山区', '0464', '154600', 'Y', null, null, null, null, 'Taoshan');
INSERT INTO `sys_district` VALUES ('230900', '230904', '茄子河区', '0464', '154622', 'Y', null, null, null, null, 'Qiezihe');
INSERT INTO `sys_district` VALUES ('230900', '230921', '勃利县', '0464', '154500', 'Y', null, null, null, null, 'Boli');
INSERT INTO `sys_district` VALUES ('231000', '231002', '东安区', '0453', '157000', 'Y', null, null, null, null, 'Dong\'an');
INSERT INTO `sys_district` VALUES ('231000', '231003', '阳明区', '0453', '157013', 'Y', null, null, null, null, 'Yangming');
INSERT INTO `sys_district` VALUES ('231000', '231004', '爱民区', '0453', '157009', 'Y', null, null, null, null, 'Aimin');
INSERT INTO `sys_district` VALUES ('231000', '231005', '西安区', '0453', '157000', 'Y', null, null, null, null, 'Xi\'an');
INSERT INTO `sys_district` VALUES ('231000', '231024', '东宁县', '0453', '157200', 'Y', null, null, null, null, 'Dongning');
INSERT INTO `sys_district` VALUES ('231000', '231025', '林口县', '0453', '157600', 'Y', null, null, null, null, 'Linkou');
INSERT INTO `sys_district` VALUES ('231000', '231081', '绥芬河市', '0453', '157300', 'Y', null, null, null, null, 'Suifenhe');
INSERT INTO `sys_district` VALUES ('231000', '231083', '海林市', '0453', '157100', 'Y', null, null, null, null, 'Hailin');
INSERT INTO `sys_district` VALUES ('231000', '231084', '宁安市', '0453', '157400', 'Y', null, null, null, null, 'Ning\'an');
INSERT INTO `sys_district` VALUES ('231000', '231085', '穆棱市', '0453', '157500', 'Y', null, null, null, null, 'Muling');
INSERT INTO `sys_district` VALUES ('231100', '231102', '爱辉区', '0456', '164300', 'Y', null, null, null, null, 'Aihui');
INSERT INTO `sys_district` VALUES ('231100', '231121', '嫩江县', '0456', '161400', 'Y', null, null, null, null, 'Nenjiang');
INSERT INTO `sys_district` VALUES ('231100', '231123', '逊克县', '0456', '164400', 'Y', null, null, null, null, 'Xunke');
INSERT INTO `sys_district` VALUES ('231100', '231124', '孙吴县', '0456', '164200', 'Y', null, null, null, null, 'Sunwu');
INSERT INTO `sys_district` VALUES ('231100', '231181', '北安市', '0456', '164000', 'Y', null, null, null, null, 'Bei\'an');
INSERT INTO `sys_district` VALUES ('231100', '231182', '五大连池市', '0456', '164100', 'Y', null, null, null, null, 'Wudalianchi');
INSERT INTO `sys_district` VALUES ('231200', '231202', '北林区', '0455', '152000', 'Y', null, null, null, null, 'Beilin');
INSERT INTO `sys_district` VALUES ('231200', '231221', '望奎县', '0455', '152100', 'Y', null, null, null, null, 'Wangkui');
INSERT INTO `sys_district` VALUES ('231200', '231222', '兰西县', '0455', '151500', 'Y', null, null, null, null, 'Lanxi');
INSERT INTO `sys_district` VALUES ('231200', '231223', '青冈县', '0455', '151600', 'Y', null, null, null, null, 'Qinggang');
INSERT INTO `sys_district` VALUES ('231200', '231224', '庆安县', '0455', '152400', 'Y', null, null, null, null, 'Qing\'an');
INSERT INTO `sys_district` VALUES ('231200', '231225', '明水县', '0455', '151700', 'Y', null, null, null, null, 'Mingshui');
INSERT INTO `sys_district` VALUES ('231200', '231226', '绥棱县', '0455', '152200', 'Y', null, null, null, null, 'Suileng');
INSERT INTO `sys_district` VALUES ('231200', '231281', '安达市', '0455', '151400', 'Y', null, null, null, null, 'Anda');
INSERT INTO `sys_district` VALUES ('231200', '231282', '肇东市', '0455', '151100', 'Y', null, null, null, null, 'Zhaodong');
INSERT INTO `sys_district` VALUES ('231200', '231283', '海伦市', '0455', '152300', 'Y', null, null, null, null, 'Hailun');
INSERT INTO `sys_district` VALUES ('232700', '232701', '加格达奇区', '0457', '165000', 'Y', null, null, null, null, 'Jiagedaqi');
INSERT INTO `sys_district` VALUES ('232700', '232702', '新林区', '0457', '165000', 'Y', null, null, null, null, 'Xinlin');
INSERT INTO `sys_district` VALUES ('232700', '232703', '松岭区', '0457', '165000', 'Y', null, null, null, null, 'Songling');
INSERT INTO `sys_district` VALUES ('232700', '232704', '呼中区', '0457', '165000', 'Y', null, null, null, null, 'Huzhong');
INSERT INTO `sys_district` VALUES ('232700', '232721', '呼玛县', '0457', '165100', 'Y', null, null, null, null, 'Huma');
INSERT INTO `sys_district` VALUES ('232700', '232722', '塔河县', '0457', '165200', 'Y', null, null, null, null, 'Tahe');
INSERT INTO `sys_district` VALUES ('232700', '232723', '漠河县', '0457', '165300', 'Y', null, null, null, null, 'Mohe');
INSERT INTO `sys_district` VALUES ('310100', '310101', '黄浦区', '021', '200001', 'Y', null, null, null, null, 'Huangpu');
INSERT INTO `sys_district` VALUES ('310100', '310104', '徐汇区', '021', '200030', 'Y', null, null, null, null, 'Xuhui');
INSERT INTO `sys_district` VALUES ('310100', '310105', '长宁区', '021', '200050', 'Y', null, null, null, null, 'Changning');
INSERT INTO `sys_district` VALUES ('310100', '310106', '静安区', '021', '200040', 'Y', null, null, null, null, 'Jing\'an');
INSERT INTO `sys_district` VALUES ('310100', '310107', '普陀区', '021', '200333', 'Y', null, null, null, null, 'Putuo');
INSERT INTO `sys_district` VALUES ('310100', '310108', '闸北区', '021', '200070', 'Y', null, null, null, null, 'Zhabei');
INSERT INTO `sys_district` VALUES ('310100', '310109', '虹口区', '021', '200086', 'Y', null, null, null, null, 'Hongkou');
INSERT INTO `sys_district` VALUES ('310100', '310110', '杨浦区', '021', '200082', 'Y', null, null, null, null, 'Yangpu');
INSERT INTO `sys_district` VALUES ('310100', '310112', '闵行区', '021', '201100', 'Y', null, null, null, null, 'Minhang');
INSERT INTO `sys_district` VALUES ('310100', '310113', '宝山区', '021', '201900', 'Y', null, null, null, null, 'Baoshan');
INSERT INTO `sys_district` VALUES ('310100', '310114', '嘉定区', '021', '201800', 'Y', null, null, null, null, 'Jiading');
INSERT INTO `sys_district` VALUES ('310100', '310115', '浦东新区', '021', '200135', 'Y', null, null, null, null, 'Pudong');
INSERT INTO `sys_district` VALUES ('310100', '310116', '金山区', '021', '200540', 'Y', null, null, null, null, 'Jinshan');
INSERT INTO `sys_district` VALUES ('310100', '310117', '松江区', '021', '201600', 'Y', null, null, null, null, 'Songjiang');
INSERT INTO `sys_district` VALUES ('310100', '310118', '青浦区', '021', '201700', 'Y', null, null, null, null, 'Qingpu');
INSERT INTO `sys_district` VALUES ('310100', '310120', '奉贤区', '021', '201400', 'Y', null, null, null, null, 'Fengxian');
INSERT INTO `sys_district` VALUES ('310100', '310230', '崇明县', '021', '202150', 'Y', null, null, null, null, 'Chongming');
INSERT INTO `sys_district` VALUES ('320100', '320102', '玄武区', '025', '210018', 'Y', null, null, null, null, 'Xuanwu');
INSERT INTO `sys_district` VALUES ('320100', '320104', '秦淮区', '025', '210001', 'Y', null, null, null, null, 'Qinhuai');
INSERT INTO `sys_district` VALUES ('320100', '320105', '建邺区', '025', '210004', 'Y', null, null, null, null, 'Jianye');
INSERT INTO `sys_district` VALUES ('320100', '320106', '鼓楼区', '025', '210009', 'Y', null, null, null, null, 'Gulou');
INSERT INTO `sys_district` VALUES ('320100', '320111', '浦口区', '025', '211800', 'Y', null, null, null, null, 'Pukou');
INSERT INTO `sys_district` VALUES ('320100', '320113', '栖霞区', '025', '210046', 'Y', null, null, null, null, 'Qixia');
INSERT INTO `sys_district` VALUES ('320100', '320114', '雨花台区', '025', '210012', 'Y', null, null, null, null, 'Yuhuatai');
INSERT INTO `sys_district` VALUES ('320100', '320115', '江宁区', '025', '211100', 'Y', null, null, null, null, 'Jiangning');
INSERT INTO `sys_district` VALUES ('320100', '320116', '六合区', '025', '211500', 'Y', null, null, null, null, 'Luhe');
INSERT INTO `sys_district` VALUES ('320100', '320117', '溧水区', '025', '211200', 'Y', null, null, null, null, 'Lishui');
INSERT INTO `sys_district` VALUES ('320100', '320118', '高淳区', '025', '211300', 'Y', null, null, null, null, 'Gaochun');
INSERT INTO `sys_district` VALUES ('320200', '320202', '崇安区', '0510', '214001', 'Y', null, null, null, null, 'Chong\'an');
INSERT INTO `sys_district` VALUES ('320200', '320203', '南长区', '0510', '214021', 'Y', null, null, null, null, 'Nanchang');
INSERT INTO `sys_district` VALUES ('320200', '320204', '北塘区', '0510', '214044', 'Y', null, null, null, null, 'Beitang');
INSERT INTO `sys_district` VALUES ('320200', '320205', '锡山区', '0510', '214101', 'Y', null, null, null, null, 'Xishan');
INSERT INTO `sys_district` VALUES ('320200', '320206', '惠山区', '0510', '214174', 'Y', null, null, null, null, 'Huishan');
INSERT INTO `sys_district` VALUES ('320200', '320211', '滨湖区', '0510', '214123', 'Y', null, null, null, null, 'Binhu');
INSERT INTO `sys_district` VALUES ('320200', '320281', '江阴市', '0510', '214431', 'Y', null, null, null, null, 'Jiangyin');
INSERT INTO `sys_district` VALUES ('320200', '320282', '宜兴市', '0510', '214200', 'Y', null, null, null, null, 'Yixing');
INSERT INTO `sys_district` VALUES ('320300', '320302', '鼓楼区', '0516', '221005', 'Y', null, null, null, null, 'Gulou');
INSERT INTO `sys_district` VALUES ('320300', '320303', '云龙区', '0516', '221007', 'Y', null, null, null, null, 'Yunlong');
INSERT INTO `sys_district` VALUES ('320300', '320305', '贾汪区', '0516', '221003', 'Y', null, null, null, null, 'Jiawang');
INSERT INTO `sys_district` VALUES ('320300', '320311', '泉山区', '0516', '221006', 'Y', null, null, null, null, 'Quanshan');
INSERT INTO `sys_district` VALUES ('320300', '320312', '铜山区', '0516', '221106', 'Y', null, null, null, null, 'Tongshan');
INSERT INTO `sys_district` VALUES ('320300', '320321', '丰县', '0516', '221700', 'Y', null, null, null, null, 'Fengxian');
INSERT INTO `sys_district` VALUES ('320300', '320322', '沛县', '0516', '221600', 'Y', null, null, null, null, 'Peixian');
INSERT INTO `sys_district` VALUES ('320300', '320324', '睢宁县', '0516', '221200', 'Y', null, null, null, null, 'Suining');
INSERT INTO `sys_district` VALUES ('320300', '320381', '新沂市', '0516', '221400', 'Y', null, null, null, null, 'Xinyi');
INSERT INTO `sys_district` VALUES ('320300', '320382', '邳州市', '0516', '221300', 'Y', null, null, null, null, 'Pizhou');
INSERT INTO `sys_district` VALUES ('320400', '320402', '天宁区', '0519', '213000', 'Y', null, null, null, null, 'Tianning');
INSERT INTO `sys_district` VALUES ('320400', '320404', '钟楼区', '0519', '213023', 'Y', null, null, null, null, 'Zhonglou');
INSERT INTO `sys_district` VALUES ('320400', '320405', '戚墅堰区', '0519', '213025', 'Y', null, null, null, null, 'Qishuyan');
INSERT INTO `sys_district` VALUES ('320400', '320411', '新北区', '0519', '213022', 'Y', null, null, null, null, 'Xinbei');
INSERT INTO `sys_district` VALUES ('320400', '320412', '武进区', '0519', '213100', 'Y', null, null, null, null, 'Wujin');
INSERT INTO `sys_district` VALUES ('320400', '320481', '溧阳市', '0519', '213300', 'Y', null, null, null, null, 'Liyang');
INSERT INTO `sys_district` VALUES ('320400', '320482', '金坛市', '0519', '213200', 'Y', null, null, null, null, 'Jintan');
INSERT INTO `sys_district` VALUES ('320500', '320505', '虎丘区', '0512', '215004', 'Y', null, null, null, null, 'Huqiu');
INSERT INTO `sys_district` VALUES ('320500', '320506', '吴中区', '0512', '215128', 'Y', null, null, null, null, 'Wuzhong');
INSERT INTO `sys_district` VALUES ('320500', '320507', '相城区', '0512', '215131', 'Y', null, null, null, null, 'Xiangcheng');
INSERT INTO `sys_district` VALUES ('320500', '320508', '姑苏区', '0512', '215031', 'Y', null, null, null, null, 'Gusu');
INSERT INTO `sys_district` VALUES ('320500', '320509', '吴江区', '0512', '215200', 'Y', null, null, null, null, 'Wujiang');
INSERT INTO `sys_district` VALUES ('320500', '320581', '常熟市', '0512', '215500', 'Y', null, null, null, null, 'Changshu');
INSERT INTO `sys_district` VALUES ('320500', '320582', '张家港市', '0512', '215600', 'Y', null, null, null, null, 'Zhangjiagang');
INSERT INTO `sys_district` VALUES ('320500', '320583', '昆山市', '0512', '215300', 'Y', null, null, null, null, 'Kunshan');
INSERT INTO `sys_district` VALUES ('320500', '320585', '太仓市', '0512', '215400', 'Y', null, null, null, null, 'Taicang');
INSERT INTO `sys_district` VALUES ('320600', '320602', '崇川区', '0513', '226001', 'Y', null, null, null, null, 'Chongchuan');
INSERT INTO `sys_district` VALUES ('320600', '320611', '港闸区', '0513', '226001', 'Y', null, null, null, null, 'Gangzha');
INSERT INTO `sys_district` VALUES ('320600', '320612', '通州区', '0513', '226300', 'Y', null, null, null, null, 'Tongzhou');
INSERT INTO `sys_district` VALUES ('320600', '320621', '海安县', '0513', '226600', 'Y', null, null, null, null, 'Hai\'an');
INSERT INTO `sys_district` VALUES ('320600', '320623', '如东县', '0513', '226400', 'Y', null, null, null, null, 'Rudong');
INSERT INTO `sys_district` VALUES ('320600', '320681', '启东市', '0513', '226200', 'Y', null, null, null, null, 'Qidong');
INSERT INTO `sys_district` VALUES ('320600', '320682', '如皋市', '0513', '226500', 'Y', null, null, null, null, 'Rugao');
INSERT INTO `sys_district` VALUES ('320600', '320684', '海门市', '0513', '226100', 'Y', null, null, null, null, 'Haimen');
INSERT INTO `sys_district` VALUES ('320700', '320703', '连云区', '0518', '222042', 'Y', null, null, null, null, 'Lianyun');
INSERT INTO `sys_district` VALUES ('320700', '320706', '海州区', '0518', '222003', 'Y', null, null, null, null, 'Haizhou');
INSERT INTO `sys_district` VALUES ('320700', '320707', '赣榆区', '0518', '222100', 'Y', null, null, null, null, 'Ganyu');
INSERT INTO `sys_district` VALUES ('320700', '320722', '东海县', '0518', '222300', 'Y', null, null, null, null, 'Donghai');
INSERT INTO `sys_district` VALUES ('320700', '320723', '灌云县', '0518', '222200', 'Y', null, null, null, null, 'Guanyun');
INSERT INTO `sys_district` VALUES ('320700', '320724', '灌南县', '0518', '222500', 'Y', null, null, null, null, 'Guannan');
INSERT INTO `sys_district` VALUES ('320800', '320802', '清河区', '0517', '223001', 'Y', null, null, null, null, 'Qinghe');
INSERT INTO `sys_district` VALUES ('320800', '320803', '淮安区', '0517', '223200', 'Y', null, null, null, null, 'Huai\'an');
INSERT INTO `sys_district` VALUES ('320800', '320804', '淮阴区', '0517', '223300', 'Y', null, null, null, null, 'Huaiyin');
INSERT INTO `sys_district` VALUES ('320800', '320811', '清浦区', '0517', '223002', 'Y', null, null, null, null, 'Qingpu');
INSERT INTO `sys_district` VALUES ('320800', '320826', '涟水县', '0517', '223400', 'Y', null, null, null, null, 'Lianshui');
INSERT INTO `sys_district` VALUES ('320800', '320829', '洪泽县', '0517', '223100', 'Y', null, null, null, null, 'Hongze');
INSERT INTO `sys_district` VALUES ('320800', '320830', '盱眙县', '0517', '211700', 'Y', null, null, null, null, 'Xuyi');
INSERT INTO `sys_district` VALUES ('320800', '320831', '金湖县', '0517', '211600', 'Y', null, null, null, null, 'Jinhu');
INSERT INTO `sys_district` VALUES ('320900', '320902', '亭湖区', '0515', '224005', 'Y', null, null, null, null, 'Tinghu');
INSERT INTO `sys_district` VALUES ('320900', '320903', '盐都区', '0515', '224055', 'Y', null, null, null, null, 'Yandu');
INSERT INTO `sys_district` VALUES ('320900', '320921', '响水县', '0515', '224600', 'Y', null, null, null, null, 'Xiangshui');
INSERT INTO `sys_district` VALUES ('320900', '320922', '滨海县', '0515', '224500', 'Y', null, null, null, null, 'Binhai');
INSERT INTO `sys_district` VALUES ('320900', '320923', '阜宁县', '0515', '224400', 'Y', null, null, null, null, 'Funing');
INSERT INTO `sys_district` VALUES ('320900', '320924', '射阳县', '0515', '224300', 'Y', null, null, null, null, 'Sheyang');
INSERT INTO `sys_district` VALUES ('320900', '320925', '建湖县', '0515', '224700', 'Y', null, null, null, null, 'Jianhu');
INSERT INTO `sys_district` VALUES ('320900', '320981', '东台市', '0515', '224200', 'Y', null, null, null, null, 'Dongtai');
INSERT INTO `sys_district` VALUES ('320900', '320982', '大丰市', '0515', '224100', 'Y', null, null, null, null, 'Dafeng');
INSERT INTO `sys_district` VALUES ('321000', '321002', '广陵区', '0514', '225002', 'Y', null, null, null, null, 'Guangling');
INSERT INTO `sys_district` VALUES ('321000', '321003', '邗江区', '0514', '225002', 'Y', null, null, null, null, 'Hanjiang');
INSERT INTO `sys_district` VALUES ('321000', '321012', '江都区', '0514', '225200', 'Y', null, null, null, null, 'Jiangdu');
INSERT INTO `sys_district` VALUES ('321000', '321023', '宝应县', '0514', '225800', 'Y', null, null, null, null, 'Baoying');
INSERT INTO `sys_district` VALUES ('321000', '321081', '仪征市', '0514', '211400', 'Y', null, null, null, null, 'Yizheng');
INSERT INTO `sys_district` VALUES ('321000', '321084', '高邮市', '0514', '225600', 'Y', null, null, null, null, 'Gaoyou');
INSERT INTO `sys_district` VALUES ('321100', '321102', '京口区', '0511', '212003', 'Y', null, null, null, null, 'Jingkou');
INSERT INTO `sys_district` VALUES ('321100', '321111', '润州区', '0511', '212005', 'Y', null, null, null, null, 'Runzhou');
INSERT INTO `sys_district` VALUES ('321100', '321112', '丹徒区', '0511', '212028', 'Y', null, null, null, null, 'Dantu');
INSERT INTO `sys_district` VALUES ('321100', '321181', '丹阳市', '0511', '212300', 'Y', null, null, null, null, 'Danyang');
INSERT INTO `sys_district` VALUES ('321100', '321182', '扬中市', '0511', '212200', 'Y', null, null, null, null, 'Yangzhong');
INSERT INTO `sys_district` VALUES ('321100', '321183', '句容市', '0511', '212400', 'Y', null, null, null, null, 'Jurong');
INSERT INTO `sys_district` VALUES ('321200', '321202', '海陵区', '0523', '225300', 'Y', null, null, null, null, 'Hailing');
INSERT INTO `sys_district` VALUES ('321200', '321203', '高港区', '0523', '225321', 'Y', null, null, null, null, 'Gaogang');
INSERT INTO `sys_district` VALUES ('321200', '321204', '姜堰区', '0523', '225500', 'Y', null, null, null, null, 'Jiangyan');
INSERT INTO `sys_district` VALUES ('321200', '321281', '兴化市', '0523', '225700', 'Y', null, null, null, null, 'Xinghua');
INSERT INTO `sys_district` VALUES ('321200', '321282', '靖江市', '0523', '214500', 'Y', null, null, null, null, 'Jingjiang');
INSERT INTO `sys_district` VALUES ('321200', '321283', '泰兴市', '0523', '225400', 'Y', null, null, null, null, 'Taixing');
INSERT INTO `sys_district` VALUES ('321300', '321302', '宿城区', '0527', '223800', 'Y', null, null, null, null, 'Sucheng');
INSERT INTO `sys_district` VALUES ('321300', '321311', '宿豫区', '0527', '223800', 'Y', null, null, null, null, 'Suyu');
INSERT INTO `sys_district` VALUES ('321300', '321322', '沭阳县', '0527', '223600', 'Y', null, null, null, null, 'Shuyang');
INSERT INTO `sys_district` VALUES ('321300', '321323', '泗阳县', '0527', '223700', 'Y', null, null, null, null, 'Siyang');
INSERT INTO `sys_district` VALUES ('321300', '321324', '泗洪县', '0527', '223900', 'Y', null, null, null, null, 'Sihong');
INSERT INTO `sys_district` VALUES ('330100', '330102', '上城区', '0571', '310002', 'Y', null, null, null, null, 'Shangcheng');
INSERT INTO `sys_district` VALUES ('330100', '330103', '下城区', '0571', '310006', 'Y', null, null, null, null, 'Xiacheng');
INSERT INTO `sys_district` VALUES ('330100', '330104', '江干区', '0571', '310016', 'Y', null, null, null, null, 'Jianggan');
INSERT INTO `sys_district` VALUES ('330100', '330105', '拱墅区', '0571', '310011', 'Y', null, null, null, null, 'Gongshu');
INSERT INTO `sys_district` VALUES ('330100', '330106', '西湖区', '0571', '310013', 'Y', null, null, null, null, 'Xihu');
INSERT INTO `sys_district` VALUES ('330100', '330108', '滨江区', '0571', '310051', 'Y', null, null, null, null, 'Binjiang');
INSERT INTO `sys_district` VALUES ('330100', '330109', '萧山区', '0571', '311200', 'Y', null, null, null, null, 'Xiaoshan');
INSERT INTO `sys_district` VALUES ('330100', '330110', '余杭区', '0571', '311100', 'Y', null, null, null, null, 'Yuhang');
INSERT INTO `sys_district` VALUES ('330100', '330122', '桐庐县', '0571', '311500', 'Y', null, null, null, null, 'Tonglu');
INSERT INTO `sys_district` VALUES ('330100', '330127', '淳安县', '0571', '311700', 'Y', null, null, null, null, 'Chun\'an');
INSERT INTO `sys_district` VALUES ('330100', '330182', '建德市', '0571', '311600', 'Y', null, null, null, null, 'Jiande');
INSERT INTO `sys_district` VALUES ('330100', '330183', '富阳区', '0571', '311400', 'Y', null, null, null, null, 'Fuyang');
INSERT INTO `sys_district` VALUES ('330100', '330185', '临安市', '0571', '311300', 'Y', null, null, null, null, 'Lin\'an');
INSERT INTO `sys_district` VALUES ('330200', '330203', '海曙区', '0574', '315000', 'Y', null, null, null, null, 'Haishu');
INSERT INTO `sys_district` VALUES ('330200', '330204', '江东区', '0574', '315040', 'Y', null, null, null, null, 'Jiangdong');
INSERT INTO `sys_district` VALUES ('330200', '330205', '江北区', '0574', '315020', 'Y', null, null, null, null, 'Jiangbei');
INSERT INTO `sys_district` VALUES ('330200', '330206', '北仑区', '0574', '315800', 'Y', null, null, null, null, 'Beilun');
INSERT INTO `sys_district` VALUES ('330200', '330211', '镇海区', '0574', '315200', 'Y', null, null, null, null, 'Zhenhai');
INSERT INTO `sys_district` VALUES ('330200', '330212', '鄞州区', '0574', '315100', 'Y', null, null, null, null, 'Yinzhou');
INSERT INTO `sys_district` VALUES ('330200', '330225', '象山县', '0574', '315700', 'Y', null, null, null, null, 'Xiangshan');
INSERT INTO `sys_district` VALUES ('330200', '330226', '宁海县', '0574', '315600', 'Y', null, null, null, null, 'Ninghai');
INSERT INTO `sys_district` VALUES ('330200', '330281', '余姚市', '0574', '315400', 'Y', null, null, null, null, 'Yuyao');
INSERT INTO `sys_district` VALUES ('330200', '330282', '慈溪市', '0574', '315300', 'Y', null, null, null, null, 'Cixi');
INSERT INTO `sys_district` VALUES ('330200', '330283', '奉化市', '0574', '315500', 'Y', null, null, null, null, 'Fenghua');
INSERT INTO `sys_district` VALUES ('330300', '330302', '鹿城区', '0577', '325000', 'Y', null, null, null, null, 'Lucheng');
INSERT INTO `sys_district` VALUES ('330300', '330303', '龙湾区', '0577', '325013', 'Y', null, null, null, null, 'Longwan');
INSERT INTO `sys_district` VALUES ('330300', '330304', '瓯海区', '0577', '325005', 'Y', null, null, null, null, 'Ouhai');
INSERT INTO `sys_district` VALUES ('330300', '330322', '洞头县', '0577', '325700', 'Y', null, null, null, null, 'Dongtou');
INSERT INTO `sys_district` VALUES ('330300', '330324', '永嘉县', '0577', '325100', 'Y', null, null, null, null, 'Yongjia');
INSERT INTO `sys_district` VALUES ('330300', '330326', '平阳县', '0577', '325400', 'Y', null, null, null, null, 'Pingyang');
INSERT INTO `sys_district` VALUES ('330300', '330327', '苍南县', '0577', '325800', 'Y', null, null, null, null, 'Cangnan');
INSERT INTO `sys_district` VALUES ('330300', '330328', '文成县', '0577', '325300', 'Y', null, null, null, null, 'Wencheng');
INSERT INTO `sys_district` VALUES ('330300', '330329', '泰顺县', '0577', '325500', 'Y', null, null, null, null, 'Taishun');
INSERT INTO `sys_district` VALUES ('330300', '330381', '瑞安市', '0577', '325200', 'Y', null, null, null, null, 'Rui\'an');
INSERT INTO `sys_district` VALUES ('330300', '330382', '乐清市', '0577', '325600', 'Y', null, null, null, null, 'Yueqing');
INSERT INTO `sys_district` VALUES ('330400', '330402', '南湖区', '0573', '314051', 'Y', null, null, null, null, 'Nanhu');
INSERT INTO `sys_district` VALUES ('330400', '330411', '秀洲区', '0573', '314031', 'Y', null, null, null, null, 'Xiuzhou');
INSERT INTO `sys_district` VALUES ('330400', '330421', '嘉善县', '0573', '314100', 'Y', null, null, null, null, 'Jiashan');
INSERT INTO `sys_district` VALUES ('330400', '330424', '海盐县', '0573', '314300', 'Y', null, null, null, null, 'Haiyan');
INSERT INTO `sys_district` VALUES ('330400', '330481', '海宁市', '0573', '314400', 'Y', null, null, null, null, 'Haining');
INSERT INTO `sys_district` VALUES ('330400', '330482', '平湖市', '0573', '314200', 'Y', null, null, null, null, 'Pinghu');
INSERT INTO `sys_district` VALUES ('330400', '330483', '桐乡市', '0573', '314500', 'Y', null, null, null, null, 'Tongxiang');
INSERT INTO `sys_district` VALUES ('330500', '330502', '吴兴区', '0572', '313000', 'Y', null, null, null, null, 'Wuxing');
INSERT INTO `sys_district` VALUES ('330500', '330503', '南浔区', '0572', '313009', 'Y', null, null, null, null, 'Nanxun');
INSERT INTO `sys_district` VALUES ('330500', '330521', '德清县', '0572', '313200', 'Y', null, null, null, null, 'Deqing');
INSERT INTO `sys_district` VALUES ('330500', '330522', '长兴县', '0572', '313100', 'Y', null, null, null, null, 'Changxing');
INSERT INTO `sys_district` VALUES ('330500', '330523', '安吉县', '0572', '313300', 'Y', null, null, null, null, 'Anji');
INSERT INTO `sys_district` VALUES ('330600', '330602', '越城区', '0575', '312000', 'Y', null, null, null, null, 'Yuecheng');
INSERT INTO `sys_district` VALUES ('330600', '330603', '柯桥区', '0575', '312030', 'Y', null, null, null, null, 'Keqiao ');
INSERT INTO `sys_district` VALUES ('330600', '330604', '上虞区', '0575', '312300', 'Y', null, null, null, null, 'Shangyu');
INSERT INTO `sys_district` VALUES ('330600', '330624', '新昌县', '0575', '312500', 'Y', null, null, null, null, 'Xinchang');
INSERT INTO `sys_district` VALUES ('330600', '330681', '诸暨市', '0575', '311800', 'Y', null, null, null, null, 'Zhuji');
INSERT INTO `sys_district` VALUES ('330600', '330683', '嵊州市', '0575', '312400', 'Y', null, null, null, null, 'Shengzhou');
INSERT INTO `sys_district` VALUES ('330700', '330702', '婺城区', '0579', '321000', 'Y', null, null, null, null, 'Wucheng');
INSERT INTO `sys_district` VALUES ('330700', '330703', '金东区', '0579', '321000', 'Y', null, null, null, null, 'Jindong');
INSERT INTO `sys_district` VALUES ('330700', '330723', '武义县', '0579', '321200', 'Y', null, null, null, null, 'Wuyi');
INSERT INTO `sys_district` VALUES ('330700', '330726', '浦江县', '0579', '322200', 'Y', null, null, null, null, 'Pujiang');
INSERT INTO `sys_district` VALUES ('330700', '330727', '磐安县', '0579', '322300', 'Y', null, null, null, null, 'Pan\'an');
INSERT INTO `sys_district` VALUES ('330700', '330781', '兰溪市', '0579', '321100', 'Y', null, null, null, null, 'Lanxi');
INSERT INTO `sys_district` VALUES ('330700', '330782', '义乌市', '0579', '322000', 'Y', null, null, null, null, 'Yiwu');
INSERT INTO `sys_district` VALUES ('330700', '330783', '东阳市', '0579', '322100', 'Y', null, null, null, null, 'Dongyang');
INSERT INTO `sys_district` VALUES ('330700', '330784', '永康市', '0579', '321300', 'Y', null, null, null, null, 'Yongkang');
INSERT INTO `sys_district` VALUES ('330800', '330802', '柯城区', '0570', '324100', 'Y', null, null, null, null, 'Kecheng');
INSERT INTO `sys_district` VALUES ('330800', '330803', '衢江区', '0570', '324022', 'Y', null, null, null, null, 'Qujiang');
INSERT INTO `sys_district` VALUES ('330800', '330822', '常山县', '0570', '324200', 'Y', null, null, null, null, 'Changshan');
INSERT INTO `sys_district` VALUES ('330800', '330824', '开化县', '0570', '324300', 'Y', null, null, null, null, 'Kaihua');
INSERT INTO `sys_district` VALUES ('330800', '330825', '龙游县', '0570', '324400', 'Y', null, null, null, null, 'Longyou');
INSERT INTO `sys_district` VALUES ('330800', '330881', '江山市', '0570', '324100', 'Y', null, null, null, null, 'Jiangshan');
INSERT INTO `sys_district` VALUES ('330900', '330902', '定海区', '0580', '316000', 'Y', null, null, null, null, 'Dinghai');
INSERT INTO `sys_district` VALUES ('330900', '330903', '普陀区', '0580', '316100', 'Y', null, null, null, null, 'Putuo');
INSERT INTO `sys_district` VALUES ('330900', '330921', '岱山县', '0580', '316200', 'Y', null, null, null, null, 'Daishan');
INSERT INTO `sys_district` VALUES ('330900', '330922', '嵊泗县', '0580', '202450', 'Y', null, null, null, null, 'Shengsi');
INSERT INTO `sys_district` VALUES ('331000', '331002', '椒江区', '0576', '318000', 'Y', null, null, null, null, 'Jiaojiang');
INSERT INTO `sys_district` VALUES ('331000', '331003', '黄岩区', '0576', '318020', 'Y', null, null, null, null, 'Huangyan');
INSERT INTO `sys_district` VALUES ('331000', '331004', '路桥区', '0576', '318050', 'Y', null, null, null, null, 'Luqiao');
INSERT INTO `sys_district` VALUES ('331000', '331021', '玉环县', '0576', '317600', 'Y', null, null, null, null, 'Yuhuan');
INSERT INTO `sys_district` VALUES ('331000', '331022', '三门县', '0576', '317100', 'Y', null, null, null, null, 'Sanmen');
INSERT INTO `sys_district` VALUES ('331000', '331023', '天台县', '0576', '317200', 'Y', null, null, null, null, 'Tiantai');
INSERT INTO `sys_district` VALUES ('331000', '331024', '仙居县', '0576', '317300', 'Y', null, null, null, null, 'Xianju');
INSERT INTO `sys_district` VALUES ('331000', '331081', '温岭市', '0576', '317500', 'Y', null, null, null, null, 'Wenling');
INSERT INTO `sys_district` VALUES ('331000', '331082', '临海市', '0576', '317000', 'Y', null, null, null, null, 'Linhai');
INSERT INTO `sys_district` VALUES ('331100', '331102', '莲都区', '0578', '323000', 'Y', null, null, null, null, 'Liandu');
INSERT INTO `sys_district` VALUES ('331100', '331121', '青田县', '0578', '323900', 'Y', null, null, null, null, 'Qingtian');
INSERT INTO `sys_district` VALUES ('331100', '331122', '缙云县', '0578', '321400', 'Y', null, null, null, null, 'Jinyun');
INSERT INTO `sys_district` VALUES ('331100', '331123', '遂昌县', '0578', '323300', 'Y', null, null, null, null, 'Suichang');
INSERT INTO `sys_district` VALUES ('331100', '331124', '松阳县', '0578', '323400', 'Y', null, null, null, null, 'Songyang');
INSERT INTO `sys_district` VALUES ('331100', '331125', '云和县', '0578', '323600', 'Y', null, null, null, null, 'Yunhe');
INSERT INTO `sys_district` VALUES ('331100', '331126', '庆元县', '0578', '323800', 'Y', null, null, null, null, 'Qingyuan');
INSERT INTO `sys_district` VALUES ('331100', '331127', '景宁畲族自治县', '0578', '323500', 'Y', null, null, null, null, 'Jingning');
INSERT INTO `sys_district` VALUES ('331100', '331181', '龙泉市', '0578', '323700', 'Y', null, null, null, null, 'Longquan');
INSERT INTO `sys_district` VALUES ('331200', '331201', '金塘岛', '0580', '316000', 'Y', null, null, null, null, 'Jintang');
INSERT INTO `sys_district` VALUES ('331200', '331202', '六横岛', '0580', '316000', 'Y', null, null, null, null, 'Liuheng');
INSERT INTO `sys_district` VALUES ('331200', '331203', '衢山岛', '0580', '316000', 'Y', null, null, null, null, 'Qushan');
INSERT INTO `sys_district` VALUES ('331200', '331204', '舟山本岛西北部', '0580', '316000', 'Y', null, null, null, null, 'Zhoushan');
INSERT INTO `sys_district` VALUES ('331200', '331205', '岱山岛西南部', '0580', '316000', 'Y', null, null, null, null, 'Daishan');
INSERT INTO `sys_district` VALUES ('331200', '331206', '泗礁岛', '0580', '316000', 'Y', null, null, null, null, 'Sijiao');
INSERT INTO `sys_district` VALUES ('331200', '331207', '朱家尖岛', '0580', '316000', 'Y', null, null, null, null, 'Zhujiajian');
INSERT INTO `sys_district` VALUES ('331200', '331208', '洋山岛', '0580', '316000', 'Y', null, null, null, null, 'Yangshan');
INSERT INTO `sys_district` VALUES ('331200', '331209', '长涂岛', '0580', '316000', 'Y', null, null, null, null, 'Changtu');
INSERT INTO `sys_district` VALUES ('331200', '331210', '虾峙岛', '0580', '316000', 'Y', null, null, null, null, 'Xiazhi');
INSERT INTO `sys_district` VALUES ('340100', '340102', '瑶海区', '0551', '230011', 'Y', null, null, null, null, 'Yaohai');
INSERT INTO `sys_district` VALUES ('340100', '340103', '庐阳区', '0551', '230001', 'Y', null, null, null, null, 'Luyang');
INSERT INTO `sys_district` VALUES ('340100', '340104', '蜀山区', '0551', '230031', 'Y', null, null, null, null, 'Shushan');
INSERT INTO `sys_district` VALUES ('340100', '340111', '包河区', '0551', '230041', 'Y', null, null, null, null, 'Baohe');
INSERT INTO `sys_district` VALUES ('340100', '340121', '长丰县', '0551', '231100', 'Y', null, null, null, null, 'Changfeng');
INSERT INTO `sys_district` VALUES ('340100', '340122', '肥东县', '0551', '231600', 'Y', null, null, null, null, 'Feidong');
INSERT INTO `sys_district` VALUES ('340100', '340123', '肥西县', '0551', '231200', 'Y', null, null, null, null, 'Feixi');
INSERT INTO `sys_district` VALUES ('340100', '340124', '庐江县', '0565', '231500', 'Y', null, null, null, null, 'Lujiang');
INSERT INTO `sys_district` VALUES ('340100', '340181', '巢湖市', '0565', '238000', 'Y', null, null, null, null, 'Chaohu');
INSERT INTO `sys_district` VALUES ('340200', '340202', '镜湖区', '0553', '241000', 'Y', null, null, null, null, 'Jinghu');
INSERT INTO `sys_district` VALUES ('340200', '340203', '弋江区', '0553', '241000', 'Y', null, null, null, null, 'Yijiang');
INSERT INTO `sys_district` VALUES ('340200', '340207', '鸠江区', '0553', '241000', 'Y', null, null, null, null, 'Jiujiang');
INSERT INTO `sys_district` VALUES ('340200', '340208', '三山区', '0553', '241000', 'Y', null, null, null, null, 'Sanshan');
INSERT INTO `sys_district` VALUES ('340200', '340221', '芜湖县', '0553', '241100', 'Y', null, null, null, null, 'Wuhu');
INSERT INTO `sys_district` VALUES ('340200', '340222', '繁昌县', '0553', '241200', 'Y', null, null, null, null, 'Fanchang');
INSERT INTO `sys_district` VALUES ('340200', '340223', '南陵县', '0553', '242400', 'Y', null, null, null, null, 'Nanling');
INSERT INTO `sys_district` VALUES ('340200', '340225', '无为县', '0565', '238300', 'Y', null, null, null, null, 'Wuwei');
INSERT INTO `sys_district` VALUES ('340300', '340302', '龙子湖区', '0552', '233000', 'Y', null, null, null, null, 'Longzihu');
INSERT INTO `sys_district` VALUES ('340300', '340303', '蚌山区', '0552', '233000', 'Y', null, null, null, null, 'Bengshan');
INSERT INTO `sys_district` VALUES ('340300', '340304', '禹会区', '0552', '233010', 'Y', null, null, null, null, 'Yuhui');
INSERT INTO `sys_district` VALUES ('340300', '340311', '淮上区', '0552', '233002', 'Y', null, null, null, null, 'Huaishang');
INSERT INTO `sys_district` VALUES ('340300', '340321', '怀远县', '0552', '233400', 'Y', null, null, null, null, 'Huaiyuan');
INSERT INTO `sys_district` VALUES ('340300', '340322', '五河县', '0552', '233300', 'Y', null, null, null, null, 'Wuhe');
INSERT INTO `sys_district` VALUES ('340300', '340323', '固镇县', '0552', '233700', 'Y', null, null, null, null, 'Guzhen');
INSERT INTO `sys_district` VALUES ('340400', '340402', '大通区', '0554', '232033', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_district` VALUES ('340400', '340403', '田家庵区', '0554', '232000', 'Y', null, null, null, null, 'Tianjiaan');
INSERT INTO `sys_district` VALUES ('340400', '340404', '谢家集区', '0554', '232052', 'Y', null, null, null, null, 'Xiejiaji');
INSERT INTO `sys_district` VALUES ('340400', '340405', '八公山区', '0554', '232072', 'Y', null, null, null, null, 'Bagongshan');
INSERT INTO `sys_district` VALUES ('340400', '340406', '潘集区', '0554', '232082', 'Y', null, null, null, null, 'Panji');
INSERT INTO `sys_district` VALUES ('340400', '340421', '凤台县', '0554', '232100', 'Y', null, null, null, null, 'Fengtai');
INSERT INTO `sys_district` VALUES ('340500', '340503', '花山区', '0555', '243000', 'Y', null, null, null, null, 'Huashan');
INSERT INTO `sys_district` VALUES ('340500', '340504', '雨山区', '0555', '243071', 'Y', null, null, null, null, 'Yushan');
INSERT INTO `sys_district` VALUES ('340500', '340506', '博望区', '0555', '243131', 'Y', null, null, null, null, 'Bowang');
INSERT INTO `sys_district` VALUES ('340500', '340521', '当涂县', '0555', '243100', 'Y', null, null, null, null, 'Dangtu');
INSERT INTO `sys_district` VALUES ('340500', '340522', '含山县', '0555', '238100', 'Y', null, null, null, null, 'Hanshan ');
INSERT INTO `sys_district` VALUES ('340500', '340523', '和县', '0555', '238200', 'Y', null, null, null, null, 'Hexian');
INSERT INTO `sys_district` VALUES ('340600', '340602', '杜集区', '0561', '235000', 'Y', null, null, null, null, 'Duji');
INSERT INTO `sys_district` VALUES ('340600', '340603', '相山区', '0561', '235000', 'Y', null, null, null, null, 'Xiangshan');
INSERT INTO `sys_district` VALUES ('340600', '340604', '烈山区', '0561', '235000', 'Y', null, null, null, null, 'Lieshan');
INSERT INTO `sys_district` VALUES ('340600', '340621', '濉溪县', '0561', '235100', 'Y', null, null, null, null, 'Suixi');
INSERT INTO `sys_district` VALUES ('340700', '340702', '铜官山区', '0562', '244000', 'Y', null, null, null, null, 'Tongguanshan');
INSERT INTO `sys_district` VALUES ('340700', '340703', '狮子山区', '0562', '244000', 'Y', null, null, null, null, 'Shizishan');
INSERT INTO `sys_district` VALUES ('340700', '340711', '郊区', '0562', '244000', 'Y', null, null, null, null, 'Jiaoqu');
INSERT INTO `sys_district` VALUES ('340700', '340721', '铜陵县', '0562', '244100', 'Y', null, null, null, null, 'Tongling');
INSERT INTO `sys_district` VALUES ('340800', '340802', '迎江区', '0556', '246001', 'Y', null, null, null, null, 'Yingjiang');
INSERT INTO `sys_district` VALUES ('340800', '340803', '大观区', '0556', '246002', 'Y', null, null, null, null, 'Daguan');
INSERT INTO `sys_district` VALUES ('340800', '340811', '宜秀区', '0556', '246003', 'Y', null, null, null, null, 'Yixiu');
INSERT INTO `sys_district` VALUES ('340800', '340822', '怀宁县', '0556', '246100', 'Y', null, null, null, null, 'Huaining');
INSERT INTO `sys_district` VALUES ('340800', '340823', '枞阳县', '0556', '246700', 'Y', null, null, null, null, 'Zongyang');
INSERT INTO `sys_district` VALUES ('340800', '340824', '潜山县', '0556', '246300', 'Y', null, null, null, null, 'Qianshan');
INSERT INTO `sys_district` VALUES ('340800', '340825', '太湖县', '0556', '246400', 'Y', null, null, null, null, 'Taihu');
INSERT INTO `sys_district` VALUES ('340800', '340826', '宿松县', '0556', '246500', 'Y', null, null, null, null, 'Susong');
INSERT INTO `sys_district` VALUES ('340800', '340827', '望江县', '0556', '246200', 'Y', null, null, null, null, 'Wangjiang');
INSERT INTO `sys_district` VALUES ('340800', '340828', '岳西县', '0556', '246600', 'Y', null, null, null, null, 'Yuexi');
INSERT INTO `sys_district` VALUES ('340800', '340881', '桐城市', '0556', '231400', 'Y', null, null, null, null, 'Tongcheng');
INSERT INTO `sys_district` VALUES ('341000', '341002', '屯溪区', '0559', '245000', 'Y', null, null, null, null, 'Tunxi');
INSERT INTO `sys_district` VALUES ('341000', '341003', '黄山区', '0559', '242700', 'Y', null, null, null, null, 'Huangshan');
INSERT INTO `sys_district` VALUES ('341000', '341004', '徽州区', '0559', '245061', 'Y', null, null, null, null, 'Huizhou');
INSERT INTO `sys_district` VALUES ('341000', '341021', '歙县', '0559', '245200', 'Y', null, null, null, null, 'Shexian');
INSERT INTO `sys_district` VALUES ('341000', '341022', '休宁县', '0559', '245400', 'Y', null, null, null, null, 'Xiuning');
INSERT INTO `sys_district` VALUES ('341000', '341023', '黟县', '0559', '245500', 'Y', null, null, null, null, 'Yixian');
INSERT INTO `sys_district` VALUES ('341000', '341024', '祁门县', '0559', '245600', 'Y', null, null, null, null, 'Qimen');
INSERT INTO `sys_district` VALUES ('341100', '341102', '琅琊区', '0550', '239000', 'Y', null, null, null, null, 'Langya');
INSERT INTO `sys_district` VALUES ('341100', '341103', '南谯区', '0550', '239000', 'Y', null, null, null, null, 'Nanqiao');
INSERT INTO `sys_district` VALUES ('341100', '341122', '来安县', '0550', '239200', 'Y', null, null, null, null, 'Lai\'an');
INSERT INTO `sys_district` VALUES ('341100', '341124', '全椒县', '0550', '239500', 'Y', null, null, null, null, 'Quanjiao');
INSERT INTO `sys_district` VALUES ('341100', '341125', '定远县', '0550', '233200', 'Y', null, null, null, null, 'Dingyuan');
INSERT INTO `sys_district` VALUES ('341100', '341126', '凤阳县', '0550', '233100', 'Y', null, null, null, null, 'Fengyang');
INSERT INTO `sys_district` VALUES ('341100', '341181', '天长市', '0550', '239300', 'Y', null, null, null, null, 'Tianchang');
INSERT INTO `sys_district` VALUES ('341100', '341182', '明光市', '0550', '239400', 'Y', null, null, null, null, 'Mingguang');
INSERT INTO `sys_district` VALUES ('341200', '341202', '颍州区', '0558', '236001', 'Y', null, null, null, null, 'Yingzhou');
INSERT INTO `sys_district` VALUES ('341200', '341203', '颍东区', '0558', '236058', 'Y', null, null, null, null, 'Yingdong');
INSERT INTO `sys_district` VALUES ('341200', '341204', '颍泉区', '0558', '236045', 'Y', null, null, null, null, 'Yingquan');
INSERT INTO `sys_district` VALUES ('341200', '341221', '临泉县', '0558', '236400', 'Y', null, null, null, null, 'Linquan');
INSERT INTO `sys_district` VALUES ('341200', '341222', '太和县', '0558', '236600', 'Y', null, null, null, null, 'Taihe');
INSERT INTO `sys_district` VALUES ('341200', '341225', '阜南县', '0558', '236300', 'Y', null, null, null, null, 'Funan');
INSERT INTO `sys_district` VALUES ('341200', '341226', '颍上县', '0558', '236200', 'Y', null, null, null, null, 'Yingshang');
INSERT INTO `sys_district` VALUES ('341200', '341282', '界首市', '0558', '236500', 'Y', null, null, null, null, 'Jieshou');
INSERT INTO `sys_district` VALUES ('341300', '341302', '埇桥区', '0557', '234000', 'Y', null, null, null, null, 'Yongqiao');
INSERT INTO `sys_district` VALUES ('341300', '341321', '砀山县', '0557', '235300', 'Y', null, null, null, null, 'Dangshan');
INSERT INTO `sys_district` VALUES ('341300', '341322', '萧县', '0557', '235200', 'Y', null, null, null, null, 'Xiaoxian');
INSERT INTO `sys_district` VALUES ('341300', '341323', '灵璧县', '0557', '234200', 'Y', null, null, null, null, 'Lingbi');
INSERT INTO `sys_district` VALUES ('341300', '341324', '泗县', '0557', '234300', 'Y', null, null, null, null, 'Sixian');
INSERT INTO `sys_district` VALUES ('341500', '341502', '金安区', '0564', '237005', 'Y', null, null, null, null, 'Jin\'an');
INSERT INTO `sys_district` VALUES ('341500', '341503', '裕安区', '0564', '237010', 'Y', null, null, null, null, 'Yu\'an');
INSERT INTO `sys_district` VALUES ('341500', '341521', '寿县', '0564', '232200', 'Y', null, null, null, null, 'Shouxian');
INSERT INTO `sys_district` VALUES ('341500', '341522', '霍邱县', '0564', '237400', 'Y', null, null, null, null, 'Huoqiu');
INSERT INTO `sys_district` VALUES ('341500', '341523', '舒城县', '0564', '231300', 'Y', null, null, null, null, 'Shucheng');
INSERT INTO `sys_district` VALUES ('341500', '341524', '金寨县', '0564', '237300', 'Y', null, null, null, null, 'Jinzhai');
INSERT INTO `sys_district` VALUES ('341500', '341525', '霍山县', '0564', '237200', 'Y', null, null, null, null, 'Huoshan');
INSERT INTO `sys_district` VALUES ('341600', '341602', '谯城区', '0558', '236800', 'Y', null, null, null, null, 'Qiaocheng');
INSERT INTO `sys_district` VALUES ('341600', '341621', '涡阳县', '0558', '233600', 'Y', null, null, null, null, 'Guoyang');
INSERT INTO `sys_district` VALUES ('341600', '341622', '蒙城县', '0558', '233500', 'Y', null, null, null, null, 'Mengcheng');
INSERT INTO `sys_district` VALUES ('341600', '341623', '利辛县', '0558', '236700', 'Y', null, null, null, null, 'Lixin');
INSERT INTO `sys_district` VALUES ('341700', '341702', '贵池区', '0566', '247100', 'Y', null, null, null, null, 'Guichi');
INSERT INTO `sys_district` VALUES ('341700', '341721', '东至县', '0566', '247200', 'Y', null, null, null, null, 'Dongzhi');
INSERT INTO `sys_district` VALUES ('341700', '341722', '石台县', '0566', '245100', 'Y', null, null, null, null, 'Shitai');
INSERT INTO `sys_district` VALUES ('341700', '341723', '青阳县', '0566', '242800', 'Y', null, null, null, null, 'Qingyang');
INSERT INTO `sys_district` VALUES ('341800', '341802', '宣州区', '0563', '242000', 'Y', null, null, null, null, 'Xuanzhou');
INSERT INTO `sys_district` VALUES ('341800', '341821', '郎溪县', '0563', '242100', 'Y', null, null, null, null, 'Langxi');
INSERT INTO `sys_district` VALUES ('341800', '341822', '广德县', '0563', '242200', 'Y', null, null, null, null, 'Guangde');
INSERT INTO `sys_district` VALUES ('341800', '341823', '泾县', '0563', '242500', 'Y', null, null, null, null, 'Jingxian');
INSERT INTO `sys_district` VALUES ('341800', '341824', '绩溪县', '0563', '245300', 'Y', null, null, null, null, 'Jixi');
INSERT INTO `sys_district` VALUES ('341800', '341825', '旌德县', '0563', '242600', 'Y', null, null, null, null, 'Jingde');
INSERT INTO `sys_district` VALUES ('341800', '341881', '宁国市', '0563', '242300', 'Y', null, null, null, null, 'Ningguo');
INSERT INTO `sys_district` VALUES ('350100', '350102', '鼓楼区', '0591', '350001', 'Y', null, null, null, null, 'Gulou');
INSERT INTO `sys_district` VALUES ('350100', '350103', '台江区', '0591', '350004', 'Y', null, null, null, null, 'Taijiang');
INSERT INTO `sys_district` VALUES ('350100', '350104', '仓山区', '0591', '350007', 'Y', null, null, null, null, 'Cangshan');
INSERT INTO `sys_district` VALUES ('350100', '350105', '马尾区', '0591', '350015', 'Y', null, null, null, null, 'Mawei');
INSERT INTO `sys_district` VALUES ('350100', '350111', '晋安区', '0591', '350011', 'Y', null, null, null, null, 'Jin\'an');
INSERT INTO `sys_district` VALUES ('350100', '350121', '闽侯县', '0591', '350100', 'Y', null, null, null, null, 'Minhou');
INSERT INTO `sys_district` VALUES ('350100', '350122', '连江县', '0591', '350500', 'Y', null, null, null, null, 'Lianjiang');
INSERT INTO `sys_district` VALUES ('350100', '350123', '罗源县', '0591', '350600', 'Y', null, null, null, null, 'Luoyuan');
INSERT INTO `sys_district` VALUES ('350100', '350124', '闽清县', '0591', '350800', 'Y', null, null, null, null, 'Minqing');
INSERT INTO `sys_district` VALUES ('350100', '350125', '永泰县', '0591', '350700', 'Y', null, null, null, null, 'Yongtai');
INSERT INTO `sys_district` VALUES ('350100', '350128', '平潭县', '0591', '350400', 'Y', null, null, null, null, 'Pingtan');
INSERT INTO `sys_district` VALUES ('350100', '350181', '福清市', '0591', '350300', 'Y', null, null, null, null, 'Fuqing');
INSERT INTO `sys_district` VALUES ('350100', '350182', '长乐市', '0591', '350200', 'Y', null, null, null, null, 'Changle');
INSERT INTO `sys_district` VALUES ('350200', '350203', '思明区', '0592', '361001', 'Y', null, null, null, null, 'Siming');
INSERT INTO `sys_district` VALUES ('350200', '350205', '海沧区', '0592', '361026', 'Y', null, null, null, null, 'Haicang');
INSERT INTO `sys_district` VALUES ('350200', '350206', '湖里区', '0592', '361006', 'Y', null, null, null, null, 'Huli');
INSERT INTO `sys_district` VALUES ('350200', '350211', '集美区', '0592', '361021', 'Y', null, null, null, null, 'Jimei');
INSERT INTO `sys_district` VALUES ('350200', '350212', '同安区', '0592', '361100', 'Y', null, null, null, null, 'Tong\'an');
INSERT INTO `sys_district` VALUES ('350200', '350213', '翔安区', '0592', '361101', 'Y', null, null, null, null, 'Xiang\'an');
INSERT INTO `sys_district` VALUES ('350300', '350302', '城厢区', '0594', '351100', 'Y', null, null, null, null, 'Chengxiang');
INSERT INTO `sys_district` VALUES ('350300', '350303', '涵江区', '0594', '351111', 'Y', null, null, null, null, 'Hanjiang');
INSERT INTO `sys_district` VALUES ('350300', '350304', '荔城区', '0594', '351100', 'Y', null, null, null, null, 'Licheng');
INSERT INTO `sys_district` VALUES ('350300', '350305', '秀屿区', '0594', '351152', 'Y', null, null, null, null, 'Xiuyu');
INSERT INTO `sys_district` VALUES ('350300', '350322', '仙游县', '0594', '351200', 'Y', null, null, null, null, 'Xianyou');
INSERT INTO `sys_district` VALUES ('350400', '350402', '梅列区', '0598', '365000', 'Y', null, null, null, null, 'Meilie');
INSERT INTO `sys_district` VALUES ('350400', '350403', '三元区', '0598', '365001', 'Y', null, null, null, null, 'Sanyuan');
INSERT INTO `sys_district` VALUES ('350400', '350421', '明溪县', '0598', '365200', 'Y', null, null, null, null, 'Mingxi');
INSERT INTO `sys_district` VALUES ('350400', '350423', '清流县', '0598', '365300', 'Y', null, null, null, null, 'Qingliu');
INSERT INTO `sys_district` VALUES ('350400', '350424', '宁化县', '0598', '365400', 'Y', null, null, null, null, 'Ninghua');
INSERT INTO `sys_district` VALUES ('350400', '350425', '大田县', '0598', '366100', 'Y', null, null, null, null, 'Datian');
INSERT INTO `sys_district` VALUES ('350400', '350426', '尤溪县', '0598', '365100', 'Y', null, null, null, null, 'Youxi');
INSERT INTO `sys_district` VALUES ('350400', '350427', '沙县', '0598', '365500', 'Y', null, null, null, null, 'Shaxian');
INSERT INTO `sys_district` VALUES ('350400', '350428', '将乐县', '0598', '353300', 'Y', null, null, null, null, 'Jiangle');
INSERT INTO `sys_district` VALUES ('350400', '350429', '泰宁县', '0598', '354400', 'Y', null, null, null, null, 'Taining');
INSERT INTO `sys_district` VALUES ('350400', '350430', '建宁县', '0598', '354500', 'Y', null, null, null, null, 'Jianning');
INSERT INTO `sys_district` VALUES ('350400', '350481', '永安市', '0598', '366000', 'Y', null, null, null, null, 'Yong\'an');
INSERT INTO `sys_district` VALUES ('350500', '350502', '鲤城区', '0595', '362000', 'Y', null, null, null, null, 'Licheng');
INSERT INTO `sys_district` VALUES ('350500', '350503', '丰泽区', '0595', '362000', 'Y', null, null, null, null, 'Fengze');
INSERT INTO `sys_district` VALUES ('350500', '350504', '洛江区', '0595', '362011', 'Y', null, null, null, null, 'Luojiang');
INSERT INTO `sys_district` VALUES ('350500', '350505', '泉港区', '0595', '362114', 'Y', null, null, null, null, 'Quangang');
INSERT INTO `sys_district` VALUES ('350500', '350521', '惠安县', '0595', '362100', 'Y', null, null, null, null, 'Hui\'an');
INSERT INTO `sys_district` VALUES ('350500', '350524', '安溪县', '0595', '362400', 'Y', null, null, null, null, 'Anxi');
INSERT INTO `sys_district` VALUES ('350500', '350525', '永春县', '0595', '362600', 'Y', null, null, null, null, 'Yongchun');
INSERT INTO `sys_district` VALUES ('350500', '350526', '德化县', '0595', '362500', 'Y', null, null, null, null, 'Dehua');
INSERT INTO `sys_district` VALUES ('350500', '350527', '金门县', null, null, 'Y', null, null, null, null, 'Jinmen');
INSERT INTO `sys_district` VALUES ('350500', '350581', '石狮市', '0595', '362700', 'Y', null, null, null, null, 'Shishi');
INSERT INTO `sys_district` VALUES ('350500', '350582', '晋江市', '0595', '362200', 'Y', null, null, null, null, 'Jinjiang');
INSERT INTO `sys_district` VALUES ('350500', '350583', '南安市', '0595', '362300', 'Y', null, null, null, null, 'Nan\'an');
INSERT INTO `sys_district` VALUES ('350600', '350602', '芗城区', '0596', '363000', 'Y', null, null, null, null, 'Xiangcheng');
INSERT INTO `sys_district` VALUES ('350600', '350603', '龙文区', '0596', '363005', 'Y', null, null, null, null, 'Longwen');
INSERT INTO `sys_district` VALUES ('350600', '350622', '云霄县', '0596', '363300', 'Y', null, null, null, null, 'Yunxiao');
INSERT INTO `sys_district` VALUES ('350600', '350623', '漳浦县', '0596', '363200', 'Y', null, null, null, null, 'Zhangpu');
INSERT INTO `sys_district` VALUES ('350600', '350624', '诏安县', '0596', '363500', 'Y', null, null, null, null, 'Zhao\'an');
INSERT INTO `sys_district` VALUES ('350600', '350625', '长泰县', '0596', '363900', 'Y', null, null, null, null, 'Changtai');
INSERT INTO `sys_district` VALUES ('350600', '350626', '东山县', '0596', '363400', 'Y', null, null, null, null, 'Dongshan');
INSERT INTO `sys_district` VALUES ('350600', '350627', '南靖县', '0596', '363600', 'Y', null, null, null, null, 'Nanjing');
INSERT INTO `sys_district` VALUES ('350600', '350628', '平和县', '0596', '363700', 'Y', null, null, null, null, 'Pinghe');
INSERT INTO `sys_district` VALUES ('350600', '350629', '华安县', '0596', '363800', 'Y', null, null, null, null, 'Hua\'an');
INSERT INTO `sys_district` VALUES ('350600', '350681', '龙海市', '0596', '363100', 'Y', null, null, null, null, 'Longhai');
INSERT INTO `sys_district` VALUES ('350700', '350702', '延平区', '0600', '353000', 'Y', null, null, null, null, 'Yanping');
INSERT INTO `sys_district` VALUES ('350700', '350703', '建阳区', '0599', '354200', 'Y', null, null, null, null, 'Jianyang');
INSERT INTO `sys_district` VALUES ('350700', '350721', '顺昌县', '0605', '353200', 'Y', null, null, null, null, 'Shunchang');
INSERT INTO `sys_district` VALUES ('350700', '350722', '浦城县', '0606', '353400', 'Y', null, null, null, null, 'Pucheng');
INSERT INTO `sys_district` VALUES ('350700', '350723', '光泽县', '0607', '354100', 'Y', null, null, null, null, 'Guangze');
INSERT INTO `sys_district` VALUES ('350700', '350724', '松溪县', '0608', '353500', 'Y', null, null, null, null, 'Songxi');
INSERT INTO `sys_district` VALUES ('350700', '350725', '政和县', '0609', '353600', 'Y', null, null, null, null, 'Zhenghe');
INSERT INTO `sys_district` VALUES ('350700', '350781', '邵武市', '0601', '354000', 'Y', null, null, null, null, 'Shaowu');
INSERT INTO `sys_district` VALUES ('350700', '350782', '武夷山市', '0602', '354300', 'Y', null, null, null, null, 'Wuyishan');
INSERT INTO `sys_district` VALUES ('350700', '350783', '建瓯市', '0603', '353100', 'Y', null, null, null, null, 'Jianou');
INSERT INTO `sys_district` VALUES ('350800', '350802', '新罗区', '0597', '364000', 'Y', null, null, null, null, 'Xinluo');
INSERT INTO `sys_district` VALUES ('350800', '350821', '长汀县', '0597', '366300', 'Y', null, null, null, null, 'Changting');
INSERT INTO `sys_district` VALUES ('350800', '350822', '永定区', '0597', '364100', 'Y', null, null, null, null, 'Yongding');
INSERT INTO `sys_district` VALUES ('350800', '350823', '上杭县', '0597', '364200', 'Y', null, null, null, null, 'Shanghang');
INSERT INTO `sys_district` VALUES ('350800', '350824', '武平县', '0597', '364300', 'Y', null, null, null, null, 'Wuping');
INSERT INTO `sys_district` VALUES ('350800', '350825', '连城县', '0597', '366200', 'Y', null, null, null, null, 'Liancheng');
INSERT INTO `sys_district` VALUES ('350800', '350881', '漳平市', '0597', '364400', 'Y', null, null, null, null, 'Zhangping');
INSERT INTO `sys_district` VALUES ('350900', '350902', '蕉城区', '0593', '352100', 'Y', null, null, null, null, 'Jiaocheng');
INSERT INTO `sys_district` VALUES ('350900', '350921', '霞浦县', '0593', '355100', 'Y', null, null, null, null, 'Xiapu');
INSERT INTO `sys_district` VALUES ('350900', '350922', '古田县', '0593', '352200', 'Y', null, null, null, null, 'Gutian');
INSERT INTO `sys_district` VALUES ('350900', '350923', '屏南县', '0593', '352300', 'Y', null, null, null, null, 'Pingnan');
INSERT INTO `sys_district` VALUES ('350900', '350924', '寿宁县', '0593', '355500', 'Y', null, null, null, null, 'Shouning');
INSERT INTO `sys_district` VALUES ('350900', '350925', '周宁县', '0593', '355400', 'Y', null, null, null, null, 'Zhouning');
INSERT INTO `sys_district` VALUES ('350900', '350926', '柘荣县', '0593', '355300', 'Y', null, null, null, null, 'Zherong');
INSERT INTO `sys_district` VALUES ('350900', '350981', '福安市', '0593', '355000', 'Y', null, null, null, null, 'Fu\'an');
INSERT INTO `sys_district` VALUES ('350900', '350982', '福鼎市', '0593', '355200', 'Y', null, null, null, null, 'Fuding');
INSERT INTO `sys_district` VALUES ('360100', '360102', '东湖区', '0791', '330006', 'Y', null, null, null, null, 'Donghu');
INSERT INTO `sys_district` VALUES ('360100', '360103', '西湖区', '0791', '330009', 'Y', null, null, null, null, 'Xihu');
INSERT INTO `sys_district` VALUES ('360100', '360104', '青云谱区', '0791', '330001', 'Y', null, null, null, null, 'Qingyunpu');
INSERT INTO `sys_district` VALUES ('360100', '360105', '湾里区', '0791', '330004', 'Y', null, null, null, null, 'Wanli');
INSERT INTO `sys_district` VALUES ('360100', '360111', '青山湖区', '0791', '330029', 'Y', null, null, null, null, 'Qingshanhu');
INSERT INTO `sys_district` VALUES ('360100', '360121', '南昌县', '0791', '330200', 'Y', null, null, null, null, 'Nanchang');
INSERT INTO `sys_district` VALUES ('360100', '360122', '新建县', '0791', '330100', 'Y', null, null, null, null, 'Xinjian');
INSERT INTO `sys_district` VALUES ('360100', '360123', '安义县', '0791', '330500', 'Y', null, null, null, null, 'Anyi');
INSERT INTO `sys_district` VALUES ('360100', '360124', '进贤县', '0791', '331700', 'Y', null, null, null, null, 'Jinxian');
INSERT INTO `sys_district` VALUES ('360200', '360202', '昌江区', '0799', '333000', 'Y', null, null, null, null, 'Changjiang');
INSERT INTO `sys_district` VALUES ('360200', '360203', '珠山区', '0800', '333000', 'Y', null, null, null, null, 'Zhushan');
INSERT INTO `sys_district` VALUES ('360200', '360222', '浮梁县', '0802', '333400', 'Y', null, null, null, null, 'Fuliang');
INSERT INTO `sys_district` VALUES ('360200', '360281', '乐平市', '0801', '333300', 'Y', null, null, null, null, 'Leping');
INSERT INTO `sys_district` VALUES ('360300', '360302', '安源区', '0800', '337000', 'Y', null, null, null, null, 'Anyuan');
INSERT INTO `sys_district` VALUES ('360300', '360313', '湘东区', '0801', '337016', 'Y', null, null, null, null, 'Xiangdong');
INSERT INTO `sys_district` VALUES ('360300', '360321', '莲花县', '0802', '337100', 'Y', null, null, null, null, 'Lianhua');
INSERT INTO `sys_district` VALUES ('360300', '360322', '上栗县', '0803', '337009', 'Y', null, null, null, null, 'Shangli');
INSERT INTO `sys_district` VALUES ('360300', '360323', '芦溪县', '0804', '337053', 'Y', null, null, null, null, 'Luxi');
INSERT INTO `sys_district` VALUES ('360400', '360402', '庐山区', '0792', '332005', 'Y', null, null, null, null, 'Lushan');
INSERT INTO `sys_district` VALUES ('360400', '360403', '浔阳区', '0792', '332000', 'Y', null, null, null, null, 'Xunyang');
INSERT INTO `sys_district` VALUES ('360400', '360421', '九江县', '0792', '332100', 'Y', null, null, null, null, 'Jiujiang');
INSERT INTO `sys_district` VALUES ('360400', '360423', '武宁县', '0792', '332300', 'Y', null, null, null, null, 'Wuning');
INSERT INTO `sys_district` VALUES ('360400', '360424', '修水县', '0792', '332400', 'Y', null, null, null, null, 'Xiushui');
INSERT INTO `sys_district` VALUES ('360400', '360425', '永修县', '0792', '330300', 'Y', null, null, null, null, 'Yongxiu');
INSERT INTO `sys_district` VALUES ('360400', '360426', '德安县', '0792', '330400', 'Y', null, null, null, null, 'De\'an');
INSERT INTO `sys_district` VALUES ('360400', '360427', '星子县', '0792', '332800', 'Y', null, null, null, null, 'Xingzi');
INSERT INTO `sys_district` VALUES ('360400', '360428', '都昌县', '0792', '332600', 'Y', null, null, null, null, 'Duchang');
INSERT INTO `sys_district` VALUES ('360400', '360429', '湖口县', '0792', '332500', 'Y', null, null, null, null, 'Hukou');
INSERT INTO `sys_district` VALUES ('360400', '360430', '彭泽县', '0792', '332700', 'Y', null, null, null, null, 'Pengze');
INSERT INTO `sys_district` VALUES ('360400', '360481', '瑞昌市', '0792', '332200', 'Y', null, null, null, null, 'Ruichang');
INSERT INTO `sys_district` VALUES ('360400', '360482', '共青城市', '0792', '332020', 'Y', null, null, null, null, 'Gongqingcheng');
INSERT INTO `sys_district` VALUES ('360500', '360502', '渝水区', '0790', '338025', 'Y', null, null, null, null, 'Yushui');
INSERT INTO `sys_district` VALUES ('360500', '360521', '分宜县', '0790', '336600', 'Y', null, null, null, null, 'Fenyi');
INSERT INTO `sys_district` VALUES ('360600', '360602', '月湖区', '0701', '335000', 'Y', null, null, null, null, 'Yuehu');
INSERT INTO `sys_district` VALUES ('360600', '360622', '余江县', '0701', '335200', 'Y', null, null, null, null, 'Yujiang');
INSERT INTO `sys_district` VALUES ('360600', '360681', '贵溪市', '0701', '335400', 'Y', null, null, null, null, 'Guixi');
INSERT INTO `sys_district` VALUES ('360700', '360702', '章贡区', '0797', '341000', 'Y', null, null, null, null, 'Zhanggong');
INSERT INTO `sys_district` VALUES ('360700', '360703', '南康区', '0797', '341400', 'Y', null, null, null, null, 'Nankang');
INSERT INTO `sys_district` VALUES ('360700', '360721', '赣县', '0797', '341100', 'Y', null, null, null, null, 'Ganxian');
INSERT INTO `sys_district` VALUES ('360700', '360722', '信丰县', '0797', '341600', 'Y', null, null, null, null, 'Xinfeng');
INSERT INTO `sys_district` VALUES ('360700', '360723', '大余县', '0797', '341500', 'Y', null, null, null, null, 'Dayu');
INSERT INTO `sys_district` VALUES ('360700', '360724', '上犹县', '0797', '341200', 'Y', null, null, null, null, 'Shangyou');
INSERT INTO `sys_district` VALUES ('360700', '360725', '崇义县', '0797', '341300', 'Y', null, null, null, null, 'Chongyi');
INSERT INTO `sys_district` VALUES ('360700', '360726', '安远县', '0797', '342100', 'Y', null, null, null, null, 'Anyuan');
INSERT INTO `sys_district` VALUES ('360700', '360727', '龙南县', '0797', '341700', 'Y', null, null, null, null, 'Longnan');
INSERT INTO `sys_district` VALUES ('360700', '360728', '定南县', '0797', '341900', 'Y', null, null, null, null, 'Dingnan');
INSERT INTO `sys_district` VALUES ('360700', '360729', '全南县', '0797', '341800', 'Y', null, null, null, null, 'Quannan');
INSERT INTO `sys_district` VALUES ('360700', '360730', '宁都县', '0797', '342800', 'Y', null, null, null, null, 'Ningdu');
INSERT INTO `sys_district` VALUES ('360700', '360731', '于都县', '0797', '342300', 'Y', null, null, null, null, 'Yudu');
INSERT INTO `sys_district` VALUES ('360700', '360732', '兴国县', '0797', '342400', 'Y', null, null, null, null, 'Xingguo');
INSERT INTO `sys_district` VALUES ('360700', '360733', '会昌县', '0797', '342600', 'Y', null, null, null, null, 'Huichang');
INSERT INTO `sys_district` VALUES ('360700', '360734', '寻乌县', '0797', '342200', 'Y', null, null, null, null, 'Xunwu');
INSERT INTO `sys_district` VALUES ('360700', '360735', '石城县', '0797', '342700', 'Y', null, null, null, null, 'Shicheng');
INSERT INTO `sys_district` VALUES ('360700', '360781', '瑞金市', '0797', '342500', 'Y', null, null, null, null, 'Ruijin');
INSERT INTO `sys_district` VALUES ('360800', '360802', '吉州区', '0796', '343000', 'Y', null, null, null, null, 'Jizhou');
INSERT INTO `sys_district` VALUES ('360800', '360803', '青原区', '0796', '343009', 'Y', null, null, null, null, 'Qingyuan');
INSERT INTO `sys_district` VALUES ('360800', '360821', '吉安县', '0796', '343100', 'Y', null, null, null, null, 'Ji\'an');
INSERT INTO `sys_district` VALUES ('360800', '360822', '吉水县', '0796', '331600', 'Y', null, null, null, null, 'Jishui');
INSERT INTO `sys_district` VALUES ('360800', '360823', '峡江县', '0796', '331409', 'Y', null, null, null, null, 'Xiajiang');
INSERT INTO `sys_district` VALUES ('360800', '360824', '新干县', '0796', '331300', 'Y', null, null, null, null, 'Xingan');
INSERT INTO `sys_district` VALUES ('360800', '360825', '永丰县', '0796', '331500', 'Y', null, null, null, null, 'Yongfeng');
INSERT INTO `sys_district` VALUES ('360800', '360826', '泰和县', '0796', '343700', 'Y', null, null, null, null, 'Taihe');
INSERT INTO `sys_district` VALUES ('360800', '360827', '遂川县', '0796', '343900', 'Y', null, null, null, null, 'Suichuan');
INSERT INTO `sys_district` VALUES ('360800', '360828', '万安县', '0796', '343800', 'Y', null, null, null, null, 'Wan\'an');
INSERT INTO `sys_district` VALUES ('360800', '360829', '安福县', '0796', '343200', 'Y', null, null, null, null, 'Anfu');
INSERT INTO `sys_district` VALUES ('360800', '360830', '永新县', '0796', '343400', 'Y', null, null, null, null, 'Yongxin');
INSERT INTO `sys_district` VALUES ('360800', '360881', '井冈山市', '0796', '343600', 'Y', null, null, null, null, 'Jinggangshan');
INSERT INTO `sys_district` VALUES ('360900', '360902', '袁州区', '0795', '336000', 'Y', null, null, null, null, 'Yuanzhou');
INSERT INTO `sys_district` VALUES ('360900', '360921', '奉新县', '0795', '330700', 'Y', null, null, null, null, 'Fengxin');
INSERT INTO `sys_district` VALUES ('360900', '360922', '万载县', '0795', '336100', 'Y', null, null, null, null, 'Wanzai');
INSERT INTO `sys_district` VALUES ('360900', '360923', '上高县', '0795', '336400', 'Y', null, null, null, null, 'Shanggao');
INSERT INTO `sys_district` VALUES ('360900', '360924', '宜丰县', '0795', '336300', 'Y', null, null, null, null, 'Yifeng');
INSERT INTO `sys_district` VALUES ('360900', '360925', '靖安县', '0795', '330600', 'Y', null, null, null, null, 'Jing\'an');
INSERT INTO `sys_district` VALUES ('360900', '360926', '铜鼓县', '0795', '336200', 'Y', null, null, null, null, 'Tonggu');
INSERT INTO `sys_district` VALUES ('360900', '360981', '丰城市', '0795', '331100', 'Y', null, null, null, null, 'Fengcheng');
INSERT INTO `sys_district` VALUES ('360900', '360982', '樟树市', '0795', '331200', 'Y', null, null, null, null, 'Zhangshu');
INSERT INTO `sys_district` VALUES ('360900', '360983', '高安市', '0795', '330800', 'Y', null, null, null, null, 'Gao\'an');
INSERT INTO `sys_district` VALUES ('361000', '361002', '临川区', '0794', '344000', 'Y', null, null, null, null, 'Linchuan');
INSERT INTO `sys_district` VALUES ('361000', '361021', '南城县', '0794', '344700', 'Y', null, null, null, null, 'Nancheng');
INSERT INTO `sys_district` VALUES ('361000', '361022', '黎川县', '0794', '344600', 'Y', null, null, null, null, 'Lichuan');
INSERT INTO `sys_district` VALUES ('361000', '361023', '南丰县', '0794', '344500', 'Y', null, null, null, null, 'Nanfeng');
INSERT INTO `sys_district` VALUES ('361000', '361024', '崇仁县', '0794', '344200', 'Y', null, null, null, null, 'Chongren');
INSERT INTO `sys_district` VALUES ('361000', '361025', '乐安县', '0794', '344300', 'Y', null, null, null, null, 'Le\'an');
INSERT INTO `sys_district` VALUES ('361000', '361026', '宜黄县', '0794', '344400', 'Y', null, null, null, null, 'Yihuang');
INSERT INTO `sys_district` VALUES ('361000', '361027', '金溪县', '0794', '344800', 'Y', null, null, null, null, 'Jinxi');
INSERT INTO `sys_district` VALUES ('361000', '361028', '资溪县', '0794', '335300', 'Y', null, null, null, null, 'Zixi');
INSERT INTO `sys_district` VALUES ('361000', '361029', '东乡县', '0794', '331800', 'Y', null, null, null, null, 'Dongxiang');
INSERT INTO `sys_district` VALUES ('361000', '361030', '广昌县', '0794', '344900', 'Y', null, null, null, null, 'Guangchang');
INSERT INTO `sys_district` VALUES ('361100', '361102', '信州区', '0793', '334000', 'Y', null, null, null, null, 'Xinzhou');
INSERT INTO `sys_district` VALUES ('361100', '361121', '上饶县', '0793', '334100', 'Y', null, null, null, null, 'Shangrao');
INSERT INTO `sys_district` VALUES ('361100', '361122', '广丰县', '0793', '334600', 'Y', null, null, null, null, 'Guangfeng');
INSERT INTO `sys_district` VALUES ('361100', '361123', '玉山县', '0793', '334700', 'Y', null, null, null, null, 'Yushan');
INSERT INTO `sys_district` VALUES ('361100', '361124', '铅山县', '0793', '334500', 'Y', null, null, null, null, 'Yanshan');
INSERT INTO `sys_district` VALUES ('361100', '361125', '横峰县', '0793', '334300', 'Y', null, null, null, null, 'Hengfeng');
INSERT INTO `sys_district` VALUES ('361100', '361126', '弋阳县', '0793', '334400', 'Y', null, null, null, null, 'Yiyang');
INSERT INTO `sys_district` VALUES ('361100', '361127', '余干县', '0793', '335100', 'Y', null, null, null, null, 'Yugan');
INSERT INTO `sys_district` VALUES ('361100', '361128', '鄱阳县', '0793', '333100', 'Y', null, null, null, null, 'Poyang');
INSERT INTO `sys_district` VALUES ('361100', '361129', '万年县', '0793', '335500', 'Y', null, null, null, null, 'Wannian');
INSERT INTO `sys_district` VALUES ('361100', '361130', '婺源县', '0793', '333200', 'Y', null, null, null, null, 'Wuyuan');
INSERT INTO `sys_district` VALUES ('361100', '361181', '德兴市', '0793', '334200', 'Y', null, null, null, null, 'Dexing');
INSERT INTO `sys_district` VALUES ('370100', '370102', '历下区', '0531', '250014', 'Y', null, null, null, null, 'Lixia');
INSERT INTO `sys_district` VALUES ('370100', '370103', '市中区', '0531', '250001', 'Y', null, null, null, null, 'Shizhongqu');
INSERT INTO `sys_district` VALUES ('370100', '370104', '槐荫区', '0531', '250117', 'Y', null, null, null, null, 'Huaiyin');
INSERT INTO `sys_district` VALUES ('370100', '370105', '天桥区', '0531', '250031', 'Y', null, null, null, null, 'Tianqiao');
INSERT INTO `sys_district` VALUES ('370100', '370112', '历城区', '0531', '250100', 'Y', null, null, null, null, 'Licheng');
INSERT INTO `sys_district` VALUES ('370100', '370113', '长清区', '0531', '250300', 'Y', null, null, null, null, 'Changqing');
INSERT INTO `sys_district` VALUES ('370100', '370124', '平阴县', '0531', '250400', 'Y', null, null, null, null, 'Pingyin');
INSERT INTO `sys_district` VALUES ('370100', '370125', '济阳县', '0531', '251400', 'Y', null, null, null, null, 'Jiyang');
INSERT INTO `sys_district` VALUES ('370100', '370126', '商河县', '0531', '251600', 'Y', null, null, null, null, 'Shanghe');
INSERT INTO `sys_district` VALUES ('370100', '370181', '章丘市', '0531', '250200', 'Y', null, null, null, null, 'Zhangqiu');
INSERT INTO `sys_district` VALUES ('370200', '370202', '市南区', '0532', '266001', 'Y', null, null, null, null, 'Shinan');
INSERT INTO `sys_district` VALUES ('370200', '370203', '市北区', '0532', '266011', 'Y', null, null, null, null, 'Shibei');
INSERT INTO `sys_district` VALUES ('370200', '370211', '黄岛区', '0532', '266500', 'Y', null, null, null, null, 'Huangdao');
INSERT INTO `sys_district` VALUES ('370200', '370212', '崂山区', '0532', '266100', 'Y', null, null, null, null, 'Laoshan');
INSERT INTO `sys_district` VALUES ('370200', '370213', '李沧区', '0532', '266021', 'Y', null, null, null, null, 'Licang');
INSERT INTO `sys_district` VALUES ('370200', '370214', '城阳区', '0532', '266041', 'Y', null, null, null, null, 'Chengyang');
INSERT INTO `sys_district` VALUES ('370200', '370281', '胶州市', '0532', '266300', 'Y', null, null, null, null, 'Jiaozhou');
INSERT INTO `sys_district` VALUES ('370200', '370282', '即墨市', '0532', '266200', 'Y', null, null, null, null, 'Jimo');
INSERT INTO `sys_district` VALUES ('370200', '370283', '平度市', '0532', '266700', 'Y', null, null, null, null, 'Pingdu');
INSERT INTO `sys_district` VALUES ('370200', '370285', '莱西市', '0532', '266600', 'Y', null, null, null, null, 'Laixi');
INSERT INTO `sys_district` VALUES ('370200', '370286', '西海岸新区', '0532', '266500', 'Y', null, null, null, null, 'Xihai\'an');
INSERT INTO `sys_district` VALUES ('370300', '370302', '淄川区', '0533', '255100', 'Y', null, null, null, null, 'Zichuan');
INSERT INTO `sys_district` VALUES ('370300', '370303', '张店区', '0533', '255022', 'Y', null, null, null, null, 'Zhangdian');
INSERT INTO `sys_district` VALUES ('370300', '370304', '博山区', '0533', '255200', 'Y', null, null, null, null, 'Boshan');
INSERT INTO `sys_district` VALUES ('370300', '370305', '临淄区', '0533', '255400', 'Y', null, null, null, null, 'Linzi');
INSERT INTO `sys_district` VALUES ('370300', '370306', '周村区', '0533', '255300', 'Y', null, null, null, null, 'Zhoucun');
INSERT INTO `sys_district` VALUES ('370300', '370321', '桓台县', '0533', '256400', 'Y', null, null, null, null, 'Huantai');
INSERT INTO `sys_district` VALUES ('370300', '370322', '高青县', '0533', '256300', 'Y', null, null, null, null, 'Gaoqing');
INSERT INTO `sys_district` VALUES ('370300', '370323', '沂源县', '0533', '256100', 'Y', null, null, null, null, 'Yiyuan');
INSERT INTO `sys_district` VALUES ('370400', '370402', '市中区', '0632', '277101', 'Y', null, null, null, null, 'Shizhongqu');
INSERT INTO `sys_district` VALUES ('370400', '370403', '薛城区', '0632', '277000', 'Y', null, null, null, null, 'Xuecheng');
INSERT INTO `sys_district` VALUES ('370400', '370404', '峄城区', '0632', '277300', 'Y', null, null, null, null, 'Yicheng');
INSERT INTO `sys_district` VALUES ('370400', '370405', '台儿庄区', '0632', '277400', 'Y', null, null, null, null, 'Taierzhuang');
INSERT INTO `sys_district` VALUES ('370400', '370406', '山亭区', '0632', '277200', 'Y', null, null, null, null, 'Shanting');
INSERT INTO `sys_district` VALUES ('370400', '370481', '滕州市', '0632', '277500', 'Y', null, null, null, null, 'Tengzhou');
INSERT INTO `sys_district` VALUES ('370500', '370502', '东营区', '0546', '257029', 'Y', null, null, null, null, 'Dongying');
INSERT INTO `sys_district` VALUES ('370500', '370503', '河口区', '0546', '257200', 'Y', null, null, null, null, 'Hekou');
INSERT INTO `sys_district` VALUES ('370500', '370521', '垦利县', '0546', '257500', 'Y', null, null, null, null, 'Kenli');
INSERT INTO `sys_district` VALUES ('370500', '370522', '利津县', '0546', '257400', 'Y', null, null, null, null, 'Lijin');
INSERT INTO `sys_district` VALUES ('370500', '370523', '广饶县', '0546', '257300', 'Y', null, null, null, null, 'Guangrao');
INSERT INTO `sys_district` VALUES ('370600', '370602', '芝罘区', '0635', '264001', 'Y', null, null, null, null, 'Zhifu');
INSERT INTO `sys_district` VALUES ('370600', '370611', '福山区', '0635', '265500', 'Y', null, null, null, null, 'Fushan');
INSERT INTO `sys_district` VALUES ('370600', '370612', '牟平区', '0635', '264100', 'Y', null, null, null, null, 'Muping');
INSERT INTO `sys_district` VALUES ('370600', '370613', '莱山区', '0635', '264600', 'Y', null, null, null, null, 'Laishan');
INSERT INTO `sys_district` VALUES ('370600', '370634', '长岛县', '0635', '265800', 'Y', null, null, null, null, 'Changdao');
INSERT INTO `sys_district` VALUES ('370600', '370681', '龙口市', '0635', '265700', 'Y', null, null, null, null, 'Longkou');
INSERT INTO `sys_district` VALUES ('370600', '370682', '莱阳市', '0635', '265200', 'Y', null, null, null, null, 'Laiyang');
INSERT INTO `sys_district` VALUES ('370600', '370683', '莱州市', '0635', '261400', 'Y', null, null, null, null, 'Laizhou');
INSERT INTO `sys_district` VALUES ('370600', '370684', '蓬莱市', '0635', '265600', 'Y', null, null, null, null, 'Penglai');
INSERT INTO `sys_district` VALUES ('370600', '370685', '招远市', '0635', '265400', 'Y', null, null, null, null, 'Zhaoyuan');
INSERT INTO `sys_district` VALUES ('370600', '370686', '栖霞市', '0635', '265300', 'Y', null, null, null, null, 'Qixia');
INSERT INTO `sys_district` VALUES ('370600', '370687', '海阳市', '0635', '265100', 'Y', null, null, null, null, 'Haiyang');
INSERT INTO `sys_district` VALUES ('370700', '370702', '潍城区', '0536', '261021', 'Y', null, null, null, null, 'Weicheng');
INSERT INTO `sys_district` VALUES ('370700', '370703', '寒亭区', '0536', '261100', 'Y', null, null, null, null, 'Hanting');
INSERT INTO `sys_district` VALUES ('370700', '370704', '坊子区', '0536', '261200', 'Y', null, null, null, null, 'Fangzi');
INSERT INTO `sys_district` VALUES ('370700', '370705', '奎文区', '0536', '261031', 'Y', null, null, null, null, 'Kuiwen');
INSERT INTO `sys_district` VALUES ('370700', '370724', '临朐县', '0536', '262600', 'Y', null, null, null, null, 'Linqu');
INSERT INTO `sys_district` VALUES ('370700', '370725', '昌乐县', '0536', '262400', 'Y', null, null, null, null, 'Changle');
INSERT INTO `sys_district` VALUES ('370700', '370781', '青州市', '0536', '262500', 'Y', null, null, null, null, 'Qingzhou');
INSERT INTO `sys_district` VALUES ('370700', '370782', '诸城市', '0536', '262200', 'Y', null, null, null, null, 'Zhucheng');
INSERT INTO `sys_district` VALUES ('370700', '370783', '寿光市', '0536', '262700', 'Y', null, null, null, null, 'Shouguang');
INSERT INTO `sys_district` VALUES ('370700', '370784', '安丘市', '0536', '262100', 'Y', null, null, null, null, 'Anqiu');
INSERT INTO `sys_district` VALUES ('370700', '370785', '高密市', '0536', '261500', 'Y', null, null, null, null, 'Gaomi');
INSERT INTO `sys_district` VALUES ('370700', '370786', '昌邑市', '0536', '261300', 'Y', null, null, null, null, 'Changyi');
INSERT INTO `sys_district` VALUES ('370800', '370811', '任城区', '0537', '272113', 'Y', null, null, null, null, 'Rencheng');
INSERT INTO `sys_district` VALUES ('370800', '370812', '兖州区', '0537', '272000', 'Y', null, null, null, null, 'Yanzhou ');
INSERT INTO `sys_district` VALUES ('370800', '370826', '微山县', '0537', '277600', 'Y', null, null, null, null, 'Weishan');
INSERT INTO `sys_district` VALUES ('370800', '370827', '鱼台县', '0537', '272300', 'Y', null, null, null, null, 'Yutai');
INSERT INTO `sys_district` VALUES ('370800', '370828', '金乡县', '0537', '272200', 'Y', null, null, null, null, 'Jinxiang');
INSERT INTO `sys_district` VALUES ('370800', '370829', '嘉祥县', '0537', '272400', 'Y', null, null, null, null, 'Jiaxiang');
INSERT INTO `sys_district` VALUES ('370800', '370830', '汶上县', '0537', '272501', 'Y', null, null, null, null, 'Wenshang');
INSERT INTO `sys_district` VALUES ('370800', '370831', '泗水县', '0537', '273200', 'Y', null, null, null, null, 'Sishui');
INSERT INTO `sys_district` VALUES ('370800', '370832', '梁山县', '0537', '272600', 'Y', null, null, null, null, 'Liangshan');
INSERT INTO `sys_district` VALUES ('370800', '370881', '曲阜市', '0537', '273100', 'Y', null, null, null, null, 'Qufu');
INSERT INTO `sys_district` VALUES ('370800', '370883', '邹城市', '0537', '273500', 'Y', null, null, null, null, 'Zoucheng');
INSERT INTO `sys_district` VALUES ('370900', '370902', '泰山区', '0538', '271000', 'Y', null, null, null, null, 'Taishan');
INSERT INTO `sys_district` VALUES ('370900', '370911', '岱岳区', '0538', '271000', 'Y', null, null, null, null, 'Daiyue');
INSERT INTO `sys_district` VALUES ('370900', '370921', '宁阳县', '0538', '271400', 'Y', null, null, null, null, 'Ningyang');
INSERT INTO `sys_district` VALUES ('370900', '370923', '东平县', '0538', '271500', 'Y', null, null, null, null, 'Dongping');
INSERT INTO `sys_district` VALUES ('370900', '370982', '新泰市', '0538', '271200', 'Y', null, null, null, null, 'Xintai');
INSERT INTO `sys_district` VALUES ('370900', '370983', '肥城市', '0538', '271600', 'Y', null, null, null, null, 'Feicheng');
INSERT INTO `sys_district` VALUES ('371000', '371002', '环翠区', '0631', '264200', 'Y', null, null, null, null, 'Huancui');
INSERT INTO `sys_district` VALUES ('371000', '371003', '文登区', '0631', '266440', 'Y', null, null, null, null, 'Wendeng');
INSERT INTO `sys_district` VALUES ('371000', '371082', '荣成市', '0631', '264300', 'Y', null, null, null, null, 'Rongcheng');
INSERT INTO `sys_district` VALUES ('371000', '371083', '乳山市', '0631', '264500', 'Y', null, null, null, null, 'Rushan');
INSERT INTO `sys_district` VALUES ('371100', '371102', '东港区', '0633', '276800', 'Y', null, null, null, null, 'Donggang');
INSERT INTO `sys_district` VALUES ('371100', '371103', '岚山区', '0633', '276808', 'Y', null, null, null, null, 'Lanshan');
INSERT INTO `sys_district` VALUES ('371100', '371121', '五莲县', '0633', '262300', 'Y', null, null, null, null, 'Wulian');
INSERT INTO `sys_district` VALUES ('371100', '371122', '莒县', '0633', '276500', 'Y', null, null, null, null, 'Juxian');
INSERT INTO `sys_district` VALUES ('371200', '371202', '莱城区', '0634', '271199', 'Y', null, null, null, null, 'Laicheng');
INSERT INTO `sys_district` VALUES ('371200', '371203', '钢城区', '0634', '271100', 'Y', null, null, null, null, 'Gangcheng');
INSERT INTO `sys_district` VALUES ('371300', '371302', '兰山区', '0539', '276002', 'Y', null, null, null, null, 'Lanshan');
INSERT INTO `sys_district` VALUES ('371300', '371311', '罗庄区', '0539', '276022', 'Y', null, null, null, null, 'Luozhuang');
INSERT INTO `sys_district` VALUES ('371300', '371312', '河东区', '0539', '276034', 'Y', null, null, null, null, 'Hedong');
INSERT INTO `sys_district` VALUES ('371300', '371321', '沂南县', '0539', '276300', 'Y', null, null, null, null, 'Yinan');
INSERT INTO `sys_district` VALUES ('371300', '371322', '郯城县', '0539', '276100', 'Y', null, null, null, null, 'Tancheng');
INSERT INTO `sys_district` VALUES ('371300', '371323', '沂水县', '0539', '276400', 'Y', null, null, null, null, 'Yishui');
INSERT INTO `sys_district` VALUES ('371300', '371324', '兰陵县', '0539', '277700', 'Y', null, null, null, null, 'Lanling');
INSERT INTO `sys_district` VALUES ('371300', '371325', '费县', '0539', '273400', 'Y', null, null, null, null, 'Feixian');
INSERT INTO `sys_district` VALUES ('371300', '371326', '平邑县', '0539', '273300', 'Y', null, null, null, null, 'Pingyi');
INSERT INTO `sys_district` VALUES ('371300', '371327', '莒南县', '0539', '276600', 'Y', null, null, null, null, 'Junan');
INSERT INTO `sys_district` VALUES ('371300', '371328', '蒙阴县', '0539', '276200', 'Y', null, null, null, null, 'Mengyin');
INSERT INTO `sys_district` VALUES ('371300', '371329', '临沭县', '0539', '276700', 'Y', null, null, null, null, 'Linshu');
INSERT INTO `sys_district` VALUES ('371400', '371402', '德城区', '0534', '253012', 'Y', null, null, null, null, 'Decheng');
INSERT INTO `sys_district` VALUES ('371400', '371403', '陵城区', '0534', '253500', 'Y', null, null, null, null, 'Lingcheng');
INSERT INTO `sys_district` VALUES ('371400', '371422', '宁津县', '0534', '253400', 'Y', null, null, null, null, 'Ningjin');
INSERT INTO `sys_district` VALUES ('371400', '371423', '庆云县', '0534', '253700', 'Y', null, null, null, null, 'Qingyun');
INSERT INTO `sys_district` VALUES ('371400', '371424', '临邑县', '0534', '251500', 'Y', null, null, null, null, 'Linyi');
INSERT INTO `sys_district` VALUES ('371400', '371425', '齐河县', '0534', '251100', 'Y', null, null, null, null, 'Qihe');
INSERT INTO `sys_district` VALUES ('371400', '371426', '平原县', '0534', '253100', 'Y', null, null, null, null, 'Pingyuan');
INSERT INTO `sys_district` VALUES ('371400', '371427', '夏津县', '0534', '253200', 'Y', null, null, null, null, 'Xiajin');
INSERT INTO `sys_district` VALUES ('371400', '371428', '武城县', '0534', '253300', 'Y', null, null, null, null, 'Wucheng');
INSERT INTO `sys_district` VALUES ('371400', '371481', '乐陵市', '0534', '253600', 'Y', null, null, null, null, 'Leling');
INSERT INTO `sys_district` VALUES ('371400', '371482', '禹城市', '0534', '251200', 'Y', null, null, null, null, 'Yucheng');
INSERT INTO `sys_district` VALUES ('371500', '371502', '东昌府区', '0635', '252000', 'Y', null, null, null, null, 'Dongchangfu');
INSERT INTO `sys_district` VALUES ('371500', '371521', '阳谷县', '0635', '252300', 'Y', null, null, null, null, 'Yanggu');
INSERT INTO `sys_district` VALUES ('371500', '371522', '莘县', '0635', '252400', 'Y', null, null, null, null, 'Shenxian');
INSERT INTO `sys_district` VALUES ('371500', '371523', '茌平县', '0635', '252100', 'Y', null, null, null, null, 'Chiping');
INSERT INTO `sys_district` VALUES ('371500', '371524', '东阿县', '0635', '252200', 'Y', null, null, null, null, 'Dong\'e');
INSERT INTO `sys_district` VALUES ('371500', '371525', '冠县', '0635', '252500', 'Y', null, null, null, null, 'Guanxian');
INSERT INTO `sys_district` VALUES ('371500', '371526', '高唐县', '0635', '252800', 'Y', null, null, null, null, 'Gaotang');
INSERT INTO `sys_district` VALUES ('371500', '371581', '临清市', '0635', '252600', 'Y', null, null, null, null, 'Linqing');
INSERT INTO `sys_district` VALUES ('371600', '371602', '滨城区', '0543', '256613', 'Y', null, null, null, null, 'Bincheng');
INSERT INTO `sys_district` VALUES ('371600', '371603', '沾化区', '0543', '256800', 'Y', null, null, null, null, 'Zhanhua');
INSERT INTO `sys_district` VALUES ('371600', '371621', '惠民县', '0543', '251700', 'Y', null, null, null, null, 'Huimin');
INSERT INTO `sys_district` VALUES ('371600', '371622', '阳信县', '0543', '251800', 'Y', null, null, null, null, 'Yangxin');
INSERT INTO `sys_district` VALUES ('371600', '371623', '无棣县', '0543', '251900', 'Y', null, null, null, null, 'Wudi');
INSERT INTO `sys_district` VALUES ('371600', '371625', '博兴县', '0543', '256500', 'Y', null, null, null, null, 'Boxing');
INSERT INTO `sys_district` VALUES ('371600', '371626', '邹平县', '0543', '256200', 'Y', null, null, null, null, 'Zouping');
INSERT INTO `sys_district` VALUES ('371600', '371627', '北海新区', '0543', '256200', 'Y', null, null, null, null, 'Beihaixinqu');
INSERT INTO `sys_district` VALUES ('371700', '371702', '牡丹区', '0530', '274009', 'Y', null, null, null, null, 'Mudan');
INSERT INTO `sys_district` VALUES ('371700', '371721', '曹县', '0530', '274400', 'Y', null, null, null, null, 'Caoxian');
INSERT INTO `sys_district` VALUES ('371700', '371722', '单县', '0530', '273700', 'Y', null, null, null, null, 'Shanxian');
INSERT INTO `sys_district` VALUES ('371700', '371723', '成武县', '0530', '274200', 'Y', null, null, null, null, 'Chengwu');
INSERT INTO `sys_district` VALUES ('371700', '371724', '巨野县', '0530', '274900', 'Y', null, null, null, null, 'Juye');
INSERT INTO `sys_district` VALUES ('371700', '371725', '郓城县', '0530', '274700', 'Y', null, null, null, null, 'Yuncheng');
INSERT INTO `sys_district` VALUES ('371700', '371726', '鄄城县', '0530', '274600', 'Y', null, null, null, null, 'Juancheng');
INSERT INTO `sys_district` VALUES ('371700', '371727', '定陶县', '0530', '274100', 'Y', null, null, null, null, 'Dingtao');
INSERT INTO `sys_district` VALUES ('371700', '371728', '东明县', '0530', '274500', 'Y', null, null, null, null, 'Dongming');
INSERT INTO `sys_district` VALUES ('410100', '410102', '中原区', '0371', '450007', 'Y', null, null, null, null, 'Zhongyuan');
INSERT INTO `sys_district` VALUES ('410100', '410103', '二七区', '0371', '450052', 'Y', null, null, null, null, 'Erqi');
INSERT INTO `sys_district` VALUES ('410100', '410104', '管城回族区', '0371', '450000', 'Y', null, null, null, null, 'Guancheng');
INSERT INTO `sys_district` VALUES ('410100', '410105', '金水区', '0371', '450003', 'Y', null, null, null, null, 'Jinshui');
INSERT INTO `sys_district` VALUES ('410100', '410106', '上街区', '0371', '450041', 'Y', null, null, null, null, 'Shangjie');
INSERT INTO `sys_district` VALUES ('410100', '410108', '惠济区', '0371', '450053', 'Y', null, null, null, null, 'Huiji');
INSERT INTO `sys_district` VALUES ('410100', '410122', '中牟县', '0371', '451450', 'Y', null, null, null, null, 'Zhongmu');
INSERT INTO `sys_district` VALUES ('410100', '410181', '巩义市', '0371', '451200', 'Y', null, null, null, null, 'Gongyi');
INSERT INTO `sys_district` VALUES ('410100', '410182', '荥阳市', '0371', '450100', 'Y', null, null, null, null, 'Xingyang');
INSERT INTO `sys_district` VALUES ('410100', '410183', '新密市', '0371', '452300', 'Y', null, null, null, null, 'Xinmi');
INSERT INTO `sys_district` VALUES ('410100', '410184', '新郑市', '0371', '451100', 'Y', null, null, null, null, 'Xinzheng');
INSERT INTO `sys_district` VALUES ('410100', '410185', '登封市', '0371', '452470', 'Y', null, null, null, null, 'Dengfeng');
INSERT INTO `sys_district` VALUES ('410200', '410202', '龙亭区', '0378', '475100', 'Y', null, null, null, null, 'Longting');
INSERT INTO `sys_district` VALUES ('410200', '410203', '顺河回族区', '0378', '475000', 'Y', null, null, null, null, 'Shunhe');
INSERT INTO `sys_district` VALUES ('410200', '410204', '鼓楼区', '0378', '475000', 'Y', null, null, null, null, 'Gulou');
INSERT INTO `sys_district` VALUES ('410200', '410205', '禹王台区', '0378', '475003', 'Y', null, null, null, null, 'Yuwangtai');
INSERT INTO `sys_district` VALUES ('410200', '410212', '祥符区', '0378', '475100', 'Y', null, null, null, null, 'Xiangfu');
INSERT INTO `sys_district` VALUES ('410200', '410221', '杞县', '0378', '475200', 'Y', null, null, null, null, 'Qixian');
INSERT INTO `sys_district` VALUES ('410200', '410222', '通许县', '0378', '475400', 'Y', null, null, null, null, 'Tongxu');
INSERT INTO `sys_district` VALUES ('410200', '410223', '尉氏县', '0378', '475500', 'Y', null, null, null, null, 'Weishi');
INSERT INTO `sys_district` VALUES ('410200', '410225', '兰考县', '0378', '475300', 'Y', null, null, null, null, 'Lankao');
INSERT INTO `sys_district` VALUES ('410300', '410302', '老城区', '0379', '471002', 'Y', null, null, null, null, 'Laocheng');
INSERT INTO `sys_district` VALUES ('410300', '410303', '西工区', '0379', '471000', 'Y', null, null, null, null, 'Xigong');
INSERT INTO `sys_district` VALUES ('410300', '410304', '瀍河回族区', '0379', '471002', 'Y', null, null, null, null, 'Chanhe');
INSERT INTO `sys_district` VALUES ('410300', '410305', '涧西区', '0379', '471003', 'Y', null, null, null, null, 'Jianxi');
INSERT INTO `sys_district` VALUES ('410300', '410306', '吉利区', '0379', '471012', 'Y', null, null, null, null, 'Jili');
INSERT INTO `sys_district` VALUES ('410300', '410311', '洛龙区', '0379', '471000', 'Y', null, null, null, null, 'Luolong');
INSERT INTO `sys_district` VALUES ('410300', '410322', '孟津县', '0379', '471100', 'Y', null, null, null, null, 'Mengjin');
INSERT INTO `sys_district` VALUES ('410300', '410323', '新安县', '0379', '471800', 'Y', null, null, null, null, 'Xin\'an');
INSERT INTO `sys_district` VALUES ('410300', '410324', '栾川县', '0379', '471500', 'Y', null, null, null, null, 'Luanchuan');
INSERT INTO `sys_district` VALUES ('410300', '410325', '嵩县', '0379', '471400', 'Y', null, null, null, null, 'Songxian');
INSERT INTO `sys_district` VALUES ('410300', '410326', '汝阳县', '0379', '471200', 'Y', null, null, null, null, 'Ruyang');
INSERT INTO `sys_district` VALUES ('410300', '410327', '宜阳县', '0379', '471600', 'Y', null, null, null, null, 'Yiyang');
INSERT INTO `sys_district` VALUES ('410300', '410328', '洛宁县', '0379', '471700', 'Y', null, null, null, null, 'Luoning');
INSERT INTO `sys_district` VALUES ('410300', '410329', '伊川县', '0379', '471300', 'Y', null, null, null, null, 'Yichuan');
INSERT INTO `sys_district` VALUES ('410300', '410381', '偃师市', '0379', '471900', 'Y', null, null, null, null, 'Yanshi');
INSERT INTO `sys_district` VALUES ('410400', '410402', '新华区', '0375', '467002', 'Y', null, null, null, null, 'Xinhua');
INSERT INTO `sys_district` VALUES ('410400', '410403', '卫东区', '0375', '467021', 'Y', null, null, null, null, 'Weidong');
INSERT INTO `sys_district` VALUES ('410400', '410404', '石龙区', '0375', '467045', 'Y', null, null, null, null, 'Shilong');
INSERT INTO `sys_district` VALUES ('410400', '410411', '湛河区', '0375', '467000', 'Y', null, null, null, null, 'Zhanhe');
INSERT INTO `sys_district` VALUES ('410400', '410421', '宝丰县', '0375', '467400', 'Y', null, null, null, null, 'Baofeng');
INSERT INTO `sys_district` VALUES ('410400', '410422', '叶县', '0375', '467200', 'Y', null, null, null, null, 'Yexian');
INSERT INTO `sys_district` VALUES ('410400', '410423', '鲁山县', '0375', '467300', 'Y', null, null, null, null, 'Lushan');
INSERT INTO `sys_district` VALUES ('410400', '410425', '郏县', '0375', '467100', 'Y', null, null, null, null, 'Jiaxian');
INSERT INTO `sys_district` VALUES ('410400', '410481', '舞钢市', '0375', '462500', 'Y', null, null, null, null, 'Wugang');
INSERT INTO `sys_district` VALUES ('410400', '410482', '汝州市', '0375', '467500', 'Y', null, null, null, null, 'Ruzhou');
INSERT INTO `sys_district` VALUES ('410500', '410502', '文峰区', '0372', '455000', 'Y', null, null, null, null, 'Wenfeng');
INSERT INTO `sys_district` VALUES ('410500', '410503', '北关区', '0372', '455001', 'Y', null, null, null, null, 'Beiguan');
INSERT INTO `sys_district` VALUES ('410500', '410505', '殷都区', '0372', '455004', 'Y', null, null, null, null, 'Yindu');
INSERT INTO `sys_district` VALUES ('410500', '410506', '龙安区', '0372', '455001', 'Y', null, null, null, null, 'Long\'an');
INSERT INTO `sys_district` VALUES ('410500', '410522', '安阳县', '0372', '455000', 'Y', null, null, null, null, 'Anyang');
INSERT INTO `sys_district` VALUES ('410500', '410523', '汤阴县', '0372', '456150', 'Y', null, null, null, null, 'Tangyin');
INSERT INTO `sys_district` VALUES ('410500', '410526', '滑县', '0372', '456400', 'Y', null, null, null, null, 'Huaxian');
INSERT INTO `sys_district` VALUES ('410500', '410527', '内黄县', '0372', '456350', 'Y', null, null, null, null, 'Neihuang');
INSERT INTO `sys_district` VALUES ('410500', '410581', '林州市', '0372', '456550', 'Y', null, null, null, null, 'Linzhou');
INSERT INTO `sys_district` VALUES ('410600', '410602', '鹤山区', '0392', '458010', 'Y', null, null, null, null, 'Heshan');
INSERT INTO `sys_district` VALUES ('410600', '410603', '山城区', '0392', '458000', 'Y', null, null, null, null, 'Shancheng');
INSERT INTO `sys_district` VALUES ('410600', '410611', '淇滨区', '0392', '458000', 'Y', null, null, null, null, 'Qibin');
INSERT INTO `sys_district` VALUES ('410600', '410621', '浚县', '0392', '456250', 'Y', null, null, null, null, 'Xunxian');
INSERT INTO `sys_district` VALUES ('410600', '410622', '淇县', '0392', '456750', 'Y', null, null, null, null, 'Qixian');
INSERT INTO `sys_district` VALUES ('410700', '410702', '红旗区', '0373', '453000', 'Y', null, null, null, null, 'Hongqi');
INSERT INTO `sys_district` VALUES ('410700', '410703', '卫滨区', '0373', '453000', 'Y', null, null, null, null, 'Weibin');
INSERT INTO `sys_district` VALUES ('410700', '410704', '凤泉区', '0373', '453011', 'Y', null, null, null, null, 'Fengquan');
INSERT INTO `sys_district` VALUES ('410700', '410711', '牧野区', '0373', '453002', 'Y', null, null, null, null, 'Muye');
INSERT INTO `sys_district` VALUES ('410700', '410721', '新乡县', '0373', '453700', 'Y', null, null, null, null, 'Xinxiang');
INSERT INTO `sys_district` VALUES ('410700', '410724', '获嘉县', '0373', '453800', 'Y', null, null, null, null, 'Huojia');
INSERT INTO `sys_district` VALUES ('410700', '410725', '原阳县', '0373', '453500', 'Y', null, null, null, null, 'Yuanyang');
INSERT INTO `sys_district` VALUES ('410700', '410726', '延津县', '0373', '453200', 'Y', null, null, null, null, 'Yanjin');
INSERT INTO `sys_district` VALUES ('410700', '410727', '封丘县', '0373', '453300', 'Y', null, null, null, null, 'Fengqiu');
INSERT INTO `sys_district` VALUES ('410700', '410728', '长垣县', '0373', '453400', 'Y', null, null, null, null, 'Changyuan');
INSERT INTO `sys_district` VALUES ('410700', '410781', '卫辉市', '0373', '453100', 'Y', null, null, null, null, 'Weihui');
INSERT INTO `sys_district` VALUES ('410700', '410782', '辉县市', '0373', '453600', 'Y', null, null, null, null, 'Huixian');
INSERT INTO `sys_district` VALUES ('410800', '410802', '解放区', '0391', '454000', 'Y', null, null, null, null, 'Jiefang');
INSERT INTO `sys_district` VALUES ('410800', '410803', '中站区', '0391', '454191', 'Y', null, null, null, null, 'Zhongzhan');
INSERT INTO `sys_district` VALUES ('410800', '410804', '马村区', '0391', '454171', 'Y', null, null, null, null, 'Macun');
INSERT INTO `sys_district` VALUES ('410800', '410811', '山阳区', '0391', '454002', 'Y', null, null, null, null, 'Shanyang');
INSERT INTO `sys_district` VALUES ('410800', '410821', '修武县', '0391', '454350', 'Y', null, null, null, null, 'Xiuwu');
INSERT INTO `sys_district` VALUES ('410800', '410822', '博爱县', '0391', '454450', 'Y', null, null, null, null, 'Boai');
INSERT INTO `sys_district` VALUES ('410800', '410823', '武陟县', '0391', '454950', 'Y', null, null, null, null, 'Wuzhi');
INSERT INTO `sys_district` VALUES ('410800', '410825', '温县', '0391', '454850', 'Y', null, null, null, null, 'Wenxian');
INSERT INTO `sys_district` VALUES ('410800', '410882', '沁阳市', '0391', '454550', 'Y', null, null, null, null, 'Qinyang');
INSERT INTO `sys_district` VALUES ('410800', '410883', '孟州市', '0391', '454750', 'Y', null, null, null, null, 'Mengzhou');
INSERT INTO `sys_district` VALUES ('410900', '410902', '华龙区', '0393', '457001', 'Y', null, null, null, null, 'Hualong');
INSERT INTO `sys_district` VALUES ('410900', '410922', '清丰县', '0393', '457300', 'Y', null, null, null, null, 'Qingfeng');
INSERT INTO `sys_district` VALUES ('410900', '410923', '南乐县', '0393', '457400', 'Y', null, null, null, null, 'Nanle');
INSERT INTO `sys_district` VALUES ('410900', '410926', '范县', '0393', '457500', 'Y', null, null, null, null, 'Fanxian');
INSERT INTO `sys_district` VALUES ('410900', '410927', '台前县', '0393', '457600', 'Y', null, null, null, null, 'Taiqian');
INSERT INTO `sys_district` VALUES ('410900', '410928', '濮阳县', '0393', '457100', 'Y', null, null, null, null, 'Puyang');
INSERT INTO `sys_district` VALUES ('411000', '411002', '魏都区', '0374', '461000', 'Y', null, null, null, null, 'Weidu');
INSERT INTO `sys_district` VALUES ('411000', '411023', '许昌县', '0374', '461100', 'Y', null, null, null, null, 'Xuchang');
INSERT INTO `sys_district` VALUES ('411000', '411024', '鄢陵县', '0374', '461200', 'Y', null, null, null, null, 'Yanling');
INSERT INTO `sys_district` VALUES ('411000', '411025', '襄城县', '0374', '461700', 'Y', null, null, null, null, 'Xiangcheng');
INSERT INTO `sys_district` VALUES ('411000', '411081', '禹州市', '0374', '461670', 'Y', null, null, null, null, 'Yuzhou');
INSERT INTO `sys_district` VALUES ('411000', '411082', '长葛市', '0374', '461500', 'Y', null, null, null, null, 'Changge');
INSERT INTO `sys_district` VALUES ('411100', '411102', '源汇区', '0395', '462000', 'Y', null, null, null, null, 'Yuanhui');
INSERT INTO `sys_district` VALUES ('411100', '411103', '郾城区', '0395', '462300', 'Y', null, null, null, null, 'Yancheng');
INSERT INTO `sys_district` VALUES ('411100', '411104', '召陵区', '0395', '462300', 'Y', null, null, null, null, 'Zhaoling');
INSERT INTO `sys_district` VALUES ('411100', '411121', '舞阳县', '0395', '462400', 'Y', null, null, null, null, 'Wuyang');
INSERT INTO `sys_district` VALUES ('411100', '411122', '临颍县', '0395', '462600', 'Y', null, null, null, null, 'Linying');
INSERT INTO `sys_district` VALUES ('411200', '411202', '湖滨区', '0398', '472000', 'Y', null, null, null, null, 'Hubin');
INSERT INTO `sys_district` VALUES ('411200', '411221', '渑池县', '0398', '472400', 'Y', null, null, null, null, 'Mianchi');
INSERT INTO `sys_district` VALUES ('411200', '411222', '陕县', '0398', '472100', 'Y', null, null, null, null, 'Shanxian');
INSERT INTO `sys_district` VALUES ('411200', '411224', '卢氏县', '0398', '472200', 'Y', null, null, null, null, 'Lushi');
INSERT INTO `sys_district` VALUES ('411200', '411281', '义马市', '0398', '472300', 'Y', null, null, null, null, 'Yima');
INSERT INTO `sys_district` VALUES ('411200', '411282', '灵宝市', '0398', '472500', 'Y', null, null, null, null, 'Lingbao');
INSERT INTO `sys_district` VALUES ('411300', '411302', '宛城区', '0377', '473001', 'Y', null, null, null, null, 'Wancheng');
INSERT INTO `sys_district` VALUES ('411300', '411303', '卧龙区', '0377', '473003', 'Y', null, null, null, null, 'Wolong');
INSERT INTO `sys_district` VALUES ('411300', '411321', '南召县', '0377', '474650', 'Y', null, null, null, null, 'Nanzhao');
INSERT INTO `sys_district` VALUES ('411300', '411322', '方城县', '0377', '473200', 'Y', null, null, null, null, 'Fangcheng');
INSERT INTO `sys_district` VALUES ('411300', '411323', '西峡县', '0377', '474550', 'Y', null, null, null, null, 'Xixia');
INSERT INTO `sys_district` VALUES ('411300', '411324', '镇平县', '0377', '474250', 'Y', null, null, null, null, 'Zhenping');
INSERT INTO `sys_district` VALUES ('411300', '411325', '内乡县', '0377', '474350', 'Y', null, null, null, null, 'Neixiang');
INSERT INTO `sys_district` VALUES ('411300', '411326', '淅川县', '0377', '474450', 'Y', null, null, null, null, 'Xichuan');
INSERT INTO `sys_district` VALUES ('411300', '411327', '社旗县', '0377', '473300', 'Y', null, null, null, null, 'Sheqi');
INSERT INTO `sys_district` VALUES ('411300', '411328', '唐河县', '0377', '473400', 'Y', null, null, null, null, 'Tanghe');
INSERT INTO `sys_district` VALUES ('411300', '411329', '新野县', '0377', '473500', 'Y', null, null, null, null, 'Xinye');
INSERT INTO `sys_district` VALUES ('411300', '411330', '桐柏县', '0377', '474750', 'Y', null, null, null, null, 'Tongbai');
INSERT INTO `sys_district` VALUES ('411300', '411381', '邓州市', '0377', '474150', 'Y', null, null, null, null, 'Dengzhou');
INSERT INTO `sys_district` VALUES ('411400', '411402', '梁园区', '0370', '476000', 'Y', null, null, null, null, 'Liangyuan');
INSERT INTO `sys_district` VALUES ('411400', '411403', '睢阳区', '0370', '476100', 'Y', null, null, null, null, 'Suiyang');
INSERT INTO `sys_district` VALUES ('411400', '411421', '民权县', '0370', '476800', 'Y', null, null, null, null, 'Minquan');
INSERT INTO `sys_district` VALUES ('411400', '411422', '睢县', '0370', '476900', 'Y', null, null, null, null, 'Suixian');
INSERT INTO `sys_district` VALUES ('411400', '411423', '宁陵县', '0370', '476700', 'Y', null, null, null, null, 'Ningling');
INSERT INTO `sys_district` VALUES ('411400', '411424', '柘城县', '0370', '476200', 'Y', null, null, null, null, 'Zhecheng');
INSERT INTO `sys_district` VALUES ('411400', '411425', '虞城县', '0370', '476300', 'Y', null, null, null, null, 'Yucheng');
INSERT INTO `sys_district` VALUES ('411400', '411426', '夏邑县', '0370', '476400', 'Y', null, null, null, null, 'Xiayi');
INSERT INTO `sys_district` VALUES ('411400', '411481', '永城市', '0370', '476600', 'Y', null, null, null, null, 'Yongcheng');
INSERT INTO `sys_district` VALUES ('411500', '411502', '浉河区', '0376', '464000', 'Y', null, null, null, null, 'Shihe');
INSERT INTO `sys_district` VALUES ('411500', '411503', '平桥区', '0376', '464100', 'Y', null, null, null, null, 'Pingqiao');
INSERT INTO `sys_district` VALUES ('411500', '411521', '罗山县', '0376', '464200', 'Y', null, null, null, null, 'Luoshan');
INSERT INTO `sys_district` VALUES ('411500', '411522', '光山县', '0376', '465450', 'Y', null, null, null, null, 'Guangshan');
INSERT INTO `sys_district` VALUES ('411500', '411523', '新县', '0376', '465550', 'Y', null, null, null, null, 'Xinxian');
INSERT INTO `sys_district` VALUES ('411500', '411524', '商城县', '0376', '465350', 'Y', null, null, null, null, 'Shangcheng');
INSERT INTO `sys_district` VALUES ('411500', '411525', '固始县', '0376', '465250', 'Y', null, null, null, null, 'Gushi');
INSERT INTO `sys_district` VALUES ('411500', '411526', '潢川县', '0376', '465150', 'Y', null, null, null, null, 'Huangchuan');
INSERT INTO `sys_district` VALUES ('411500', '411527', '淮滨县', '0376', '464400', 'Y', null, null, null, null, 'Huaibin');
INSERT INTO `sys_district` VALUES ('411500', '411528', '息县', '0376', '464300', 'Y', null, null, null, null, 'Xixian');
INSERT INTO `sys_district` VALUES ('411600', '411602', '川汇区', '0394', '466000', 'Y', null, null, null, null, 'Chuanhui');
INSERT INTO `sys_district` VALUES ('411600', '411621', '扶沟县', '0394', '461300', 'Y', null, null, null, null, 'Fugou');
INSERT INTO `sys_district` VALUES ('411600', '411622', '西华县', '0394', '466600', 'Y', null, null, null, null, 'Xihua');
INSERT INTO `sys_district` VALUES ('411600', '411623', '商水县', '0394', '466100', 'Y', null, null, null, null, 'Shangshui');
INSERT INTO `sys_district` VALUES ('411600', '411624', '沈丘县', '0394', '466300', 'Y', null, null, null, null, 'Shenqiu');
INSERT INTO `sys_district` VALUES ('411600', '411625', '郸城县', '0394', '477150', 'Y', null, null, null, null, 'Dancheng');
INSERT INTO `sys_district` VALUES ('411600', '411626', '淮阳县', '0394', '466700', 'Y', null, null, null, null, 'Huaiyang');
INSERT INTO `sys_district` VALUES ('411600', '411627', '太康县', '0394', '461400', 'Y', null, null, null, null, 'Taikang');
INSERT INTO `sys_district` VALUES ('411600', '411628', '鹿邑县', '0394', '477200', 'Y', null, null, null, null, 'Luyi');
INSERT INTO `sys_district` VALUES ('411600', '411681', '项城市', '0394', '466200', 'Y', null, null, null, null, 'Xiangcheng');
INSERT INTO `sys_district` VALUES ('411700', '411702', '驿城区', '0396', '463000', 'Y', null, null, null, null, 'Yicheng');
INSERT INTO `sys_district` VALUES ('411700', '411721', '西平县', '0396', '463900', 'Y', null, null, null, null, 'Xiping');
INSERT INTO `sys_district` VALUES ('411700', '411722', '上蔡县', '0396', '463800', 'Y', null, null, null, null, 'Shangcai');
INSERT INTO `sys_district` VALUES ('411700', '411723', '平舆县', '0396', '463400', 'Y', null, null, null, null, 'Pingyu');
INSERT INTO `sys_district` VALUES ('411700', '411724', '正阳县', '0396', '463600', 'Y', null, null, null, null, 'Zhengyang');
INSERT INTO `sys_district` VALUES ('411700', '411725', '确山县', '0396', '463200', 'Y', null, null, null, null, 'Queshan');
INSERT INTO `sys_district` VALUES ('411700', '411726', '泌阳县', '0396', '463700', 'Y', null, null, null, null, 'Biyang');
INSERT INTO `sys_district` VALUES ('411700', '411727', '汝南县', '0396', '463300', 'Y', null, null, null, null, 'Runan');
INSERT INTO `sys_district` VALUES ('411700', '411728', '遂平县', '0396', '463100', 'Y', null, null, null, null, 'Suiping');
INSERT INTO `sys_district` VALUES ('411700', '411729', '新蔡县', '0396', '463500', 'Y', null, null, null, null, 'Xincai');
INSERT INTO `sys_district` VALUES ('419000', '419001', '济源市', '0391', '454650', 'Y', null, null, null, null, 'Jiyuan');
INSERT INTO `sys_district` VALUES ('420100', '420102', '江岸区', '027', '430014', 'Y', null, null, null, null, 'Jiang\'an');
INSERT INTO `sys_district` VALUES ('420100', '420103', '江汉区', '027', '430021', 'Y', null, null, null, null, 'Jianghan');
INSERT INTO `sys_district` VALUES ('420100', '420104', '硚口区', '027', '430033', 'Y', null, null, null, null, 'Qiaokou');
INSERT INTO `sys_district` VALUES ('420100', '420105', '汉阳区', '027', '430050', 'Y', null, null, null, null, 'Hanyang');
INSERT INTO `sys_district` VALUES ('420100', '420106', '武昌区', '027', '430061', 'Y', null, null, null, null, 'Wuchang');
INSERT INTO `sys_district` VALUES ('420100', '420107', '青山区', '027', '430080', 'Y', null, null, null, null, 'Qingshan');
INSERT INTO `sys_district` VALUES ('420100', '420111', '洪山区', '027', '430070', 'Y', null, null, null, null, 'Hongshan');
INSERT INTO `sys_district` VALUES ('420100', '420112', '东西湖区', '027', '430040', 'Y', null, null, null, null, 'Dongxihu');
INSERT INTO `sys_district` VALUES ('420100', '420113', '汉南区', '027', '430090', 'Y', null, null, null, null, 'Hannan');
INSERT INTO `sys_district` VALUES ('420100', '420114', '蔡甸区', '027', '430100', 'Y', null, null, null, null, 'Caidian');
INSERT INTO `sys_district` VALUES ('420100', '420115', '江夏区', '027', '430200', 'Y', null, null, null, null, 'Jiangxia');
INSERT INTO `sys_district` VALUES ('420100', '420116', '黄陂区', '027', '432200', 'Y', null, null, null, null, 'Huangpi');
INSERT INTO `sys_district` VALUES ('420100', '420117', '新洲区', '027', '431400', 'Y', null, null, null, null, 'Xinzhou');
INSERT INTO `sys_district` VALUES ('420200', '420202', '黄石港区', '0714', '435000', 'Y', null, null, null, null, 'Huangshigang');
INSERT INTO `sys_district` VALUES ('420200', '420203', '西塞山区', '0714', '435001', 'Y', null, null, null, null, 'Xisaishan');
INSERT INTO `sys_district` VALUES ('420200', '420204', '下陆区', '0714', '435005', 'Y', null, null, null, null, 'Xialu');
INSERT INTO `sys_district` VALUES ('420200', '420205', '铁山区', '0714', '435006', 'Y', null, null, null, null, 'Tieshan');
INSERT INTO `sys_district` VALUES ('420200', '420222', '阳新县', '0714', '435200', 'Y', null, null, null, null, 'Yangxin');
INSERT INTO `sys_district` VALUES ('420200', '420281', '大冶市', '0714', '435100', 'Y', null, null, null, null, 'Daye');
INSERT INTO `sys_district` VALUES ('420300', '420302', '茅箭区', '0719', '442012', 'Y', null, null, null, null, 'Maojian');
INSERT INTO `sys_district` VALUES ('420300', '420303', '张湾区', '0719', '442001', 'Y', null, null, null, null, 'Zhangwan');
INSERT INTO `sys_district` VALUES ('420300', '420304', '郧阳区', '0719', '442500', 'Y', null, null, null, null, 'Yunyang');
INSERT INTO `sys_district` VALUES ('420300', '420322', '郧西县', '0719', '442600', 'Y', null, null, null, null, 'Yunxi');
INSERT INTO `sys_district` VALUES ('420300', '420323', '竹山县', '0719', '442200', 'Y', null, null, null, null, 'Zhushan');
INSERT INTO `sys_district` VALUES ('420300', '420324', '竹溪县', '0719', '442300', 'Y', null, null, null, null, 'Zhuxi');
INSERT INTO `sys_district` VALUES ('420300', '420325', '房县', '0719', '442100', 'Y', null, null, null, null, 'Fangxian');
INSERT INTO `sys_district` VALUES ('420300', '420381', '丹江口市', '0719', '442700', 'Y', null, null, null, null, 'Danjiangkou');
INSERT INTO `sys_district` VALUES ('420500', '420502', '西陵区', '0717', '443000', 'Y', null, null, null, null, 'Xiling');
INSERT INTO `sys_district` VALUES ('420500', '420503', '伍家岗区', '0717', '443001', 'Y', null, null, null, null, 'Wujiagang');
INSERT INTO `sys_district` VALUES ('420500', '420504', '点军区', '0717', '443006', 'Y', null, null, null, null, 'Dianjun');
INSERT INTO `sys_district` VALUES ('420500', '420505', '猇亭区', '0717', '443007', 'Y', null, null, null, null, 'Xiaoting');
INSERT INTO `sys_district` VALUES ('420500', '420506', '夷陵区', '0717', '443100', 'Y', null, null, null, null, 'Yiling');
INSERT INTO `sys_district` VALUES ('420500', '420525', '远安县', '0717', '444200', 'Y', null, null, null, null, 'Yuan\'an');
INSERT INTO `sys_district` VALUES ('420500', '420526', '兴山县', '0717', '443711', 'Y', null, null, null, null, 'Xingshan');
INSERT INTO `sys_district` VALUES ('420500', '420527', '秭归县', '0717', '443600', 'Y', null, null, null, null, 'Zigui');
INSERT INTO `sys_district` VALUES ('420500', '420528', '长阳土家族自治县', '0717', '443500', 'Y', null, null, null, null, 'Changyang');
INSERT INTO `sys_district` VALUES ('420500', '420529', '五峰土家族自治县', '0717', '443413', 'Y', null, null, null, null, 'Wufeng');
INSERT INTO `sys_district` VALUES ('420500', '420581', '宜都市', '0717', '443300', 'Y', null, null, null, null, 'Yidu');
INSERT INTO `sys_district` VALUES ('420500', '420582', '当阳市', '0717', '444100', 'Y', null, null, null, null, 'Dangyang');
INSERT INTO `sys_district` VALUES ('420500', '420583', '枝江市', '0717', '443200', 'Y', null, null, null, null, 'Zhijiang');
INSERT INTO `sys_district` VALUES ('420600', '420602', '襄城区', '0710', '441021', 'Y', null, null, null, null, 'Xiangcheng');
INSERT INTO `sys_district` VALUES ('420600', '420606', '樊城区', '0710', '441001', 'Y', null, null, null, null, 'Fancheng');
INSERT INTO `sys_district` VALUES ('420600', '420607', '襄州区', '0710', '441100', 'Y', null, null, null, null, 'Xiangzhou');
INSERT INTO `sys_district` VALUES ('420600', '420624', '南漳县', '0710', '441500', 'Y', null, null, null, null, 'Nanzhang');
INSERT INTO `sys_district` VALUES ('420600', '420625', '谷城县', '0710', '441700', 'Y', null, null, null, null, 'Gucheng');
INSERT INTO `sys_district` VALUES ('420600', '420626', '保康县', '0710', '441600', 'Y', null, null, null, null, 'Baokang');
INSERT INTO `sys_district` VALUES ('420600', '420682', '老河口市', '0710', '441800', 'Y', null, null, null, null, 'Laohekou');
INSERT INTO `sys_district` VALUES ('420600', '420683', '枣阳市', '0710', '441200', 'Y', null, null, null, null, 'Zaoyang');
INSERT INTO `sys_district` VALUES ('420600', '420684', '宜城市', '0710', '441400', 'Y', null, null, null, null, 'Yicheng');
INSERT INTO `sys_district` VALUES ('420700', '420702', '梁子湖区', '0711', '436064', 'Y', null, null, null, null, 'Liangzihu');
INSERT INTO `sys_district` VALUES ('420700', '420703', '华容区', '0711', '436030', 'Y', null, null, null, null, 'Huarong');
INSERT INTO `sys_district` VALUES ('420700', '420704', '鄂城区', '0711', '436000', 'Y', null, null, null, null, 'Echeng');
INSERT INTO `sys_district` VALUES ('420800', '420802', '东宝区', '0724', '448004', 'Y', null, null, null, null, 'Dongbao');
INSERT INTO `sys_district` VALUES ('420800', '420804', '掇刀区', '0724', '448124', 'Y', null, null, null, null, 'Duodao');
INSERT INTO `sys_district` VALUES ('420800', '420821', '京山县', '0724', '431800', 'Y', null, null, null, null, 'Jingshan');
INSERT INTO `sys_district` VALUES ('420800', '420822', '沙洋县', '0724', '448200', 'Y', null, null, null, null, 'Shayang');
INSERT INTO `sys_district` VALUES ('420800', '420881', '钟祥市', '0724', '431900', 'Y', null, null, null, null, 'Zhongxiang');
INSERT INTO `sys_district` VALUES ('420900', '420902', '孝南区', '0712', '432100', 'Y', null, null, null, null, 'Xiaonan');
INSERT INTO `sys_district` VALUES ('420900', '420921', '孝昌县', '0712', '432900', 'Y', null, null, null, null, 'Xiaochang');
INSERT INTO `sys_district` VALUES ('420900', '420922', '大悟县', '0712', '432800', 'Y', null, null, null, null, 'Dawu');
INSERT INTO `sys_district` VALUES ('420900', '420923', '云梦县', '0712', '432500', 'Y', null, null, null, null, 'Yunmeng');
INSERT INTO `sys_district` VALUES ('420900', '420981', '应城市', '0712', '432400', 'Y', null, null, null, null, 'Yingcheng');
INSERT INTO `sys_district` VALUES ('420900', '420982', '安陆市', '0712', '432600', 'Y', null, null, null, null, 'Anlu');
INSERT INTO `sys_district` VALUES ('420900', '420984', '汉川市', '0712', '432300', 'Y', null, null, null, null, 'Hanchuan');
INSERT INTO `sys_district` VALUES ('421000', '421002', '沙市区', '0716', '434000', 'Y', null, null, null, null, 'Shashi');
INSERT INTO `sys_district` VALUES ('421000', '421003', '荆州区', '0716', '434020', 'Y', null, null, null, null, 'Jingzhou');
INSERT INTO `sys_district` VALUES ('421000', '421022', '公安县', '0716', '434300', 'Y', null, null, null, null, 'Gong\'an');
INSERT INTO `sys_district` VALUES ('421000', '421023', '监利县', '0716', '433300', 'Y', null, null, null, null, 'Jianli');
INSERT INTO `sys_district` VALUES ('421000', '421024', '江陵县', '0716', '434101', 'Y', null, null, null, null, 'Jiangling');
INSERT INTO `sys_district` VALUES ('421000', '421081', '石首市', '0716', '434400', 'Y', null, null, null, null, 'Shishou');
INSERT INTO `sys_district` VALUES ('421000', '421083', '洪湖市', '0716', '433200', 'Y', null, null, null, null, 'Honghu');
INSERT INTO `sys_district` VALUES ('421000', '421087', '松滋市', '0716', '434200', 'Y', null, null, null, null, 'Songzi');
INSERT INTO `sys_district` VALUES ('421100', '421102', '黄州区', '0713', '438000', 'Y', null, null, null, null, 'Huangzhou');
INSERT INTO `sys_district` VALUES ('421100', '421121', '团风县', '0713', '438800', 'Y', null, null, null, null, 'Tuanfeng');
INSERT INTO `sys_district` VALUES ('421100', '421122', '红安县', '0713', '438401', 'Y', null, null, null, null, 'Hong\'an');
INSERT INTO `sys_district` VALUES ('421100', '421123', '罗田县', '0713', '438600', 'Y', null, null, null, null, 'Luotian');
INSERT INTO `sys_district` VALUES ('421100', '421124', '英山县', '0713', '438700', 'Y', null, null, null, null, 'Yingshan');
INSERT INTO `sys_district` VALUES ('421100', '421125', '浠水县', '0713', '438200', 'Y', null, null, null, null, 'Xishui');
INSERT INTO `sys_district` VALUES ('421100', '421126', '蕲春县', '0713', '435300', 'Y', null, null, null, null, 'Qichun');
INSERT INTO `sys_district` VALUES ('421100', '421127', '黄梅县', '0713', '435500', 'Y', null, null, null, null, 'Huangmei');
INSERT INTO `sys_district` VALUES ('421100', '421181', '麻城市', '0713', '438300', 'Y', null, null, null, null, 'Macheng');
INSERT INTO `sys_district` VALUES ('421100', '421182', '武穴市', '0713', '435400', 'Y', null, null, null, null, 'Wuxue');
INSERT INTO `sys_district` VALUES ('421200', '421202', '咸安区', '0715', '437000', 'Y', null, null, null, null, 'Xian\'an');
INSERT INTO `sys_district` VALUES ('421200', '421221', '嘉鱼县', '0715', '437200', 'Y', null, null, null, null, 'Jiayu');
INSERT INTO `sys_district` VALUES ('421200', '421222', '通城县', '0715', '437400', 'Y', null, null, null, null, 'Tongcheng');
INSERT INTO `sys_district` VALUES ('421200', '421223', '崇阳县', '0715', '437500', 'Y', null, null, null, null, 'Chongyang');
INSERT INTO `sys_district` VALUES ('421200', '421224', '通山县', '0715', '437600', 'Y', null, null, null, null, 'Tongshan');
INSERT INTO `sys_district` VALUES ('421200', '421281', '赤壁市', '0715', '437300', 'Y', null, null, null, null, 'Chibi');
INSERT INTO `sys_district` VALUES ('421300', '421303', '曾都区', '0722', '441300', 'Y', null, null, null, null, 'Zengdu');
INSERT INTO `sys_district` VALUES ('421300', '421321', '随县', '0722', '441309', 'Y', null, null, null, null, 'Suixian');
INSERT INTO `sys_district` VALUES ('421300', '421381', '广水市', '0722', '432700', 'Y', null, null, null, null, 'Guangshui');
INSERT INTO `sys_district` VALUES ('422800', '422801', '恩施市', '0718', '445000', 'Y', null, null, null, null, 'Enshi');
INSERT INTO `sys_district` VALUES ('422800', '422802', '利川市', '0718', '445400', 'Y', null, null, null, null, 'Lichuan');
INSERT INTO `sys_district` VALUES ('422800', '422822', '建始县', '0718', '445300', 'Y', null, null, null, null, 'Jianshi');
INSERT INTO `sys_district` VALUES ('422800', '422823', '巴东县', '0718', '444300', 'Y', null, null, null, null, 'Badong');
INSERT INTO `sys_district` VALUES ('422800', '422825', '宣恩县', '0718', '445500', 'Y', null, null, null, null, 'Xuanen');
INSERT INTO `sys_district` VALUES ('422800', '422826', '咸丰县', '0718', '445600', 'Y', null, null, null, null, 'Xianfeng');
INSERT INTO `sys_district` VALUES ('422800', '422827', '来凤县', '0718', '445700', 'Y', null, null, null, null, 'Laifeng');
INSERT INTO `sys_district` VALUES ('422800', '422828', '鹤峰县', '0718', '445800', 'Y', null, null, null, null, 'Hefeng');
INSERT INTO `sys_district` VALUES ('429000', '429004', '仙桃市', '0728', '433000', 'Y', null, null, null, null, 'Xiantao');
INSERT INTO `sys_district` VALUES ('429000', '429005', '潜江市', '0728', '433100', 'Y', null, null, null, null, 'Qianjiang');
INSERT INTO `sys_district` VALUES ('429000', '429006', '天门市', '0728', '431700', 'Y', null, null, null, null, 'Tianmen');
INSERT INTO `sys_district` VALUES ('429000', '429021', '神农架林区', '0719', '442400', 'Y', null, null, null, null, 'Shennongjia');
INSERT INTO `sys_district` VALUES ('430100', '430102', '芙蓉区', '0731', '410011', 'Y', null, null, null, null, 'Furong');
INSERT INTO `sys_district` VALUES ('430100', '430103', '天心区', '0731', '410004', 'Y', null, null, null, null, 'Tianxin');
INSERT INTO `sys_district` VALUES ('430100', '430104', '岳麓区', '0731', '410013', 'Y', null, null, null, null, 'Yuelu');
INSERT INTO `sys_district` VALUES ('430100', '430105', '开福区', '0731', '410008', 'Y', null, null, null, null, 'Kaifu');
INSERT INTO `sys_district` VALUES ('430100', '430111', '雨花区', '0731', '410011', 'Y', null, null, null, null, 'Yuhua');
INSERT INTO `sys_district` VALUES ('430100', '430112', '望城区', '0731', '410200', 'Y', null, null, null, null, 'Wangcheng');
INSERT INTO `sys_district` VALUES ('430100', '430121', '长沙县', '0731', '410100', 'Y', null, null, null, null, 'Changsha');
INSERT INTO `sys_district` VALUES ('430100', '430124', '宁乡县', '0731', '410600', 'Y', null, null, null, null, 'Ningxiang');
INSERT INTO `sys_district` VALUES ('430100', '430181', '浏阳市', '0731', '410300', 'Y', null, null, null, null, 'Liuyang');
INSERT INTO `sys_district` VALUES ('430200', '430202', '荷塘区', '0731', '412000', 'Y', null, null, null, null, 'Hetang');
INSERT INTO `sys_district` VALUES ('430200', '430203', '芦淞区', '0731', '412000', 'Y', null, null, null, null, 'Lusong');
INSERT INTO `sys_district` VALUES ('430200', '430204', '石峰区', '0731', '412005', 'Y', null, null, null, null, 'Shifeng');
INSERT INTO `sys_district` VALUES ('430200', '430211', '天元区', '0731', '412007', 'Y', null, null, null, null, 'Tianyuan');
INSERT INTO `sys_district` VALUES ('430200', '430221', '株洲县', '0731', '412100', 'Y', null, null, null, null, 'Zhuzhou');
INSERT INTO `sys_district` VALUES ('430200', '430223', '攸县', '0731', '412300', 'Y', null, null, null, null, 'Youxian');
INSERT INTO `sys_district` VALUES ('430200', '430224', '茶陵县', '0731', '412400', 'Y', null, null, null, null, 'Chaling');
INSERT INTO `sys_district` VALUES ('430200', '430225', '炎陵县', '0731', '412500', 'Y', null, null, null, null, 'Yanling');
INSERT INTO `sys_district` VALUES ('430200', '430281', '醴陵市', '0731', '412200', 'Y', null, null, null, null, 'Liling');
INSERT INTO `sys_district` VALUES ('430300', '430302', '雨湖区', '0731', '411100', 'Y', null, null, null, null, 'Yuhu');
INSERT INTO `sys_district` VALUES ('430300', '430304', '岳塘区', '0731', '411101', 'Y', null, null, null, null, 'Yuetang');
INSERT INTO `sys_district` VALUES ('430300', '430321', '湘潭县', '0731', '411228', 'Y', null, null, null, null, 'Xiangtan');
INSERT INTO `sys_district` VALUES ('430300', '430381', '湘乡市', '0731', '411400', 'Y', null, null, null, null, 'Xiangxiang');
INSERT INTO `sys_district` VALUES ('430300', '430382', '韶山市', '0731', '411300', 'Y', null, null, null, null, 'Shaoshan');
INSERT INTO `sys_district` VALUES ('430400', '430405', '珠晖区', '0734', '421002', 'Y', null, null, null, null, 'Zhuhui');
INSERT INTO `sys_district` VALUES ('430400', '430406', '雁峰区', '0734', '421001', 'Y', null, null, null, null, 'Yanfeng');
INSERT INTO `sys_district` VALUES ('430400', '430407', '石鼓区', '0734', '421005', 'Y', null, null, null, null, 'Shigu');
INSERT INTO `sys_district` VALUES ('430400', '430408', '蒸湘区', '0734', '421001', 'Y', null, null, null, null, 'Zhengxiang');
INSERT INTO `sys_district` VALUES ('430400', '430412', '南岳区', '0734', '421900', 'Y', null, null, null, null, 'Nanyue');
INSERT INTO `sys_district` VALUES ('430400', '430421', '衡阳县', '0734', '421200', 'Y', null, null, null, null, 'Hengyang');
INSERT INTO `sys_district` VALUES ('430400', '430422', '衡南县', '0734', '421131', 'Y', null, null, null, null, 'Hengnan');
INSERT INTO `sys_district` VALUES ('430400', '430423', '衡山县', '0734', '421300', 'Y', null, null, null, null, 'Hengshan');
INSERT INTO `sys_district` VALUES ('430400', '430424', '衡东县', '0734', '421400', 'Y', null, null, null, null, 'Hengdong');
INSERT INTO `sys_district` VALUES ('430400', '430426', '祁东县', '0734', '421600', 'Y', null, null, null, null, 'Qidong');
INSERT INTO `sys_district` VALUES ('430400', '430481', '耒阳市', '0734', '421800', 'Y', null, null, null, null, 'Leiyang');
INSERT INTO `sys_district` VALUES ('430400', '430482', '常宁市', '0734', '421500', 'Y', null, null, null, null, 'Changning');
INSERT INTO `sys_district` VALUES ('430500', '430502', '双清区', '0739', '422001', 'Y', null, null, null, null, 'Shuangqing');
INSERT INTO `sys_district` VALUES ('430500', '430503', '大祥区', '0739', '422000', 'Y', null, null, null, null, 'Daxiang');
INSERT INTO `sys_district` VALUES ('430500', '430511', '北塔区', '0739', '422007', 'Y', null, null, null, null, 'Beita');
INSERT INTO `sys_district` VALUES ('430500', '430521', '邵东县', '0739', '422800', 'Y', null, null, null, null, 'Shaodong');
INSERT INTO `sys_district` VALUES ('430500', '430522', '新邵县', '0739', '422900', 'Y', null, null, null, null, 'Xinshao');
INSERT INTO `sys_district` VALUES ('430500', '430523', '邵阳县', '0739', '422100', 'Y', null, null, null, null, 'Shaoyang');
INSERT INTO `sys_district` VALUES ('430500', '430524', '隆回县', '0739', '422200', 'Y', null, null, null, null, 'Longhui');
INSERT INTO `sys_district` VALUES ('430500', '430525', '洞口县', '0739', '422300', 'Y', null, null, null, null, 'Dongkou');
INSERT INTO `sys_district` VALUES ('430500', '430527', '绥宁县', '0739', '422600', 'Y', null, null, null, null, 'Suining');
INSERT INTO `sys_district` VALUES ('430500', '430528', '新宁县', '0739', '422700', 'Y', null, null, null, null, 'Xinning');
INSERT INTO `sys_district` VALUES ('430500', '430529', '城步苗族自治县', '0739', '422500', 'Y', null, null, null, null, 'Chengbu');
INSERT INTO `sys_district` VALUES ('430500', '430581', '武冈市', '0739', '422400', 'Y', null, null, null, null, 'Wugang');
INSERT INTO `sys_district` VALUES ('430600', '430602', '岳阳楼区', '0730', '414000', 'Y', null, null, null, null, 'Yueyanglou');
INSERT INTO `sys_district` VALUES ('430600', '430603', '云溪区', '0730', '414009', 'Y', null, null, null, null, 'Yunxi');
INSERT INTO `sys_district` VALUES ('430600', '430611', '君山区', '0730', '414005', 'Y', null, null, null, null, 'Junshan');
INSERT INTO `sys_district` VALUES ('430600', '430621', '岳阳县', '0730', '414100', 'Y', null, null, null, null, 'Yueyang');
INSERT INTO `sys_district` VALUES ('430600', '430623', '华容县', '0730', '414200', 'Y', null, null, null, null, 'Huarong');
INSERT INTO `sys_district` VALUES ('430600', '430624', '湘阴县', '0730', '414600', 'Y', null, null, null, null, 'Xiangyin');
INSERT INTO `sys_district` VALUES ('430600', '430626', '平江县', '0730', '414500', 'Y', null, null, null, null, 'Pingjiang');
INSERT INTO `sys_district` VALUES ('430600', '430681', '汨罗市', '0730', '414400', 'Y', null, null, null, null, 'Miluo');
INSERT INTO `sys_district` VALUES ('430600', '430682', '临湘市', '0730', '414300', 'Y', null, null, null, null, 'Linxiang');
INSERT INTO `sys_district` VALUES ('430700', '430702', '武陵区', '0736', '415000', 'Y', null, null, null, null, 'Wuling');
INSERT INTO `sys_district` VALUES ('430700', '430703', '鼎城区', '0736', '415101', 'Y', null, null, null, null, 'Dingcheng');
INSERT INTO `sys_district` VALUES ('430700', '430721', '安乡县', '0736', '415600', 'Y', null, null, null, null, 'Anxiang');
INSERT INTO `sys_district` VALUES ('430700', '430722', '汉寿县', '0736', '415900', 'Y', null, null, null, null, 'Hanshou');
INSERT INTO `sys_district` VALUES ('430700', '430723', '澧县', '0736', '415500', 'Y', null, null, null, null, 'Lixian');
INSERT INTO `sys_district` VALUES ('430700', '430724', '临澧县', '0736', '415200', 'Y', null, null, null, null, 'Linli');
INSERT INTO `sys_district` VALUES ('430700', '430725', '桃源县', '0736', '415700', 'Y', null, null, null, null, 'Taoyuan');
INSERT INTO `sys_district` VALUES ('430700', '430726', '石门县', '0736', '415300', 'Y', null, null, null, null, 'Shimen');
INSERT INTO `sys_district` VALUES ('430700', '430781', '津市市', '0736', '415400', 'Y', null, null, null, null, 'Jinshi');
INSERT INTO `sys_district` VALUES ('430800', '430802', '永定区', '0744', '427000', 'Y', null, null, null, null, 'Yongding');
INSERT INTO `sys_district` VALUES ('430800', '430811', '武陵源区', '0744', '427400', 'Y', null, null, null, null, 'Wulingyuan');
INSERT INTO `sys_district` VALUES ('430800', '430821', '慈利县', '0744', '427200', 'Y', null, null, null, null, 'Cili');
INSERT INTO `sys_district` VALUES ('430800', '430822', '桑植县', '0744', '427100', 'Y', null, null, null, null, 'Sangzhi');
INSERT INTO `sys_district` VALUES ('430900', '430902', '资阳区', '0737', '413001', 'Y', null, null, null, null, 'Ziyang');
INSERT INTO `sys_district` VALUES ('430900', '430903', '赫山区', '0737', '413002', 'Y', null, null, null, null, 'Heshan');
INSERT INTO `sys_district` VALUES ('430900', '430921', '南县', '0737', '413200', 'Y', null, null, null, null, 'Nanxian');
INSERT INTO `sys_district` VALUES ('430900', '430922', '桃江县', '0737', '413400', 'Y', null, null, null, null, 'Taojiang');
INSERT INTO `sys_district` VALUES ('430900', '430923', '安化县', '0737', '413500', 'Y', null, null, null, null, 'Anhua');
INSERT INTO `sys_district` VALUES ('430900', '430981', '沅江市', '0737', '413100', 'Y', null, null, null, null, 'Yuanjiang');
INSERT INTO `sys_district` VALUES ('431000', '431002', '北湖区', '0735', '423000', 'Y', null, null, null, null, 'Beihu');
INSERT INTO `sys_district` VALUES ('431000', '431003', '苏仙区', '0735', '423000', 'Y', null, null, null, null, 'Suxian');
INSERT INTO `sys_district` VALUES ('431000', '431021', '桂阳县', '0735', '424400', 'Y', null, null, null, null, 'Guiyang');
INSERT INTO `sys_district` VALUES ('431000', '431022', '宜章县', '0735', '424200', 'Y', null, null, null, null, 'Yizhang');
INSERT INTO `sys_district` VALUES ('431000', '431023', '永兴县', '0735', '423300', 'Y', null, null, null, null, 'Yongxing');
INSERT INTO `sys_district` VALUES ('431000', '431024', '嘉禾县', '0735', '424500', 'Y', null, null, null, null, 'Jiahe');
INSERT INTO `sys_district` VALUES ('431000', '431025', '临武县', '0735', '424300', 'Y', null, null, null, null, 'Linwu');
INSERT INTO `sys_district` VALUES ('431000', '431026', '汝城县', '0735', '424100', 'Y', null, null, null, null, 'Rucheng');
INSERT INTO `sys_district` VALUES ('431000', '431027', '桂东县', '0735', '423500', 'Y', null, null, null, null, 'Guidong');
INSERT INTO `sys_district` VALUES ('431000', '431028', '安仁县', '0735', '423600', 'Y', null, null, null, null, 'Anren');
INSERT INTO `sys_district` VALUES ('431000', '431081', '资兴市', '0735', '423400', 'Y', null, null, null, null, 'Zixing');
INSERT INTO `sys_district` VALUES ('431100', '431102', '零陵区', '0746', '425100', 'Y', null, null, null, null, 'Lingling');
INSERT INTO `sys_district` VALUES ('431100', '431103', '冷水滩区', '0746', '425100', 'Y', null, null, null, null, 'Lengshuitan');
INSERT INTO `sys_district` VALUES ('431100', '431121', '祁阳县', '0746', '426100', 'Y', null, null, null, null, 'Qiyang');
INSERT INTO `sys_district` VALUES ('431100', '431122', '东安县', '0746', '425900', 'Y', null, null, null, null, 'Dong\'an');
INSERT INTO `sys_district` VALUES ('431100', '431123', '双牌县', '0746', '425200', 'Y', null, null, null, null, 'Shuangpai');
INSERT INTO `sys_district` VALUES ('431100', '431124', '道县', '0746', '425300', 'Y', null, null, null, null, 'Daoxian');
INSERT INTO `sys_district` VALUES ('431100', '431125', '江永县', '0746', '425400', 'Y', null, null, null, null, 'Jiangyong');
INSERT INTO `sys_district` VALUES ('431100', '431126', '宁远县', '0746', '425600', 'Y', null, null, null, null, 'Ningyuan');
INSERT INTO `sys_district` VALUES ('431100', '431127', '蓝山县', '0746', '425800', 'Y', null, null, null, null, 'Lanshan');
INSERT INTO `sys_district` VALUES ('431100', '431128', '新田县', '0746', '425700', 'Y', null, null, null, null, 'Xintian');
INSERT INTO `sys_district` VALUES ('431100', '431129', '江华瑶族自治县', '0746', '425500', 'Y', null, null, null, null, 'Jianghua');
INSERT INTO `sys_district` VALUES ('431200', '431202', '鹤城区', '0745', '418000', 'Y', null, null, null, null, 'Hecheng');
INSERT INTO `sys_district` VALUES ('431200', '431221', '中方县', '0745', '418005', 'Y', null, null, null, null, 'Zhongfang');
INSERT INTO `sys_district` VALUES ('431200', '431222', '沅陵县', '0745', '419600', 'Y', null, null, null, null, 'Yuanling');
INSERT INTO `sys_district` VALUES ('431200', '431223', '辰溪县', '0745', '419500', 'Y', null, null, null, null, 'Chenxi');
INSERT INTO `sys_district` VALUES ('431200', '431224', '溆浦县', '0745', '419300', 'Y', null, null, null, null, 'Xupu');
INSERT INTO `sys_district` VALUES ('431200', '431225', '会同县', '0745', '418300', 'Y', null, null, null, null, 'Huitong');
INSERT INTO `sys_district` VALUES ('431200', '431226', '麻阳苗族自治县', '0745', '419400', 'Y', null, null, null, null, 'Mayang');
INSERT INTO `sys_district` VALUES ('431200', '431227', '新晃侗族自治县', '0745', '419200', 'Y', null, null, null, null, 'Xinhuang');
INSERT INTO `sys_district` VALUES ('431200', '431228', '芷江侗族自治县', '0745', '419100', 'Y', null, null, null, null, 'Zhijiang');
INSERT INTO `sys_district` VALUES ('431200', '431229', '靖州苗族侗族自治县', '0745', '418400', 'Y', null, null, null, null, 'Jingzhou');
INSERT INTO `sys_district` VALUES ('431200', '431230', '通道侗族自治县', '0745', '418500', 'Y', null, null, null, null, 'Tongdao');
INSERT INTO `sys_district` VALUES ('431200', '431281', '洪江市', '0745', '418100', 'Y', null, null, null, null, 'Hongjiang');
INSERT INTO `sys_district` VALUES ('431300', '431302', '娄星区', '0738', '417000', 'Y', null, null, null, null, 'Louxing');
INSERT INTO `sys_district` VALUES ('431300', '431321', '双峰县', '0738', '417700', 'Y', null, null, null, null, 'Shuangfeng');
INSERT INTO `sys_district` VALUES ('431300', '431322', '新化县', '0738', '417600', 'Y', null, null, null, null, 'Xinhua');
INSERT INTO `sys_district` VALUES ('431300', '431381', '冷水江市', '0738', '417500', 'Y', null, null, null, null, 'Lengshuijiang');
INSERT INTO `sys_district` VALUES ('431300', '431382', '涟源市', '0738', '417100', 'Y', null, null, null, null, 'Lianyuan');
INSERT INTO `sys_district` VALUES ('433100', '433101', '吉首市', '0743', '416000', 'Y', null, null, null, null, 'Jishou');
INSERT INTO `sys_district` VALUES ('433100', '433122', '泸溪县', '0743', '416100', 'Y', null, null, null, null, 'Luxi');
INSERT INTO `sys_district` VALUES ('433100', '433123', '凤凰县', '0743', '416200', 'Y', null, null, null, null, 'Fenghuang');
INSERT INTO `sys_district` VALUES ('433100', '433124', '花垣县', '0743', '416400', 'Y', null, null, null, null, 'Huayuan');
INSERT INTO `sys_district` VALUES ('433100', '433125', '保靖县', '0743', '416500', 'Y', null, null, null, null, 'Baojing');
INSERT INTO `sys_district` VALUES ('433100', '433126', '古丈县', '0743', '416300', 'Y', null, null, null, null, 'Guzhang');
INSERT INTO `sys_district` VALUES ('433100', '433127', '永顺县', '0743', '416700', 'Y', null, null, null, null, 'Yongshun');
INSERT INTO `sys_district` VALUES ('433100', '433130', '龙山县', '0743', '416800', 'Y', null, null, null, null, 'Longshan');
INSERT INTO `sys_district` VALUES ('440100', '440103', '荔湾区', '020', '510170', 'Y', null, null, null, null, 'Liwan');
INSERT INTO `sys_district` VALUES ('440100', '440104', '越秀区', '020', '510030', 'Y', null, null, null, null, 'Yuexiu');
INSERT INTO `sys_district` VALUES ('440100', '440105', '海珠区', '020', '510300', 'Y', null, null, null, null, 'Haizhu');
INSERT INTO `sys_district` VALUES ('440100', '440106', '天河区', '020', '510665', 'Y', null, null, null, null, 'Tianhe');
INSERT INTO `sys_district` VALUES ('440100', '440111', '白云区', '020', '510405', 'Y', null, null, null, null, 'Baiyun');
INSERT INTO `sys_district` VALUES ('440100', '440112', '黄埔区', '020', '510700', 'Y', null, null, null, null, 'Huangpu');
INSERT INTO `sys_district` VALUES ('440100', '440113', '番禺区', '020', '511400', 'Y', null, null, null, null, 'Panyu');
INSERT INTO `sys_district` VALUES ('440100', '440114', '花都区', '020', '510800', 'Y', null, null, null, null, 'Huadu');
INSERT INTO `sys_district` VALUES ('440100', '440115', '南沙区', '020', '511458', 'Y', null, null, null, null, 'Nansha');
INSERT INTO `sys_district` VALUES ('440100', '440117', '从化区', '020', '510900', 'Y', null, null, null, null, 'Conghua');
INSERT INTO `sys_district` VALUES ('440100', '440118', '增城区', '020', '511300', 'Y', null, null, null, null, 'Zengcheng');
INSERT INTO `sys_district` VALUES ('440200', '440203', '武江区', '0751', '512026', 'Y', null, null, null, null, 'Wujiang');
INSERT INTO `sys_district` VALUES ('440200', '440204', '浈江区', '0751', '512023', 'Y', null, null, null, null, 'Zhenjiang');
INSERT INTO `sys_district` VALUES ('440200', '440205', '曲江区', '0751', '512101', 'Y', null, null, null, null, 'Qujiang');
INSERT INTO `sys_district` VALUES ('440200', '440222', '始兴县', '0751', '512500', 'Y', null, null, null, null, 'Shixing');
INSERT INTO `sys_district` VALUES ('440200', '440224', '仁化县', '0751', '512300', 'Y', null, null, null, null, 'Renhua');
INSERT INTO `sys_district` VALUES ('440200', '440229', '翁源县', '0751', '512600', 'Y', null, null, null, null, 'Wengyuan');
INSERT INTO `sys_district` VALUES ('440200', '440232', '乳源瑶族自治县', '0751', '512700', 'Y', null, null, null, null, 'Ruyuan');
INSERT INTO `sys_district` VALUES ('440200', '440233', '新丰县', '0751', '511100', 'Y', null, null, null, null, 'Xinfeng');
INSERT INTO `sys_district` VALUES ('440200', '440281', '乐昌市', '0751', '512200', 'Y', null, null, null, null, 'Lechang');
INSERT INTO `sys_district` VALUES ('440200', '440282', '南雄市', '0751', '512400', 'Y', null, null, null, null, 'Nanxiong');
INSERT INTO `sys_district` VALUES ('440300', '440303', '罗湖区', '0755', '518021', 'Y', null, null, null, null, 'Luohu');
INSERT INTO `sys_district` VALUES ('440300', '440304', '福田区', '0755', '518048', 'Y', null, null, null, null, 'Futian');
INSERT INTO `sys_district` VALUES ('440300', '440305', '南山区', '0755', '518051', 'Y', null, null, null, null, 'Nanshan');
INSERT INTO `sys_district` VALUES ('440300', '440306', '宝安区', '0755', '518101', 'Y', null, null, null, null, 'Bao\'an');
INSERT INTO `sys_district` VALUES ('440300', '440307', '龙岗区', '0755', '518172', 'Y', null, null, null, null, 'Longgang');
INSERT INTO `sys_district` VALUES ('440300', '440308', '盐田区', '0755', '518081', 'Y', null, null, null, null, 'Yantian');
INSERT INTO `sys_district` VALUES ('440300', '440309', '光明新区', '0755', '518100', 'Y', null, null, null, null, 'Guangmingxinqu');
INSERT INTO `sys_district` VALUES ('440300', '440310', '坪山新区', '0755', '518000', 'Y', null, null, null, null, 'Pingshanxinqu');
INSERT INTO `sys_district` VALUES ('440300', '440311', '大鹏新区', '0755', '518000', 'Y', null, null, null, null, 'Dapengxinqu');
INSERT INTO `sys_district` VALUES ('440300', '440312', '龙华新区', '0755', '518100', 'Y', null, null, null, null, 'Longhuaxinqu');
INSERT INTO `sys_district` VALUES ('440400', '440402', '香洲区', '0756', '519000', 'Y', null, null, null, null, 'Xiangzhou');
INSERT INTO `sys_district` VALUES ('440400', '440403', '斗门区', '0756', '519110', 'Y', null, null, null, null, 'Doumen');
INSERT INTO `sys_district` VALUES ('440400', '440404', '金湾区', '0756', '519040', 'Y', null, null, null, null, 'Jinwan');
INSERT INTO `sys_district` VALUES ('440500', '440507', '龙湖区', '0754', '515041', 'Y', null, null, null, null, 'Longhu');
INSERT INTO `sys_district` VALUES ('440500', '440511', '金平区', '0754', '515041', 'Y', null, null, null, null, 'Jinping');
INSERT INTO `sys_district` VALUES ('440500', '440512', '濠江区', '0754', '515071', 'Y', null, null, null, null, 'Haojiang');
INSERT INTO `sys_district` VALUES ('440500', '440513', '潮阳区', '0754', '515100', 'Y', null, null, null, null, 'Chaoyang');
INSERT INTO `sys_district` VALUES ('440500', '440514', '潮南区', '0754', '515144', 'Y', null, null, null, null, 'Chaonan');
INSERT INTO `sys_district` VALUES ('440500', '440515', '澄海区', '0754', '515800', 'Y', null, null, null, null, 'Chenghai');
INSERT INTO `sys_district` VALUES ('440500', '440523', '南澳县', '0754', '515900', 'Y', null, null, null, null, 'Nanao');
INSERT INTO `sys_district` VALUES ('440600', '440604', '禅城区', '0757', '528000', 'Y', null, null, null, null, 'Chancheng');
INSERT INTO `sys_district` VALUES ('440600', '440605', '南海区', '0757', '528251', 'Y', null, null, null, null, 'Nanhai');
INSERT INTO `sys_district` VALUES ('440600', '440606', '顺德区', '0757', '528300', 'Y', null, null, null, null, 'Shunde');
INSERT INTO `sys_district` VALUES ('440600', '440607', '三水区', '0757', '528133', 'Y', null, null, null, null, 'Sanshui');
INSERT INTO `sys_district` VALUES ('440600', '440608', '高明区', '0757', '528500', 'Y', null, null, null, null, 'Gaoming');
INSERT INTO `sys_district` VALUES ('440700', '440703', '蓬江区', '0750', '529000', 'Y', null, null, null, null, 'Pengjiang');
INSERT INTO `sys_district` VALUES ('440700', '440704', '江海区', '0750', '529040', 'Y', null, null, null, null, 'Jianghai');
INSERT INTO `sys_district` VALUES ('440700', '440705', '新会区', '0750', '529100', 'Y', null, null, null, null, 'Xinhui');
INSERT INTO `sys_district` VALUES ('440700', '440781', '台山市', '0750', '529200', 'Y', null, null, null, null, 'Taishan');
INSERT INTO `sys_district` VALUES ('440700', '440783', '开平市', '0750', '529337', 'Y', null, null, null, null, 'Kaiping');
INSERT INTO `sys_district` VALUES ('440700', '440784', '鹤山市', '0750', '529700', 'Y', null, null, null, null, 'Heshan');
INSERT INTO `sys_district` VALUES ('440700', '440785', '恩平市', '0750', '529400', 'Y', null, null, null, null, 'Enping');
INSERT INTO `sys_district` VALUES ('440800', '440802', '赤坎区', '0759', '524033', 'Y', null, null, null, null, 'Chikan');
INSERT INTO `sys_district` VALUES ('440800', '440803', '霞山区', '0759', '524011', 'Y', null, null, null, null, 'Xiashan');
INSERT INTO `sys_district` VALUES ('440800', '440804', '坡头区', '0759', '524057', 'Y', null, null, null, null, 'Potou');
INSERT INTO `sys_district` VALUES ('440800', '440811', '麻章区', '0759', '524094', 'Y', null, null, null, null, 'Mazhang');
INSERT INTO `sys_district` VALUES ('440800', '440823', '遂溪县', '0759', '524300', 'Y', null, null, null, null, 'Suixi');
INSERT INTO `sys_district` VALUES ('440800', '440825', '徐闻县', '0759', '524100', 'Y', null, null, null, null, 'Xuwen');
INSERT INTO `sys_district` VALUES ('440800', '440881', '廉江市', '0759', '524400', 'Y', null, null, null, null, 'Lianjiang');
INSERT INTO `sys_district` VALUES ('440800', '440882', '雷州市', '0759', '524200', 'Y', null, null, null, null, 'Leizhou');
INSERT INTO `sys_district` VALUES ('440800', '440883', '吴川市', '0759', '524500', 'Y', null, null, null, null, 'Wuchuan');
INSERT INTO `sys_district` VALUES ('440900', '440902', '茂南区', '0668', '525000', 'Y', null, null, null, null, 'Maonan');
INSERT INTO `sys_district` VALUES ('440900', '440904', '电白区', '0668', '525400', 'Y', null, null, null, null, 'Dianbai');
INSERT INTO `sys_district` VALUES ('440900', '440981', '高州市', '0668', '525200', 'Y', null, null, null, null, 'Gaozhou');
INSERT INTO `sys_district` VALUES ('440900', '440982', '化州市', '0668', '525100', 'Y', null, null, null, null, 'Huazhou');
INSERT INTO `sys_district` VALUES ('440900', '440983', '信宜市', '0668', '525300', 'Y', null, null, null, null, 'Xinyi');
INSERT INTO `sys_district` VALUES ('441200', '441202', '端州区', '0758', '526060', 'Y', null, null, null, null, 'Duanzhou');
INSERT INTO `sys_district` VALUES ('441200', '441203', '鼎湖区', '0758', '526070', 'Y', null, null, null, null, 'Dinghu');
INSERT INTO `sys_district` VALUES ('441200', '441223', '广宁县', '0758', '526300', 'Y', null, null, null, null, 'Guangning');
INSERT INTO `sys_district` VALUES ('441200', '441224', '怀集县', '0758', '526400', 'Y', null, null, null, null, 'Huaiji');
INSERT INTO `sys_district` VALUES ('441200', '441225', '封开县', '0758', '526500', 'Y', null, null, null, null, 'Fengkai');
INSERT INTO `sys_district` VALUES ('441200', '441226', '德庆县', '0758', '526600', 'Y', null, null, null, null, 'Deqing');
INSERT INTO `sys_district` VALUES ('441200', '441283', '高要市', '0758', '526100', 'Y', null, null, null, null, 'Gaoyao');
INSERT INTO `sys_district` VALUES ('441200', '441284', '四会市', '0758', '526200', 'Y', null, null, null, null, 'Sihui');
INSERT INTO `sys_district` VALUES ('441300', '441302', '惠城区', '0752', '516008', 'Y', null, null, null, null, 'Huicheng');
INSERT INTO `sys_district` VALUES ('441300', '441303', '惠阳区', '0752', '516211', 'Y', null, null, null, null, 'Huiyang');
INSERT INTO `sys_district` VALUES ('441300', '441322', '博罗县', '0752', '516100', 'Y', null, null, null, null, 'Boluo');
INSERT INTO `sys_district` VALUES ('441300', '441323', '惠东县', '0752', '516300', 'Y', null, null, null, null, 'Huidong');
INSERT INTO `sys_district` VALUES ('441300', '441324', '龙门县', '0752', '516800', 'Y', null, null, null, null, 'Longmen');
INSERT INTO `sys_district` VALUES ('441400', '441402', '梅江区', '0753', '514000', 'Y', null, null, null, null, 'Meijiang');
INSERT INTO `sys_district` VALUES ('441400', '441403', '梅县区', '0753', '514787', 'Y', null, null, null, null, 'Meixian');
INSERT INTO `sys_district` VALUES ('441400', '441422', '大埔县', '0753', '514200', 'Y', null, null, null, null, 'Dabu');
INSERT INTO `sys_district` VALUES ('441400', '441423', '丰顺县', '0753', '514300', 'Y', null, null, null, null, 'Fengshun');
INSERT INTO `sys_district` VALUES ('441400', '441424', '五华县', '0753', '514400', 'Y', null, null, null, null, 'Wuhua');
INSERT INTO `sys_district` VALUES ('441400', '441426', '平远县', '0753', '514600', 'Y', null, null, null, null, 'Pingyuan');
INSERT INTO `sys_district` VALUES ('441400', '441427', '蕉岭县', '0753', '514100', 'Y', null, null, null, null, 'Jiaoling');
INSERT INTO `sys_district` VALUES ('441400', '441481', '兴宁市', '0753', '514500', 'Y', null, null, null, null, 'Xingning');
INSERT INTO `sys_district` VALUES ('441500', '441502', '城区', '0660', '516600', 'Y', null, null, null, null, 'Chengqu');
INSERT INTO `sys_district` VALUES ('441500', '441521', '海丰县', '0660', '516400', 'Y', null, null, null, null, 'Haifeng');
INSERT INTO `sys_district` VALUES ('441500', '441523', '陆河县', '0660', '516700', 'Y', null, null, null, null, 'Luhe');
INSERT INTO `sys_district` VALUES ('441500', '441581', '陆丰市', '0660', '516500', 'Y', null, null, null, null, 'Lufeng');
INSERT INTO `sys_district` VALUES ('441600', '441602', '源城区', '0762', '517000', 'Y', null, null, null, null, 'Yuancheng');
INSERT INTO `sys_district` VALUES ('441600', '441621', '紫金县', '0762', '517400', 'Y', null, null, null, null, 'Zijin');
INSERT INTO `sys_district` VALUES ('441600', '441622', '龙川县', '0762', '517300', 'Y', null, null, null, null, 'Longchuan');
INSERT INTO `sys_district` VALUES ('441600', '441623', '连平县', '0762', '517100', 'Y', null, null, null, null, 'Lianping');
INSERT INTO `sys_district` VALUES ('441600', '441624', '和平县', '0762', '517200', 'Y', null, null, null, null, 'Heping');
INSERT INTO `sys_district` VALUES ('441600', '441625', '东源县', '0762', '517583', 'Y', null, null, null, null, 'Dongyuan');
INSERT INTO `sys_district` VALUES ('441700', '441702', '江城区', '0662', '529500', 'Y', null, null, null, null, 'Jiangcheng');
INSERT INTO `sys_district` VALUES ('441700', '441704', '阳东区', '0662', '529900', 'Y', null, null, null, null, 'Yangdong');
INSERT INTO `sys_district` VALUES ('441700', '441721', '阳西县', '0662', '529800', 'Y', null, null, null, null, 'Yangxi');
INSERT INTO `sys_district` VALUES ('441700', '441781', '阳春市', '0662', '529600', 'Y', null, null, null, null, 'Yangchun');
INSERT INTO `sys_district` VALUES ('441800', '441802', '清城区', '0763', '511515', 'Y', null, null, null, null, 'Qingcheng');
INSERT INTO `sys_district` VALUES ('441800', '441803', '清新区', '0763', '511810', 'Y', null, null, null, null, 'Qingxin');
INSERT INTO `sys_district` VALUES ('441800', '441821', '佛冈县', '0763', '511600', 'Y', null, null, null, null, 'Fogang');
INSERT INTO `sys_district` VALUES ('441800', '441823', '阳山县', '0763', '513100', 'Y', null, null, null, null, 'Yangshan');
INSERT INTO `sys_district` VALUES ('441800', '441825', '连山壮族瑶族自治县', '0763', '513200', 'Y', null, null, null, null, 'Lianshan');
INSERT INTO `sys_district` VALUES ('441800', '441826', '连南瑶族自治县', '0763', '513300', 'Y', null, null, null, null, 'Liannan');
INSERT INTO `sys_district` VALUES ('441800', '441881', '英德市', '0763', '513000', 'Y', null, null, null, null, 'Yingde');
INSERT INTO `sys_district` VALUES ('441800', '441882', '连州市', '0763', '513400', 'Y', null, null, null, null, 'Lianzhou');
INSERT INTO `sys_district` VALUES ('441900', '441901', '莞城区', '0769', '523128', 'Y', null, null, null, null, 'Guancheng');
INSERT INTO `sys_district` VALUES ('441900', '441902', '南城区', '0769', '523617', 'Y', null, null, null, null, 'Nancheng');
INSERT INTO `sys_district` VALUES ('441900', '441904', '万江区', '0769', '523039', 'Y', null, null, null, null, 'Wanjiang');
INSERT INTO `sys_district` VALUES ('441900', '441905', '石碣镇', '0769', '523290', 'Y', null, null, null, null, 'Shijie');
INSERT INTO `sys_district` VALUES ('441900', '441906', '石龙镇', '0769', '523326', 'Y', null, null, null, null, 'Shilong');
INSERT INTO `sys_district` VALUES ('441900', '441907', '茶山镇', '0769', '523380', 'Y', null, null, null, null, 'Chashan');
INSERT INTO `sys_district` VALUES ('441900', '441908', '石排镇', '0769', '523346', 'Y', null, null, null, null, 'Shipai');
INSERT INTO `sys_district` VALUES ('441900', '441909', '企石镇', '0769', '523507', 'Y', null, null, null, null, 'Qishi');
INSERT INTO `sys_district` VALUES ('441900', '441910', '横沥镇', '0769', '523471', 'Y', null, null, null, null, 'Hengli');
INSERT INTO `sys_district` VALUES ('441900', '441911', '桥头镇', '0769', '523520', 'Y', null, null, null, null, 'Qiaotou');
INSERT INTO `sys_district` VALUES ('441900', '441912', '谢岗镇', '0769', '523592', 'Y', null, null, null, null, 'Xiegang');
INSERT INTO `sys_district` VALUES ('441900', '441913', '东坑镇', '0769', '523451', 'Y', null, null, null, null, 'Dongkeng');
INSERT INTO `sys_district` VALUES ('441900', '441914', '常平镇', '0769', '523560', 'Y', null, null, null, null, 'Changping');
INSERT INTO `sys_district` VALUES ('441900', '441915', '寮步镇', '0769', '523411', 'Y', null, null, null, null, 'Liaobu');
INSERT INTO `sys_district` VALUES ('441900', '441916', '大朗镇', '0769', '523770', 'Y', null, null, null, null, 'Dalang');
INSERT INTO `sys_district` VALUES ('441900', '441917', '麻涌镇', '0769', '523143', 'Y', null, null, null, null, 'Machong');
INSERT INTO `sys_district` VALUES ('441900', '441918', '中堂镇', '0769', '523233', 'Y', null, null, null, null, 'Zhongtang');
INSERT INTO `sys_district` VALUES ('441900', '441919', '高埗镇', '0769', '523282', 'Y', null, null, null, null, 'Gaobu');
INSERT INTO `sys_district` VALUES ('441900', '441920', '樟木头镇', '0769', '523619', 'Y', null, null, null, null, 'Zhangmutou');
INSERT INTO `sys_district` VALUES ('441900', '441921', '大岭山镇', '0769', '523835', 'Y', null, null, null, null, 'Dalingshan');
INSERT INTO `sys_district` VALUES ('441900', '441922', '望牛墩镇', '0769', '523203', 'Y', null, null, null, null, 'Wangniudun');
INSERT INTO `sys_district` VALUES ('441900', '441923', '黄江镇', '0769', '523755', 'Y', null, null, null, null, 'Huangjiang');
INSERT INTO `sys_district` VALUES ('441900', '441924', '洪梅镇', '0769', '523163', 'Y', null, null, null, null, 'Hongmei');
INSERT INTO `sys_district` VALUES ('441900', '441925', '清溪镇', '0769', '523660', 'Y', null, null, null, null, 'Qingxi');
INSERT INTO `sys_district` VALUES ('441900', '441926', '沙田镇', '0769', '523988', 'Y', null, null, null, null, 'Shatian');
INSERT INTO `sys_district` VALUES ('441900', '441927', '道滘镇', '0769', '523171', 'Y', null, null, null, null, 'Daojiao');
INSERT INTO `sys_district` VALUES ('441900', '441928', '塘厦镇', '0769', '523713', 'Y', null, null, null, null, 'Tangxia');
INSERT INTO `sys_district` VALUES ('441900', '441929', '虎门镇', '0769', '523932', 'Y', null, null, null, null, 'Humen');
INSERT INTO `sys_district` VALUES ('441900', '441930', '厚街镇', '0769', '523960', 'Y', null, null, null, null, 'Houjie');
INSERT INTO `sys_district` VALUES ('441900', '441931', '凤岗镇', '0769', '523690', 'Y', null, null, null, null, 'Fenggang');
INSERT INTO `sys_district` VALUES ('441900', '441932', '长安镇', '0769', '523850', 'Y', null, null, null, null, 'Chang\'an');
INSERT INTO `sys_district` VALUES ('442000', '442001', '石岐区', '0760', '528400', 'Y', null, null, null, null, 'Shiqi');
INSERT INTO `sys_district` VALUES ('442000', '442004', '南区', '0760', '528400', 'Y', null, null, null, null, 'Nanqu');
INSERT INTO `sys_district` VALUES ('442000', '442005', '五桂山区', '0760', '528458', 'Y', null, null, null, null, 'Wuguishan');
INSERT INTO `sys_district` VALUES ('442000', '442006', '火炬开发区', '0760', '528437', 'Y', null, null, null, null, 'Huoju');
INSERT INTO `sys_district` VALUES ('442000', '442007', '黄圃镇', '0760', '528429', 'Y', null, null, null, null, 'Huangpu');
INSERT INTO `sys_district` VALUES ('442000', '442008', '南头镇', '0760', '528421', 'Y', null, null, null, null, 'Nantou');
INSERT INTO `sys_district` VALUES ('442000', '442009', '东凤镇', '0760', '528425', 'Y', null, null, null, null, 'Dongfeng');
INSERT INTO `sys_district` VALUES ('442000', '442010', '阜沙镇', '0760', '528434', 'Y', null, null, null, null, 'Fusha');
INSERT INTO `sys_district` VALUES ('442000', '442011', '小榄镇', '0760', '528415', 'Y', null, null, null, null, 'Xiaolan');
INSERT INTO `sys_district` VALUES ('442000', '442012', '东升镇', '0760', '528400', 'Y', null, null, null, null, 'Dongsheng');
INSERT INTO `sys_district` VALUES ('442000', '442013', '古镇镇', '0760', '528422', 'Y', null, null, null, null, 'Guzhen');
INSERT INTO `sys_district` VALUES ('442000', '442014', '横栏镇', '0760', '528478', 'Y', null, null, null, null, 'Henglan');
INSERT INTO `sys_district` VALUES ('442000', '442015', '三角镇', '0760', '528422', 'Y', null, null, null, null, 'Sanjiao');
INSERT INTO `sys_district` VALUES ('442000', '442016', '民众镇', '0760', '528441', 'Y', null, null, null, null, 'Minzhong');
INSERT INTO `sys_district` VALUES ('442000', '442017', '南朗镇', '0760', '528454', 'Y', null, null, null, null, 'Nanlang');
INSERT INTO `sys_district` VALUES ('442000', '442018', '港口镇', '0760', '528447', 'Y', null, null, null, null, 'Gangkou');
INSERT INTO `sys_district` VALUES ('442000', '442019', '大涌镇', '0760', '528476', 'Y', null, null, null, null, 'Dayong');
INSERT INTO `sys_district` VALUES ('442000', '442020', '沙溪镇', '0760', '528471', 'Y', null, null, null, null, 'Shaxi');
INSERT INTO `sys_district` VALUES ('442000', '442021', '三乡镇', '0760', '528463', 'Y', null, null, null, null, 'Sanxiang');
INSERT INTO `sys_district` VALUES ('442000', '442022', '板芙镇', '0760', '528459', 'Y', null, null, null, null, 'Banfu');
INSERT INTO `sys_district` VALUES ('442000', '442023', '神湾镇', '0760', '528462', 'Y', null, null, null, null, 'Shenwan');
INSERT INTO `sys_district` VALUES ('442000', '442024', '坦洲镇', '0760', '528467', 'Y', null, null, null, null, 'Tanzhou');
INSERT INTO `sys_district` VALUES ('445100', '445102', '湘桥区', '0768', '521000', 'Y', null, null, null, null, 'Xiangqiao');
INSERT INTO `sys_district` VALUES ('445100', '445103', '潮安区', '0768', '515638', 'Y', null, null, null, null, 'Chao\'an');
INSERT INTO `sys_district` VALUES ('445100', '445122', '饶平县', '0768', '515700', 'Y', null, null, null, null, 'Raoping');
INSERT INTO `sys_district` VALUES ('445200', '445202', '榕城区', '0633', '522000', 'Y', null, null, null, null, 'Rongcheng');
INSERT INTO `sys_district` VALUES ('445200', '445203', '揭东区', '0633', '515500', 'Y', null, null, null, null, 'Jiedong');
INSERT INTO `sys_district` VALUES ('445200', '445222', '揭西县', '0633', '515400', 'Y', null, null, null, null, 'Jiexi');
INSERT INTO `sys_district` VALUES ('445200', '445224', '惠来县', '0633', '515200', 'Y', null, null, null, null, 'Huilai');
INSERT INTO `sys_district` VALUES ('445200', '445281', '普宁市', '0633', '515300', 'Y', null, null, null, null, 'Puning');
INSERT INTO `sys_district` VALUES ('445300', '445302', '云城区', '0766', '527300', 'Y', null, null, null, null, 'Yuncheng');
INSERT INTO `sys_district` VALUES ('445300', '445303', '云安区', '0766', '527500', 'Y', null, null, null, null, 'Yun\'an');
INSERT INTO `sys_district` VALUES ('445300', '445321', '新兴县', '0766', '527400', 'Y', null, null, null, null, 'Xinxing');
INSERT INTO `sys_district` VALUES ('445300', '445322', '郁南县', '0766', '527100', 'Y', null, null, null, null, 'Yunan');
INSERT INTO `sys_district` VALUES ('445300', '445381', '罗定市', '0766', '527200', 'Y', null, null, null, null, 'Luoding');
INSERT INTO `sys_district` VALUES ('450100', '450102', '兴宁区', '0771', '530023', 'Y', null, null, null, null, 'Xingning');
INSERT INTO `sys_district` VALUES ('450100', '450103', '青秀区', '0771', '530213', 'Y', null, null, null, null, 'Qingxiu');
INSERT INTO `sys_district` VALUES ('450100', '450105', '江南区', '0771', '530031', 'Y', null, null, null, null, 'Jiangnan');
INSERT INTO `sys_district` VALUES ('450100', '450107', '西乡塘区', '0771', '530001', 'Y', null, null, null, null, 'Xixiangtang');
INSERT INTO `sys_district` VALUES ('450100', '450108', '良庆区', '0771', '530219', 'Y', null, null, null, null, 'Liangqing');
INSERT INTO `sys_district` VALUES ('450100', '450109', '邕宁区', '0771', '530200', 'Y', null, null, null, null, 'Yongning');
INSERT INTO `sys_district` VALUES ('450100', '450122', '武鸣县', '0771', '530100', 'Y', null, null, null, null, 'Wuming');
INSERT INTO `sys_district` VALUES ('450100', '450123', '隆安县', '0771', '532700', 'Y', null, null, null, null, 'Long\'an');
INSERT INTO `sys_district` VALUES ('450100', '450124', '马山县', '0771', '530600', 'Y', null, null, null, null, 'Mashan');
INSERT INTO `sys_district` VALUES ('450100', '450125', '上林县', '0771', '530500', 'Y', null, null, null, null, 'Shanglin');
INSERT INTO `sys_district` VALUES ('450100', '450126', '宾阳县', '0771', '530400', 'Y', null, null, null, null, 'Binyang');
INSERT INTO `sys_district` VALUES ('450100', '450127', '横县', '0771', '530300', 'Y', null, null, null, null, 'Hengxian');
INSERT INTO `sys_district` VALUES ('450100', '450128', '埌东新区', '0771', '530000', 'Y', null, null, null, null, 'Langdong');
INSERT INTO `sys_district` VALUES ('450200', '450202', '城中区', '0772', '545001', 'Y', null, null, null, null, 'Chengzhong');
INSERT INTO `sys_district` VALUES ('450200', '450203', '鱼峰区', '0772', '545005', 'Y', null, null, null, null, 'Yufeng');
INSERT INTO `sys_district` VALUES ('450200', '450204', '柳南区', '0772', '545007', 'Y', null, null, null, null, 'Liunan');
INSERT INTO `sys_district` VALUES ('450200', '450205', '柳北区', '0772', '545002', 'Y', null, null, null, null, 'Liubei');
INSERT INTO `sys_district` VALUES ('450200', '450221', '柳江县', '0772', '545100', 'Y', null, null, null, null, 'Liujiang');
INSERT INTO `sys_district` VALUES ('450200', '450222', '柳城县', '0772', '545200', 'Y', null, null, null, null, 'Liucheng');
INSERT INTO `sys_district` VALUES ('450200', '450223', '鹿寨县', '0772', '545600', 'Y', null, null, null, null, 'Luzhai');
INSERT INTO `sys_district` VALUES ('450200', '450224', '融安县', '0772', '545400', 'Y', null, null, null, null, 'Rong\'an');
INSERT INTO `sys_district` VALUES ('450200', '450225', '融水苗族自治县', '0772', '545300', 'Y', null, null, null, null, 'Rongshui');
INSERT INTO `sys_district` VALUES ('450200', '450226', '三江侗族自治县', '0772', '545500', 'Y', null, null, null, null, 'Sanjiang');
INSERT INTO `sys_district` VALUES ('450200', '450227', '柳东新区', '0772', '545000', 'Y', null, null, null, null, 'Liudong');
INSERT INTO `sys_district` VALUES ('450300', '450302', '秀峰区', '0773', '541001', 'Y', null, null, null, null, 'Xiufeng');
INSERT INTO `sys_district` VALUES ('450300', '450303', '叠彩区', '0773', '541001', 'Y', null, null, null, null, 'Diecai');
INSERT INTO `sys_district` VALUES ('450300', '450304', '象山区', '0773', '541002', 'Y', null, null, null, null, 'Xiangshan');
INSERT INTO `sys_district` VALUES ('450300', '450305', '七星区', '0773', '541004', 'Y', null, null, null, null, 'Qixing');
INSERT INTO `sys_district` VALUES ('450300', '450311', '雁山区', '0773', '541006', 'Y', null, null, null, null, 'Yanshan');
INSERT INTO `sys_district` VALUES ('450300', '450312', '临桂区', '0773', '541100', 'Y', null, null, null, null, 'Lingui');
INSERT INTO `sys_district` VALUES ('450300', '450321', '阳朔县', '0773', '541900', 'Y', null, null, null, null, 'Yangshuo');
INSERT INTO `sys_district` VALUES ('450300', '450323', '灵川县', '0773', '541200', 'Y', null, null, null, null, 'Lingchuan');
INSERT INTO `sys_district` VALUES ('450300', '450324', '全州县', '0773', '541503', 'Y', null, null, null, null, 'Quanzhou');
INSERT INTO `sys_district` VALUES ('450300', '450325', '兴安县', '0773', '541300', 'Y', null, null, null, null, 'Xing\'an');
INSERT INTO `sys_district` VALUES ('450300', '450326', '永福县', '0773', '541800', 'Y', null, null, null, null, 'Yongfu');
INSERT INTO `sys_district` VALUES ('450300', '450327', '灌阳县', '0773', '541600', 'Y', null, null, null, null, 'Guanyang');
INSERT INTO `sys_district` VALUES ('450300', '450328', '龙胜各族自治县', '0773', '541700', 'Y', null, null, null, null, 'Longsheng');
INSERT INTO `sys_district` VALUES ('450300', '450329', '资源县', '0773', '541400', 'Y', null, null, null, null, 'Ziyuan');
INSERT INTO `sys_district` VALUES ('450300', '450330', '平乐县', '0773', '542400', 'Y', null, null, null, null, 'Pingle');
INSERT INTO `sys_district` VALUES ('450300', '450331', '荔浦县', '0773', '546600', 'Y', null, null, null, null, 'Lipu');
INSERT INTO `sys_district` VALUES ('450300', '450332', '恭城瑶族自治县', '0773', '542500', 'Y', null, null, null, null, 'Gongcheng');
INSERT INTO `sys_district` VALUES ('450400', '450403', '万秀区', '0774', '543000', 'Y', null, null, null, null, 'Wanxiu');
INSERT INTO `sys_district` VALUES ('450400', '450405', '长洲区', '0774', '543003', 'Y', null, null, null, null, 'Changzhou');
INSERT INTO `sys_district` VALUES ('450400', '450406', '龙圩区', '0774', '543002', 'Y', null, null, null, null, 'Longxu');
INSERT INTO `sys_district` VALUES ('450400', '450421', '苍梧县', '0774', '543100', 'Y', null, null, null, null, 'Cangwu');
INSERT INTO `sys_district` VALUES ('450400', '450422', '藤县', '0774', '543300', 'Y', null, null, null, null, 'Tengxian');
INSERT INTO `sys_district` VALUES ('450400', '450423', '蒙山县', '0774', '546700', 'Y', null, null, null, null, 'Mengshan');
INSERT INTO `sys_district` VALUES ('450400', '450481', '岑溪市', '0774', '543200', 'Y', null, null, null, null, 'Cenxi');
INSERT INTO `sys_district` VALUES ('450500', '450502', '海城区', '0779', '536000', 'Y', null, null, null, null, 'Haicheng');
INSERT INTO `sys_district` VALUES ('450500', '450503', '银海区', '0779', '536000', 'Y', null, null, null, null, 'Yinhai');
INSERT INTO `sys_district` VALUES ('450500', '450512', '铁山港区', '0779', '536017', 'Y', null, null, null, null, 'Tieshangang');
INSERT INTO `sys_district` VALUES ('450500', '450521', '合浦县', '0779', '536100', 'Y', null, null, null, null, 'Hepu');
INSERT INTO `sys_district` VALUES ('450600', '450602', '港口区', '0770', '538001', 'Y', null, null, null, null, 'Gangkou');
INSERT INTO `sys_district` VALUES ('450600', '450603', '防城区', '0770', '538021', 'Y', null, null, null, null, 'Fangcheng');
INSERT INTO `sys_district` VALUES ('450600', '450621', '上思县', '0770', '535500', 'Y', null, null, null, null, 'Shangsi');
INSERT INTO `sys_district` VALUES ('450600', '450681', '东兴市', '0770', '538100', 'Y', null, null, null, null, 'Dongxing');
INSERT INTO `sys_district` VALUES ('450700', '450702', '钦南区', '0777', '535099', 'Y', null, null, null, null, 'Qinnan');
INSERT INTO `sys_district` VALUES ('450700', '450703', '钦北区', '0777', '535099', 'Y', null, null, null, null, 'Qinbei');
INSERT INTO `sys_district` VALUES ('450700', '450721', '灵山县', '0777', '535099', 'Y', null, null, null, null, 'Lingshan');
INSERT INTO `sys_district` VALUES ('450700', '450722', '浦北县', '0777', '535099', 'Y', null, null, null, null, 'Pubei');
INSERT INTO `sys_district` VALUES ('450800', '450802', '港北区', '0775', '537100', 'Y', null, null, null, null, 'Gangbei');
INSERT INTO `sys_district` VALUES ('450800', '450803', '港南区', '0775', '537100', 'Y', null, null, null, null, 'Gangnan');
INSERT INTO `sys_district` VALUES ('450800', '450804', '覃塘区', '0775', '537121', 'Y', null, null, null, null, 'Qintang');
INSERT INTO `sys_district` VALUES ('450800', '450821', '平南县', '0775', '537300', 'Y', null, null, null, null, 'Pingnan');
INSERT INTO `sys_district` VALUES ('450800', '450881', '桂平市', '0775', '537200', 'Y', null, null, null, null, 'Guiping');
INSERT INTO `sys_district` VALUES ('450900', '450902', '玉州区', '0775', '537000', 'Y', null, null, null, null, 'Yuzhou');
INSERT INTO `sys_district` VALUES ('450900', '450903', '福绵区', '0775', '537023', 'Y', null, null, null, null, 'Fumian');
INSERT INTO `sys_district` VALUES ('450900', '450904', '玉东新区', '0775', '537000', 'Y', null, null, null, null, 'Yudong');
INSERT INTO `sys_district` VALUES ('450900', '450921', '容县', '0775', '537500', 'Y', null, null, null, null, 'Rongxian');
INSERT INTO `sys_district` VALUES ('450900', '450922', '陆川县', '0775', '537700', 'Y', null, null, null, null, 'Luchuan');
INSERT INTO `sys_district` VALUES ('450900', '450923', '博白县', '0775', '537600', 'Y', null, null, null, null, 'Bobai');
INSERT INTO `sys_district` VALUES ('450900', '450924', '兴业县', '0775', '537800', 'Y', null, null, null, null, 'Xingye');
INSERT INTO `sys_district` VALUES ('450900', '450981', '北流市', '0775', '537400', 'Y', null, null, null, null, 'Beiliu');
INSERT INTO `sys_district` VALUES ('451000', '451002', '右江区', '0776', '533000', 'Y', null, null, null, null, 'Youjiang');
INSERT INTO `sys_district` VALUES ('451000', '451021', '田阳县', '0776', '533600', 'Y', null, null, null, null, 'Tianyang');
INSERT INTO `sys_district` VALUES ('451000', '451022', '田东县', '0776', '531500', 'Y', null, null, null, null, 'Tiandong');
INSERT INTO `sys_district` VALUES ('451000', '451023', '平果县', '0776', '531400', 'Y', null, null, null, null, 'Pingguo');
INSERT INTO `sys_district` VALUES ('451000', '451024', '德保县', '0776', '533700', 'Y', null, null, null, null, 'Debao');
INSERT INTO `sys_district` VALUES ('451000', '451025', '靖西县', '0776', '533800', 'Y', null, null, null, null, 'Jingxi');
INSERT INTO `sys_district` VALUES ('451000', '451026', '那坡县', '0776', '533900', 'Y', null, null, null, null, 'Napo');
INSERT INTO `sys_district` VALUES ('451000', '451027', '凌云县', '0776', '533100', 'Y', null, null, null, null, 'Lingyun');
INSERT INTO `sys_district` VALUES ('451000', '451028', '乐业县', '0776', '533200', 'Y', null, null, null, null, 'Leye');
INSERT INTO `sys_district` VALUES ('451000', '451029', '田林县', '0776', '533300', 'Y', null, null, null, null, 'Tianlin');
INSERT INTO `sys_district` VALUES ('451000', '451030', '西林县', '0776', '533500', 'Y', null, null, null, null, 'Xilin');
INSERT INTO `sys_district` VALUES ('451000', '451031', '隆林各族自治县', '0776', '533400', 'Y', null, null, null, null, 'Longlin');
INSERT INTO `sys_district` VALUES ('451100', '451102', '八步区', '0774', '542800', 'Y', null, null, null, null, 'Babu');
INSERT INTO `sys_district` VALUES ('451100', '451121', '昭平县', '0774', '546800', 'Y', null, null, null, null, 'Zhaoping');
INSERT INTO `sys_district` VALUES ('451100', '451122', '钟山县', '0774', '542600', 'Y', null, null, null, null, 'Zhongshan');
INSERT INTO `sys_district` VALUES ('451100', '451123', '富川瑶族自治县', '0774', '542700', 'Y', null, null, null, null, 'Fuchuan');
INSERT INTO `sys_district` VALUES ('451100', '451124', '平桂管理区', '0774', '542800', 'Y', null, null, null, null, 'Pingui');
INSERT INTO `sys_district` VALUES ('451200', '451202', '金城江区', '0779', '547000', 'Y', null, null, null, null, 'Jinchengjiang');
INSERT INTO `sys_district` VALUES ('451200', '451221', '南丹县', '0781', '547200', 'Y', null, null, null, null, 'Nandan');
INSERT INTO `sys_district` VALUES ('451200', '451222', '天峨县', '0782', '547300', 'Y', null, null, null, null, 'Tiane');
INSERT INTO `sys_district` VALUES ('451200', '451223', '凤山县', '0783', '547600', 'Y', null, null, null, null, 'Fengshan');
INSERT INTO `sys_district` VALUES ('451200', '451224', '东兰县', '0784', '547400', 'Y', null, null, null, null, 'Donglan');
INSERT INTO `sys_district` VALUES ('451200', '451225', '罗城仫佬族自治县', '0785', '546400', 'Y', null, null, null, null, 'Luocheng');
INSERT INTO `sys_district` VALUES ('451200', '451226', '环江毛南族自治县', '0786', '547100', 'Y', null, null, null, null, 'Huanjiang');
INSERT INTO `sys_district` VALUES ('451200', '451227', '巴马瑶族自治县', '0787', '547500', 'Y', null, null, null, null, 'Bama');
INSERT INTO `sys_district` VALUES ('451200', '451228', '都安瑶族自治县', '0788', '530700', 'Y', null, null, null, null, 'Du\'an');
INSERT INTO `sys_district` VALUES ('451200', '451229', '大化瑶族自治县', '0789', '530800', 'Y', null, null, null, null, 'Dahua');
INSERT INTO `sys_district` VALUES ('451200', '451281', '宜州市', '0780', '546300', 'Y', null, null, null, null, 'Yizhou');
INSERT INTO `sys_district` VALUES ('451300', '451302', '兴宾区', '0772', '546100', 'Y', null, null, null, null, 'Xingbin');
INSERT INTO `sys_district` VALUES ('451300', '451321', '忻城县', '0772', '546200', 'Y', null, null, null, null, 'Xincheng');
INSERT INTO `sys_district` VALUES ('451300', '451322', '象州县', '0772', '545800', 'Y', null, null, null, null, 'Xiangzhou');
INSERT INTO `sys_district` VALUES ('451300', '451323', '武宣县', '0772', '545900', 'Y', null, null, null, null, 'Wuxuan');
INSERT INTO `sys_district` VALUES ('451300', '451324', '金秀瑶族自治县', '0772', '545799', 'Y', null, null, null, null, 'Jinxiu');
INSERT INTO `sys_district` VALUES ('451300', '451381', '合山市', '0772', '546500', 'Y', null, null, null, null, 'Heshan');
INSERT INTO `sys_district` VALUES ('451400', '451402', '江州区', '0771', '532299', 'Y', null, null, null, null, 'Jiangzhou');
INSERT INTO `sys_district` VALUES ('451400', '451421', '扶绥县', '0771', '532199', 'Y', null, null, null, null, 'Fusui');
INSERT INTO `sys_district` VALUES ('451400', '451422', '宁明县', '0771', '532599', 'Y', null, null, null, null, 'Ningming');
INSERT INTO `sys_district` VALUES ('451400', '451423', '龙州县', '0771', '532499', 'Y', null, null, null, null, 'Longzhou');
INSERT INTO `sys_district` VALUES ('451400', '451424', '大新县', '0771', '532399', 'Y', null, null, null, null, 'Daxin');
INSERT INTO `sys_district` VALUES ('451400', '451425', '天等县', '0771', '532899', 'Y', null, null, null, null, 'Tiandeng');
INSERT INTO `sys_district` VALUES ('451400', '451481', '凭祥市', '0771', '532699', 'Y', null, null, null, null, 'Pingxiang');
INSERT INTO `sys_district` VALUES ('460100', '460105', '秀英区', '0898', '570311', 'Y', null, null, null, null, 'Xiuying');
INSERT INTO `sys_district` VALUES ('460100', '460106', '龙华区', '0898', '570145', 'Y', null, null, null, null, 'Longhua');
INSERT INTO `sys_district` VALUES ('460100', '460107', '琼山区', '0898', '571100', 'Y', null, null, null, null, 'Qiongshan');
INSERT INTO `sys_district` VALUES ('460100', '460108', '美兰区', '0898', '570203', 'Y', null, null, null, null, 'Meilan');
INSERT INTO `sys_district` VALUES ('460200', '460202', '海棠区', '0898', '572000', 'Y', null, null, null, null, 'Haitang');
INSERT INTO `sys_district` VALUES ('460200', '460203', '吉阳区', '0898', '572000', 'Y', null, null, null, null, 'Jiyang');
INSERT INTO `sys_district` VALUES ('460200', '460204', '天涯区', '0898', '572000', 'Y', null, null, null, null, 'Tianya');
INSERT INTO `sys_district` VALUES ('460200', '460205', '崖州区', '0898', '572000', 'Y', null, null, null, null, 'Yazhou');
INSERT INTO `sys_district` VALUES ('460300', '460321', '西沙群岛', '0898', '572000', 'Y', null, null, null, null, 'Xisha Islands');
INSERT INTO `sys_district` VALUES ('460300', '460322', '南沙群岛', '0898', '573100', 'Y', null, null, null, null, 'Nansha Islands');
INSERT INTO `sys_district` VALUES ('460300', '460323', '中沙群岛', '0898', '573100', 'Y', null, null, null, null, 'Zhongsha Islands');
INSERT INTO `sys_district` VALUES ('469000', '469001', '五指山市', '0898', '572200', 'Y', null, null, null, null, 'Wuzhishan');
INSERT INTO `sys_district` VALUES ('469000', '469002', '琼海市', '0898', '571400', 'Y', null, null, null, null, 'Qionghai');
INSERT INTO `sys_district` VALUES ('469000', '469003', '儋州市', '0898', '571700', 'Y', null, null, null, null, 'Danzhou');
INSERT INTO `sys_district` VALUES ('469000', '469005', '文昌市', '0898', '571339', 'Y', null, null, null, null, 'Wenchang');
INSERT INTO `sys_district` VALUES ('469000', '469006', '万宁市', '0898', '571500', 'Y', null, null, null, null, 'Wanning');
INSERT INTO `sys_district` VALUES ('469000', '469007', '东方市', '0898', '572600', 'Y', null, null, null, null, 'Dongfang');
INSERT INTO `sys_district` VALUES ('469000', '469021', '定安县', '0898', '571200', 'Y', null, null, null, null, 'Ding\'an');
INSERT INTO `sys_district` VALUES ('469000', '469022', '屯昌县', '0898', '571600', 'Y', null, null, null, null, 'Tunchang');
INSERT INTO `sys_district` VALUES ('469000', '469023', '澄迈县', '0898', '571900', 'Y', null, null, null, null, 'Chengmai');
INSERT INTO `sys_district` VALUES ('469000', '469024', '临高县', '0898', '571800', 'Y', null, null, null, null, 'Lingao');
INSERT INTO `sys_district` VALUES ('469000', '469025', '白沙黎族自治县', '0898', '572800', 'Y', null, null, null, null, 'Baisha');
INSERT INTO `sys_district` VALUES ('469000', '469026', '昌江黎族自治县', '0898', '572700', 'Y', null, null, null, null, 'Changjiang');
INSERT INTO `sys_district` VALUES ('469000', '469027', '乐东黎族自治县', '0898', '572500', 'Y', null, null, null, null, 'Ledong');
INSERT INTO `sys_district` VALUES ('469000', '469028', '陵水黎族自治县', '0898', '572400', 'Y', null, null, null, null, 'Lingshui');
INSERT INTO `sys_district` VALUES ('469000', '469029', '保亭黎族苗族自治县', '0898', '572300', 'Y', null, null, null, null, 'Baoting');
INSERT INTO `sys_district` VALUES ('469000', '469030', '琼中黎族苗族自治县', '0898', '572900', 'Y', null, null, null, null, 'Qiongzhong');
INSERT INTO `sys_district` VALUES ('500100', '500101', '万州区', '023', '404000', 'Y', null, null, null, null, 'Wanzhou');
INSERT INTO `sys_district` VALUES ('500100', '500102', '涪陵区', '023', '408000', 'Y', null, null, null, null, 'Fuling');
INSERT INTO `sys_district` VALUES ('500100', '500103', '渝中区', '023', '400010', 'Y', null, null, null, null, 'Yuzhong');
INSERT INTO `sys_district` VALUES ('500100', '500104', '大渡口区', '023', '400080', 'Y', null, null, null, null, 'Dadukou');
INSERT INTO `sys_district` VALUES ('500100', '500105', '江北区', '023', '400020', 'Y', null, null, null, null, 'Jiangbei');
INSERT INTO `sys_district` VALUES ('500100', '500106', '沙坪坝区', '023', '400030', 'Y', null, null, null, null, 'Shapingba');
INSERT INTO `sys_district` VALUES ('500100', '500107', '九龙坡区', '023', '400050', 'Y', null, null, null, null, 'Jiulongpo');
INSERT INTO `sys_district` VALUES ('500100', '500108', '南岸区', '023', '400064', 'Y', null, null, null, null, 'Nan\'an');
INSERT INTO `sys_district` VALUES ('500100', '500109', '北碚区', '023', '400700', 'Y', null, null, null, null, 'Beibei');
INSERT INTO `sys_district` VALUES ('500100', '500110', '綦江区', '023', '400800', 'Y', null, null, null, null, 'Qijiang');
INSERT INTO `sys_district` VALUES ('500100', '500111', '大足区', '023', '400900', 'Y', null, null, null, null, 'Dazu');
INSERT INTO `sys_district` VALUES ('500100', '500112', '渝北区', '023', '401120', 'Y', null, null, null, null, 'Yubei');
INSERT INTO `sys_district` VALUES ('500100', '500113', '巴南区', '023', '401320', 'Y', null, null, null, null, 'Banan');
INSERT INTO `sys_district` VALUES ('500100', '500114', '黔江区', '023', '409700', 'Y', null, null, null, null, 'Qianjiang');
INSERT INTO `sys_district` VALUES ('500100', '500115', '长寿区', '023', '401220', 'Y', null, null, null, null, 'Changshou');
INSERT INTO `sys_district` VALUES ('500100', '500116', '江津区', '023', '402260', 'Y', null, null, null, null, 'Jiangjin');
INSERT INTO `sys_district` VALUES ('500100', '500117', '合川区', '023', '401520', 'Y', null, null, null, null, 'Hechuan');
INSERT INTO `sys_district` VALUES ('500100', '500118', '永川区', '023', '402160', 'Y', null, null, null, null, 'Yongchuan');
INSERT INTO `sys_district` VALUES ('500100', '500119', '南川区', '023', '408400', 'Y', null, null, null, null, 'Nanchuan');
INSERT INTO `sys_district` VALUES ('500100', '500120', '璧山区', '023', '402760', 'Y', null, null, null, null, 'Bishan');
INSERT INTO `sys_district` VALUES ('500100', '500151', '铜梁区', '023', '402560', 'Y', null, null, null, null, 'Tongliang');
INSERT INTO `sys_district` VALUES ('500100', '500223', '潼南县', '023', '402660', 'Y', null, null, null, null, 'Tongnan');
INSERT INTO `sys_district` VALUES ('500100', '500226', '荣昌县', '023', '402460', 'Y', null, null, null, null, 'Rongchang');
INSERT INTO `sys_district` VALUES ('500100', '500228', '梁平县', '023', '405200', 'Y', null, null, null, null, 'Liangping');
INSERT INTO `sys_district` VALUES ('500100', '500229', '城口县', '023', '405900', 'Y', null, null, null, null, 'Chengkou');
INSERT INTO `sys_district` VALUES ('500100', '500230', '丰都县', '023', '408200', 'Y', null, null, null, null, 'Fengdu');
INSERT INTO `sys_district` VALUES ('500100', '500231', '垫江县', '023', '408300', 'Y', null, null, null, null, 'Dianjiang');
INSERT INTO `sys_district` VALUES ('500100', '500232', '武隆县', '023', '408500', 'Y', null, null, null, null, 'Wulong');
INSERT INTO `sys_district` VALUES ('500100', '500233', '忠县', '023', '404300', 'Y', null, null, null, null, 'Zhongxian');
INSERT INTO `sys_district` VALUES ('500100', '500234', '开县', '023', '405400', 'Y', null, null, null, null, 'Kaixian');
INSERT INTO `sys_district` VALUES ('500100', '500235', '云阳县', '023', '404500', 'Y', null, null, null, null, 'Yunyang');
INSERT INTO `sys_district` VALUES ('500100', '500236', '奉节县', '023', '404600', 'Y', null, null, null, null, 'Fengjie');
INSERT INTO `sys_district` VALUES ('500100', '500237', '巫山县', '023', '404700', 'Y', null, null, null, null, 'Wushan');
INSERT INTO `sys_district` VALUES ('500100', '500238', '巫溪县', '023', '405800', 'Y', null, null, null, null, 'Wuxi');
INSERT INTO `sys_district` VALUES ('500100', '500240', '石柱土家族自治县', '023', '409100', 'Y', null, null, null, null, 'Shizhu');
INSERT INTO `sys_district` VALUES ('500100', '500241', '秀山土家族苗族自治县', '023', '409900', 'Y', null, null, null, null, 'Xiushan');
INSERT INTO `sys_district` VALUES ('500100', '500242', '酉阳土家族苗族自治县', '023', '409800', 'Y', null, null, null, null, 'Youyang');
INSERT INTO `sys_district` VALUES ('500100', '500243', '彭水苗族土家族自治县', '023', '409600', 'Y', null, null, null, null, 'Pengshui');
INSERT INTO `sys_district` VALUES ('500300', '500301', '北部新区', '023', '400000', 'Y', null, null, null, null, 'Beibuxinqu');
INSERT INTO `sys_district` VALUES ('500300', '500302', '保税港区', '023', '400000', 'Y', null, null, null, null, 'Baoshuigangqu');
INSERT INTO `sys_district` VALUES ('500300', '500303', '工业园区', '023', '400000', 'Y', null, null, null, null, 'Gongyeyuanqu');
INSERT INTO `sys_district` VALUES ('510100', '510104', '锦江区', '028', '610021', 'Y', null, null, null, null, 'Jinjiang');
INSERT INTO `sys_district` VALUES ('510100', '510105', '青羊区', '028', '610031', 'Y', null, null, null, null, 'Qingyang');
INSERT INTO `sys_district` VALUES ('510100', '510106', '金牛区', '028', '610036', 'Y', null, null, null, null, 'Jinniu');
INSERT INTO `sys_district` VALUES ('510100', '510107', '武侯区', '028', '610041', 'Y', null, null, null, null, 'Wuhou');
INSERT INTO `sys_district` VALUES ('510100', '510108', '成华区', '028', '610066', 'Y', null, null, null, null, 'Chenghua');
INSERT INTO `sys_district` VALUES ('510100', '510112', '龙泉驿区', '028', '610100', 'Y', null, null, null, null, 'Longquanyi');
INSERT INTO `sys_district` VALUES ('510100', '510113', '青白江区', '028', '610300', 'Y', null, null, null, null, 'Qingbaijiang');
INSERT INTO `sys_district` VALUES ('510100', '510114', '新都区', '028', '610500', 'Y', null, null, null, null, 'Xindu');
INSERT INTO `sys_district` VALUES ('510100', '510115', '温江区', '028', '611130', 'Y', null, null, null, null, 'Wenjiang');
INSERT INTO `sys_district` VALUES ('510100', '510121', '金堂县', '028', '610400', 'Y', null, null, null, null, 'Jintang');
INSERT INTO `sys_district` VALUES ('510100', '510122', '双流县', '028', '610200', 'Y', null, null, null, null, 'Shuangliu');
INSERT INTO `sys_district` VALUES ('510100', '510124', '郫县', '028', '611730', 'Y', null, null, null, null, 'Pixian');
INSERT INTO `sys_district` VALUES ('510100', '510129', '大邑县', '028', '611330', 'Y', null, null, null, null, 'Dayi');
INSERT INTO `sys_district` VALUES ('510100', '510131', '蒲江县', '028', '611630', 'Y', null, null, null, null, 'Pujiang');
INSERT INTO `sys_district` VALUES ('510100', '510132', '新津县', '028', '611430', 'Y', null, null, null, null, 'Xinjin');
INSERT INTO `sys_district` VALUES ('510100', '510181', '都江堰市', '028', '611830', 'Y', null, null, null, null, 'Dujiangyan');
INSERT INTO `sys_district` VALUES ('510100', '510182', '彭州市', '028', '611930', 'Y', null, null, null, null, 'Pengzhou');
INSERT INTO `sys_district` VALUES ('510100', '510183', '邛崃市', '028', '611530', 'Y', null, null, null, null, 'Qionglai');
INSERT INTO `sys_district` VALUES ('510100', '510184', '崇州市', '028', '611230', 'Y', null, null, null, null, 'Chongzhou');
INSERT INTO `sys_district` VALUES ('510300', '510302', '自流井区', '0813', '643000', 'Y', null, null, null, null, 'Ziliujing');
INSERT INTO `sys_district` VALUES ('510300', '510303', '贡井区', '0813', '643020', 'Y', null, null, null, null, 'Gongjing');
INSERT INTO `sys_district` VALUES ('510300', '510304', '大安区', '0813', '643010', 'Y', null, null, null, null, 'Da\'an');
INSERT INTO `sys_district` VALUES ('510300', '510311', '沿滩区', '0813', '643030', 'Y', null, null, null, null, 'Yantan');
INSERT INTO `sys_district` VALUES ('510300', '510321', '荣县', '0813', '643100', 'Y', null, null, null, null, 'Rongxian');
INSERT INTO `sys_district` VALUES ('510300', '510322', '富顺县', '0813', '643200', 'Y', null, null, null, null, 'Fushun');
INSERT INTO `sys_district` VALUES ('510400', '510402', '东区', '0812', '617067', 'Y', null, null, null, null, 'Dongqu');
INSERT INTO `sys_district` VALUES ('510400', '510403', '西区', '0812', '617068', 'Y', null, null, null, null, 'Xiqu');
INSERT INTO `sys_district` VALUES ('510400', '510411', '仁和区', '0812', '617061', 'Y', null, null, null, null, 'Renhe');
INSERT INTO `sys_district` VALUES ('510400', '510421', '米易县', '0812', '617200', 'Y', null, null, null, null, 'Miyi');
INSERT INTO `sys_district` VALUES ('510400', '510422', '盐边县', '0812', '617100', 'Y', null, null, null, null, 'Yanbian');
INSERT INTO `sys_district` VALUES ('510500', '510502', '江阳区', '0830', '646000', 'Y', null, null, null, null, 'Jiangyang');
INSERT INTO `sys_district` VALUES ('510500', '510503', '纳溪区', '0830', '646300', 'Y', null, null, null, null, 'Naxi');
INSERT INTO `sys_district` VALUES ('510500', '510504', '龙马潭区', '0830', '646000', 'Y', null, null, null, null, 'Longmatan');
INSERT INTO `sys_district` VALUES ('510500', '510521', '泸县', '0830', '646106', 'Y', null, null, null, null, 'Luxian');
INSERT INTO `sys_district` VALUES ('510500', '510522', '合江县', '0830', '646200', 'Y', null, null, null, null, 'Hejiang');
INSERT INTO `sys_district` VALUES ('510500', '510524', '叙永县', '0830', '646400', 'Y', null, null, null, null, 'Xuyong');
INSERT INTO `sys_district` VALUES ('510500', '510525', '古蔺县', '0830', '646500', 'Y', null, null, null, null, 'Gulin');
INSERT INTO `sys_district` VALUES ('510600', '510603', '旌阳区', '0838', '618000', 'Y', null, null, null, null, 'Jingyang');
INSERT INTO `sys_district` VALUES ('510600', '510623', '中江县', '0838', '618100', 'Y', null, null, null, null, 'Zhongjiang');
INSERT INTO `sys_district` VALUES ('510600', '510626', '罗江县', '0838', '618500', 'Y', null, null, null, null, 'Luojiang');
INSERT INTO `sys_district` VALUES ('510600', '510681', '广汉市', '0838', '618300', 'Y', null, null, null, null, 'Guanghan');
INSERT INTO `sys_district` VALUES ('510600', '510682', '什邡市', '0838', '618400', 'Y', null, null, null, null, 'Shifang');
INSERT INTO `sys_district` VALUES ('510600', '510683', '绵竹市', '0838', '618200', 'Y', null, null, null, null, 'Mianzhu');
INSERT INTO `sys_district` VALUES ('510700', '510703', '涪城区', '0816', '621000', 'Y', null, null, null, null, 'Fucheng');
INSERT INTO `sys_district` VALUES ('510700', '510704', '游仙区', '0816', '621022', 'Y', null, null, null, null, 'Youxian');
INSERT INTO `sys_district` VALUES ('510700', '510722', '三台县', '0816', '621100', 'Y', null, null, null, null, 'Santai');
INSERT INTO `sys_district` VALUES ('510700', '510723', '盐亭县', '0816', '621600', 'Y', null, null, null, null, 'Yanting');
INSERT INTO `sys_district` VALUES ('510700', '510724', '安县', '0816', '622650', 'Y', null, null, null, null, 'Anxian');
INSERT INTO `sys_district` VALUES ('510700', '510725', '梓潼县', '0816', '622150', 'Y', null, null, null, null, 'Zitong');
INSERT INTO `sys_district` VALUES ('510700', '510726', '北川羌族自治县', '0816', '622750', 'Y', null, null, null, null, 'Beichuan');
INSERT INTO `sys_district` VALUES ('510700', '510727', '平武县', '0816', '622550', 'Y', null, null, null, null, 'Pingwu');
INSERT INTO `sys_district` VALUES ('510700', '510781', '江油市', '0816', '621700', 'Y', null, null, null, null, 'Jiangyou');
INSERT INTO `sys_district` VALUES ('510800', '510802', '利州区', '0839', '628017', 'Y', null, null, null, null, 'Lizhou');
INSERT INTO `sys_district` VALUES ('510800', '510811', '昭化区', '0839', '628017', 'Y', null, null, null, null, 'Zhaohua');
INSERT INTO `sys_district` VALUES ('510800', '510812', '朝天区', '0839', '628017', 'Y', null, null, null, null, 'Chaotian');
INSERT INTO `sys_district` VALUES ('510800', '510821', '旺苍县', '0839', '628200', 'Y', null, null, null, null, 'Wangcang');
INSERT INTO `sys_district` VALUES ('510800', '510822', '青川县', '0839', '628100', 'Y', null, null, null, null, 'Qingchuan');
INSERT INTO `sys_district` VALUES ('510800', '510823', '剑阁县', '0839', '628300', 'Y', null, null, null, null, 'Jiange');
INSERT INTO `sys_district` VALUES ('510800', '510824', '苍溪县', '0839', '628400', 'Y', null, null, null, null, 'Cangxi');
INSERT INTO `sys_district` VALUES ('510900', '510903', '船山区', '0825', '629000', 'Y', null, null, null, null, 'Chuanshan');
INSERT INTO `sys_district` VALUES ('510900', '510904', '安居区', '0825', '629000', 'Y', null, null, null, null, 'Anju');
INSERT INTO `sys_district` VALUES ('510900', '510921', '蓬溪县', '0825', '629100', 'Y', null, null, null, null, 'Pengxi');
INSERT INTO `sys_district` VALUES ('510900', '510922', '射洪县', '0825', '629200', 'Y', null, null, null, null, 'Shehong');
INSERT INTO `sys_district` VALUES ('510900', '510923', '大英县', '0825', '629300', 'Y', null, null, null, null, 'Daying');
INSERT INTO `sys_district` VALUES ('511000', '511002', '市中区', '0832', '641000', 'Y', null, null, null, null, 'Shizhongqu');
INSERT INTO `sys_district` VALUES ('511000', '511011', '东兴区', '0832', '641100', 'Y', null, null, null, null, 'Dongxing');
INSERT INTO `sys_district` VALUES ('511000', '511024', '威远县', '0832', '642450', 'Y', null, null, null, null, 'Weiyuan');
INSERT INTO `sys_district` VALUES ('511000', '511025', '资中县', '0832', '641200', 'Y', null, null, null, null, 'Zizhong');
INSERT INTO `sys_district` VALUES ('511000', '511028', '隆昌县', '0832', '642150', 'Y', null, null, null, null, 'Longchang');
INSERT INTO `sys_district` VALUES ('511100', '511102', '市中区', '0833', '614000', 'Y', null, null, null, null, 'Shizhongqu');
INSERT INTO `sys_district` VALUES ('511100', '511111', '沙湾区', '0833', '614900', 'Y', null, null, null, null, 'Shawan');
INSERT INTO `sys_district` VALUES ('511100', '511112', '五通桥区', '0833', '614800', 'Y', null, null, null, null, 'Wutongqiao');
INSERT INTO `sys_district` VALUES ('511100', '511113', '金口河区', '0833', '614700', 'Y', null, null, null, null, 'Jinkouhe');
INSERT INTO `sys_district` VALUES ('511100', '511123', '犍为县', '0833', '614400', 'Y', null, null, null, null, 'Qianwei');
INSERT INTO `sys_district` VALUES ('511100', '511124', '井研县', '0833', '613100', 'Y', null, null, null, null, 'Jingyan');
INSERT INTO `sys_district` VALUES ('511100', '511126', '夹江县', '0833', '614100', 'Y', null, null, null, null, 'Jiajiang');
INSERT INTO `sys_district` VALUES ('511100', '511129', '沐川县', '0833', '614500', 'Y', null, null, null, null, 'Muchuan');
INSERT INTO `sys_district` VALUES ('511100', '511132', '峨边彝族自治县', '0833', '614300', 'Y', null, null, null, null, 'Ebian');
INSERT INTO `sys_district` VALUES ('511100', '511133', '马边彝族自治县', '0833', '614600', 'Y', null, null, null, null, 'Mabian');
INSERT INTO `sys_district` VALUES ('511100', '511181', '峨眉山市', '0833', '614200', 'Y', null, null, null, null, 'Emeishan');
INSERT INTO `sys_district` VALUES ('511300', '511302', '顺庆区', '0817', '637000', 'Y', null, null, null, null, 'Shunqing');
INSERT INTO `sys_district` VALUES ('511300', '511303', '高坪区', '0817', '637100', 'Y', null, null, null, null, 'Gaoping');
INSERT INTO `sys_district` VALUES ('511300', '511304', '嘉陵区', '0817', '637100', 'Y', null, null, null, null, 'Jialing');
INSERT INTO `sys_district` VALUES ('511300', '511321', '南部县', '0817', '637300', 'Y', null, null, null, null, 'Nanbu');
INSERT INTO `sys_district` VALUES ('511300', '511322', '营山县', '0817', '637700', 'Y', null, null, null, null, 'Yingshan');
INSERT INTO `sys_district` VALUES ('511300', '511323', '蓬安县', '0817', '637800', 'Y', null, null, null, null, 'Peng\'an');
INSERT INTO `sys_district` VALUES ('511300', '511324', '仪陇县', '0817', '637600', 'Y', null, null, null, null, 'Yilong');
INSERT INTO `sys_district` VALUES ('511300', '511325', '西充县', '0817', '637200', 'Y', null, null, null, null, 'Xichong');
INSERT INTO `sys_district` VALUES ('511300', '511381', '阆中市', '0817', '637400', 'Y', null, null, null, null, 'Langzhong');
INSERT INTO `sys_district` VALUES ('511400', '511402', '东坡区', '028', '620010', 'Y', null, null, null, null, 'Dongpo');
INSERT INTO `sys_district` VALUES ('511400', '511403', '彭山区', '028', '620860', 'Y', null, null, null, null, 'Pengshan');
INSERT INTO `sys_district` VALUES ('511400', '511421', '仁寿县', '028', '620500', 'Y', null, null, null, null, 'Renshou');
INSERT INTO `sys_district` VALUES ('511400', '511423', '洪雅县', '028', '620360', 'Y', null, null, null, null, 'Hongya');
INSERT INTO `sys_district` VALUES ('511400', '511424', '丹棱县', '028', '620200', 'Y', null, null, null, null, 'Danling');
INSERT INTO `sys_district` VALUES ('511400', '511425', '青神县', '028', '620460', 'Y', null, null, null, null, 'Qingshen');
INSERT INTO `sys_district` VALUES ('511500', '511502', '翠屏区', '0831', '644000', 'Y', null, null, null, null, 'Cuiping');
INSERT INTO `sys_district` VALUES ('511500', '511503', '南溪区', '0831', '644100', 'Y', null, null, null, null, 'Nanxi');
INSERT INTO `sys_district` VALUES ('511500', '511521', '宜宾县', '0831', '644600', 'Y', null, null, null, null, 'Yibin');
INSERT INTO `sys_district` VALUES ('511500', '511523', '江安县', '0831', '644200', 'Y', null, null, null, null, 'Jiang\'an');
INSERT INTO `sys_district` VALUES ('511500', '511524', '长宁县', '0831', '644300', 'Y', null, null, null, null, 'Changning');
INSERT INTO `sys_district` VALUES ('511500', '511525', '高县', '0831', '645150', 'Y', null, null, null, null, 'Gaoxian');
INSERT INTO `sys_district` VALUES ('511500', '511526', '珙县', '0831', '644500', 'Y', null, null, null, null, 'Gongxian');
INSERT INTO `sys_district` VALUES ('511500', '511527', '筠连县', '0831', '645250', 'Y', null, null, null, null, 'Junlian');
INSERT INTO `sys_district` VALUES ('511500', '511528', '兴文县', '0831', '644400', 'Y', null, null, null, null, 'Xingwen');
INSERT INTO `sys_district` VALUES ('511500', '511529', '屏山县', '0831', '645350', 'Y', null, null, null, null, 'Pingshan');
INSERT INTO `sys_district` VALUES ('511600', '511602', '广安区', '0826', '638000', 'Y', null, null, null, null, 'Guang\'an');
INSERT INTO `sys_district` VALUES ('511600', '511603', '前锋区', '0826', '638019', 'Y', null, null, null, null, 'Qianfeng');
INSERT INTO `sys_district` VALUES ('511600', '511621', '岳池县', '0826', '638300', 'Y', null, null, null, null, 'Yuechi');
INSERT INTO `sys_district` VALUES ('511600', '511622', '武胜县', '0826', '638400', 'Y', null, null, null, null, 'Wusheng');
INSERT INTO `sys_district` VALUES ('511600', '511623', '邻水县', '0826', '638500', 'Y', null, null, null, null, 'Linshui');
INSERT INTO `sys_district` VALUES ('511600', '511681', '华蓥市', '0826', '638600', 'Y', null, null, null, null, 'Huaying');
INSERT INTO `sys_district` VALUES ('511700', '511702', '通川区', '0818', '635000', 'Y', null, null, null, null, 'Tongchuan');
INSERT INTO `sys_district` VALUES ('511700', '511703', '达川区', '0818', '635000', 'Y', null, null, null, null, 'Dachuan');
INSERT INTO `sys_district` VALUES ('511700', '511722', '宣汉县', '0818', '636150', 'Y', null, null, null, null, 'Xuanhan');
INSERT INTO `sys_district` VALUES ('511700', '511723', '开江县', '0818', '636250', 'Y', null, null, null, null, 'Kaijiang');
INSERT INTO `sys_district` VALUES ('511700', '511724', '大竹县', '0818', '635100', 'Y', null, null, null, null, 'Dazhu');
INSERT INTO `sys_district` VALUES ('511700', '511725', '渠县', '0818', '635200', 'Y', null, null, null, null, 'Quxian');
INSERT INTO `sys_district` VALUES ('511700', '511781', '万源市', '0818', '636350', 'Y', null, null, null, null, 'Wanyuan');
INSERT INTO `sys_district` VALUES ('511800', '511802', '雨城区', '0835', '625000', 'Y', null, null, null, null, 'Yucheng');
INSERT INTO `sys_district` VALUES ('511800', '511803', '名山区', '0835', '625100', 'Y', null, null, null, null, 'Mingshan');
INSERT INTO `sys_district` VALUES ('511800', '511822', '荥经县', '0835', '625200', 'Y', null, null, null, null, 'Yingjing');
INSERT INTO `sys_district` VALUES ('511800', '511823', '汉源县', '0835', '625300', 'Y', null, null, null, null, 'Hanyuan');
INSERT INTO `sys_district` VALUES ('511800', '511824', '石棉县', '0835', '625400', 'Y', null, null, null, null, 'Shimian');
INSERT INTO `sys_district` VALUES ('511800', '511825', '天全县', '0835', '625500', 'Y', null, null, null, null, 'Tianquan');
INSERT INTO `sys_district` VALUES ('511800', '511826', '芦山县', '0835', '625600', 'Y', null, null, null, null, 'Lushan');
INSERT INTO `sys_district` VALUES ('511800', '511827', '宝兴县', '0835', '625700', 'Y', null, null, null, null, 'Baoxing');
INSERT INTO `sys_district` VALUES ('511900', '511902', '巴州区', '0827', '636001', 'Y', null, null, null, null, 'Bazhou');
INSERT INTO `sys_district` VALUES ('511900', '511903', '恩阳区', '0827', '636064', 'Y', null, null, null, null, 'Enyang');
INSERT INTO `sys_district` VALUES ('511900', '511921', '通江县', '0827', '636700', 'Y', null, null, null, null, 'Tongjiang');
INSERT INTO `sys_district` VALUES ('511900', '511922', '南江县', '0827', '636600', 'Y', null, null, null, null, 'Nanjiang');
INSERT INTO `sys_district` VALUES ('511900', '511923', '平昌县', '0827', '636400', 'Y', null, null, null, null, 'Pingchang');
INSERT INTO `sys_district` VALUES ('512000', '512002', '雁江区', '028', '641300', 'Y', null, null, null, null, 'Yanjiang');
INSERT INTO `sys_district` VALUES ('512000', '512021', '安岳县', '028', '642350', 'Y', null, null, null, null, 'Anyue');
INSERT INTO `sys_district` VALUES ('512000', '512022', '乐至县', '028', '641500', 'Y', null, null, null, null, 'Lezhi');
INSERT INTO `sys_district` VALUES ('512000', '512081', '简阳市', '028', '641400', 'Y', null, null, null, null, 'Jianyang');
INSERT INTO `sys_district` VALUES ('513200', '513221', '汶川县', '0837', '623000', 'Y', null, null, null, null, 'Wenchuan');
INSERT INTO `sys_district` VALUES ('513200', '513222', '理县', '0837', '623100', 'Y', null, null, null, null, 'Lixian');
INSERT INTO `sys_district` VALUES ('513200', '513223', '茂县', '0837', '623200', 'Y', null, null, null, null, 'Maoxian');
INSERT INTO `sys_district` VALUES ('513200', '513224', '松潘县', '0837', '623300', 'Y', null, null, null, null, 'Songpan');
INSERT INTO `sys_district` VALUES ('513200', '513225', '九寨沟县', '0837', '623400', 'Y', null, null, null, null, 'Jiuzhaigou');
INSERT INTO `sys_district` VALUES ('513200', '513226', '金川县', '0837', '624100', 'Y', null, null, null, null, 'Jinchuan');
INSERT INTO `sys_district` VALUES ('513200', '513227', '小金县', '0837', '624200', 'Y', null, null, null, null, 'Xiaojin');
INSERT INTO `sys_district` VALUES ('513200', '513228', '黑水县', '0837', '623500', 'Y', null, null, null, null, 'Heishui');
INSERT INTO `sys_district` VALUES ('513200', '513229', '马尔康县', '0837', '624000', 'Y', null, null, null, null, 'Maerkang');
INSERT INTO `sys_district` VALUES ('513200', '513230', '壤塘县', '0837', '624300', 'Y', null, null, null, null, 'Rangtang');
INSERT INTO `sys_district` VALUES ('513200', '513231', '阿坝县', '0837', '624600', 'Y', null, null, null, null, 'Aba');
INSERT INTO `sys_district` VALUES ('513200', '513232', '若尔盖县', '0837', '624500', 'Y', null, null, null, null, 'Ruoergai');
INSERT INTO `sys_district` VALUES ('513200', '513233', '红原县', '0837', '624400', 'Y', null, null, null, null, 'Hongyuan');
INSERT INTO `sys_district` VALUES ('513300', '513321', '康定县', '0836', '626000', 'Y', null, null, null, null, 'Kangding');
INSERT INTO `sys_district` VALUES ('513300', '513322', '泸定县', '0836', '626100', 'Y', null, null, null, null, 'Luding');
INSERT INTO `sys_district` VALUES ('513300', '513323', '丹巴县', '0836', '626300', 'Y', null, null, null, null, 'Danba');
INSERT INTO `sys_district` VALUES ('513300', '513324', '九龙县', '0836', '626200', 'Y', null, null, null, null, 'Jiulong');
INSERT INTO `sys_district` VALUES ('513300', '513325', '雅江县', '0836', '627450', 'Y', null, null, null, null, 'Yajiang');
INSERT INTO `sys_district` VALUES ('513300', '513326', '道孚县', '0836', '626400', 'Y', null, null, null, null, 'Daofu');
INSERT INTO `sys_district` VALUES ('513300', '513327', '炉霍县', '0836', '626500', 'Y', null, null, null, null, 'Luhuo');
INSERT INTO `sys_district` VALUES ('513300', '513328', '甘孜县', '0836', '626700', 'Y', null, null, null, null, 'Ganzi');
INSERT INTO `sys_district` VALUES ('513300', '513329', '新龙县', '0836', '626800', 'Y', null, null, null, null, 'Xinlong');
INSERT INTO `sys_district` VALUES ('513300', '513330', '德格县', '0836', '627250', 'Y', null, null, null, null, 'Dege');
INSERT INTO `sys_district` VALUES ('513300', '513331', '白玉县', '0836', '627150', 'Y', null, null, null, null, 'Baiyu');
INSERT INTO `sys_district` VALUES ('513300', '513332', '石渠县', '0836', '627350', 'Y', null, null, null, null, 'Shiqu');
INSERT INTO `sys_district` VALUES ('513300', '513333', '色达县', '0836', '626600', 'Y', null, null, null, null, 'Seda');
INSERT INTO `sys_district` VALUES ('513300', '513334', '理塘县', '0836', '627550', 'Y', null, null, null, null, 'Litang');
INSERT INTO `sys_district` VALUES ('513300', '513335', '巴塘县', '0836', '627650', 'Y', null, null, null, null, 'Batang');
INSERT INTO `sys_district` VALUES ('513300', '513336', '乡城县', '0836', '627850', 'Y', null, null, null, null, 'Xiangcheng');
INSERT INTO `sys_district` VALUES ('513300', '513337', '稻城县', '0836', '627750', 'Y', null, null, null, null, 'Daocheng');
INSERT INTO `sys_district` VALUES ('513300', '513338', '得荣县', '0836', '627950', 'Y', null, null, null, null, 'Derong');
INSERT INTO `sys_district` VALUES ('513400', '513401', '西昌市', '0835', '615000', 'Y', null, null, null, null, 'Xichang');
INSERT INTO `sys_district` VALUES ('513400', '513422', '木里藏族自治县', '0851', '615800', 'Y', null, null, null, null, 'Muli');
INSERT INTO `sys_district` VALUES ('513400', '513423', '盐源县', '0836', '615700', 'Y', null, null, null, null, 'Yanyuan');
INSERT INTO `sys_district` VALUES ('513400', '513424', '德昌县', '0837', '615500', 'Y', null, null, null, null, 'Dechang');
INSERT INTO `sys_district` VALUES ('513400', '513425', '会理县', '0838', '615100', 'Y', null, null, null, null, 'Huili');
INSERT INTO `sys_district` VALUES ('513400', '513426', '会东县', '0839', '615200', 'Y', null, null, null, null, 'Huidong');
INSERT INTO `sys_district` VALUES ('513400', '513427', '宁南县', '0840', '615400', 'Y', null, null, null, null, 'Ningnan');
INSERT INTO `sys_district` VALUES ('513400', '513428', '普格县', '0841', '615300', 'Y', null, null, null, null, 'Puge');
INSERT INTO `sys_district` VALUES ('513400', '513429', '布拖县', '0842', '616350', 'Y', null, null, null, null, 'Butuo');
INSERT INTO `sys_district` VALUES ('513400', '513430', '金阳县', '0843', '616250', 'Y', null, null, null, null, 'Jinyang');
INSERT INTO `sys_district` VALUES ('513400', '513431', '昭觉县', '0844', '616150', 'Y', null, null, null, null, 'Zhaojue');
INSERT INTO `sys_district` VALUES ('513400', '513432', '喜德县', '0845', '616750', 'Y', null, null, null, null, 'Xide');
INSERT INTO `sys_district` VALUES ('513400', '513433', '冕宁县', '0846', '615600', 'Y', null, null, null, null, 'Mianning');
INSERT INTO `sys_district` VALUES ('513400', '513434', '越西县', '0847', '616650', 'Y', null, null, null, null, 'Yuexi');
INSERT INTO `sys_district` VALUES ('513400', '513435', '甘洛县', '0848', '616850', 'Y', null, null, null, null, 'Ganluo');
INSERT INTO `sys_district` VALUES ('513400', '513436', '美姑县', '0849', '616450', 'Y', null, null, null, null, 'Meigu');
INSERT INTO `sys_district` VALUES ('513400', '513437', '雷波县', '0850', '616550', 'Y', null, null, null, null, 'Leibo');
INSERT INTO `sys_district` VALUES ('520100', '520102', '南明区', '0851', '550001', 'Y', null, null, null, null, 'Nanming');
INSERT INTO `sys_district` VALUES ('520100', '520103', '云岩区', '0851', '550001', 'Y', null, null, null, null, 'Yunyan');
INSERT INTO `sys_district` VALUES ('520100', '520111', '花溪区', '0851', '550025', 'Y', null, null, null, null, 'Huaxi');
INSERT INTO `sys_district` VALUES ('520100', '520112', '乌当区', '0851', '550018', 'Y', null, null, null, null, 'Wudang');
INSERT INTO `sys_district` VALUES ('520100', '520113', '白云区', '0851', '550014', 'Y', null, null, null, null, 'Baiyun');
INSERT INTO `sys_district` VALUES ('520100', '520115', '观山湖区', '0851', '550009', 'Y', null, null, null, null, 'Guanshanhu');
INSERT INTO `sys_district` VALUES ('520100', '520121', '开阳县', '0851', '550300', 'Y', null, null, null, null, 'Kaiyang');
INSERT INTO `sys_district` VALUES ('520100', '520122', '息烽县', '0851', '551100', 'Y', null, null, null, null, 'Xifeng');
INSERT INTO `sys_district` VALUES ('520100', '520123', '修文县', '0851', '550200', 'Y', null, null, null, null, 'Xiuwen');
INSERT INTO `sys_district` VALUES ('520100', '520181', '清镇市', '0851', '551400', 'Y', null, null, null, null, 'Qingzhen');
INSERT INTO `sys_district` VALUES ('520200', '520201', '钟山区', '0858', '553000', 'Y', null, null, null, null, 'Zhongshan');
INSERT INTO `sys_district` VALUES ('520200', '520203', '六枝特区', '0858', '553400', 'Y', null, null, null, null, 'Liuzhi');
INSERT INTO `sys_district` VALUES ('520200', '520221', '水城县', '0858', '553000', 'Y', null, null, null, null, 'Shuicheng');
INSERT INTO `sys_district` VALUES ('520200', '520222', '盘县', '0858', '561601', 'Y', null, null, null, null, 'Panxian');
INSERT INTO `sys_district` VALUES ('520300', '520302', '红花岗区', '0852', '563000', 'Y', null, null, null, null, 'Honghuagang');
INSERT INTO `sys_district` VALUES ('520300', '520303', '汇川区', '0852', '563000', 'Y', null, null, null, null, 'Huichuan');
INSERT INTO `sys_district` VALUES ('520300', '520321', '遵义县', '0852', '563100', 'Y', null, null, null, null, 'Zunyi');
INSERT INTO `sys_district` VALUES ('520300', '520322', '桐梓县', '0852', '563200', 'Y', null, null, null, null, 'Tongzi');
INSERT INTO `sys_district` VALUES ('520300', '520323', '绥阳县', '0852', '563300', 'Y', null, null, null, null, 'Suiyang');
INSERT INTO `sys_district` VALUES ('520300', '520324', '正安县', '0852', '563400', 'Y', null, null, null, null, 'Zheng\'an');
INSERT INTO `sys_district` VALUES ('520300', '520325', '道真仡佬族苗族自治县', '0852', '563500', 'Y', null, null, null, null, 'Daozhen');
INSERT INTO `sys_district` VALUES ('520300', '520326', '务川仡佬族苗族自治县', '0852', '564300', 'Y', null, null, null, null, 'Wuchuan');
INSERT INTO `sys_district` VALUES ('520300', '520327', '凤冈县', '0852', '564200', 'Y', null, null, null, null, 'Fenggang');
INSERT INTO `sys_district` VALUES ('520300', '520328', '湄潭县', '0852', '564100', 'Y', null, null, null, null, 'Meitan');
INSERT INTO `sys_district` VALUES ('520300', '520329', '余庆县', '0852', '564400', 'Y', null, null, null, null, 'Yuqing');
INSERT INTO `sys_district` VALUES ('520300', '520330', '习水县', '0852', '564600', 'Y', null, null, null, null, 'Xishui');
INSERT INTO `sys_district` VALUES ('520300', '520381', '赤水市', '0852', '564700', 'Y', null, null, null, null, 'Chishui');
INSERT INTO `sys_district` VALUES ('520300', '520382', '仁怀市', '0852', '564500', 'Y', null, null, null, null, 'Renhuai');
INSERT INTO `sys_district` VALUES ('520400', '520402', '西秀区', '0853', '561000', 'Y', null, null, null, null, 'Xixiu');
INSERT INTO `sys_district` VALUES ('520400', '520421', '平坝区', '0853', '561100', 'Y', null, null, null, null, 'Pingba');
INSERT INTO `sys_district` VALUES ('520400', '520422', '普定县', '0853', '562100', 'Y', null, null, null, null, 'Puding');
INSERT INTO `sys_district` VALUES ('520400', '520423', '镇宁布依族苗族自治县', '0853', '561200', 'Y', null, null, null, null, 'Zhenning');
INSERT INTO `sys_district` VALUES ('520400', '520424', '关岭布依族苗族自治县', '0853', '561300', 'Y', null, null, null, null, 'Guanling');
INSERT INTO `sys_district` VALUES ('520400', '520425', '紫云苗族布依族自治县', '0853', '550800', 'Y', null, null, null, null, 'Ziyun');
INSERT INTO `sys_district` VALUES ('520500', '520502', '七星关区', '0857', '551700', 'Y', null, null, null, null, 'Qixingguan');
INSERT INTO `sys_district` VALUES ('520500', '520521', '大方县', '0857', '551600', 'Y', null, null, null, null, 'Dafang');
INSERT INTO `sys_district` VALUES ('520500', '520522', '黔西县', '0857', '551500', 'Y', null, null, null, null, 'Qianxi');
INSERT INTO `sys_district` VALUES ('520500', '520523', '金沙县', '0857', '551800', 'Y', null, null, null, null, 'Jinsha');
INSERT INTO `sys_district` VALUES ('520500', '520524', '织金县', '0857', '552100', 'Y', null, null, null, null, 'Zhijin');
INSERT INTO `sys_district` VALUES ('520500', '520525', '纳雍县', '0857', '553300', 'Y', null, null, null, null, 'Nayong');
INSERT INTO `sys_district` VALUES ('520500', '520526', '威宁彝族回族苗族自治县', '0857', '553100', 'Y', null, null, null, null, 'Weining');
INSERT INTO `sys_district` VALUES ('520500', '520527', '赫章县', '0857', '553200', 'Y', null, null, null, null, 'Hezhang');
INSERT INTO `sys_district` VALUES ('520600', '520602', '碧江区', '0856', '554300', 'Y', null, null, null, null, 'Bijiang');
INSERT INTO `sys_district` VALUES ('520600', '520603', '万山区', '0856', '554200', 'Y', null, null, null, null, 'Wanshan');
INSERT INTO `sys_district` VALUES ('520600', '520621', '江口县', '0856', '554400', 'Y', null, null, null, null, 'Jiangkou');
INSERT INTO `sys_district` VALUES ('520600', '520622', '玉屏侗族自治县', '0856', '554004', 'Y', null, null, null, null, 'Yuping');
INSERT INTO `sys_district` VALUES ('520600', '520623', '石阡县', '0856', '555100', 'Y', null, null, null, null, 'Shiqian');
INSERT INTO `sys_district` VALUES ('520600', '520624', '思南县', '0856', '565100', 'Y', null, null, null, null, 'Sinan');
INSERT INTO `sys_district` VALUES ('520600', '520625', '印江土家族苗族自治县', '0856', '555200', 'Y', null, null, null, null, 'Yinjiang');
INSERT INTO `sys_district` VALUES ('520600', '520626', '德江县', '0856', '565200', 'Y', null, null, null, null, 'Dejiang');
INSERT INTO `sys_district` VALUES ('520600', '520627', '沿河土家族自治县', '0856', '565300', 'Y', null, null, null, null, 'Yuanhe');
INSERT INTO `sys_district` VALUES ('520600', '520628', '松桃苗族自治县', '0856', '554100', 'Y', null, null, null, null, 'Songtao');
INSERT INTO `sys_district` VALUES ('522300', '522301', '兴义市 ', '0859', '562400', 'Y', null, null, null, null, 'Xingyi');
INSERT INTO `sys_district` VALUES ('522300', '522322', '兴仁县', '0859', '562300', 'Y', null, null, null, null, 'Xingren');
INSERT INTO `sys_district` VALUES ('522300', '522323', '普安县', '0859', '561500', 'Y', null, null, null, null, 'Pu\'an');
INSERT INTO `sys_district` VALUES ('522300', '522324', '晴隆县', '0859', '561400', 'Y', null, null, null, null, 'Qinglong');
INSERT INTO `sys_district` VALUES ('522300', '522325', '贞丰县', '0859', '562200', 'Y', null, null, null, null, 'Zhenfeng');
INSERT INTO `sys_district` VALUES ('522300', '522326', '望谟县', '0859', '552300', 'Y', null, null, null, null, 'Wangmo');
INSERT INTO `sys_district` VALUES ('522300', '522327', '册亨县', '0859', '552200', 'Y', null, null, null, null, 'Ceheng');
INSERT INTO `sys_district` VALUES ('522300', '522328', '安龙县', '0859', '552400', 'Y', null, null, null, null, 'Anlong');
INSERT INTO `sys_district` VALUES ('522600', '522601', '凯里市', '0855', '556000', 'Y', null, null, null, null, 'Kaili');
INSERT INTO `sys_district` VALUES ('522600', '522622', '黄平县', '0855', '556100', 'Y', null, null, null, null, 'Huangping');
INSERT INTO `sys_district` VALUES ('522600', '522623', '施秉县', '0855', '556200', 'Y', null, null, null, null, 'Shibing');
INSERT INTO `sys_district` VALUES ('522600', '522624', '三穗县', '0855', '556500', 'Y', null, null, null, null, 'Sansui');
INSERT INTO `sys_district` VALUES ('522600', '522625', '镇远县', '0855', '557700', 'Y', null, null, null, null, 'Zhenyuan');
INSERT INTO `sys_district` VALUES ('522600', '522626', '岑巩县', '0855', '557800', 'Y', null, null, null, null, 'Cengong');
INSERT INTO `sys_district` VALUES ('522600', '522627', '天柱县', '0855', '556600', 'Y', null, null, null, null, 'Tianzhu');
INSERT INTO `sys_district` VALUES ('522600', '522628', '锦屏县', '0855', '556700', 'Y', null, null, null, null, 'Jinping');
INSERT INTO `sys_district` VALUES ('522600', '522629', '剑河县', '0855', '556400', 'Y', null, null, null, null, 'Jianhe');
INSERT INTO `sys_district` VALUES ('522600', '522630', '台江县', '0855', '556300', 'Y', null, null, null, null, 'Taijiang');
INSERT INTO `sys_district` VALUES ('522600', '522631', '黎平县', '0855', '557300', 'Y', null, null, null, null, 'Liping');
INSERT INTO `sys_district` VALUES ('522600', '522632', '榕江县', '0855', '557200', 'Y', null, null, null, null, 'Rongjiang');
INSERT INTO `sys_district` VALUES ('522600', '522633', '从江县', '0855', '557400', 'Y', null, null, null, null, 'Congjiang');
INSERT INTO `sys_district` VALUES ('522600', '522634', '雷山县', '0855', '557100', 'Y', null, null, null, null, 'Leishan');
INSERT INTO `sys_district` VALUES ('522600', '522635', '麻江县', '0855', '557600', 'Y', null, null, null, null, 'Majiang');
INSERT INTO `sys_district` VALUES ('522600', '522636', '丹寨县', '0855', '557500', 'Y', null, null, null, null, 'Danzhai');
INSERT INTO `sys_district` VALUES ('522700', '522701', '都匀市', '0854', '558000', 'Y', null, null, null, null, 'Duyun');
INSERT INTO `sys_district` VALUES ('522700', '522702', '福泉市', '0854', '550500', 'Y', null, null, null, null, 'Fuquan');
INSERT INTO `sys_district` VALUES ('522700', '522722', '荔波县', '0854', '558400', 'Y', null, null, null, null, 'Libo');
INSERT INTO `sys_district` VALUES ('522700', '522723', '贵定县', '0854', '551300', 'Y', null, null, null, null, 'Guiding');
INSERT INTO `sys_district` VALUES ('522700', '522725', '瓮安县', '0854', '550400', 'Y', null, null, null, null, 'Weng\'an');
INSERT INTO `sys_district` VALUES ('522700', '522726', '独山县', '0854', '558200', 'Y', null, null, null, null, 'Dushan');
INSERT INTO `sys_district` VALUES ('522700', '522727', '平塘县', '0854', '558300', 'Y', null, null, null, null, 'Pingtang');
INSERT INTO `sys_district` VALUES ('522700', '522728', '罗甸县', '0854', '550100', 'Y', null, null, null, null, 'Luodian');
INSERT INTO `sys_district` VALUES ('522700', '522729', '长顺县', '0854', '550700', 'Y', null, null, null, null, 'Changshun');
INSERT INTO `sys_district` VALUES ('522700', '522730', '龙里县', '0854', '551200', 'Y', null, null, null, null, 'Longli');
INSERT INTO `sys_district` VALUES ('522700', '522731', '惠水县', '0854', '550600', 'Y', null, null, null, null, 'Huishui');
INSERT INTO `sys_district` VALUES ('522700', '522732', '三都水族自治县', '0854', '558100', 'Y', null, null, null, null, 'Sandu');
INSERT INTO `sys_district` VALUES ('530100', '530102', '五华区', '0871', '650021', 'Y', null, null, null, null, 'Wuhua');
INSERT INTO `sys_district` VALUES ('530100', '530103', '盘龙区', '0871', '650051', 'Y', null, null, null, null, 'Panlong');
INSERT INTO `sys_district` VALUES ('530100', '530111', '官渡区', '0871', '650200', 'Y', null, null, null, null, 'Guandu');
INSERT INTO `sys_district` VALUES ('530100', '530112', '西山区', '0871', '650118', 'Y', null, null, null, null, 'Xishan');
INSERT INTO `sys_district` VALUES ('530100', '530113', '东川区', '0871', '654100', 'Y', null, null, null, null, 'Dongchuan');
INSERT INTO `sys_district` VALUES ('530100', '530114', '呈贡区', '0871', '650500', 'Y', null, null, null, null, 'Chenggong');
INSERT INTO `sys_district` VALUES ('530100', '530122', '晋宁县', '0871', '650600', 'Y', null, null, null, null, 'Jinning');
INSERT INTO `sys_district` VALUES ('530100', '530124', '富民县', '0871', '650400', 'Y', null, null, null, null, 'Fumin');
INSERT INTO `sys_district` VALUES ('530100', '530125', '宜良县', '0871', '652100', 'Y', null, null, null, null, 'Yiliang');
INSERT INTO `sys_district` VALUES ('530100', '530126', '石林彝族自治县', '0871', '652200', 'Y', null, null, null, null, 'Shilin');
INSERT INTO `sys_district` VALUES ('530100', '530127', '嵩明县', '0871', '651700', 'Y', null, null, null, null, 'Songming');
INSERT INTO `sys_district` VALUES ('530100', '530128', '禄劝彝族苗族自治县', '0871', '651500', 'Y', null, null, null, null, 'Luquan');
INSERT INTO `sys_district` VALUES ('530100', '530129', '寻甸回族彝族自治县 ', '0871', '655200', 'Y', null, null, null, null, 'Xundian');
INSERT INTO `sys_district` VALUES ('530100', '530181', '安宁市', '0871', '650300', 'Y', null, null, null, null, 'Anning');
INSERT INTO `sys_district` VALUES ('530300', '530302', '麒麟区', '0874', '655000', 'Y', null, null, null, null, 'Qilin');
INSERT INTO `sys_district` VALUES ('530300', '530321', '马龙县', '0874', '655100', 'Y', null, null, null, null, 'Malong');
INSERT INTO `sys_district` VALUES ('530300', '530322', '陆良县', '0874', '655600', 'Y', null, null, null, null, 'Luliang');
INSERT INTO `sys_district` VALUES ('530300', '530323', '师宗县', '0874', '655700', 'Y', null, null, null, null, 'Shizong');
INSERT INTO `sys_district` VALUES ('530300', '530324', '罗平县', '0874', '655800', 'Y', null, null, null, null, 'Luoping');
INSERT INTO `sys_district` VALUES ('530300', '530325', '富源县', '0874', '655500', 'Y', null, null, null, null, 'Fuyuan');
INSERT INTO `sys_district` VALUES ('530300', '530326', '会泽县', '0874', '654200', 'Y', null, null, null, null, 'Huize');
INSERT INTO `sys_district` VALUES ('530300', '530328', '沾益县', '0874', '655331', 'Y', null, null, null, null, 'Zhanyi');
INSERT INTO `sys_district` VALUES ('530300', '530381', '宣威市', '0874', '655400', 'Y', null, null, null, null, 'Xuanwei');
INSERT INTO `sys_district` VALUES ('530400', '530402', '红塔区', '0877', '653100', 'Y', null, null, null, null, 'Hongta');
INSERT INTO `sys_district` VALUES ('530400', '530421', '江川县', '0877', '652600', 'Y', null, null, null, null, 'Jiangchuan');
INSERT INTO `sys_district` VALUES ('530400', '530422', '澄江县', '0877', '652500', 'Y', null, null, null, null, 'Chengjiang');
INSERT INTO `sys_district` VALUES ('530400', '530423', '通海县', '0877', '652700', 'Y', null, null, null, null, 'Tonghai');
INSERT INTO `sys_district` VALUES ('530400', '530424', '华宁县', '0877', '652800', 'Y', null, null, null, null, 'Huaning');
INSERT INTO `sys_district` VALUES ('530400', '530425', '易门县', '0877', '651100', 'Y', null, null, null, null, 'Yimen');
INSERT INTO `sys_district` VALUES ('530400', '530426', '峨山彝族自治县', '0877', '653200', 'Y', null, null, null, null, 'Eshan');
INSERT INTO `sys_district` VALUES ('530400', '530427', '新平彝族傣族自治县', '0877', '653400', 'Y', null, null, null, null, 'Xinping');
INSERT INTO `sys_district` VALUES ('530400', '530428', '元江哈尼族彝族傣族自治县', '0877', '653300', 'Y', null, null, null, null, 'Yuanjiang');
INSERT INTO `sys_district` VALUES ('530500', '530502', '隆阳区', '0875', '678000', 'Y', null, null, null, null, 'Longyang');
INSERT INTO `sys_district` VALUES ('530500', '530521', '施甸县', '0875', '678200', 'Y', null, null, null, null, 'Shidian');
INSERT INTO `sys_district` VALUES ('530500', '530522', '腾冲县', '0875', '679100', 'Y', null, null, null, null, 'Tengchong');
INSERT INTO `sys_district` VALUES ('530500', '530523', '龙陵县', '0875', '678300', 'Y', null, null, null, null, 'Longling');
INSERT INTO `sys_district` VALUES ('530500', '530524', '昌宁县', '0875', '678100', 'Y', null, null, null, null, 'Changning');
INSERT INTO `sys_district` VALUES ('530600', '530602', '昭阳区', '0870', '657000', 'Y', null, null, null, null, 'Zhaoyang');
INSERT INTO `sys_district` VALUES ('530600', '530621', '鲁甸县', '0870', '657100', 'Y', null, null, null, null, 'Ludian');
INSERT INTO `sys_district` VALUES ('530600', '530622', '巧家县', '0870', '654600', 'Y', null, null, null, null, 'Qiaojia');
INSERT INTO `sys_district` VALUES ('530600', '530623', '盐津县', '0870', '657500', 'Y', null, null, null, null, 'Yanjin');
INSERT INTO `sys_district` VALUES ('530600', '530624', '大关县', '0870', '657400', 'Y', null, null, null, null, 'Daguan');
INSERT INTO `sys_district` VALUES ('530600', '530625', '永善县', '0870', '657300', 'Y', null, null, null, null, 'Yongshan');
INSERT INTO `sys_district` VALUES ('530600', '530626', '绥江县', '0870', '657700', 'Y', null, null, null, null, 'Suijiang');
INSERT INTO `sys_district` VALUES ('530600', '530627', '镇雄县', '0870', '657200', 'Y', null, null, null, null, 'Zhenxiong');
INSERT INTO `sys_district` VALUES ('530600', '530628', '彝良县', '0870', '657600', 'Y', null, null, null, null, 'Yiliang');
INSERT INTO `sys_district` VALUES ('530600', '530629', '威信县', '0870', '657900', 'Y', null, null, null, null, 'Weixin');
INSERT INTO `sys_district` VALUES ('530600', '530630', '水富县', '0870', '657800', 'Y', null, null, null, null, 'Shuifu');
INSERT INTO `sys_district` VALUES ('530700', '530702', '古城区', '0888', '674100', 'Y', null, null, null, null, 'Gucheng');
INSERT INTO `sys_district` VALUES ('530700', '530721', '玉龙纳西族自治县', '0888', '674100', 'Y', null, null, null, null, 'Yulong');
INSERT INTO `sys_district` VALUES ('530700', '530722', '永胜县', '0888', '674200', 'Y', null, null, null, null, 'Yongsheng');
INSERT INTO `sys_district` VALUES ('530700', '530723', '华坪县', '0888', '674800', 'Y', null, null, null, null, 'Huaping');
INSERT INTO `sys_district` VALUES ('530700', '530724', '宁蒗彝族自治县', '0888', '674300', 'Y', null, null, null, null, 'Ninglang');
INSERT INTO `sys_district` VALUES ('530800', '530802', '思茅区', '0879', '665000', 'Y', null, null, null, null, 'Simao');
INSERT INTO `sys_district` VALUES ('530800', '530821', '宁洱哈尼族彝族自治县', '0879', '665100', 'Y', null, null, null, null, 'Ninger');
INSERT INTO `sys_district` VALUES ('530800', '530822', '墨江哈尼族自治县', '0879', '654800', 'Y', null, null, null, null, 'Mojiang');
INSERT INTO `sys_district` VALUES ('530800', '530823', '景东彝族自治县', '0879', '676200', 'Y', null, null, null, null, 'Jingdong');
INSERT INTO `sys_district` VALUES ('530800', '530824', '景谷傣族彝族自治县', '0879', '666400', 'Y', null, null, null, null, 'Jinggu');
INSERT INTO `sys_district` VALUES ('530800', '530825', '镇沅彝族哈尼族拉祜族自治县', '0879', '666500', 'Y', null, null, null, null, 'Zhenyuan');
INSERT INTO `sys_district` VALUES ('530800', '530826', '江城哈尼族彝族自治县', '0879', '665900', 'Y', null, null, null, null, 'Jiangcheng');
INSERT INTO `sys_district` VALUES ('530800', '530827', '孟连傣族拉祜族佤族自治县', '0879', '665800', 'Y', null, null, null, null, 'Menglian');
INSERT INTO `sys_district` VALUES ('530800', '530828', '澜沧拉祜族自治县', '0879', '665600', 'Y', null, null, null, null, 'Lancang');
INSERT INTO `sys_district` VALUES ('530800', '530829', '西盟佤族自治县', '0879', '665700', 'Y', null, null, null, null, 'Ximeng');
INSERT INTO `sys_district` VALUES ('530900', '530902', '临翔区', '0883', '677000', 'Y', null, null, null, null, 'Linxiang');
INSERT INTO `sys_district` VALUES ('530900', '530921', '凤庆县', '0883', '675900', 'Y', null, null, null, null, 'Fengqing');
INSERT INTO `sys_district` VALUES ('530900', '530922', '云县', '0883', '675800', 'Y', null, null, null, null, 'Yunxian');
INSERT INTO `sys_district` VALUES ('530900', '530923', '永德县', '0883', '677600', 'Y', null, null, null, null, 'Yongde');
INSERT INTO `sys_district` VALUES ('530900', '530924', '镇康县', '0883', '677704', 'Y', null, null, null, null, 'Zhenkang');
INSERT INTO `sys_district` VALUES ('530900', '530925', '双江拉祜族佤族布朗族傣族自治县', '0883', '677300', 'Y', null, null, null, null, 'Shuangjiang');
INSERT INTO `sys_district` VALUES ('530900', '530926', '耿马傣族佤族自治县', '0883', '677500', 'Y', null, null, null, null, 'Gengma');
INSERT INTO `sys_district` VALUES ('530900', '530927', '沧源佤族自治县', '0883', '677400', 'Y', null, null, null, null, 'Cangyuan');
INSERT INTO `sys_district` VALUES ('532300', '532301', '楚雄市', '0878', '675000', 'Y', null, null, null, null, 'Chuxiong');
INSERT INTO `sys_district` VALUES ('532300', '532322', '双柏县', '0878', '675100', 'Y', null, null, null, null, 'Shuangbai');
INSERT INTO `sys_district` VALUES ('532300', '532323', '牟定县', '0878', '675500', 'Y', null, null, null, null, 'Mouding');
INSERT INTO `sys_district` VALUES ('532300', '532324', '南华县', '0878', '675200', 'Y', null, null, null, null, 'Nanhua');
INSERT INTO `sys_district` VALUES ('532300', '532325', '姚安县', '0878', '675300', 'Y', null, null, null, null, 'Yao\'an');
INSERT INTO `sys_district` VALUES ('532300', '532326', '大姚县', '0878', '675400', 'Y', null, null, null, null, 'Dayao');
INSERT INTO `sys_district` VALUES ('532300', '532327', '永仁县', '0878', '651400', 'Y', null, null, null, null, 'Yongren');
INSERT INTO `sys_district` VALUES ('532300', '532328', '元谋县', '0878', '651300', 'Y', null, null, null, null, 'Yuanmou');
INSERT INTO `sys_district` VALUES ('532300', '532329', '武定县', '0878', '651600', 'Y', null, null, null, null, 'Wuding');
INSERT INTO `sys_district` VALUES ('532300', '532331', '禄丰县', '0878', '651200', 'Y', null, null, null, null, 'Lufeng');
INSERT INTO `sys_district` VALUES ('532500', '532501', '个旧市', '0873', '661000', 'Y', null, null, null, null, 'Gejiu');
INSERT INTO `sys_district` VALUES ('532500', '532502', '开远市', '0873', '661600', 'Y', null, null, null, null, 'Kaiyuan');
INSERT INTO `sys_district` VALUES ('532500', '532503', '蒙自市', '0873', '661101', 'Y', null, null, null, null, 'Mengzi');
INSERT INTO `sys_district` VALUES ('532500', '532504', '弥勒市', '0873', '652300', 'Y', null, null, null, null, 'Mile ');
INSERT INTO `sys_district` VALUES ('532500', '532523', '屏边苗族自治县', '0873', '661200', 'Y', null, null, null, null, 'Pingbian');
INSERT INTO `sys_district` VALUES ('532500', '532524', '建水县', '0873', '654300', 'Y', null, null, null, null, 'Jianshui');
INSERT INTO `sys_district` VALUES ('532500', '532525', '石屏县', '0873', '662200', 'Y', null, null, null, null, 'Shiping');
INSERT INTO `sys_district` VALUES ('532500', '532527', '泸西县', '0873', '652400', 'Y', null, null, null, null, 'Luxi');
INSERT INTO `sys_district` VALUES ('532500', '532528', '元阳县', '0873', '662400', 'Y', null, null, null, null, 'Yuanyang');
INSERT INTO `sys_district` VALUES ('532500', '532529', '红河县', '0873', '654400', 'Y', null, null, null, null, 'Honghexian');
INSERT INTO `sys_district` VALUES ('532500', '532530', '金平苗族瑶族傣族自治县', '0873', '661500', 'Y', null, null, null, null, 'Jinping');
INSERT INTO `sys_district` VALUES ('532500', '532531', '绿春县', '0873', '662500', 'Y', null, null, null, null, 'Lvchun');
INSERT INTO `sys_district` VALUES ('532500', '532532', '河口瑶族自治县', '0873', '661300', 'Y', null, null, null, null, 'Hekou');
INSERT INTO `sys_district` VALUES ('532600', '532601', '文山市', '0876', '663000', 'Y', null, null, null, null, 'Wenshan');
INSERT INTO `sys_district` VALUES ('532600', '532622', '砚山县', '0876', '663100', 'Y', null, null, null, null, 'Yanshan');
INSERT INTO `sys_district` VALUES ('532600', '532623', '西畴县', '0876', '663500', 'Y', null, null, null, null, 'Xichou');
INSERT INTO `sys_district` VALUES ('532600', '532624', '麻栗坡县', '0876', '663600', 'Y', null, null, null, null, 'Malipo');
INSERT INTO `sys_district` VALUES ('532600', '532625', '马关县', '0876', '663700', 'Y', null, null, null, null, 'Maguan');
INSERT INTO `sys_district` VALUES ('532600', '532626', '丘北县', '0876', '663200', 'Y', null, null, null, null, 'Qiubei');
INSERT INTO `sys_district` VALUES ('532600', '532627', '广南县', '0876', '663300', 'Y', null, null, null, null, 'Guangnan');
INSERT INTO `sys_district` VALUES ('532600', '532628', '富宁县', '0876', '663400', 'Y', null, null, null, null, 'Funing');
INSERT INTO `sys_district` VALUES ('532800', '532801', '景洪市', '0691', '666100', 'Y', null, null, null, null, 'Jinghong');
INSERT INTO `sys_district` VALUES ('532800', '532822', '勐海县', '0691', '666200', 'Y', null, null, null, null, 'Menghai');
INSERT INTO `sys_district` VALUES ('532800', '532823', '勐腊县', '0691', '666300', 'Y', null, null, null, null, 'Mengla');
INSERT INTO `sys_district` VALUES ('532900', '532901', '大理市', '0872', '671000', 'Y', null, null, null, null, 'Dali');
INSERT INTO `sys_district` VALUES ('532900', '532922', '漾濞彝族自治县', '0872', '672500', 'Y', null, null, null, null, 'Yangbi');
INSERT INTO `sys_district` VALUES ('532900', '532923', '祥云县', '0872', '672100', 'Y', null, null, null, null, 'Xiangyun');
INSERT INTO `sys_district` VALUES ('532900', '532924', '宾川县', '0872', '671600', 'Y', null, null, null, null, 'Binchuan');
INSERT INTO `sys_district` VALUES ('532900', '532925', '弥渡县', '0872', '675600', 'Y', null, null, null, null, 'Midu');
INSERT INTO `sys_district` VALUES ('532900', '532926', '南涧彝族自治县', '0872', '675700', 'Y', null, null, null, null, 'Nanjian');
INSERT INTO `sys_district` VALUES ('532900', '532927', '巍山彝族回族自治县', '0872', '672400', 'Y', null, null, null, null, 'Weishan');
INSERT INTO `sys_district` VALUES ('532900', '532928', '永平县', '0872', '672600', 'Y', null, null, null, null, 'Yongping');
INSERT INTO `sys_district` VALUES ('532900', '532929', '云龙县', '0872', '672700', 'Y', null, null, null, null, 'Yunlong');
INSERT INTO `sys_district` VALUES ('532900', '532930', '洱源县', '0872', '671200', 'Y', null, null, null, null, 'Eryuan');
INSERT INTO `sys_district` VALUES ('532900', '532931', '剑川县', '0872', '671300', 'Y', null, null, null, null, 'Jianchuan');
INSERT INTO `sys_district` VALUES ('532900', '532932', '鹤庆县', '0872', '671500', 'Y', null, null, null, null, 'Heqing');
INSERT INTO `sys_district` VALUES ('533100', '533102', '瑞丽市', '0692', '678600', 'Y', null, null, null, null, 'Ruili');
INSERT INTO `sys_district` VALUES ('533100', '533103', '芒市', '0692', '678400', 'Y', null, null, null, null, 'Mangshi');
INSERT INTO `sys_district` VALUES ('533100', '533122', '梁河县', '0692', '679200', 'Y', null, null, null, null, 'Lianghe');
INSERT INTO `sys_district` VALUES ('533100', '533123', '盈江县', '0692', '679300', 'Y', null, null, null, null, 'Yingjiang');
INSERT INTO `sys_district` VALUES ('533100', '533124', '陇川县', '0692', '678700', 'Y', null, null, null, null, 'Longchuan');
INSERT INTO `sys_district` VALUES ('533300', '533321', '泸水县', '0886', '673100', 'Y', null, null, null, null, 'Lushui');
INSERT INTO `sys_district` VALUES ('533300', '533323', '福贡县', '0886', '673400', 'Y', null, null, null, null, 'Fugong');
INSERT INTO `sys_district` VALUES ('533300', '533324', '贡山独龙族怒族自治县', '0886', '673500', 'Y', null, null, null, null, 'Gongshan');
INSERT INTO `sys_district` VALUES ('533300', '533325', '兰坪白族普米族自治县', '0886', '671400', 'Y', null, null, null, null, 'Lanping');
INSERT INTO `sys_district` VALUES ('533400', '533421', '香格里拉市', '0887', '674400', 'Y', null, null, null, null, 'Xianggelila');
INSERT INTO `sys_district` VALUES ('533400', '533422', '德钦县', '0887', '674500', 'Y', null, null, null, null, 'Deqin');
INSERT INTO `sys_district` VALUES ('533400', '533423', '维西傈僳族自治县', '0887', '674600', 'Y', null, null, null, null, 'Weixi');
INSERT INTO `sys_district` VALUES ('540100', '540102', '城关区', '0891', '850000', 'Y', null, null, null, null, 'Chengguan');
INSERT INTO `sys_district` VALUES ('540100', '540121', '林周县', '0891', '851600', 'Y', null, null, null, null, 'Linzhou');
INSERT INTO `sys_district` VALUES ('540100', '540122', '当雄县', '0891', '851500', 'Y', null, null, null, null, 'Dangxiong');
INSERT INTO `sys_district` VALUES ('540100', '540123', '尼木县', '0891', '851300', 'Y', null, null, null, null, 'Nimu');
INSERT INTO `sys_district` VALUES ('540100', '540124', '曲水县', '0891', '850600', 'Y', null, null, null, null, 'Qushui');
INSERT INTO `sys_district` VALUES ('540100', '540125', '堆龙德庆县', '0891', '851400', 'Y', null, null, null, null, 'Duilongdeqing');
INSERT INTO `sys_district` VALUES ('540100', '540126', '达孜县', '0891', '850100', 'Y', null, null, null, null, 'Dazi');
INSERT INTO `sys_district` VALUES ('540100', '540127', '墨竹工卡县', '0891', '850200', 'Y', null, null, null, null, 'Mozhugongka');
INSERT INTO `sys_district` VALUES ('540200', '540202', '桑珠孜区', '0892', '857000', 'Y', null, null, null, null, 'Sangzhuzi');
INSERT INTO `sys_district` VALUES ('540200', '540221', '南木林县', '0892', '857100', 'Y', null, null, null, null, 'Nanmulin');
INSERT INTO `sys_district` VALUES ('540200', '540222', '江孜县', '0892', '857400', 'Y', null, null, null, null, 'Jiangzi');
INSERT INTO `sys_district` VALUES ('540200', '540223', '定日县', '0892', '858200', 'Y', null, null, null, null, 'Dingri');
INSERT INTO `sys_district` VALUES ('540200', '540224', '萨迦县', '0892', '857800', 'Y', null, null, null, null, 'Sajia');
INSERT INTO `sys_district` VALUES ('540200', '540225', '拉孜县', '0892', '858100', 'Y', null, null, null, null, 'Lazi');
INSERT INTO `sys_district` VALUES ('540200', '540226', '昂仁县', '0892', '858500', 'Y', null, null, null, null, 'Angren');
INSERT INTO `sys_district` VALUES ('540200', '540227', '谢通门县', '0892', '858900', 'Y', null, null, null, null, 'Xietongmen');
INSERT INTO `sys_district` VALUES ('540200', '540228', '白朗县', '0892', '857300', 'Y', null, null, null, null, 'Bailang');
INSERT INTO `sys_district` VALUES ('540200', '540229', '仁布县', '0892', '857200', 'Y', null, null, null, null, 'Renbu');
INSERT INTO `sys_district` VALUES ('540200', '540230', '康马县', '0892', '857500', 'Y', null, null, null, null, 'Kangma');
INSERT INTO `sys_district` VALUES ('540200', '540231', '定结县', '0892', '857900', 'Y', null, null, null, null, 'Dingjie');
INSERT INTO `sys_district` VALUES ('540200', '540232', '仲巴县', '0892', '858800', 'Y', null, null, null, null, 'Zhongba');
INSERT INTO `sys_district` VALUES ('540200', '540233', '亚东县', '0892', '857600', 'Y', null, null, null, null, 'Yadong');
INSERT INTO `sys_district` VALUES ('540200', '540234', '吉隆县', '0892', '858700', 'Y', null, null, null, null, 'Jilong');
INSERT INTO `sys_district` VALUES ('540200', '540235', '聂拉木县', '0892', '858300', 'Y', null, null, null, null, 'Nielamu');
INSERT INTO `sys_district` VALUES ('540200', '540236', '萨嘎县', '0892', '857800', 'Y', null, null, null, null, 'Saga');
INSERT INTO `sys_district` VALUES ('540200', '540237', '岗巴县', '0892', '857700', 'Y', null, null, null, null, 'Gangba');
INSERT INTO `sys_district` VALUES ('540300', '540302', '卡若区', '0895', '854000', 'Y', null, null, null, null, 'Karuo');
INSERT INTO `sys_district` VALUES ('540300', '540321', '江达县', '0895', '854100', 'Y', null, null, null, null, 'Jiangda');
INSERT INTO `sys_district` VALUES ('540300', '540322', '贡觉县', '0895', '854200', 'Y', null, null, null, null, 'Gongjue');
INSERT INTO `sys_district` VALUES ('540300', '540323', '类乌齐县', '0895', '855600', 'Y', null, null, null, null, 'Leiwuqi');
INSERT INTO `sys_district` VALUES ('540300', '540324', '丁青县', '0895', '855700', 'Y', null, null, null, null, 'Dingqing');
INSERT INTO `sys_district` VALUES ('540300', '540325', '察雅县', '0895', '854300', 'Y', null, null, null, null, 'Chaya');
INSERT INTO `sys_district` VALUES ('540300', '540326', '八宿县', '0895', '854600', 'Y', null, null, null, null, 'Basu');
INSERT INTO `sys_district` VALUES ('540300', '540327', '左贡县', '0895', '854400', 'Y', null, null, null, null, 'Zuogong');
INSERT INTO `sys_district` VALUES ('540300', '540328', '芒康县', '0895', '854500', 'Y', null, null, null, null, 'Mangkang');
INSERT INTO `sys_district` VALUES ('540300', '540329', '洛隆县', '0895', '855400', 'Y', null, null, null, null, 'Luolong');
INSERT INTO `sys_district` VALUES ('540300', '540330', '边坝县', '0895', '855500', 'Y', null, null, null, null, 'Bianba');
INSERT INTO `sys_district` VALUES ('542200', '542221', '乃东县', '0893', '856100', 'Y', null, null, null, null, 'Naidong');
INSERT INTO `sys_district` VALUES ('542200', '542222', '扎囊县', '0893', '850800', 'Y', null, null, null, null, 'Zhanang');
INSERT INTO `sys_district` VALUES ('542200', '542223', '贡嘎县', '0893', '850700', 'Y', null, null, null, null, 'Gongga');
INSERT INTO `sys_district` VALUES ('542200', '542224', '桑日县', '0893', '856200', 'Y', null, null, null, null, 'Sangri');
INSERT INTO `sys_district` VALUES ('542200', '542225', '琼结县', '0893', '856800', 'Y', null, null, null, null, 'Qiongjie');
INSERT INTO `sys_district` VALUES ('542200', '542226', '曲松县', '0893', '856300', 'Y', null, null, null, null, 'Qusong');
INSERT INTO `sys_district` VALUES ('542200', '542227', '措美县', '0893', '856900', 'Y', null, null, null, null, 'Cuomei');
INSERT INTO `sys_district` VALUES ('542200', '542228', '洛扎县', '0893', '856600', 'Y', null, null, null, null, 'Luozha');
INSERT INTO `sys_district` VALUES ('542200', '542229', '加查县', '0893', '856400', 'Y', null, null, null, null, 'Jiacha');
INSERT INTO `sys_district` VALUES ('542200', '542231', '隆子县', '0893', '856600', 'Y', null, null, null, null, 'Longzi');
INSERT INTO `sys_district` VALUES ('542200', '542232', '错那县', '0893', '856700', 'Y', null, null, null, null, 'Cuona');
INSERT INTO `sys_district` VALUES ('542200', '542233', '浪卡子县', '0893', '851100', 'Y', null, null, null, null, 'Langkazi');
INSERT INTO `sys_district` VALUES ('542400', '542421', '那曲县', '0896', '852000', 'Y', null, null, null, null, 'Naqu');
INSERT INTO `sys_district` VALUES ('542400', '542422', '嘉黎县', '0896', '852400', 'Y', null, null, null, null, 'Jiali');
INSERT INTO `sys_district` VALUES ('542400', '542423', '比如县', '0896', '852300', 'Y', null, null, null, null, 'Biru');
INSERT INTO `sys_district` VALUES ('542400', '542424', '聂荣县', '0896', '853500', 'Y', null, null, null, null, 'Nierong');
INSERT INTO `sys_district` VALUES ('542400', '542425', '安多县', '0896', '853400', 'Y', null, null, null, null, 'Anduo');
INSERT INTO `sys_district` VALUES ('542400', '542426', '申扎县', '0896', '853100', 'Y', null, null, null, null, 'Shenzha');
INSERT INTO `sys_district` VALUES ('542400', '542427', '索县', '0896', '852200', 'Y', null, null, null, null, 'Suoxian');
INSERT INTO `sys_district` VALUES ('542400', '542428', '班戈县', '0896', '852500', 'Y', null, null, null, null, 'Bange');
INSERT INTO `sys_district` VALUES ('542400', '542429', '巴青县', '0896', '852100', 'Y', null, null, null, null, 'Baqing');
INSERT INTO `sys_district` VALUES ('542400', '542430', '尼玛县', '0896', '852600', 'Y', null, null, null, null, 'Nima');
INSERT INTO `sys_district` VALUES ('542400', '542431', '双湖县', '0896', '852600', 'Y', null, null, null, null, 'Shuanghu');
INSERT INTO `sys_district` VALUES ('542500', '542521', '普兰县', '0897', '859500', 'Y', null, null, null, null, 'Pulan');
INSERT INTO `sys_district` VALUES ('542500', '542522', '札达县', '0897', '859600', 'Y', null, null, null, null, 'Zhada');
INSERT INTO `sys_district` VALUES ('542500', '542523', '噶尔县', '0897', '859400', 'Y', null, null, null, null, 'Gaer');
INSERT INTO `sys_district` VALUES ('542500', '542524', '日土县', '0897', '859700', 'Y', null, null, null, null, 'Ritu');
INSERT INTO `sys_district` VALUES ('542500', '542525', '革吉县', '0897', '859100', 'Y', null, null, null, null, 'Geji');
INSERT INTO `sys_district` VALUES ('542500', '542526', '改则县', '0897', '859200', 'Y', null, null, null, null, 'Gaize');
INSERT INTO `sys_district` VALUES ('542500', '542527', '措勤县', '0897', '859300', 'Y', null, null, null, null, 'Cuoqin');
INSERT INTO `sys_district` VALUES ('542600', '542621', '林芝县', '0894', '850400', 'Y', null, null, null, null, 'Linzhi');
INSERT INTO `sys_district` VALUES ('542600', '542622', '工布江达县', '0894', '850300', 'Y', null, null, null, null, 'Gongbujiangda');
INSERT INTO `sys_district` VALUES ('542600', '542623', '米林县', '0894', '850500', 'Y', null, null, null, null, 'Milin');
INSERT INTO `sys_district` VALUES ('542600', '542624', '墨脱县', '0894', '855300', 'Y', null, null, null, null, 'Motuo');
INSERT INTO `sys_district` VALUES ('542600', '542625', '波密县', '0894', '855200', 'Y', null, null, null, null, 'Bomi');
INSERT INTO `sys_district` VALUES ('542600', '542626', '察隅县', '0894', '855100', 'Y', null, null, null, null, 'Chayu');
INSERT INTO `sys_district` VALUES ('542600', '542627', '朗县', '0894', '856500', 'Y', null, null, null, null, 'Langxian');
INSERT INTO `sys_district` VALUES ('610100', '610102', '新城区', '029', '710004', 'Y', null, null, null, null, 'Xincheng');
INSERT INTO `sys_district` VALUES ('610100', '610103', '碑林区', '029', '710001', 'Y', null, null, null, null, 'Beilin');
INSERT INTO `sys_district` VALUES ('610100', '610104', '莲湖区', '029', '710003', 'Y', null, null, null, null, 'Lianhu');
INSERT INTO `sys_district` VALUES ('610100', '610111', '灞桥区', '029', '710038', 'Y', null, null, null, null, 'Baqiao');
INSERT INTO `sys_district` VALUES ('610100', '610112', '未央区', '029', '710014', 'Y', null, null, null, null, 'Weiyang');
INSERT INTO `sys_district` VALUES ('610100', '610113', '雁塔区', '029', '710061', 'Y', null, null, null, null, 'Yanta');
INSERT INTO `sys_district` VALUES ('610100', '610114', '阎良区', '029', '710087', 'Y', null, null, null, null, 'Yanliang');
INSERT INTO `sys_district` VALUES ('610100', '610115', '临潼区', '029', '710600', 'Y', null, null, null, null, 'Lintong');
INSERT INTO `sys_district` VALUES ('610100', '610116', '长安区', '029', '710100', 'Y', null, null, null, null, 'Chang\'an');
INSERT INTO `sys_district` VALUES ('610100', '610122', '蓝田县', '029', '710500', 'Y', null, null, null, null, 'Lantian');
INSERT INTO `sys_district` VALUES ('610100', '610124', '周至县', '029', '710400', 'Y', null, null, null, null, 'Zhouzhi');
INSERT INTO `sys_district` VALUES ('610100', '610125', '户县', '029', '710300', 'Y', null, null, null, null, 'Huxian');
INSERT INTO `sys_district` VALUES ('610100', '610126', '高陵区', '029', '710200', 'Y', null, null, null, null, 'Gaoling');
INSERT INTO `sys_district` VALUES ('610200', '610202', '王益区', '0919', '727000', 'Y', null, null, null, null, 'Wangyi');
INSERT INTO `sys_district` VALUES ('610200', '610203', '印台区', '0919', '727007', 'Y', null, null, null, null, 'Yintai');
INSERT INTO `sys_district` VALUES ('610200', '610204', '耀州区', '0919', '727100', 'Y', null, null, null, null, 'Yaozhou');
INSERT INTO `sys_district` VALUES ('610200', '610222', '宜君县', '0919', '727200', 'Y', null, null, null, null, 'Yijun');
INSERT INTO `sys_district` VALUES ('610300', '610302', '渭滨区', '0917', '721000', 'Y', null, null, null, null, 'Weibin');
INSERT INTO `sys_district` VALUES ('610300', '610303', '金台区', '0917', '721000', 'Y', null, null, null, null, 'Jintai');
INSERT INTO `sys_district` VALUES ('610300', '610304', '陈仓区', '0917', '721300', 'Y', null, null, null, null, 'Chencang');
INSERT INTO `sys_district` VALUES ('610300', '610322', '凤翔县', '0917', '721400', 'Y', null, null, null, null, 'Fengxiang');
INSERT INTO `sys_district` VALUES ('610300', '610323', '岐山县', '0917', '722400', 'Y', null, null, null, null, 'Qishan');
INSERT INTO `sys_district` VALUES ('610300', '610324', '扶风县', '0917', '722200', 'Y', null, null, null, null, 'Fufeng');
INSERT INTO `sys_district` VALUES ('610300', '610326', '眉县', '0917', '722300', 'Y', null, null, null, null, 'Meixian');
INSERT INTO `sys_district` VALUES ('610300', '610327', '陇县', '0917', '721200', 'Y', null, null, null, null, 'Longxian');
INSERT INTO `sys_district` VALUES ('610300', '610328', '千阳县', '0917', '721100', 'Y', null, null, null, null, 'Qianyang');
INSERT INTO `sys_district` VALUES ('610300', '610329', '麟游县', '0917', '721500', 'Y', null, null, null, null, 'Linyou');
INSERT INTO `sys_district` VALUES ('610300', '610330', '凤县', '0917', '721700', 'Y', null, null, null, null, 'Fengxian');
INSERT INTO `sys_district` VALUES ('610300', '610331', '太白县', '0917', '721600', 'Y', null, null, null, null, 'Taibai');
INSERT INTO `sys_district` VALUES ('610400', '610402', '秦都区', '029', '712000', 'Y', null, null, null, null, 'Qindu');
INSERT INTO `sys_district` VALUES ('610400', '610403', '杨陵区', '029', '712100', 'Y', null, null, null, null, 'Yangling');
INSERT INTO `sys_district` VALUES ('610400', '610404', '渭城区', '029', '712000', 'Y', null, null, null, null, 'Weicheng');
INSERT INTO `sys_district` VALUES ('610400', '610422', '三原县', '029', '713800', 'Y', null, null, null, null, 'Sanyuan');
INSERT INTO `sys_district` VALUES ('610400', '610423', '泾阳县', '029', '713700', 'Y', null, null, null, null, 'Jingyang');
INSERT INTO `sys_district` VALUES ('610400', '610424', '乾县', '029', '713300', 'Y', null, null, null, null, 'Qianxian');
INSERT INTO `sys_district` VALUES ('610400', '610425', '礼泉县', '029', '713200', 'Y', null, null, null, null, 'Liquan');
INSERT INTO `sys_district` VALUES ('610400', '610426', '永寿县', '029', '713400', 'Y', null, null, null, null, 'Yongshou');
INSERT INTO `sys_district` VALUES ('610400', '610427', '彬县', '029', '713500', 'Y', null, null, null, null, 'Binxian');
INSERT INTO `sys_district` VALUES ('610400', '610428', '长武县', '029', '713600', 'Y', null, null, null, null, 'Changwu');
INSERT INTO `sys_district` VALUES ('610400', '610429', '旬邑县', '029', '711300', 'Y', null, null, null, null, 'Xunyi');
INSERT INTO `sys_district` VALUES ('610400', '610430', '淳化县', '029', '711200', 'Y', null, null, null, null, 'Chunhua');
INSERT INTO `sys_district` VALUES ('610400', '610431', '武功县', '029', '712200', 'Y', null, null, null, null, 'Wugong');
INSERT INTO `sys_district` VALUES ('610400', '610481', '兴平市', '029', '713100', 'Y', null, null, null, null, 'Xingping');
INSERT INTO `sys_district` VALUES ('610500', '610502', '临渭区', '0913', '714000', 'Y', null, null, null, null, 'Linwei');
INSERT INTO `sys_district` VALUES ('610500', '610521', '华县', '0913', '714100', 'Y', null, null, null, null, 'Huaxian');
INSERT INTO `sys_district` VALUES ('610500', '610522', '潼关县', '0913', '714300', 'Y', null, null, null, null, 'Tongguan');
INSERT INTO `sys_district` VALUES ('610500', '610523', '大荔县', '0913', '715100', 'Y', null, null, null, null, 'Dali');
INSERT INTO `sys_district` VALUES ('610500', '610524', '合阳县', '0913', '715300', 'Y', null, null, null, null, 'Heyang');
INSERT INTO `sys_district` VALUES ('610500', '610525', '澄城县', '0913', '715200', 'Y', null, null, null, null, 'Chengcheng');
INSERT INTO `sys_district` VALUES ('610500', '610526', '蒲城县', '0913', '715500', 'Y', null, null, null, null, 'Pucheng');
INSERT INTO `sys_district` VALUES ('610500', '610527', '白水县', '0913', '715600', 'Y', null, null, null, null, 'Baishui');
INSERT INTO `sys_district` VALUES ('610500', '610528', '富平县', '0913', '711700', 'Y', null, null, null, null, 'Fuping');
INSERT INTO `sys_district` VALUES ('610500', '610581', '韩城市', '0913', '715400', 'Y', null, null, null, null, 'Hancheng');
INSERT INTO `sys_district` VALUES ('610500', '610582', '华阴市', '0913', '714200', 'Y', null, null, null, null, 'Huayin');
INSERT INTO `sys_district` VALUES ('610600', '610602', '宝塔区', '0911', '716000', 'Y', null, null, null, null, 'Baota');
INSERT INTO `sys_district` VALUES ('610600', '610621', '延长县', '0911', '717100', 'Y', null, null, null, null, 'Yanchang');
INSERT INTO `sys_district` VALUES ('610600', '610622', '延川县', '0911', '717200', 'Y', null, null, null, null, 'Yanchuan');
INSERT INTO `sys_district` VALUES ('610600', '610623', '子长县', '0911', '717300', 'Y', null, null, null, null, 'Zichang');
INSERT INTO `sys_district` VALUES ('610600', '610624', '安塞县', '0911', '717400', 'Y', null, null, null, null, 'Ansai');
INSERT INTO `sys_district` VALUES ('610600', '610625', '志丹县', '0911', '717500', 'Y', null, null, null, null, 'Zhidan');
INSERT INTO `sys_district` VALUES ('610600', '610626', '吴起县', '0911', '717600', 'Y', null, null, null, null, 'Wuqi');
INSERT INTO `sys_district` VALUES ('610600', '610627', '甘泉县', '0911', '716100', 'Y', null, null, null, null, 'Ganquan');
INSERT INTO `sys_district` VALUES ('610600', '610628', '富县', '0911', '727500', 'Y', null, null, null, null, 'Fuxian');
INSERT INTO `sys_district` VALUES ('610600', '610629', '洛川县', '0911', '727400', 'Y', null, null, null, null, 'Luochuan');
INSERT INTO `sys_district` VALUES ('610600', '610630', '宜川县', '0911', '716200', 'Y', null, null, null, null, 'Yichuan');
INSERT INTO `sys_district` VALUES ('610600', '610631', '黄龙县', '0911', '715700', 'Y', null, null, null, null, 'Huanglong');
INSERT INTO `sys_district` VALUES ('610600', '610632', '黄陵县', '0911', '727300', 'Y', null, null, null, null, 'Huangling');
INSERT INTO `sys_district` VALUES ('610700', '610702', '汉台区', '0916', '723000', 'Y', null, null, null, null, 'Hantai');
INSERT INTO `sys_district` VALUES ('610700', '610721', '南郑县', '0916', '723100', 'Y', null, null, null, null, 'Nanzheng');
INSERT INTO `sys_district` VALUES ('610700', '610722', '城固县', '0916', '723200', 'Y', null, null, null, null, 'Chenggu');
INSERT INTO `sys_district` VALUES ('610700', '610723', '洋县', '0916', '723300', 'Y', null, null, null, null, 'Yangxian');
INSERT INTO `sys_district` VALUES ('610700', '610724', '西乡县', '0916', '723500', 'Y', null, null, null, null, 'Xixiang');
INSERT INTO `sys_district` VALUES ('610700', '610725', '勉县', '0916', '724200', 'Y', null, null, null, null, 'Mianxian');
INSERT INTO `sys_district` VALUES ('610700', '610726', '宁强县', '0916', '724400', 'Y', null, null, null, null, 'Ningqiang');
INSERT INTO `sys_district` VALUES ('610700', '610727', '略阳县', '0916', '724300', 'Y', null, null, null, null, 'Lueyang');
INSERT INTO `sys_district` VALUES ('610700', '610728', '镇巴县', '0916', '723600', 'Y', null, null, null, null, 'Zhenba');
INSERT INTO `sys_district` VALUES ('610700', '610729', '留坝县', '0916', '724100', 'Y', null, null, null, null, 'Liuba');
INSERT INTO `sys_district` VALUES ('610700', '610730', '佛坪县', '0916', '723400', 'Y', null, null, null, null, 'Foping');
INSERT INTO `sys_district` VALUES ('610800', '610802', '榆阳区', '0912', '719000', 'Y', null, null, null, null, 'Yuyang');
INSERT INTO `sys_district` VALUES ('610800', '610821', '神木县', '0912', '719300', 'Y', null, null, null, null, 'Shenmu');
INSERT INTO `sys_district` VALUES ('610800', '610822', '府谷县', '0912', '719400', 'Y', null, null, null, null, 'Fugu');
INSERT INTO `sys_district` VALUES ('610800', '610823', '横山县', '0912', '719100', 'Y', null, null, null, null, 'Hengshan');
INSERT INTO `sys_district` VALUES ('610800', '610824', '靖边县', '0912', '718500', 'Y', null, null, null, null, 'Jingbian');
INSERT INTO `sys_district` VALUES ('610800', '610825', '定边县', '0912', '718600', 'Y', null, null, null, null, 'Dingbian');
INSERT INTO `sys_district` VALUES ('610800', '610826', '绥德县', '0912', '718000', 'Y', null, null, null, null, 'Suide');
INSERT INTO `sys_district` VALUES ('610800', '610827', '米脂县', '0912', '718100', 'Y', null, null, null, null, 'Mizhi');
INSERT INTO `sys_district` VALUES ('610800', '610828', '佳县', '0912', '719200', 'Y', null, null, null, null, 'Jiaxian');
INSERT INTO `sys_district` VALUES ('610800', '610829', '吴堡县', '0912', '718200', 'Y', null, null, null, null, 'Wubu');
INSERT INTO `sys_district` VALUES ('610800', '610830', '清涧县', '0912', '718300', 'Y', null, null, null, null, 'Qingjian');
INSERT INTO `sys_district` VALUES ('610800', '610831', '子洲县', '0912', '718400', 'Y', null, null, null, null, 'Zizhou');
INSERT INTO `sys_district` VALUES ('610900', '610902', '汉滨区', '0915', '725000', 'Y', null, null, null, null, 'Hanbin');
INSERT INTO `sys_district` VALUES ('610900', '610921', '汉阴县', '0915', '725100', 'Y', null, null, null, null, 'Hanyin');
INSERT INTO `sys_district` VALUES ('610900', '610922', '石泉县', '0915', '725200', 'Y', null, null, null, null, 'Shiquan');
INSERT INTO `sys_district` VALUES ('610900', '610923', '宁陕县', '0915', '711600', 'Y', null, null, null, null, 'Ningshan');
INSERT INTO `sys_district` VALUES ('610900', '610924', '紫阳县', '0915', '725300', 'Y', null, null, null, null, 'Ziyang');
INSERT INTO `sys_district` VALUES ('610900', '610925', '岚皋县', '0915', '725400', 'Y', null, null, null, null, 'Langao');
INSERT INTO `sys_district` VALUES ('610900', '610926', '平利县', '0915', '725500', 'Y', null, null, null, null, 'Pingli');
INSERT INTO `sys_district` VALUES ('610900', '610927', '镇坪县', '0915', '725600', 'Y', null, null, null, null, 'Zhenping');
INSERT INTO `sys_district` VALUES ('610900', '610928', '旬阳县', '0915', '725700', 'Y', null, null, null, null, 'Xunyang');
INSERT INTO `sys_district` VALUES ('610900', '610929', '白河县', '0915', '725800', 'Y', null, null, null, null, 'Baihe');
INSERT INTO `sys_district` VALUES ('611000', '611002', '商州区', '0914', '726000', 'Y', null, null, null, null, 'Shangzhou');
INSERT INTO `sys_district` VALUES ('611000', '611021', '洛南县', '0914', '726100', 'Y', null, null, null, null, 'Luonan');
INSERT INTO `sys_district` VALUES ('611000', '611022', '丹凤县', '0914', '726200', 'Y', null, null, null, null, 'Danfeng');
INSERT INTO `sys_district` VALUES ('611000', '611023', '商南县', '0914', '726300', 'Y', null, null, null, null, 'Shangnan');
INSERT INTO `sys_district` VALUES ('611000', '611024', '山阳县', '0914', '726400', 'Y', null, null, null, null, 'Shanyang');
INSERT INTO `sys_district` VALUES ('611000', '611025', '镇安县', '0914', '711500', 'Y', null, null, null, null, 'Zhen\'an');
INSERT INTO `sys_district` VALUES ('611000', '611026', '柞水县', '0914', '711400', 'Y', null, null, null, null, 'Zhashui');
INSERT INTO `sys_district` VALUES ('611100', '611101', '空港新城', '0374', '461000', 'Y', null, null, null, null, 'Konggang');
INSERT INTO `sys_district` VALUES ('611100', '611102', '沣东新城', '029', '710000', 'Y', null, null, null, null, 'Fengdong');
INSERT INTO `sys_district` VALUES ('611100', '611103', '秦汉新城', '029', '712000', 'Y', null, null, null, null, 'Qinhan');
INSERT INTO `sys_district` VALUES ('611100', '611104', '沣西新城', '029', '710000', 'Y', null, null, null, null, 'Fengxi');
INSERT INTO `sys_district` VALUES ('611100', '611105', '泾河新城', '029', '713700', 'Y', null, null, null, null, 'Jinghe');
INSERT INTO `sys_district` VALUES ('620100', '620102', '城关区', '0931', '730030', 'Y', null, null, null, null, 'Chengguan');
INSERT INTO `sys_district` VALUES ('620100', '620103', '七里河区', '0931', '730050', 'Y', null, null, null, null, 'Qilihe');
INSERT INTO `sys_district` VALUES ('620100', '620104', '西固区', '0931', '730060', 'Y', null, null, null, null, 'Xigu');
INSERT INTO `sys_district` VALUES ('620100', '620105', '安宁区', '0931', '730070', 'Y', null, null, null, null, 'Anning');
INSERT INTO `sys_district` VALUES ('620100', '620111', '红古区', '0931', '730084', 'Y', null, null, null, null, 'Honggu');
INSERT INTO `sys_district` VALUES ('620100', '620121', '永登县', '0931', '730300', 'Y', null, null, null, null, 'Yongdeng');
INSERT INTO `sys_district` VALUES ('620100', '620122', '皋兰县', '0931', '730200', 'Y', null, null, null, null, 'Gaolan');
INSERT INTO `sys_district` VALUES ('620100', '620123', '榆中县', '0931', '730100', 'Y', null, null, null, null, 'Yuzhong');
INSERT INTO `sys_district` VALUES ('620200', '620201', '雄关区', '0937', '735100', 'Y', null, null, null, null, 'Xiongguan');
INSERT INTO `sys_district` VALUES ('620200', '620202', '长城区', '0937', '735106', 'Y', null, null, null, null, 'Changcheng');
INSERT INTO `sys_district` VALUES ('620200', '620203', '镜铁区', '0937', '735100', 'Y', null, null, null, null, 'Jingtie');
INSERT INTO `sys_district` VALUES ('620300', '620302', '金川区', '0935', '737100', 'Y', null, null, null, null, 'Jinchuan');
INSERT INTO `sys_district` VALUES ('620300', '620321', '永昌县', '0935', '737200', 'Y', null, null, null, null, 'Yongchang');
INSERT INTO `sys_district` VALUES ('620400', '620402', '白银区', '0943', '730900', 'Y', null, null, null, null, 'Baiyin');
INSERT INTO `sys_district` VALUES ('620400', '620403', '平川区', '0943', '730913', 'Y', null, null, null, null, 'Pingchuan');
INSERT INTO `sys_district` VALUES ('620400', '620421', '靖远县', '0943', '730600', 'Y', null, null, null, null, 'Jingyuan');
INSERT INTO `sys_district` VALUES ('620400', '620422', '会宁县', '0943', '730700', 'Y', null, null, null, null, 'Huining');
INSERT INTO `sys_district` VALUES ('620400', '620423', '景泰县', '0943', '730400', 'Y', null, null, null, null, 'Jingtai');
INSERT INTO `sys_district` VALUES ('620500', '620502', '秦州区', '0938', '741000', 'Y', null, null, null, null, 'Qinzhou');
INSERT INTO `sys_district` VALUES ('620500', '620503', '麦积区', '0938', '741020', 'Y', null, null, null, null, 'Maiji');
INSERT INTO `sys_district` VALUES ('620500', '620521', '清水县', '0938', '741400', 'Y', null, null, null, null, 'Qingshui');
INSERT INTO `sys_district` VALUES ('620500', '620522', '秦安县', '0938', '741600', 'Y', null, null, null, null, 'Qin\'an');
INSERT INTO `sys_district` VALUES ('620500', '620523', '甘谷县', '0938', '741200', 'Y', null, null, null, null, 'Gangu');
INSERT INTO `sys_district` VALUES ('620500', '620524', '武山县', '0938', '741300', 'Y', null, null, null, null, 'Wushan');
INSERT INTO `sys_district` VALUES ('620500', '620525', '张家川回族自治县', '0938', '741500', 'Y', null, null, null, null, 'Zhangjiachuan');
INSERT INTO `sys_district` VALUES ('620600', '620602', '凉州区', '0935', '733000', 'Y', null, null, null, null, 'Liangzhou');
INSERT INTO `sys_district` VALUES ('620600', '620621', '民勤县', '0935', '733300', 'Y', null, null, null, null, 'Minqin');
INSERT INTO `sys_district` VALUES ('620600', '620622', '古浪县', '0935', '733100', 'Y', null, null, null, null, 'Gulang');
INSERT INTO `sys_district` VALUES ('620600', '620623', '天祝藏族自治县', '0935', '733200', 'Y', null, null, null, null, 'Tianzhu');
INSERT INTO `sys_district` VALUES ('620700', '620702', '甘州区', '0936', '734000', 'Y', null, null, null, null, 'Ganzhou');
INSERT INTO `sys_district` VALUES ('620700', '620721', '肃南裕固族自治县', '0936', '734400', 'Y', null, null, null, null, 'Sunan');
INSERT INTO `sys_district` VALUES ('620700', '620722', '民乐县', '0936', '734500', 'Y', null, null, null, null, 'Minle');
INSERT INTO `sys_district` VALUES ('620700', '620723', '临泽县', '0936', '734200', 'Y', null, null, null, null, 'Linze');
INSERT INTO `sys_district` VALUES ('620700', '620724', '高台县', '0936', '734300', 'Y', null, null, null, null, 'Gaotai');
INSERT INTO `sys_district` VALUES ('620700', '620725', '山丹县', '0936', '734100', 'Y', null, null, null, null, 'Shandan');
INSERT INTO `sys_district` VALUES ('620800', '620802', '崆峒区', '0933', '744000', 'Y', null, null, null, null, 'Kongtong');
INSERT INTO `sys_district` VALUES ('620800', '620821', '泾川县', '0933', '744300', 'Y', null, null, null, null, 'Jingchuan');
INSERT INTO `sys_district` VALUES ('620800', '620822', '灵台县', '0933', '744400', 'Y', null, null, null, null, 'Lingtai');
INSERT INTO `sys_district` VALUES ('620800', '620823', '崇信县', '0933', '744200', 'Y', null, null, null, null, 'Chongxin');
INSERT INTO `sys_district` VALUES ('620800', '620824', '华亭县', '0933', '744100', 'Y', null, null, null, null, 'Huating');
INSERT INTO `sys_district` VALUES ('620800', '620825', '庄浪县', '0933', '744600', 'Y', null, null, null, null, 'Zhuanglang');
INSERT INTO `sys_district` VALUES ('620800', '620826', '静宁县', '0933', '743400', 'Y', null, null, null, null, 'Jingning');
INSERT INTO `sys_district` VALUES ('620900', '620902', '肃州区', '0937', '735000', 'Y', null, null, null, null, 'Suzhou');
INSERT INTO `sys_district` VALUES ('620900', '620921', '金塔县', '0937', '735300', 'Y', null, null, null, null, 'Jinta');
INSERT INTO `sys_district` VALUES ('620900', '620922', '瓜州县', '0937', '736100', 'Y', null, null, null, null, 'Guazhou');
INSERT INTO `sys_district` VALUES ('620900', '620923', '肃北蒙古族自治县', '0937', '736300', 'Y', null, null, null, null, 'Subei');
INSERT INTO `sys_district` VALUES ('620900', '620924', '阿克塞哈萨克族自治县', '0937', '736400', 'Y', null, null, null, null, 'Akesai');
INSERT INTO `sys_district` VALUES ('620900', '620981', '玉门市', '0937', '735200', 'Y', null, null, null, null, 'Yumen');
INSERT INTO `sys_district` VALUES ('620900', '620982', '敦煌市', '0937', '736200', 'Y', null, null, null, null, 'Dunhuang');
INSERT INTO `sys_district` VALUES ('621000', '621002', '西峰区', '0934', '745000', 'Y', null, null, null, null, 'Xifeng');
INSERT INTO `sys_district` VALUES ('621000', '621021', '庆城县', '0934', '745100', 'Y', null, null, null, null, 'Qingcheng');
INSERT INTO `sys_district` VALUES ('621000', '621022', '环县', '0934', '745700', 'Y', null, null, null, null, 'Huanxian');
INSERT INTO `sys_district` VALUES ('621000', '621023', '华池县', '0934', '745600', 'Y', null, null, null, null, 'Huachi');
INSERT INTO `sys_district` VALUES ('621000', '621024', '合水县', '0934', '745400', 'Y', null, null, null, null, 'Heshui');
INSERT INTO `sys_district` VALUES ('621000', '621025', '正宁县', '0934', '745300', 'Y', null, null, null, null, 'Zhengning');
INSERT INTO `sys_district` VALUES ('621000', '621026', '宁县', '0934', '745200', 'Y', null, null, null, null, 'Ningxian');
INSERT INTO `sys_district` VALUES ('621000', '621027', '镇原县', '0934', '744500', 'Y', null, null, null, null, 'Zhenyuan');
INSERT INTO `sys_district` VALUES ('621100', '621102', '安定区', '0932', '743000', 'Y', null, null, null, null, 'Anding');
INSERT INTO `sys_district` VALUES ('621100', '621121', '通渭县', '0932', '743300', 'Y', null, null, null, null, 'Tongwei');
INSERT INTO `sys_district` VALUES ('621100', '621122', '陇西县', '0932', '748100', 'Y', null, null, null, null, 'Longxi');
INSERT INTO `sys_district` VALUES ('621100', '621123', '渭源县', '0932', '748200', 'Y', null, null, null, null, 'Weiyuan');
INSERT INTO `sys_district` VALUES ('621100', '621124', '临洮县', '0932', '730500', 'Y', null, null, null, null, 'Lintao');
INSERT INTO `sys_district` VALUES ('621100', '621125', '漳县', '0932', '748300', 'Y', null, null, null, null, 'Zhangxian');
INSERT INTO `sys_district` VALUES ('621100', '621126', '岷县', '0932', '748400', 'Y', null, null, null, null, 'Minxian');
INSERT INTO `sys_district` VALUES ('621200', '621202', '武都区', '0939', '746000', 'Y', null, null, null, null, 'Wudu');
INSERT INTO `sys_district` VALUES ('621200', '621221', '成县', '0939', '742500', 'Y', null, null, null, null, 'Chengxian');
INSERT INTO `sys_district` VALUES ('621200', '621222', '文县', '0939', '746400', 'Y', null, null, null, null, 'Wenxian');
INSERT INTO `sys_district` VALUES ('621200', '621223', '宕昌县', '0939', '748500', 'Y', null, null, null, null, 'Dangchang');
INSERT INTO `sys_district` VALUES ('621200', '621224', '康县', '0939', '746500', 'Y', null, null, null, null, 'Kangxian');
INSERT INTO `sys_district` VALUES ('621200', '621225', '西和县', '0939', '742100', 'Y', null, null, null, null, 'Xihe');
INSERT INTO `sys_district` VALUES ('621200', '621226', '礼县', '0939', '742200', 'Y', null, null, null, null, 'Lixian');
INSERT INTO `sys_district` VALUES ('621200', '621227', '徽县', '0939', '742300', 'Y', null, null, null, null, 'Huixian');
INSERT INTO `sys_district` VALUES ('621200', '621228', '两当县', '0939', '742400', 'Y', null, null, null, null, 'Liangdang');
INSERT INTO `sys_district` VALUES ('622900', '622901', '临夏市', '0930', '731100', 'Y', null, null, null, null, 'Linxia');
INSERT INTO `sys_district` VALUES ('622900', '622921', '临夏县', '0930', '731800', 'Y', null, null, null, null, 'Linxia');
INSERT INTO `sys_district` VALUES ('622900', '622922', '康乐县', '0930', '731500', 'Y', null, null, null, null, 'Kangle');
INSERT INTO `sys_district` VALUES ('622900', '622923', '永靖县', '0930', '731600', 'Y', null, null, null, null, 'Yongjing');
INSERT INTO `sys_district` VALUES ('622900', '622924', '广河县', '0930', '731300', 'Y', null, null, null, null, 'Guanghe');
INSERT INTO `sys_district` VALUES ('622900', '622925', '和政县', '0930', '731200', 'Y', null, null, null, null, 'Hezheng');
INSERT INTO `sys_district` VALUES ('622900', '622926', '东乡族自治县', '0930', '731400', 'Y', null, null, null, null, 'Dongxiangzu');
INSERT INTO `sys_district` VALUES ('622900', '622927', '积石山保安族东乡族撒拉族自治县', '0930', '731700', 'Y', null, null, null, null, 'Jishishan');
INSERT INTO `sys_district` VALUES ('623000', '623001', '合作市', '0941', '747000', 'Y', null, null, null, null, 'Hezuo');
INSERT INTO `sys_district` VALUES ('623000', '623021', '临潭县', '0941', '747500', 'Y', null, null, null, null, 'Lintan');
INSERT INTO `sys_district` VALUES ('623000', '623022', '卓尼县', '0941', '747600', 'Y', null, null, null, null, 'Zhuoni');
INSERT INTO `sys_district` VALUES ('623000', '623023', '舟曲县', '0941', '746300', 'Y', null, null, null, null, 'Zhouqu');
INSERT INTO `sys_district` VALUES ('623000', '623024', '迭部县', '0941', '747400', 'Y', null, null, null, null, 'Diebu');
INSERT INTO `sys_district` VALUES ('623000', '623025', '玛曲县', '0941', '747300', 'Y', null, null, null, null, 'Maqu');
INSERT INTO `sys_district` VALUES ('623000', '623026', '碌曲县', '0941', '747200', 'Y', null, null, null, null, 'Luqu');
INSERT INTO `sys_district` VALUES ('623000', '623027', '夏河县', '0941', '747100', 'Y', null, null, null, null, 'Xiahe');
INSERT INTO `sys_district` VALUES ('630100', '630102', '城东区', '0971', '810007', 'Y', null, null, null, null, 'Chengdong');
INSERT INTO `sys_district` VALUES ('630100', '630103', '城中区', '0971', '810000', 'Y', null, null, null, null, 'Chengzhong');
INSERT INTO `sys_district` VALUES ('630100', '630104', '城西区', '0971', '810001', 'Y', null, null, null, null, 'Chengxi');
INSERT INTO `sys_district` VALUES ('630100', '630105', '城北区', '0971', '810003', 'Y', null, null, null, null, 'Chengbei');
INSERT INTO `sys_district` VALUES ('630100', '630121', '大通回族土族自治县', '0971', '810100', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_district` VALUES ('630100', '630122', '湟中县', '0971', '811600', 'Y', null, null, null, null, 'Huangzhong');
INSERT INTO `sys_district` VALUES ('630100', '630123', '湟源县', '0971', '812100', 'Y', null, null, null, null, 'Huangyuan');
INSERT INTO `sys_district` VALUES ('630200', '630202', '乐都区', '0972', '810700', 'Y', null, null, null, null, 'Ledu');
INSERT INTO `sys_district` VALUES ('630200', '630221', '平安县', '0972', '810600', 'Y', null, null, null, null, 'Ping\'an');
INSERT INTO `sys_district` VALUES ('630200', '630222', '民和回族土族自治县', '0972', '810800', 'Y', null, null, null, null, 'Minhe');
INSERT INTO `sys_district` VALUES ('630200', '630223', '互助土族自治县', '0972', '810500', 'Y', null, null, null, null, 'Huzhu');
INSERT INTO `sys_district` VALUES ('630200', '630224', '化隆回族自治县', '0972', '810900', 'Y', null, null, null, null, 'Hualong');
INSERT INTO `sys_district` VALUES ('630200', '630225', '循化撒拉族自治县', '0972', '811100', 'Y', null, null, null, null, 'Xunhua');
INSERT INTO `sys_district` VALUES ('632200', '632221', '门源回族自治县', '0970', '810300', 'Y', null, null, null, null, 'Menyuan');
INSERT INTO `sys_district` VALUES ('632200', '632222', '祁连县', '0970', '810400', 'Y', null, null, null, null, 'Qilian');
INSERT INTO `sys_district` VALUES ('632200', '632223', '海晏县', '0970', '812200', 'Y', null, null, null, null, 'Haiyan');
INSERT INTO `sys_district` VALUES ('632200', '632224', '刚察县', '0970', '812300', 'Y', null, null, null, null, 'Gangcha');
INSERT INTO `sys_district` VALUES ('632300', '632321', '同仁县', '0973', '811300', 'Y', null, null, null, null, 'Tongren');
INSERT INTO `sys_district` VALUES ('632300', '632322', '尖扎县', '0973', '811200', 'Y', null, null, null, null, 'Jianzha');
INSERT INTO `sys_district` VALUES ('632300', '632323', '泽库县', '0973', '811400', 'Y', null, null, null, null, 'Zeku');
INSERT INTO `sys_district` VALUES ('632300', '632324', '河南蒙古族自治县', '0973', '811500', 'Y', null, null, null, null, 'Henan');
INSERT INTO `sys_district` VALUES ('632500', '632521', '共和县', '0974', '813000', 'Y', null, null, null, null, 'Gonghe');
INSERT INTO `sys_district` VALUES ('632500', '632522', '同德县', '0974', '813200', 'Y', null, null, null, null, 'Tongde');
INSERT INTO `sys_district` VALUES ('632500', '632523', '贵德县', '0974', '811700', 'Y', null, null, null, null, 'Guide');
INSERT INTO `sys_district` VALUES ('632500', '632524', '兴海县', '0974', '813300', 'Y', null, null, null, null, 'Xinghai');
INSERT INTO `sys_district` VALUES ('632500', '632525', '贵南县', '0974', '813100', 'Y', null, null, null, null, 'Guinan');
INSERT INTO `sys_district` VALUES ('632600', '632621', '玛沁县', '0975', '814000', 'Y', null, null, null, null, 'Maqin');
INSERT INTO `sys_district` VALUES ('632600', '632622', '班玛县', '0975', '814300', 'Y', null, null, null, null, 'Banma');
INSERT INTO `sys_district` VALUES ('632600', '632623', '甘德县', '0975', '814100', 'Y', null, null, null, null, 'Gande');
INSERT INTO `sys_district` VALUES ('632600', '632624', '达日县', '0975', '814200', 'Y', null, null, null, null, 'Dari');
INSERT INTO `sys_district` VALUES ('632600', '632625', '久治县', '0975', '624700', 'Y', null, null, null, null, 'Jiuzhi');
INSERT INTO `sys_district` VALUES ('632600', '632626', '玛多县', '0975', '813500', 'Y', null, null, null, null, 'Maduo');
INSERT INTO `sys_district` VALUES ('632700', '632701', '玉树市', '0976', '815000', 'Y', null, null, null, null, 'Yushu');
INSERT INTO `sys_district` VALUES ('632700', '632722', '杂多县', '0976', '815300', 'Y', null, null, null, null, 'Zaduo');
INSERT INTO `sys_district` VALUES ('632700', '632723', '称多县', '0976', '815100', 'Y', null, null, null, null, 'Chenduo');
INSERT INTO `sys_district` VALUES ('632700', '632724', '治多县', '0976', '815400', 'Y', null, null, null, null, 'Zhiduo');
INSERT INTO `sys_district` VALUES ('632700', '632725', '囊谦县', '0976', '815200', 'Y', null, null, null, null, 'Nangqian');
INSERT INTO `sys_district` VALUES ('632700', '632726', '曲麻莱县', '0976', '815500', 'Y', null, null, null, null, 'Qumalai');
INSERT INTO `sys_district` VALUES ('632800', '632801', '格尔木市', '0977', '816000', 'Y', null, null, null, null, 'Geermu');
INSERT INTO `sys_district` VALUES ('632800', '632802', '德令哈市', '0977', '817000', 'Y', null, null, null, null, 'Delingha');
INSERT INTO `sys_district` VALUES ('632800', '632821', '乌兰县', '0977', '817100', 'Y', null, null, null, null, 'Wulan');
INSERT INTO `sys_district` VALUES ('632800', '632822', '都兰县', '0977', '816100', 'Y', null, null, null, null, 'Dulan');
INSERT INTO `sys_district` VALUES ('632800', '632823', '天峻县', '0977', '817200', 'Y', null, null, null, null, 'Tianjun');
INSERT INTO `sys_district` VALUES ('640100', '640104', '兴庆区', '0951', '750001', 'Y', null, null, null, null, 'Xingqing');
INSERT INTO `sys_district` VALUES ('640100', '640105', '西夏区', '0951', '750021', 'Y', null, null, null, null, 'Xixia');
INSERT INTO `sys_district` VALUES ('640100', '640106', '金凤区', '0951', '750011', 'Y', null, null, null, null, 'Jinfeng');
INSERT INTO `sys_district` VALUES ('640100', '640121', '永宁县', '0951', '750100', 'Y', null, null, null, null, 'Yongning');
INSERT INTO `sys_district` VALUES ('640100', '640122', '贺兰县', '0951', '750200', 'Y', null, null, null, null, 'Helan');
INSERT INTO `sys_district` VALUES ('640100', '640181', '灵武市', '0951', '750004', 'Y', null, null, null, null, 'Lingwu');
INSERT INTO `sys_district` VALUES ('640200', '640202', '大武口区', '0952', '753000', 'Y', null, null, null, null, 'Dawukou');
INSERT INTO `sys_district` VALUES ('640200', '640205', '惠农区', '0952', '753600', 'Y', null, null, null, null, 'Huinong');
INSERT INTO `sys_district` VALUES ('640200', '640221', '平罗县', '0952', '753400', 'Y', null, null, null, null, 'Pingluo');
INSERT INTO `sys_district` VALUES ('640300', '640302', '利通区', '0953', '751100', 'Y', null, null, null, null, 'Litong');
INSERT INTO `sys_district` VALUES ('640300', '640303', '红寺堡区', '0953', '751900', 'Y', null, null, null, null, 'Hongsibao');
INSERT INTO `sys_district` VALUES ('640300', '640323', '盐池县', '0953', '751500', 'Y', null, null, null, null, 'Yanchi');
INSERT INTO `sys_district` VALUES ('640300', '640324', '同心县', '0953', '751300', 'Y', null, null, null, null, 'Tongxin');
INSERT INTO `sys_district` VALUES ('640300', '640381', '青铜峡市', '0953', '751600', 'Y', null, null, null, null, 'Qingtongxia');
INSERT INTO `sys_district` VALUES ('640400', '640402', '原州区', '0954', '756000', 'Y', null, null, null, null, 'Yuanzhou');
INSERT INTO `sys_district` VALUES ('640400', '640422', '西吉县', '0954', '756200', 'Y', null, null, null, null, 'Xiji');
INSERT INTO `sys_district` VALUES ('640400', '640423', '隆德县', '0954', '756300', 'Y', null, null, null, null, 'Longde');
INSERT INTO `sys_district` VALUES ('640400', '640424', '泾源县', '0954', '756400', 'Y', null, null, null, null, 'Jingyuan');
INSERT INTO `sys_district` VALUES ('640400', '640425', '彭阳县', '0954', '756500', 'Y', null, null, null, null, 'Pengyang');
INSERT INTO `sys_district` VALUES ('640500', '640502', '沙坡头区', '0955', '755000', 'Y', null, null, null, null, 'Shapotou');
INSERT INTO `sys_district` VALUES ('640500', '640521', '中宁县', '0955', '751200', 'Y', null, null, null, null, 'Zhongning');
INSERT INTO `sys_district` VALUES ('640500', '640522', '海原县', '0955', '751800', 'Y', null, null, null, null, 'Haiyuan');
INSERT INTO `sys_district` VALUES ('650100', '650102', '天山区', '0991', '830002', 'Y', null, null, null, null, 'Tianshan');
INSERT INTO `sys_district` VALUES ('650100', '650103', '沙依巴克区', '0991', '830000', 'Y', null, null, null, null, 'Shayibake');
INSERT INTO `sys_district` VALUES ('650100', '650104', '新市区', '0991', '830011', 'Y', null, null, null, null, 'Xinshi');
INSERT INTO `sys_district` VALUES ('650100', '650105', '水磨沟区', '0991', '830017', 'Y', null, null, null, null, 'Shuimogou');
INSERT INTO `sys_district` VALUES ('650100', '650106', '头屯河区', '0991', '830022', 'Y', null, null, null, null, 'Toutunhe');
INSERT INTO `sys_district` VALUES ('650100', '650107', '达坂城区', '0991', '830039', 'Y', null, null, null, null, 'Dabancheng');
INSERT INTO `sys_district` VALUES ('650100', '650109', '米东区', '0991', '830019', 'Y', null, null, null, null, 'Midong');
INSERT INTO `sys_district` VALUES ('650100', '650121', '乌鲁木齐县', '0991', '830063', 'Y', null, null, null, null, 'Wulumuqi');
INSERT INTO `sys_district` VALUES ('650200', '650202', '独山子区', '0992', '834021', 'Y', null, null, null, null, 'Dushanzi');
INSERT INTO `sys_district` VALUES ('650200', '650203', '克拉玛依区', '0990', '834000', 'Y', null, null, null, null, 'Kelamayi');
INSERT INTO `sys_district` VALUES ('650200', '650204', '白碱滩区', '0990', '834008', 'Y', null, null, null, null, 'Baijiantan');
INSERT INTO `sys_district` VALUES ('650200', '650205', '乌尔禾区', '0990', '834012', 'Y', null, null, null, null, 'Wuerhe');
INSERT INTO `sys_district` VALUES ('652100', '652101', '吐鲁番市', '0995', '838000', 'Y', null, null, null, null, 'Tulufan');
INSERT INTO `sys_district` VALUES ('652100', '652122', '鄯善县', '0995', '838200', 'Y', null, null, null, null, 'Shanshan');
INSERT INTO `sys_district` VALUES ('652100', '652123', '托克逊县', '0995', '838100', 'Y', null, null, null, null, 'Tuokexun');
INSERT INTO `sys_district` VALUES ('652200', '652201', '哈密市', '0902', '839000', 'Y', null, null, null, null, 'Hami');
INSERT INTO `sys_district` VALUES ('652200', '652222', '巴里坤哈萨克自治县', '0902', '839200', 'Y', null, null, null, null, 'Balikun');
INSERT INTO `sys_district` VALUES ('652200', '652223', '伊吾县', '0902', '839300', 'Y', null, null, null, null, 'Yiwu');
INSERT INTO `sys_district` VALUES ('652300', '652301', '昌吉市', '0994', '831100', 'Y', null, null, null, null, 'Changji');
INSERT INTO `sys_district` VALUES ('652300', '652302', '阜康市', '0994', '831500', 'Y', null, null, null, null, 'Fukang');
INSERT INTO `sys_district` VALUES ('652300', '652323', '呼图壁县', '0994', '831200', 'Y', null, null, null, null, 'Hutubi');
INSERT INTO `sys_district` VALUES ('652300', '652324', '玛纳斯县', '0994', '832200', 'Y', null, null, null, null, 'Manasi');
INSERT INTO `sys_district` VALUES ('652300', '652325', '奇台县', '0994', '831800', 'Y', null, null, null, null, 'Qitai');
INSERT INTO `sys_district` VALUES ('652300', '652327', '吉木萨尔县', '0994', '831700', 'Y', null, null, null, null, 'Jimusaer');
INSERT INTO `sys_district` VALUES ('652300', '652328', '木垒哈萨克自治县', '0994', '831900', 'Y', null, null, null, null, 'Mulei');
INSERT INTO `sys_district` VALUES ('652700', '652701', '博乐市', '0909', '833400', 'Y', null, null, null, null, 'Bole');
INSERT INTO `sys_district` VALUES ('652700', '652702', '阿拉山口市', '0909', '833400', 'Y', null, null, null, null, 'Alashankou');
INSERT INTO `sys_district` VALUES ('652700', '652722', '精河县', '0909', '833300', 'Y', null, null, null, null, 'Jinghe');
INSERT INTO `sys_district` VALUES ('652700', '652723', '温泉县', '0909', '833500', 'Y', null, null, null, null, 'Wenquan');
INSERT INTO `sys_district` VALUES ('652800', '652801', '库尔勒市', '0996', '841000', 'Y', null, null, null, null, 'Kuerle');
INSERT INTO `sys_district` VALUES ('652800', '652822', '轮台县', '0996', '841600', 'Y', null, null, null, null, 'Luntai');
INSERT INTO `sys_district` VALUES ('652800', '652823', '尉犁县', '0996', '841500', 'Y', null, null, null, null, 'Yuli');
INSERT INTO `sys_district` VALUES ('652800', '652824', '若羌县', '0996', '841800', 'Y', null, null, null, null, 'Ruoqiang');
INSERT INTO `sys_district` VALUES ('652800', '652825', '且末县', '0996', '841900', 'Y', null, null, null, null, 'Qiemo');
INSERT INTO `sys_district` VALUES ('652800', '652826', '焉耆回族自治县', '0996', '841100', 'Y', null, null, null, null, 'Yanqi');
INSERT INTO `sys_district` VALUES ('652800', '652827', '和静县', '0996', '841300', 'Y', null, null, null, null, 'Hejing');
INSERT INTO `sys_district` VALUES ('652800', '652828', '和硕县', '0996', '841200', 'Y', null, null, null, null, 'Heshuo');
INSERT INTO `sys_district` VALUES ('652800', '652829', '博湖县', '0996', '841400', 'Y', null, null, null, null, 'Bohu');
INSERT INTO `sys_district` VALUES ('652900', '652901', '阿克苏市', '0997', '843000', 'Y', null, null, null, null, 'Akesu');
INSERT INTO `sys_district` VALUES ('652900', '652922', '温宿县', '0997', '843100', 'Y', null, null, null, null, 'Wensu');
INSERT INTO `sys_district` VALUES ('652900', '652923', '库车县', '0997', '842000', 'Y', null, null, null, null, 'Kuche');
INSERT INTO `sys_district` VALUES ('652900', '652924', '沙雅县', '0997', '842200', 'Y', null, null, null, null, 'Shaya');
INSERT INTO `sys_district` VALUES ('652900', '652925', '新和县', '0997', '842100', 'Y', null, null, null, null, 'Xinhe');
INSERT INTO `sys_district` VALUES ('652900', '652926', '拜城县', '0997', '842300', 'Y', null, null, null, null, 'Baicheng');
INSERT INTO `sys_district` VALUES ('652900', '652927', '乌什县', '0997', '843400', 'Y', null, null, null, null, 'Wushi');
INSERT INTO `sys_district` VALUES ('652900', '652928', '阿瓦提县', '0997', '843200', 'Y', null, null, null, null, 'Awati');
INSERT INTO `sys_district` VALUES ('652900', '652929', '柯坪县', '0997', '843600', 'Y', null, null, null, null, 'Keping');
INSERT INTO `sys_district` VALUES ('653000', '653001', '阿图什市', '0908', '845350', 'Y', null, null, null, null, 'Atushi');
INSERT INTO `sys_district` VALUES ('653000', '653022', '阿克陶县', '0908', '845550', 'Y', null, null, null, null, 'Aketao');
INSERT INTO `sys_district` VALUES ('653000', '653023', '阿合奇县', '0997', '843500', 'Y', null, null, null, null, 'Aheqi');
INSERT INTO `sys_district` VALUES ('653000', '653024', '乌恰县', '0908', '845450', 'Y', null, null, null, null, 'Wuqia');
INSERT INTO `sys_district` VALUES ('653100', '653101', '喀什市', '0998', '844000', 'Y', null, null, null, null, 'Kashi');
INSERT INTO `sys_district` VALUES ('653100', '653121', '疏附县', '0998', '844100', 'Y', null, null, null, null, 'Shufu');
INSERT INTO `sys_district` VALUES ('653100', '653122', '疏勒县', '0998', '844200', 'Y', null, null, null, null, 'Shule');
INSERT INTO `sys_district` VALUES ('653100', '653123', '英吉沙县', '0998', '844500', 'Y', null, null, null, null, 'Yingjisha');
INSERT INTO `sys_district` VALUES ('653100', '653124', '泽普县', '0998', '844800', 'Y', null, null, null, null, 'Zepu');
INSERT INTO `sys_district` VALUES ('653100', '653125', '莎车县', '0998', '844700', 'Y', null, null, null, null, 'Shache');
INSERT INTO `sys_district` VALUES ('653100', '653126', '叶城县', '0998', '844900', 'Y', null, null, null, null, 'Yecheng');
INSERT INTO `sys_district` VALUES ('653100', '653127', '麦盖提县', '0998', '844600', 'Y', null, null, null, null, 'Maigaiti');
INSERT INTO `sys_district` VALUES ('653100', '653128', '岳普湖县', '0998', '844400', 'Y', null, null, null, null, 'Yuepuhu');
INSERT INTO `sys_district` VALUES ('653100', '653129', '伽师县', '0998', '844300', 'Y', null, null, null, null, 'Jiashi');
INSERT INTO `sys_district` VALUES ('653100', '653130', '巴楚县', '0998', '843800', 'Y', null, null, null, null, 'Bachu');
INSERT INTO `sys_district` VALUES ('653100', '653131', '塔什库尔干塔吉克自治县', '0998', '845250', 'Y', null, null, null, null, 'Tashikuergantajike');
INSERT INTO `sys_district` VALUES ('653200', '653201', '和田市', '0903', '848000', 'Y', null, null, null, null, 'Hetianshi');
INSERT INTO `sys_district` VALUES ('653200', '653221', '和田县', '0903', '848000', 'Y', null, null, null, null, 'Hetianxian');
INSERT INTO `sys_district` VALUES ('653200', '653222', '墨玉县', '0903', '848100', 'Y', null, null, null, null, 'Moyu');
INSERT INTO `sys_district` VALUES ('653200', '653223', '皮山县', '0903', '845150', 'Y', null, null, null, null, 'Pishan');
INSERT INTO `sys_district` VALUES ('653200', '653224', '洛浦县', '0903', '848200', 'Y', null, null, null, null, 'Luopu');
INSERT INTO `sys_district` VALUES ('653200', '653225', '策勒县', '0903', '848300', 'Y', null, null, null, null, 'Cele');
INSERT INTO `sys_district` VALUES ('653200', '653226', '于田县', '0903', '848400', 'Y', null, null, null, null, 'Yutian');
INSERT INTO `sys_district` VALUES ('653200', '653227', '民丰县', '0903', '848500', 'Y', null, null, null, null, 'Minfeng');
INSERT INTO `sys_district` VALUES ('654000', '654002', '伊宁市', '0999', '835000', 'Y', null, null, null, null, 'Yining');
INSERT INTO `sys_district` VALUES ('654000', '654003', '奎屯市', '0992', '833200', 'Y', null, null, null, null, 'Kuitun');
INSERT INTO `sys_district` VALUES ('654000', '654004', '霍尔果斯市', '0999', '835221', 'Y', null, null, null, null, 'Huoerguosi');
INSERT INTO `sys_district` VALUES ('654000', '654021', '伊宁县', '0999', '835100', 'Y', null, null, null, null, 'Yining');
INSERT INTO `sys_district` VALUES ('654000', '654022', '察布查尔锡伯自治县', '0999', '835300', 'Y', null, null, null, null, 'Chabuchaerxibo');
INSERT INTO `sys_district` VALUES ('654000', '654023', '霍城县', '0999', '835200', 'Y', null, null, null, null, 'Huocheng');
INSERT INTO `sys_district` VALUES ('654000', '654024', '巩留县', '0999', '835400', 'Y', null, null, null, null, 'Gongliu');
INSERT INTO `sys_district` VALUES ('654000', '654025', '新源县', '0999', '835800', 'Y', null, null, null, null, 'Xinyuan');
INSERT INTO `sys_district` VALUES ('654000', '654026', '昭苏县', '0999', '835600', 'Y', null, null, null, null, 'Zhaosu');
INSERT INTO `sys_district` VALUES ('654000', '654027', '特克斯县', '0999', '835500', 'Y', null, null, null, null, 'Tekesi');
INSERT INTO `sys_district` VALUES ('654000', '654028', '尼勒克县', '0999', '835700', 'Y', null, null, null, null, 'Nileke');
INSERT INTO `sys_district` VALUES ('654200', '654201', '塔城市', '0901', '834700', 'Y', null, null, null, null, 'Tacheng');
INSERT INTO `sys_district` VALUES ('654200', '654202', '乌苏市', '0992', '833000', 'Y', null, null, null, null, 'Wusu');
INSERT INTO `sys_district` VALUES ('654200', '654221', '额敏县', '0901', '834600', 'Y', null, null, null, null, 'Emin');
INSERT INTO `sys_district` VALUES ('654200', '654223', '沙湾县', '0993', '832100', 'Y', null, null, null, null, 'Shawan');
INSERT INTO `sys_district` VALUES ('654200', '654224', '托里县', '0901', '834500', 'Y', null, null, null, null, 'Tuoli');
INSERT INTO `sys_district` VALUES ('654200', '654225', '裕民县', '0901', '834800', 'Y', null, null, null, null, 'Yumin');
INSERT INTO `sys_district` VALUES ('654200', '654226', '和布克赛尔蒙古自治县', '0990', '834400', 'Y', null, null, null, null, 'Hebukesaier');
INSERT INTO `sys_district` VALUES ('654300', '654301', '阿勒泰市', '0906', '836500', 'Y', null, null, null, null, 'Aletai');
INSERT INTO `sys_district` VALUES ('654300', '654321', '布尔津县', '0906', '836600', 'Y', null, null, null, null, 'Buerjin');
INSERT INTO `sys_district` VALUES ('654300', '654322', '富蕴县', '0906', '836100', 'Y', null, null, null, null, 'Fuyun');
INSERT INTO `sys_district` VALUES ('654300', '654323', '福海县', '0906', '836400', 'Y', null, null, null, null, 'Fuhai');
INSERT INTO `sys_district` VALUES ('654300', '654324', '哈巴河县', '0906', '836700', 'Y', null, null, null, null, 'Habahe');
INSERT INTO `sys_district` VALUES ('654300', '654325', '青河县', '0906', '836200', 'Y', null, null, null, null, 'Qinghe');
INSERT INTO `sys_district` VALUES ('654300', '654326', '吉木乃县', '0906', '836800', 'Y', null, null, null, null, 'Jimunai');
INSERT INTO `sys_district` VALUES ('659000', '659001', '石河子市', '0993', '832000', 'Y', null, null, null, null, 'Shihezi');
INSERT INTO `sys_district` VALUES ('659000', '659002', '阿拉尔市', '0997', '843300', 'Y', null, null, null, null, 'Aral');
INSERT INTO `sys_district` VALUES ('659000', '659003', '图木舒克市', '0998', '843806', 'Y', null, null, null, null, 'Tumxuk');
INSERT INTO `sys_district` VALUES ('659000', '659004', '五家渠市', '0994', '831300', 'Y', null, null, null, null, 'Wujiaqu');
INSERT INTO `sys_district` VALUES ('659000', '659005', '北屯市', '0906', '836000', 'Y', null, null, null, null, 'Beitun');
INSERT INTO `sys_district` VALUES ('659000', '659006', '铁门关市', '0906', '836000', 'Y', null, null, null, null, 'Tiemenguan');
INSERT INTO `sys_district` VALUES ('659000', '659007', '双河市', '0909', '833408', 'Y', null, null, null, null, 'Shuanghe');
INSERT INTO `sys_district` VALUES ('710100', '710101', '松山区', '02', '105', 'Y', null, null, null, null, 'Songshan');
INSERT INTO `sys_district` VALUES ('710100', '710102', '信义区', '02', '110', 'Y', null, null, null, null, 'Xinyi');
INSERT INTO `sys_district` VALUES ('710100', '710103', '大安区', '02', '106', 'Y', null, null, null, null, 'Da\'an');
INSERT INTO `sys_district` VALUES ('710100', '710104', '中山区', '02', '104', 'Y', null, null, null, null, 'Zhongshan');
INSERT INTO `sys_district` VALUES ('710100', '710105', '中正区', '02', '100', 'Y', null, null, null, null, 'Zhongzheng');
INSERT INTO `sys_district` VALUES ('710100', '710106', '大同区', '02', '103', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_district` VALUES ('710100', '710107', '万华区', '02', '108', 'Y', null, null, null, null, 'Wanhua');
INSERT INTO `sys_district` VALUES ('710100', '710108', '文山区', '02', '116', 'Y', null, null, null, null, 'Wenshan');
INSERT INTO `sys_district` VALUES ('710100', '710109', '南港区', '02', '115', 'Y', null, null, null, null, 'Nangang');
INSERT INTO `sys_district` VALUES ('710100', '710110', '内湖区', '02', '114', 'Y', null, null, null, null, 'Nahu');
INSERT INTO `sys_district` VALUES ('710100', '710111', '士林区', '02', '111', 'Y', null, null, null, null, 'Shilin');
INSERT INTO `sys_district` VALUES ('710100', '710112', '北投区', '02', '112', 'Y', null, null, null, null, 'Beitou');
INSERT INTO `sys_district` VALUES ('710200', '710201', '盐埕区', '07', '803', 'Y', null, null, null, null, 'Yancheng');
INSERT INTO `sys_district` VALUES ('710200', '710202', '鼓山区', '07', '804', 'Y', null, null, null, null, 'Gushan');
INSERT INTO `sys_district` VALUES ('710200', '710203', '左营区', '07', '813', 'Y', null, null, null, null, 'Zuoying');
INSERT INTO `sys_district` VALUES ('710200', '710204', '楠梓区', '07', '811', 'Y', null, null, null, null, 'Nanzi');
INSERT INTO `sys_district` VALUES ('710200', '710205', '三民区', '07', '807', 'Y', null, null, null, null, 'Sanmin');
INSERT INTO `sys_district` VALUES ('710200', '710206', '新兴区', '07', '800', 'Y', null, null, null, null, 'Xinxing');
INSERT INTO `sys_district` VALUES ('710200', '710207', '前金区', '07', '801', 'Y', null, null, null, null, 'Qianjin');
INSERT INTO `sys_district` VALUES ('710200', '710208', '苓雅区', '07', '802', 'Y', null, null, null, null, 'Lingya');
INSERT INTO `sys_district` VALUES ('710200', '710209', '前镇区', '07', '806', 'Y', null, null, null, null, 'Qianzhen');
INSERT INTO `sys_district` VALUES ('710200', '710210', '旗津区', '07', '805', 'Y', null, null, null, null, 'Qijin');
INSERT INTO `sys_district` VALUES ('710200', '710211', '小港区', '07', '812', 'Y', null, null, null, null, 'Xiaogang');
INSERT INTO `sys_district` VALUES ('710200', '710212', '凤山区', '07', '830', 'Y', null, null, null, null, 'Fengshan');
INSERT INTO `sys_district` VALUES ('710200', '710213', '林园区', '07', '832', 'Y', null, null, null, null, 'Linyuan');
INSERT INTO `sys_district` VALUES ('710200', '710214', '大寮区', '07', '831', 'Y', null, null, null, null, 'Daliao');
INSERT INTO `sys_district` VALUES ('710200', '710215', '大树区', '07', '840', 'Y', null, null, null, null, 'Dashu');
INSERT INTO `sys_district` VALUES ('710200', '710216', '大社区', '07', '815', 'Y', null, null, null, null, 'Dashe');
INSERT INTO `sys_district` VALUES ('710200', '710217', '仁武区', '07', '814', 'Y', null, null, null, null, 'Renwu');
INSERT INTO `sys_district` VALUES ('710200', '710218', '鸟松区', '07', '833', 'Y', null, null, null, null, 'Niaosong');
INSERT INTO `sys_district` VALUES ('710200', '710219', '冈山区', '07', '820', 'Y', null, null, null, null, 'Gangshan');
INSERT INTO `sys_district` VALUES ('710200', '710220', '桥头区', '07', '825', 'Y', null, null, null, null, 'Qiaotou');
INSERT INTO `sys_district` VALUES ('710200', '710221', '燕巢区', '07', '824', 'Y', null, null, null, null, 'Yanchao');
INSERT INTO `sys_district` VALUES ('710200', '710222', '田寮区', '07', '823', 'Y', null, null, null, null, 'Tianliao');
INSERT INTO `sys_district` VALUES ('710200', '710223', '阿莲区', '07', '822', 'Y', null, null, null, null, 'Alian');
INSERT INTO `sys_district` VALUES ('710200', '710224', '路竹区', '07', '821', 'Y', null, null, null, null, 'Luzhu');
INSERT INTO `sys_district` VALUES ('710200', '710225', '湖内区', '07', '829', 'Y', null, null, null, null, 'Huna');
INSERT INTO `sys_district` VALUES ('710200', '710226', '茄萣区', '07', '852', 'Y', null, null, null, null, 'Qieding');
INSERT INTO `sys_district` VALUES ('710200', '710227', '永安区', '07', '828', 'Y', null, null, null, null, 'Yong\'an');
INSERT INTO `sys_district` VALUES ('710200', '710228', '弥陀区', '07', '827', 'Y', null, null, null, null, 'Mituo');
INSERT INTO `sys_district` VALUES ('710200', '710229', '梓官区', '07', '826', 'Y', null, null, null, null, 'Ziguan');
INSERT INTO `sys_district` VALUES ('710200', '710230', '旗山区', '07', '842', 'Y', null, null, null, null, 'Qishan');
INSERT INTO `sys_district` VALUES ('710200', '710231', '美浓区', '07', '843', 'Y', null, null, null, null, 'Meinong');
INSERT INTO `sys_district` VALUES ('710200', '710232', '六龟区', '07', '844', 'Y', null, null, null, null, 'Liugui');
INSERT INTO `sys_district` VALUES ('710200', '710233', '甲仙区', '07', '847', 'Y', null, null, null, null, 'Jiaxian');
INSERT INTO `sys_district` VALUES ('710200', '710234', '杉林区', '07', '846', 'Y', null, null, null, null, 'Shanlin');
INSERT INTO `sys_district` VALUES ('710200', '710235', '内门区', '07', '845', 'Y', null, null, null, null, 'Namen');
INSERT INTO `sys_district` VALUES ('710200', '710236', '茂林区', '07', '851', 'Y', null, null, null, null, 'Maolin');
INSERT INTO `sys_district` VALUES ('710200', '710237', '桃源区', '07', '848', 'Y', null, null, null, null, 'Taoyuan');
INSERT INTO `sys_district` VALUES ('710200', '710238', '那玛夏区', '07', '849', 'Y', null, null, null, null, 'Namaxia');
INSERT INTO `sys_district` VALUES ('710300', '710301', '中正区', '02', '202', 'Y', null, null, null, null, 'Zhongzheng');
INSERT INTO `sys_district` VALUES ('710300', '710302', '七堵区', '02', '206', 'Y', null, null, null, null, 'Qidu');
INSERT INTO `sys_district` VALUES ('710300', '710303', '暖暖区', '02', '205', 'Y', null, null, null, null, 'Nuannuan');
INSERT INTO `sys_district` VALUES ('710300', '710304', '仁爱区', '02', '200', 'Y', null, null, null, null, 'Renai');
INSERT INTO `sys_district` VALUES ('710300', '710305', '中山区', '02', '203', 'Y', null, null, null, null, 'Zhongshan');
INSERT INTO `sys_district` VALUES ('710300', '710306', '安乐区', '02', '204', 'Y', null, null, null, null, 'Anle');
INSERT INTO `sys_district` VALUES ('710300', '710307', '信义区', '02', '201', 'Y', null, null, null, null, 'Xinyi');
INSERT INTO `sys_district` VALUES ('710400', '710401', '中区', '04', '400', 'Y', null, null, null, null, 'Zhongqu');
INSERT INTO `sys_district` VALUES ('710400', '710402', '东区', '04', '401', 'Y', null, null, null, null, 'Dongqu');
INSERT INTO `sys_district` VALUES ('710400', '710403', '南区', '04', '402', 'Y', null, null, null, null, 'Nanqu');
INSERT INTO `sys_district` VALUES ('710400', '710404', '西区', '04', '403', 'Y', null, null, null, null, 'Xiqu');
INSERT INTO `sys_district` VALUES ('710400', '710405', '北区', '04', '404', 'Y', null, null, null, null, 'Beiqu');
INSERT INTO `sys_district` VALUES ('710400', '710406', '西屯区', '04', '407', 'Y', null, null, null, null, 'Xitun');
INSERT INTO `sys_district` VALUES ('710400', '710407', '南屯区', '04', '408', 'Y', null, null, null, null, 'Nantun');
INSERT INTO `sys_district` VALUES ('710400', '710408', '北屯区', '04', '406', 'Y', null, null, null, null, 'Beitun');
INSERT INTO `sys_district` VALUES ('710400', '710409', '丰原区', '04', '420', 'Y', null, null, null, null, 'Fengyuan');
INSERT INTO `sys_district` VALUES ('710400', '710410', '东势区', '04', '423', 'Y', null, null, null, null, 'Dongshi');
INSERT INTO `sys_district` VALUES ('710400', '710411', '大甲区', '04', '437', 'Y', null, null, null, null, 'Dajia');
INSERT INTO `sys_district` VALUES ('710400', '710412', '清水区', '04', '436', 'Y', null, null, null, null, 'Qingshui');
INSERT INTO `sys_district` VALUES ('710400', '710413', '沙鹿区', '04', '433', 'Y', null, null, null, null, 'Shalu');
INSERT INTO `sys_district` VALUES ('710400', '710414', '梧栖区', '04', '435', 'Y', null, null, null, null, 'Wuqi');
INSERT INTO `sys_district` VALUES ('710400', '710415', '后里区', '04', '421', 'Y', null, null, null, null, 'Houli');
INSERT INTO `sys_district` VALUES ('710400', '710416', '神冈区', '04', '429', 'Y', null, null, null, null, 'Shengang');
INSERT INTO `sys_district` VALUES ('710400', '710417', '潭子区', '04', '427', 'Y', null, null, null, null, 'Tanzi');
INSERT INTO `sys_district` VALUES ('710400', '710418', '大雅区', '04', '428', 'Y', null, null, null, null, 'Daya');
INSERT INTO `sys_district` VALUES ('710400', '710419', '新社区', '04', '426', 'Y', null, null, null, null, 'Xinshe');
INSERT INTO `sys_district` VALUES ('710400', '710420', '石冈区', '04', '422', 'Y', null, null, null, null, 'Shigang');
INSERT INTO `sys_district` VALUES ('710400', '710421', '外埔区', '04', '438', 'Y', null, null, null, null, 'Waipu');
INSERT INTO `sys_district` VALUES ('710400', '710422', '大安区', '04', '439', 'Y', null, null, null, null, 'Da\'an');
INSERT INTO `sys_district` VALUES ('710400', '710423', '乌日区', '04', '414', 'Y', null, null, null, null, 'Wuri');
INSERT INTO `sys_district` VALUES ('710400', '710424', '大肚区', '04', '432', 'Y', null, null, null, null, 'Dadu');
INSERT INTO `sys_district` VALUES ('710400', '710425', '龙井区', '04', '434', 'Y', null, null, null, null, 'Longjing');
INSERT INTO `sys_district` VALUES ('710400', '710426', '雾峰区', '04', '413', 'Y', null, null, null, null, 'Wufeng');
INSERT INTO `sys_district` VALUES ('710400', '710427', '太平区', '04', '411', 'Y', null, null, null, null, 'Taiping');
INSERT INTO `sys_district` VALUES ('710400', '710428', '大里区', '04', '412', 'Y', null, null, null, null, 'Dali');
INSERT INTO `sys_district` VALUES ('710400', '710429', '和平区', '04', '424', 'Y', null, null, null, null, 'Heping');
INSERT INTO `sys_district` VALUES ('710500', '710501', '东区', '06', '701', 'Y', null, null, null, null, 'Dongqu');
INSERT INTO `sys_district` VALUES ('710500', '710502', '南区', '06', '702', 'Y', null, null, null, null, 'Nanqu');
INSERT INTO `sys_district` VALUES ('710500', '710504', '北区', '06', '704', 'Y', null, null, null, null, 'Beiqu');
INSERT INTO `sys_district` VALUES ('710500', '710506', '安南区', '06', '709', 'Y', null, null, null, null, 'Annan');
INSERT INTO `sys_district` VALUES ('710500', '710507', '安平区', '06', '708', 'Y', null, null, null, null, 'Anping');
INSERT INTO `sys_district` VALUES ('710500', '710508', '中西区', '06', '700', 'Y', null, null, null, null, 'Zhongxi');
INSERT INTO `sys_district` VALUES ('710500', '710509', '新营区', '06', '730', 'Y', null, null, null, null, 'Xinying');
INSERT INTO `sys_district` VALUES ('710500', '710510', '盐水区', '06', '737', 'Y', null, null, null, null, 'Yanshui');
INSERT INTO `sys_district` VALUES ('710500', '710511', '白河区', '06', '732', 'Y', null, null, null, null, 'Baihe');
INSERT INTO `sys_district` VALUES ('710500', '710512', '柳营区', '06', '736', 'Y', null, null, null, null, 'Liuying');
INSERT INTO `sys_district` VALUES ('710500', '710513', '后壁区', '06', '731', 'Y', null, null, null, null, 'Houbi');
INSERT INTO `sys_district` VALUES ('710500', '710514', '东山区', '06', '733', 'Y', null, null, null, null, 'Dongshan');
INSERT INTO `sys_district` VALUES ('710500', '710515', '麻豆区', '06', '721', 'Y', null, null, null, null, 'Madou');
INSERT INTO `sys_district` VALUES ('710500', '710516', '下营区', '06', '735', 'Y', null, null, null, null, 'Xiaying');
INSERT INTO `sys_district` VALUES ('710500', '710517', '六甲区', '06', '734', 'Y', null, null, null, null, 'Liujia');
INSERT INTO `sys_district` VALUES ('710500', '710518', '官田区', '06', '720', 'Y', null, null, null, null, 'Guantian');
INSERT INTO `sys_district` VALUES ('710500', '710519', '大内区', '06', '742', 'Y', null, null, null, null, 'Dana');
INSERT INTO `sys_district` VALUES ('710500', '710520', '佳里区', '06', '722', 'Y', null, null, null, null, 'Jiali');
INSERT INTO `sys_district` VALUES ('710500', '710521', '学甲区', '06', '726', 'Y', null, null, null, null, 'Xuejia');
INSERT INTO `sys_district` VALUES ('710500', '710522', '西港区', '06', '723', 'Y', null, null, null, null, 'Xigang');
INSERT INTO `sys_district` VALUES ('710500', '710523', '七股区', '06', '724', 'Y', null, null, null, null, 'Qigu');
INSERT INTO `sys_district` VALUES ('710500', '710524', '将军区', '06', '725', 'Y', null, null, null, null, 'Jiangjun');
INSERT INTO `sys_district` VALUES ('710500', '710525', '北门区', '06', '727', 'Y', null, null, null, null, 'Beimen');
INSERT INTO `sys_district` VALUES ('710500', '710526', '新化区', '06', '712', 'Y', null, null, null, null, 'Xinhua');
INSERT INTO `sys_district` VALUES ('710500', '710527', '善化区', '06', '741', 'Y', null, null, null, null, 'Shanhua');
INSERT INTO `sys_district` VALUES ('710500', '710528', '新市区', '06', '744', 'Y', null, null, null, null, 'Xinshi');
INSERT INTO `sys_district` VALUES ('710500', '710529', '安定区', '06', '745', 'Y', null, null, null, null, 'Anding');
INSERT INTO `sys_district` VALUES ('710500', '710530', '山上区', '06', '743', 'Y', null, null, null, null, 'Shanshang');
INSERT INTO `sys_district` VALUES ('710500', '710531', '玉井区', '06', '714', 'Y', null, null, null, null, 'Yujing');
INSERT INTO `sys_district` VALUES ('710500', '710532', '楠西区', '06', '715', 'Y', null, null, null, null, 'Nanxi');
INSERT INTO `sys_district` VALUES ('710500', '710533', '南化区', '06', '716', 'Y', null, null, null, null, 'Nanhua');
INSERT INTO `sys_district` VALUES ('710500', '710534', '左镇区', '06', '713', 'Y', null, null, null, null, 'Zuozhen');
INSERT INTO `sys_district` VALUES ('710500', '710535', '仁德区', '06', '717', 'Y', null, null, null, null, 'Rende');
INSERT INTO `sys_district` VALUES ('710500', '710536', '归仁区', '06', '711', 'Y', null, null, null, null, 'Guiren');
INSERT INTO `sys_district` VALUES ('710500', '710537', '关庙区', '06', '718', 'Y', null, null, null, null, 'Guanmiao');
INSERT INTO `sys_district` VALUES ('710500', '710538', '龙崎区', '06', '719', 'Y', null, null, null, null, 'Longqi');
INSERT INTO `sys_district` VALUES ('710500', '710539', '永康区', '06', '710', 'Y', null, null, null, null, 'Yongkang');
INSERT INTO `sys_district` VALUES ('710600', '710601', '东区', '03', '300', 'Y', null, null, null, null, 'Dongqu');
INSERT INTO `sys_district` VALUES ('710600', '710602', '北区', '03', null, 'Y', null, null, null, null, 'Beiqu');
INSERT INTO `sys_district` VALUES ('710600', '710603', '香山区', '03', null, 'Y', null, null, null, null, 'Xiangshan');
INSERT INTO `sys_district` VALUES ('710700', '710701', '东区', '05', '600', 'Y', null, null, null, null, 'Dongqu');
INSERT INTO `sys_district` VALUES ('710700', '710702', '西区', '05', '600', 'Y', null, null, null, null, 'Xiqu');
INSERT INTO `sys_district` VALUES ('710800', '710801', '板桥区', '02', '220', 'Y', null, null, null, null, 'Banqiao');
INSERT INTO `sys_district` VALUES ('710800', '710802', '三重区', '02', '241', 'Y', null, null, null, null, 'Sanzhong');
INSERT INTO `sys_district` VALUES ('710800', '710803', '中和区', '02', '235', 'Y', null, null, null, null, 'Zhonghe');
INSERT INTO `sys_district` VALUES ('710800', '710804', '永和区', '02', '234', 'Y', null, null, null, null, 'Yonghe');
INSERT INTO `sys_district` VALUES ('710800', '710805', '新庄区', '02', '242', 'Y', null, null, null, null, 'Xinzhuang');
INSERT INTO `sys_district` VALUES ('710800', '710806', '新店区', '02', '231', 'Y', null, null, null, null, 'Xindian');
INSERT INTO `sys_district` VALUES ('710800', '710807', '树林区', '02', '238', 'Y', null, null, null, null, 'Shulin');
INSERT INTO `sys_district` VALUES ('710800', '710808', '莺歌区', '02', '239', 'Y', null, null, null, null, 'Yingge');
INSERT INTO `sys_district` VALUES ('710800', '710809', '三峡区', '02', '237', 'Y', null, null, null, null, 'Sanxia');
INSERT INTO `sys_district` VALUES ('710800', '710810', '淡水区', '02', '251', 'Y', null, null, null, null, 'Danshui');
INSERT INTO `sys_district` VALUES ('710800', '710811', '汐止区', '02', '221', 'Y', null, null, null, null, 'Xizhi');
INSERT INTO `sys_district` VALUES ('710800', '710812', '瑞芳区', '02', '224', 'Y', null, null, null, null, 'Ruifang');
INSERT INTO `sys_district` VALUES ('710800', '710813', '土城区', '02', '236', 'Y', null, null, null, null, 'Tucheng');
INSERT INTO `sys_district` VALUES ('710800', '710814', '芦洲区', '02', '247', 'Y', null, null, null, null, 'Luzhou');
INSERT INTO `sys_district` VALUES ('710800', '710815', '五股区', '02', '248', 'Y', null, null, null, null, 'Wugu');
INSERT INTO `sys_district` VALUES ('710800', '710816', '泰山区', '02', '243', 'Y', null, null, null, null, 'Taishan');
INSERT INTO `sys_district` VALUES ('710800', '710817', '林口区', '02', '244', 'Y', null, null, null, null, 'Linkou');
INSERT INTO `sys_district` VALUES ('710800', '710818', '深坑区', '02', '222', 'Y', null, null, null, null, 'Shenkeng');
INSERT INTO `sys_district` VALUES ('710800', '710819', '石碇区', '02', '223', 'Y', null, null, null, null, 'Shiding');
INSERT INTO `sys_district` VALUES ('710800', '710820', '坪林区', '02', '232', 'Y', null, null, null, null, 'Pinglin');
INSERT INTO `sys_district` VALUES ('710800', '710821', '三芝区', '02', '252', 'Y', null, null, null, null, 'Sanzhi');
INSERT INTO `sys_district` VALUES ('710800', '710822', '石门区', '02', '253', 'Y', null, null, null, null, 'Shimen');
INSERT INTO `sys_district` VALUES ('710800', '710823', '八里区', '02', '249', 'Y', null, null, null, null, 'Bali');
INSERT INTO `sys_district` VALUES ('710800', '710824', '平溪区', '02', '226', 'Y', null, null, null, null, 'Pingxi');
INSERT INTO `sys_district` VALUES ('710800', '710825', '双溪区', '02', '227', 'Y', null, null, null, null, 'Shuangxi');
INSERT INTO `sys_district` VALUES ('710800', '710826', '贡寮区', '02', '228', 'Y', null, null, null, null, 'Gongliao');
INSERT INTO `sys_district` VALUES ('710800', '710827', '金山区', '02', '208', 'Y', null, null, null, null, 'Jinshan');
INSERT INTO `sys_district` VALUES ('710800', '710828', '万里区', '02', '207', 'Y', null, null, null, null, 'Wanli');
INSERT INTO `sys_district` VALUES ('710800', '710829', '乌来区', '02', '233', 'Y', null, null, null, null, 'Wulai');
INSERT INTO `sys_district` VALUES ('712200', '712201', '宜兰市', '03', '260', 'Y', null, null, null, null, 'Yilan');
INSERT INTO `sys_district` VALUES ('712200', '712221', '罗东镇', '03', '265', 'Y', null, null, null, null, 'Luodong');
INSERT INTO `sys_district` VALUES ('712200', '712222', '苏澳镇', '03', '270', 'Y', null, null, null, null, 'Suao');
INSERT INTO `sys_district` VALUES ('712200', '712223', '头城镇', '03', '261', 'Y', null, null, null, null, 'Toucheng');
INSERT INTO `sys_district` VALUES ('712200', '712224', '礁溪乡', '03', '262', 'Y', null, null, null, null, 'Jiaoxi');
INSERT INTO `sys_district` VALUES ('712200', '712225', '壮围乡', '03', '263', 'Y', null, null, null, null, 'Zhuangwei');
INSERT INTO `sys_district` VALUES ('712200', '712226', '员山乡', '03', '264', 'Y', null, null, null, null, 'Yuanshan');
INSERT INTO `sys_district` VALUES ('712200', '712227', '冬山乡', '03', '269', 'Y', null, null, null, null, 'Dongshan');
INSERT INTO `sys_district` VALUES ('712200', '712228', '五结乡', '03', '268', 'Y', null, null, null, null, 'Wujie');
INSERT INTO `sys_district` VALUES ('712200', '712229', '三星乡', '03', '266', 'Y', null, null, null, null, 'Sanxing');
INSERT INTO `sys_district` VALUES ('712200', '712230', '大同乡', '03', '267', 'Y', null, null, null, null, 'Datong');
INSERT INTO `sys_district` VALUES ('712200', '712231', '南澳乡', '03', '272', 'Y', null, null, null, null, 'Nanao');
INSERT INTO `sys_district` VALUES ('712300', '712301', '桃园市', '03', '330', 'Y', null, null, null, null, 'Taoyuan');
INSERT INTO `sys_district` VALUES ('712300', '712302', '中坜市', '03', '320', 'Y', null, null, null, null, 'Zhongli');
INSERT INTO `sys_district` VALUES ('712300', '712303', '平镇市', '03', '324', 'Y', null, null, null, null, 'Pingzhen');
INSERT INTO `sys_district` VALUES ('712300', '712304', '八德市', '03', '334', 'Y', null, null, null, null, 'Bade');
INSERT INTO `sys_district` VALUES ('712300', '712305', '杨梅市', '03', '326', 'Y', null, null, null, null, 'Yangmei');
INSERT INTO `sys_district` VALUES ('712300', '712306', '芦竹市', '03', '338', 'Y', null, null, null, null, 'Luzhu');
INSERT INTO `sys_district` VALUES ('712300', '712321', '大溪镇', '03', '335', 'Y', null, null, null, null, 'Daxi');
INSERT INTO `sys_district` VALUES ('712300', '712324', '大园乡', '03', '337', 'Y', null, null, null, null, 'Dayuan');
INSERT INTO `sys_district` VALUES ('712300', '712325', '龟山乡', '03', '333', 'Y', null, null, null, null, 'Guishan');
INSERT INTO `sys_district` VALUES ('712300', '712327', '龙潭乡', '03', '325', 'Y', null, null, null, null, 'Longtan');
INSERT INTO `sys_district` VALUES ('712300', '712329', '新屋乡', '03', '327', 'Y', null, null, null, null, 'Xinwu');
INSERT INTO `sys_district` VALUES ('712300', '712330', '观音乡', '03', '328', 'Y', null, null, null, null, 'Guanyin');
INSERT INTO `sys_district` VALUES ('712300', '712331', '复兴乡', '03', '336', 'Y', null, null, null, null, 'Fuxing');
INSERT INTO `sys_district` VALUES ('712400', '712401', '竹北市', '03', '302', 'Y', null, null, null, null, 'Zhubei');
INSERT INTO `sys_district` VALUES ('712400', '712421', '竹东镇', '03', '310', 'Y', null, null, null, null, 'Zhudong');
INSERT INTO `sys_district` VALUES ('712400', '712422', '新埔镇', '03', '305', 'Y', null, null, null, null, 'Xinpu');
INSERT INTO `sys_district` VALUES ('712400', '712423', '关西镇', '03', '306', 'Y', null, null, null, null, 'Guanxi');
INSERT INTO `sys_district` VALUES ('712400', '712424', '湖口乡', '03', '303', 'Y', null, null, null, null, 'Hukou');
INSERT INTO `sys_district` VALUES ('712400', '712425', '新丰乡', '03', '304', 'Y', null, null, null, null, 'Xinfeng');
INSERT INTO `sys_district` VALUES ('712400', '712426', '芎林乡', '03', '307', 'Y', null, null, null, null, 'Xionglin');
INSERT INTO `sys_district` VALUES ('712400', '712427', '横山乡', '03', '312', 'Y', null, null, null, null, 'Hengshan');
INSERT INTO `sys_district` VALUES ('712400', '712428', '北埔乡', '03', '314', 'Y', null, null, null, null, 'Beipu');
INSERT INTO `sys_district` VALUES ('712400', '712429', '宝山乡', '03', '308', 'Y', null, null, null, null, 'Baoshan');
INSERT INTO `sys_district` VALUES ('712400', '712430', '峨眉乡', '03', '315', 'Y', null, null, null, null, 'Emei');
INSERT INTO `sys_district` VALUES ('712400', '712431', '尖石乡', '03', '313', 'Y', null, null, null, null, 'Jianshi');
INSERT INTO `sys_district` VALUES ('712400', '712432', '五峰乡', '03', '311', 'Y', null, null, null, null, 'Wufeng');
INSERT INTO `sys_district` VALUES ('712500', '712501', '苗栗市', '037', '360', 'Y', null, null, null, null, 'Miaoli');
INSERT INTO `sys_district` VALUES ('712500', '712521', '苑里镇', '037', '358', 'Y', null, null, null, null, 'Yuanli');
INSERT INTO `sys_district` VALUES ('712500', '712522', '通霄镇', '037', '357', 'Y', null, null, null, null, 'Tongxiao');
INSERT INTO `sys_district` VALUES ('712500', '712523', '竹南镇', '037', '350', 'Y', null, null, null, null, 'Zhunan');
INSERT INTO `sys_district` VALUES ('712500', '712524', '头份镇', '037', '351', 'Y', null, null, null, null, 'Toufen');
INSERT INTO `sys_district` VALUES ('712500', '712525', '后龙镇', '037', '356', 'Y', null, null, null, null, 'Houlong');
INSERT INTO `sys_district` VALUES ('712500', '712526', '卓兰镇', '037', '369', 'Y', null, null, null, null, 'Zhuolan');
INSERT INTO `sys_district` VALUES ('712500', '712527', '大湖乡', '037', '364', 'Y', null, null, null, null, 'Dahu');
INSERT INTO `sys_district` VALUES ('712500', '712528', '公馆乡', '037', '363', 'Y', null, null, null, null, 'Gongguan');
INSERT INTO `sys_district` VALUES ('712500', '712529', '铜锣乡', '037', '366', 'Y', null, null, null, null, 'Tongluo');
INSERT INTO `sys_district` VALUES ('712500', '712530', '南庄乡', '037', '353', 'Y', null, null, null, null, 'Nanzhuang');
INSERT INTO `sys_district` VALUES ('712500', '712531', '头屋乡', '037', '362', 'Y', null, null, null, null, 'Touwu');
INSERT INTO `sys_district` VALUES ('712500', '712532', '三义乡', '037', '367', 'Y', null, null, null, null, 'Sanyi');
INSERT INTO `sys_district` VALUES ('712500', '712533', '西湖乡', '037', '368', 'Y', null, null, null, null, 'Xihu');
INSERT INTO `sys_district` VALUES ('712500', '712534', '造桥乡', '037', '361', 'Y', null, null, null, null, 'Zaoqiao');
INSERT INTO `sys_district` VALUES ('712500', '712535', '三湾乡', '037', '352', 'Y', null, null, null, null, 'Sanwan');
INSERT INTO `sys_district` VALUES ('712500', '712536', '狮潭乡', '037', '354', 'Y', null, null, null, null, 'Shitan');
INSERT INTO `sys_district` VALUES ('712500', '712537', '泰安乡', '037', '365', 'Y', null, null, null, null, 'Tai\'an');
INSERT INTO `sys_district` VALUES ('712700', '712701', '彰化市', '04', '500', 'Y', null, null, null, null, 'Zhanghuashi');
INSERT INTO `sys_district` VALUES ('712700', '712721', '鹿港镇', '04', '505', 'Y', null, null, null, null, 'Lugang');
INSERT INTO `sys_district` VALUES ('712700', '712722', '和美镇', '04', '508', 'Y', null, null, null, null, 'Hemei');
INSERT INTO `sys_district` VALUES ('712700', '712723', '线西乡', '04', '507', 'Y', null, null, null, null, 'Xianxi');
INSERT INTO `sys_district` VALUES ('712700', '712724', '伸港乡', '04', '509', 'Y', null, null, null, null, 'Shengang');
INSERT INTO `sys_district` VALUES ('712700', '712725', '福兴乡', '04', '506', 'Y', null, null, null, null, 'Fuxing');
INSERT INTO `sys_district` VALUES ('712700', '712726', '秀水乡', '04', '504', 'Y', null, null, null, null, 'Xiushui');
INSERT INTO `sys_district` VALUES ('712700', '712727', '花坛乡', '04', '503', 'Y', null, null, null, null, 'Huatan');
INSERT INTO `sys_district` VALUES ('712700', '712728', '芬园乡', '04', '502', 'Y', null, null, null, null, 'Fenyuan');
INSERT INTO `sys_district` VALUES ('712700', '712729', '员林镇', '04', '510', 'Y', null, null, null, null, 'Yuanlin');
INSERT INTO `sys_district` VALUES ('712700', '712730', '溪湖镇', '04', '514', 'Y', null, null, null, null, 'Xihu');
INSERT INTO `sys_district` VALUES ('712700', '712731', '田中镇', '04', '520', 'Y', null, null, null, null, 'Tianzhong');
INSERT INTO `sys_district` VALUES ('712700', '712732', '大村乡', '04', '515', 'Y', null, null, null, null, 'Dacun');
INSERT INTO `sys_district` VALUES ('712700', '712733', '埔盐乡', '04', '516', 'Y', null, null, null, null, 'Puyan');
INSERT INTO `sys_district` VALUES ('712700', '712734', '埔心乡', '04', '513', 'Y', null, null, null, null, 'Puxin');
INSERT INTO `sys_district` VALUES ('712700', '712735', '永靖乡', '04', '512', 'Y', null, null, null, null, 'Yongjing');
INSERT INTO `sys_district` VALUES ('712700', '712736', '社头乡', '04', '511', 'Y', null, null, null, null, 'Shetou');
INSERT INTO `sys_district` VALUES ('712700', '712737', '二水乡', '04', '530', 'Y', null, null, null, null, 'Ershui');
INSERT INTO `sys_district` VALUES ('712700', '712738', '北斗镇', '04', '521', 'Y', null, null, null, null, 'Beidou');
INSERT INTO `sys_district` VALUES ('712700', '712739', '二林镇', '04', '526', 'Y', null, null, null, null, 'Erlin');
INSERT INTO `sys_district` VALUES ('712700', '712740', '田尾乡', '04', '522', 'Y', null, null, null, null, 'Tianwei');
INSERT INTO `sys_district` VALUES ('712700', '712741', '埤头乡', '04', '523', 'Y', null, null, null, null, 'Pitou');
INSERT INTO `sys_district` VALUES ('712700', '712742', '芳苑乡', '04', '528', 'Y', null, null, null, null, 'Fangyuan');
INSERT INTO `sys_district` VALUES ('712700', '712743', '大城乡', '04', '527', 'Y', null, null, null, null, 'Dacheng');
INSERT INTO `sys_district` VALUES ('712700', '712744', '竹塘乡', '04', '525', 'Y', null, null, null, null, 'Zhutang');
INSERT INTO `sys_district` VALUES ('712700', '712745', '溪州乡', '04', '524', 'Y', null, null, null, null, 'Xizhou');
INSERT INTO `sys_district` VALUES ('712800', '712801', '南投市', '049', '540', 'Y', null, null, null, null, 'Nantoushi');
INSERT INTO `sys_district` VALUES ('712800', '712821', '埔里镇', '049', '545', 'Y', null, null, null, null, 'Puli');
INSERT INTO `sys_district` VALUES ('712800', '712822', '草屯镇', '049', '542', 'Y', null, null, null, null, 'Caotun');
INSERT INTO `sys_district` VALUES ('712800', '712823', '竹山镇', '049', '557', 'Y', null, null, null, null, 'Zhushan');
INSERT INTO `sys_district` VALUES ('712800', '712824', '集集镇', '049', '552', 'Y', null, null, null, null, 'Jiji');
INSERT INTO `sys_district` VALUES ('712800', '712825', '名间乡', '049', '551', 'Y', null, null, null, null, 'Mingjian');
INSERT INTO `sys_district` VALUES ('712800', '712826', '鹿谷乡', '049', '558', 'Y', null, null, null, null, 'Lugu');
INSERT INTO `sys_district` VALUES ('712800', '712827', '中寮乡', '049', '541', 'Y', null, null, null, null, 'Zhongliao');
INSERT INTO `sys_district` VALUES ('712800', '712828', '鱼池乡', '049', '555', 'Y', null, null, null, null, 'Yuchi');
INSERT INTO `sys_district` VALUES ('712800', '712829', '国姓乡', '049', '544', 'Y', null, null, null, null, 'Guoxing');
INSERT INTO `sys_district` VALUES ('712800', '712830', '水里乡', '049', '553', 'Y', null, null, null, null, 'Shuili');
INSERT INTO `sys_district` VALUES ('712800', '712831', '信义乡', '049', '556', 'Y', null, null, null, null, 'Xinyi');
INSERT INTO `sys_district` VALUES ('712800', '712832', '仁爱乡', '049', '546', 'Y', null, null, null, null, 'Renai');
INSERT INTO `sys_district` VALUES ('712900', '712901', '斗六市', '05', '640', 'Y', null, null, null, null, 'Douliu');
INSERT INTO `sys_district` VALUES ('712900', '712921', '斗南镇', '05', '630', 'Y', null, null, null, null, 'Dounan');
INSERT INTO `sys_district` VALUES ('712900', '712922', '虎尾镇', '05', '632', 'Y', null, null, null, null, 'Huwei');
INSERT INTO `sys_district` VALUES ('712900', '712923', '西螺镇', '05', '648', 'Y', null, null, null, null, 'Xiluo');
INSERT INTO `sys_district` VALUES ('712900', '712924', '土库镇', '05', '633', 'Y', null, null, null, null, 'Tuku');
INSERT INTO `sys_district` VALUES ('712900', '712925', '北港镇', '05', '651', 'Y', null, null, null, null, 'Beigang');
INSERT INTO `sys_district` VALUES ('712900', '712926', '古坑乡', '05', '646', 'Y', null, null, null, null, 'Gukeng');
INSERT INTO `sys_district` VALUES ('712900', '712927', '大埤乡', '05', '631', 'Y', null, null, null, null, 'Dapi');
INSERT INTO `sys_district` VALUES ('712900', '712928', '莿桐乡', '05', '647', 'Y', null, null, null, null, 'Citong');
INSERT INTO `sys_district` VALUES ('712900', '712929', '林内乡', '05', '643', 'Y', null, null, null, null, 'Linna');
INSERT INTO `sys_district` VALUES ('712900', '712930', '二仑乡', '05', '649', 'Y', null, null, null, null, 'Erlun');
INSERT INTO `sys_district` VALUES ('712900', '712931', '仑背乡', '05', '637', 'Y', null, null, null, null, 'Lunbei');
INSERT INTO `sys_district` VALUES ('712900', '712932', '麦寮乡', '05', '638', 'Y', null, null, null, null, 'Mailiao');
INSERT INTO `sys_district` VALUES ('712900', '712933', '东势乡', '05', '635', 'Y', null, null, null, null, 'Dongshi');
INSERT INTO `sys_district` VALUES ('712900', '712934', '褒忠乡', '05', '634', 'Y', null, null, null, null, 'Baozhong');
INSERT INTO `sys_district` VALUES ('712900', '712935', '台西乡', '05', '636', 'Y', null, null, null, null, 'Taixi');
INSERT INTO `sys_district` VALUES ('712900', '712936', '元长乡', '05', '655', 'Y', null, null, null, null, 'Yuanchang');
INSERT INTO `sys_district` VALUES ('712900', '712937', '四湖乡', '05', '654', 'Y', null, null, null, null, 'Sihu');
INSERT INTO `sys_district` VALUES ('712900', '712938', '口湖乡', '05', '653', 'Y', null, null, null, null, 'Kouhu');
INSERT INTO `sys_district` VALUES ('712900', '712939', '水林乡', '05', '652', 'Y', null, null, null, null, 'Shuilin');
INSERT INTO `sys_district` VALUES ('713000', '713001', '太保市', '05', '612', 'Y', null, null, null, null, 'Taibao');
INSERT INTO `sys_district` VALUES ('713000', '713002', '朴子市', '05', '613', 'Y', null, null, null, null, 'Puzi');
INSERT INTO `sys_district` VALUES ('713000', '713023', '布袋镇', '05', '625', 'Y', null, null, null, null, 'Budai');
INSERT INTO `sys_district` VALUES ('713000', '713024', '大林镇', '05', '622', 'Y', null, null, null, null, 'Dalin');
INSERT INTO `sys_district` VALUES ('713000', '713025', '民雄乡', '05', '621', 'Y', null, null, null, null, 'Minxiong');
INSERT INTO `sys_district` VALUES ('713000', '713026', '溪口乡', '05', '623', 'Y', null, null, null, null, 'Xikou');
INSERT INTO `sys_district` VALUES ('713000', '713027', '新港乡', '05', '616', 'Y', null, null, null, null, 'Xingang');
INSERT INTO `sys_district` VALUES ('713000', '713028', '六脚乡', '05', '615', 'Y', null, null, null, null, 'Liujiao');
INSERT INTO `sys_district` VALUES ('713000', '713029', '东石乡', '05', '614', 'Y', null, null, null, null, 'Dongshi');
INSERT INTO `sys_district` VALUES ('713000', '713030', '义竹乡', '05', '624', 'Y', null, null, null, null, 'Yizhu');
INSERT INTO `sys_district` VALUES ('713000', '713031', '鹿草乡', '05', '611', 'Y', null, null, null, null, 'Lucao');
INSERT INTO `sys_district` VALUES ('713000', '713032', '水上乡', '05', '608', 'Y', null, null, null, null, 'Shuishang');
INSERT INTO `sys_district` VALUES ('713000', '713033', '中埔乡', '05', '606', 'Y', null, null, null, null, 'Zhongpu');
INSERT INTO `sys_district` VALUES ('713000', '713034', '竹崎乡', '05', '604', 'Y', null, null, null, null, 'Zhuqi');
INSERT INTO `sys_district` VALUES ('713000', '713035', '梅山乡', '05', '603', 'Y', null, null, null, null, 'Meishan');
INSERT INTO `sys_district` VALUES ('713000', '713036', '番路乡', '05', '602', 'Y', null, null, null, null, 'Fanlu');
INSERT INTO `sys_district` VALUES ('713000', '713037', '大埔乡', '05', '607', 'Y', null, null, null, null, 'Dapu');
INSERT INTO `sys_district` VALUES ('713000', '713038', '阿里山乡', '05', '605', 'Y', null, null, null, null, 'Alishan');
INSERT INTO `sys_district` VALUES ('713300', '713301', '屏东市', '08', '900', 'Y', null, null, null, null, 'Pingdong');
INSERT INTO `sys_district` VALUES ('713300', '713321', '潮州镇', '08', '920', 'Y', null, null, null, null, 'Chaozhou');
INSERT INTO `sys_district` VALUES ('713300', '713322', '东港镇', '08', '928', 'Y', null, null, null, null, 'Donggang');
INSERT INTO `sys_district` VALUES ('713300', '713323', '恒春镇', '08', '946', 'Y', null, null, null, null, 'Hengchun');
INSERT INTO `sys_district` VALUES ('713300', '713324', '万丹乡', '08', '913', 'Y', null, null, null, null, 'Wandan');
INSERT INTO `sys_district` VALUES ('713300', '713325', '长治乡', '08', '908', 'Y', null, null, null, null, 'Changzhi');
INSERT INTO `sys_district` VALUES ('713300', '713326', '麟洛乡', '08', '909', 'Y', null, null, null, null, 'Linluo');
INSERT INTO `sys_district` VALUES ('713300', '713327', '九如乡', '08', '904', 'Y', null, null, null, null, 'Jiuru');
INSERT INTO `sys_district` VALUES ('713300', '713328', '里港乡', '08', '905', 'Y', null, null, null, null, 'Ligang');
INSERT INTO `sys_district` VALUES ('713300', '713329', '盐埔乡', '08', '907', 'Y', null, null, null, null, 'Yanpu');
INSERT INTO `sys_district` VALUES ('713300', '713330', '高树乡', '08', '906', 'Y', null, null, null, null, 'Gaoshu');
INSERT INTO `sys_district` VALUES ('713300', '713331', '万峦乡', '08', '923', 'Y', null, null, null, null, 'Wanluan');
INSERT INTO `sys_district` VALUES ('713300', '713332', '内埔乡', '08', '912', 'Y', null, null, null, null, 'Napu');
INSERT INTO `sys_district` VALUES ('713300', '713333', '竹田乡', '08', '911', 'Y', null, null, null, null, 'Zhutian');
INSERT INTO `sys_district` VALUES ('713300', '713334', '新埤乡', '08', '925', 'Y', null, null, null, null, 'Xinpi');
INSERT INTO `sys_district` VALUES ('713300', '713335', '枋寮乡', '08', '940', 'Y', null, null, null, null, 'Fangliao');
INSERT INTO `sys_district` VALUES ('713300', '713336', '新园乡', '08', '932', 'Y', null, null, null, null, 'Xinyuan');
INSERT INTO `sys_district` VALUES ('713300', '713337', '崁顶乡', '08', '924', 'Y', null, null, null, null, 'Kanding');
INSERT INTO `sys_district` VALUES ('713300', '713338', '林边乡', '08', '927', 'Y', null, null, null, null, 'Linbian');
INSERT INTO `sys_district` VALUES ('713300', '713339', '南州乡', '08', '926', 'Y', null, null, null, null, 'Nanzhou');
INSERT INTO `sys_district` VALUES ('713300', '713340', '佳冬乡', '08', '931', 'Y', null, null, null, null, 'Jiadong');
INSERT INTO `sys_district` VALUES ('713300', '713341', '琉球乡', '08', '929', 'Y', null, null, null, null, 'Liuqiu');
INSERT INTO `sys_district` VALUES ('713300', '713342', '车城乡', '08', '944', 'Y', null, null, null, null, 'Checheng');
INSERT INTO `sys_district` VALUES ('713300', '713343', '满州乡', '08', '947', 'Y', null, null, null, null, 'Manzhou');
INSERT INTO `sys_district` VALUES ('713300', '713344', '枋山乡', '08', '941', 'Y', null, null, null, null, 'Fangshan');
INSERT INTO `sys_district` VALUES ('713300', '713345', '三地门乡', '08', '901', 'Y', null, null, null, null, 'Sandimen');
INSERT INTO `sys_district` VALUES ('713300', '713346', '雾台乡', '08', '902', 'Y', null, null, null, null, 'Wutai');
INSERT INTO `sys_district` VALUES ('713300', '713347', '玛家乡', '08', '903', 'Y', null, null, null, null, 'Majia');
INSERT INTO `sys_district` VALUES ('713300', '713348', '泰武乡', '08', '921', 'Y', null, null, null, null, 'Taiwu');
INSERT INTO `sys_district` VALUES ('713300', '713349', '来义乡', '08', '922', 'Y', null, null, null, null, 'Laiyi');
INSERT INTO `sys_district` VALUES ('713300', '713350', '春日乡', '08', '942', 'Y', null, null, null, null, 'Chunri');
INSERT INTO `sys_district` VALUES ('713300', '713351', '狮子乡', '08', '943', 'Y', null, null, null, null, 'Shizi');
INSERT INTO `sys_district` VALUES ('713300', '713352', '牡丹乡', '08', '945', 'Y', null, null, null, null, 'Mudan');
INSERT INTO `sys_district` VALUES ('713400', '713401', '台东市', '089', '950', 'Y', null, null, null, null, 'Taidong');
INSERT INTO `sys_district` VALUES ('713400', '713421', '成功镇', '089', '961', 'Y', null, null, null, null, 'Chenggong');
INSERT INTO `sys_district` VALUES ('713400', '713422', '关山镇', '089', '956', 'Y', null, null, null, null, 'Guanshan');
INSERT INTO `sys_district` VALUES ('713400', '713423', '卑南乡', '089', '954', 'Y', null, null, null, null, 'Beinan');
INSERT INTO `sys_district` VALUES ('713400', '713424', '鹿野乡', '089', '955', 'Y', null, null, null, null, 'Luye');
INSERT INTO `sys_district` VALUES ('713400', '713425', '池上乡', '089', '958', 'Y', null, null, null, null, 'Chishang');
INSERT INTO `sys_district` VALUES ('713400', '713426', '东河乡', '089', '959', 'Y', null, null, null, null, 'Donghe');
INSERT INTO `sys_district` VALUES ('713400', '713427', '长滨乡', '089', '962', 'Y', null, null, null, null, 'Changbin');
INSERT INTO `sys_district` VALUES ('713400', '713428', '太麻里乡', '089', '963', 'Y', null, null, null, null, 'Taimali');
INSERT INTO `sys_district` VALUES ('713400', '713429', '大武乡', '089', '965', 'Y', null, null, null, null, 'Dawu');
INSERT INTO `sys_district` VALUES ('713400', '713430', '绿岛乡', '089', '951', 'Y', null, null, null, null, 'Lvdao');
INSERT INTO `sys_district` VALUES ('713400', '713431', '海端乡', '089', '957', 'Y', null, null, null, null, 'Haiduan');
INSERT INTO `sys_district` VALUES ('713400', '713432', '延平乡', '089', '953', 'Y', null, null, null, null, 'Yanping');
INSERT INTO `sys_district` VALUES ('713400', '713433', '金峰乡', '089', '964', 'Y', null, null, null, null, 'Jinfeng');
INSERT INTO `sys_district` VALUES ('713400', '713434', '达仁乡', '089', '966', 'Y', null, null, null, null, 'Daren');
INSERT INTO `sys_district` VALUES ('713400', '713435', '兰屿乡', '089', '952', 'Y', null, null, null, null, 'Lanyu');
INSERT INTO `sys_district` VALUES ('713500', '713501', '花莲市', '03', '970', 'Y', null, null, null, null, 'Hualian');
INSERT INTO `sys_district` VALUES ('713500', '713521', '凤林镇', '03', '975', 'Y', null, null, null, null, 'Fenglin');
INSERT INTO `sys_district` VALUES ('713500', '713522', '玉里镇', '03', '981', 'Y', null, null, null, null, 'Yuli');
INSERT INTO `sys_district` VALUES ('713500', '713523', '新城乡', '03', '971', 'Y', null, null, null, null, 'Xincheng');
INSERT INTO `sys_district` VALUES ('713500', '713524', '吉安乡', '03', '973', 'Y', null, null, null, null, 'Ji\'an');
INSERT INTO `sys_district` VALUES ('713500', '713525', '寿丰乡', '03', '974', 'Y', null, null, null, null, 'Shoufeng');
INSERT INTO `sys_district` VALUES ('713500', '713526', '光复乡', '03', '976', 'Y', null, null, null, null, 'Guangfu');
INSERT INTO `sys_district` VALUES ('713500', '713527', '丰滨乡', '03', '977', 'Y', null, null, null, null, 'Fengbin');
INSERT INTO `sys_district` VALUES ('713500', '713528', '瑞穗乡', '03', '978', 'Y', null, null, null, null, 'Ruisui');
INSERT INTO `sys_district` VALUES ('713500', '713529', '富里乡', '03', '983', 'Y', null, null, null, null, 'Fuli');
INSERT INTO `sys_district` VALUES ('713500', '713530', '秀林乡', '03', '972', 'Y', null, null, null, null, 'Xiulin');
INSERT INTO `sys_district` VALUES ('713500', '713531', '万荣乡', '03', '979', 'Y', null, null, null, null, 'Wanrong');
INSERT INTO `sys_district` VALUES ('713500', '713532', '卓溪乡', '03', '982', 'Y', null, null, null, null, 'Zhuoxi');
INSERT INTO `sys_district` VALUES ('713600', '713601', '马公市', '06', '880', 'Y', null, null, null, null, 'Magong');
INSERT INTO `sys_district` VALUES ('713600', '713621', '湖西乡', '06', '885', 'Y', null, null, null, null, 'Huxi');
INSERT INTO `sys_district` VALUES ('713600', '713622', '白沙乡', '06', '884', 'Y', null, null, null, null, 'Baisha');
INSERT INTO `sys_district` VALUES ('713600', '713623', '西屿乡', '06', '881', 'Y', null, null, null, null, 'Xiyu');
INSERT INTO `sys_district` VALUES ('713600', '713624', '望安乡', '06', '882', 'Y', null, null, null, null, 'Wang\'an');
INSERT INTO `sys_district` VALUES ('713600', '713625', '七美乡', '06', '883', 'Y', null, null, null, null, 'Qimei');
INSERT INTO `sys_district` VALUES ('713700', '713701', '金城镇', '082', '893', 'Y', null, null, null, null, 'Jincheng');
INSERT INTO `sys_district` VALUES ('713700', '713702', '金湖镇', '082', '891', 'Y', null, null, null, null, 'Jinhu');
INSERT INTO `sys_district` VALUES ('713700', '713703', '金沙镇', '082', '890', 'Y', null, null, null, null, 'Jinsha');
INSERT INTO `sys_district` VALUES ('713700', '713704', '金宁乡', '082', '892', 'Y', null, null, null, null, 'Jinning');
INSERT INTO `sys_district` VALUES ('713700', '713705', '烈屿乡', '082', '894', 'Y', null, null, null, null, 'Lieyu');
INSERT INTO `sys_district` VALUES ('713700', '713706', '乌丘乡', '082', '896', 'Y', null, null, null, null, 'Wuqiu');
INSERT INTO `sys_district` VALUES ('713800', '713801', '南竿乡', '0836', '209', 'Y', null, null, null, null, 'Nangan');
INSERT INTO `sys_district` VALUES ('713800', '713802', '北竿乡', '0836', '210', 'Y', null, null, null, null, 'Beigan');
INSERT INTO `sys_district` VALUES ('713800', '713803', '莒光乡', '0836', '211', 'Y', null, null, null, null, 'Juguang');
INSERT INTO `sys_district` VALUES ('713800', '713804', '东引乡', '0836', '212', 'Y', null, null, null, null, 'Dongyin');
INSERT INTO `sys_district` VALUES ('810100', '810101', '中西区', '00852', '999077', 'Y', null, null, null, null, 'Central and Western District');
INSERT INTO `sys_district` VALUES ('810100', '810102', '湾仔区', '00852', '999077', 'Y', null, null, null, null, 'Wan Chai District');
INSERT INTO `sys_district` VALUES ('810100', '810103', '东区', '00852', '999077', 'Y', null, null, null, null, 'Eastern District');
INSERT INTO `sys_district` VALUES ('810100', '810104', '南区', '00852', '999077', 'Y', null, null, null, null, 'Southern District');
INSERT INTO `sys_district` VALUES ('810200', '810201', '油尖旺区', '00852', '999077', 'Y', null, null, null, null, 'Yau Tsim Mong');
INSERT INTO `sys_district` VALUES ('810200', '810202', '深水埗区', '00852', '999077', 'Y', null, null, null, null, 'Sham Shui Po');
INSERT INTO `sys_district` VALUES ('810200', '810203', '九龙城区', '00852', '999077', 'Y', null, null, null, null, 'Jiulongcheng');
INSERT INTO `sys_district` VALUES ('810200', '810204', '黄大仙区', '00852', '999077', 'Y', null, null, null, null, 'Wong Tai Sin');
INSERT INTO `sys_district` VALUES ('810200', '810205', '观塘区', '00852', '999077', 'Y', null, null, null, null, 'Kwun Tong');
INSERT INTO `sys_district` VALUES ('810300', '810301', '荃湾区', '00852', '999077', 'Y', null, null, null, null, 'Tsuen Wan');
INSERT INTO `sys_district` VALUES ('810300', '810302', '屯门区', '00852', '999077', 'Y', null, null, null, null, 'Tuen Mun');
INSERT INTO `sys_district` VALUES ('810300', '810303', '元朗区', '00852', '999077', 'Y', null, null, null, null, 'Yuen Long');
INSERT INTO `sys_district` VALUES ('810300', '810304', '北区', '00852', '999077', 'Y', null, null, null, null, 'North District');
INSERT INTO `sys_district` VALUES ('810300', '810305', '大埔区', '00852', '999077', 'Y', null, null, null, null, 'Tai Po');
INSERT INTO `sys_district` VALUES ('810300', '810306', '西贡区', '00852', '999077', 'Y', null, null, null, null, 'Sai Kung');
INSERT INTO `sys_district` VALUES ('810300', '810307', '沙田区', '00852', '999077', 'Y', null, null, null, null, 'Sha Tin');
INSERT INTO `sys_district` VALUES ('810300', '810308', '葵青区', '00852', '999077', 'Y', null, null, null, null, 'Kwai Tsing');
INSERT INTO `sys_district` VALUES ('810300', '810309', '离岛区', '00852', '999077', 'Y', null, null, null, null, 'Outlying Islands');
INSERT INTO `sys_district` VALUES ('820100', '820101', '花地玛堂区', '00853', '999078', 'Y', null, null, null, null, 'Nossa Senhora de Fatima');
INSERT INTO `sys_district` VALUES ('820100', '820102', '圣安多尼堂区', '00853', '999078', 'Y', null, null, null, null, 'Santo Antonio');
INSERT INTO `sys_district` VALUES ('820100', '820103', '大堂区', '00853', '999078', 'Y', null, null, null, null, 'Sé');
INSERT INTO `sys_district` VALUES ('820100', '820104', '望德堂区', '00853', '999078', 'Y', null, null, null, null, 'Sao Lazaro');
INSERT INTO `sys_district` VALUES ('820100', '820105', '风顺堂区', '00853', '999078', 'Y', null, null, null, null, 'Sao Lourenco');
INSERT INTO `sys_district` VALUES ('820200', '820201', '嘉模堂区', '00853', '999078', 'Y', null, null, null, null, 'Our Lady Of Carmel\'s Parish');
INSERT INTO `sys_district` VALUES ('820300', '820301', '圣方济各堂区', '00853', '999078', 'Y', null, null, null, null, 'St Francis Xavier\'s Parish');

-- ----------------------------
-- Table structure for sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee`;
CREATE TABLE `sys_employee` (
  `sys_employee_id` varchar(50) NOT NULL COMMENT '人员工号',
  `sys_employee_name` varchar(50) DEFAULT NULL COMMENT '人员的真实名称',
  `sys_employee_nickname` varchar(50) DEFAULT NULL COMMENT '人员的论坛昵称',
  `id_card` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `sys_employee_name_before` varchar(50) DEFAULT NULL COMMENT '员工曾用名',
  `sys_employee_birthday` datetime DEFAULT NULL COMMENT '员工出生日期',
  `sys_employee_nation` varchar(50) DEFAULT NULL COMMENT '人员民族',
  `sys_employee_household_type` varchar(50) DEFAULT NULL COMMENT '人员户口类型',
  `sys_employee_marry` varchar(2) DEFAULT NULL COMMENT '人员婚姻状况，0：未婚，1：已婚',
  `sys_employee_native_place` varchar(50) DEFAULT NULL COMMENT '人员籍贯',
  `sys_employee_household_addr` varchar(200) DEFAULT NULL COMMENT '人员户籍所在地',
  `sys_employee_live_addr` varchar(200) DEFAULT NULL COMMENT '人员现居住地',
  `sys_employee_politic` varchar(50) DEFAULT NULL COMMENT '人员政治面貌',
  `sys_employee_up` varchar(50) DEFAULT NULL COMMENT '直接上级工号',
  `sys_employee_work_addr` varchar(200) DEFAULT NULL COMMENT '人员办公地点',
  `sys_employee_work_mobile` varchar(50) DEFAULT NULL COMMENT '人员办公电话',
  `sys_employee_entry_date` datetime DEFAULT NULL COMMENT '入职时间',
  `sys_employee_confirm_date` datetime DEFAULT NULL COMMENT '转正时间',
  `sys_post_id` varchar(50) DEFAULT NULL COMMENT '岗位id',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别， 女为0 ，男为1',
  `sys_employee_email` varchar(50) DEFAULT NULL COMMENT '人员邮箱',
  `sys_employee_wechat` varchar(50) DEFAULT NULL COMMENT '微信号',
  `sys_employee_mobile` varchar(50) DEFAULT NULL COMMENT '人员手机号',
  `sys_department_id` varchar(50) DEFAULT NULL COMMENT '部门编码',
  `sys_unit_id` varchar(50) DEFAULT NULL COMMENT '项目组编码',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `sys_employee_status` varchar(50) DEFAULT '0' COMMENT '状态',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`sys_employee_id`) USING BTREE,
  KEY `FK_sys_employee_sys_department` (`sys_department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_employee
-- ----------------------------
INSERT INTO `sys_employee` VALUES ('1', '景腾', '景', '1', '景', '1993-09-02 18:25:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '908448835@qq.com', null, null, null, null, 'Y', null, null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for sys_employee_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee_type`;
CREATE TABLE `sys_employee_type` (
  `sys_employee_type_id` varchar(50) NOT NULL COMMENT '人员类型编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_employee_type_name` varchar(200) DEFAULT NULL COMMENT '人员类型名称：经理，总经理。。。',
  `sys_employee_type_code` varchar(50) DEFAULT NULL COMMENT '身份指定编码',
  `sys_employee_type_flag` varchar(50) DEFAULT NULL COMMENT '标识  经理JL  副经理FJL。。。',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_employee_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_employee_type
-- ----------------------------

-- ----------------------------
-- Table structure for sys_employee_verification
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee_verification`;
CREATE TABLE `sys_employee_verification` (
  `sys_employee_id` varchar(50) NOT NULL DEFAULT '' COMMENT '人员编码  ',
  `sys_employee_verification_id` varchar(50) NOT NULL COMMENT '登陆验证表编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_employee_verification_name` varchar(200) DEFAULT NULL COMMENT '登陆验证表名称',
  `sys_employee_password` varchar(200) NOT NULL COMMENT '登陆密码',
  `sys_employee_phone` varchar(200) NOT NULL COMMENT '手机号码',
  `sys_employee_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sys_employee_wechat` varchar(200) DEFAULT NULL COMMENT '微信号',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_employee_verification_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登陆验证表';

-- ----------------------------
-- Records of sys_employee_verification
-- ----------------------------
INSERT INTO `sys_employee_verification` VALUES ('', '1', null, '123456', '13800138000', null, null, 'Y', null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_m2layer
-- ----------------------------
DROP TABLE IF EXISTS `sys_m2layer`;
CREATE TABLE `sys_m2layer` (
  `sys_mlayer_id` varchar(50) DEFAULT NULL COMMENT '一级模块编码 ',
  `sys_m2layer_id` varchar(50) NOT NULL COMMENT '二级模块编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_m2layer_name` varchar(200) DEFAULT NULL COMMENT '二级模块名称',
  `sys_m2layer_tag` varchar(50) DEFAULT NULL COMMENT '二级模块标志:例如：模块：m2dl_XXX ',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `sys_url` varchar(200) DEFAULT NULL COMMENT '二级模块url',
  `sys_priority` int(11) DEFAULT NULL COMMENT '展示优先级',
  `sys_component` varchar(200) DEFAULT NULL COMMENT '目录地址',
  `sys_icon` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`sys_m2layer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_m2layer
-- ----------------------------

-- ----------------------------
-- Table structure for sys_mlayer
-- ----------------------------
DROP TABLE IF EXISTS `sys_mlayer`;
CREATE TABLE `sys_mlayer` (
  `sys_mlayer_id` varchar(50) NOT NULL COMMENT '模块编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_mlayer_name` varchar(200) DEFAULT NULL COMMENT '模块名称',
  `sys_mlayer_tag` varchar(50) DEFAULT NULL COMMENT '模块标志:例如：模块：mdl_XXX ',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `sys_url` varchar(200) DEFAULT NULL COMMENT '一级模块url',
  `sys_priority` int(11) DEFAULT NULL COMMENT '改变优先级',
  `sys_component` varchar(200) DEFAULT NULL COMMENT '本地目录',
  `sys_icon` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`sys_mlayer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_mlayer
-- ----------------------------

-- ----------------------------
-- Table structure for sys_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power` (
  `sys_power_id` varchar(50) NOT NULL COMMENT '权限编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_power_name` varchar(200) DEFAULT NULL COMMENT '权限名称：添加、修改、删除、查询',
  `sys_power_tag` varchar(50) DEFAULT NULL COMMENT '权限标志:添加：sinsert、修改:sedit、删除:sdelete、查询:sselect',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_power_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_power
-- ----------------------------

-- ----------------------------
-- Table structure for sys_province
-- ----------------------------
DROP TABLE IF EXISTS `sys_province`;
CREATE TABLE `sys_province` (
  `sys_country_id` varchar(50) DEFAULT NULL COMMENT '国家编码 ',
  `sys_province_id` varchar(50) NOT NULL COMMENT '省编码 主键顺序编码  规则：HJ + 日期戳+XXXX (四位随机数 ) ',
  `sys_province_name` varchar(200) DEFAULT NULL COMMENT '省名称',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_province_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省、直辖市  province';

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO `sys_province` VALUES ('HJ201807180040', '110000', '北京', 'Y', null, null, null, null, 'Beijing');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '120000', '天津', 'Y', null, null, null, null, 'Tianjin');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '130000', '河北省', 'Y', null, null, null, null, 'Hebei');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '140000', '山西省', 'Y', null, null, null, null, 'Shanxi');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '150000', '内蒙古自治区', 'Y', null, null, null, null, 'Inner Mongolia');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '210000', '辽宁省', 'Y', null, null, null, null, 'Liaoning');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '220000', '吉林省', 'Y', null, null, null, null, 'Jilin');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '230000', '黑龙江省', 'Y', null, null, null, null, 'Heilongjiang');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '310000', '上海', 'Y', null, null, null, null, 'Shanghai');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '320000', '江苏省', 'Y', null, null, null, null, 'Jiangsu');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '330000', '浙江省', 'Y', null, null, null, null, 'Zhejiang');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '340000', '安徽省', 'Y', null, null, null, null, 'Anhui');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '350000', '福建省', 'Y', null, null, null, null, 'Fujian');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '360000', '江西省', 'Y', null, null, null, null, 'Jiangxi');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '370000', '山东省', 'Y', null, null, null, null, 'Shandong');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '410000', '河南省', 'Y', null, null, null, null, 'Henan');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '420000', '湖北省', 'Y', null, null, null, null, 'Hubei');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '430000', '湖南省', 'Y', null, null, null, null, 'Hunan');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '440000', '广东省', 'Y', null, null, null, null, 'Guangdong');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '450000', '广西壮族自治区', 'Y', null, null, null, null, 'Guangxi');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '460000', '海南省', 'Y', null, null, null, null, 'Hainan');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '500000', '重庆', 'Y', null, null, null, null, 'Chongqing');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '510000', '四川省', 'Y', null, null, null, null, 'Sichuan');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '520000', '贵州省', 'Y', null, null, null, null, 'Guizhou');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '530000', '云南省', 'Y', null, null, null, null, 'Yunnan');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '540000', '西藏自治区', 'Y', null, null, null, null, 'Tibet');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '610000', '陕西省', 'Y', null, null, null, null, 'Shaanxi');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '620000', '甘肃省', 'Y', null, null, null, null, 'Gansu');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '630000', '青海省', 'Y', null, null, null, null, 'Qinghai');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '640000', '宁夏回族自治区', 'Y', null, null, null, null, 'Ningxia');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '650000', '新疆维吾尔自治区', 'Y', null, null, null, null, 'Xinjiang');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '710000', '台湾', 'Y', null, null, null, null, 'Taiwan');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '810000', '香港特别行政区', 'Y', null, null, null, null, 'Hong Kong');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '820000', '澳门特别行政区', 'Y', null, null, null, null, 'Macau');
INSERT INTO `sys_province` VALUES ('HJ201807180040', '900000', '钓鱼岛', 'Y', null, null, null, null, 'DiaoyuDao');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `sys_resource_id` varchar(50) NOT NULL COMMENT '资源编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_resource_name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `sys_power_tag` varchar(50) DEFAULT NULL COMMENT '资源标志:UI代表窗体界面控制，DT:代表数据,SE:代表届信息',
  `sys_power_rule` varchar(500) DEFAULT NULL COMMENT '界面控制：M1-M2-W-C 规则：M1一级模块编码、M2二级模块编码...;W:窗体编码；C：控件编码  数据控制：G-C-D-C-U  G:集团编码 C:公司编码 D：部门或者学院编码 C:班级编码 U：小组编码 ；届控制：届编码',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统资源表';

-- ----------------------------
-- Records of sys_resource
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `sys_role_id` varchar(50) NOT NULL COMMENT '角色编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `sys_employee_type_code` varchar(50) DEFAULT NULL COMMENT '人员身份指定编码',
  `sys_up_role_id` varchar(50) DEFAULT NULL COMMENT '上级角色id',
  `sys_company_id` varchar(50) DEFAULT NULL COMMENT '公司编码',
  `sys_department_id` varchar(50) DEFAULT NULL COMMENT '部门编码',
  `sys_unit_id` varchar(50) DEFAULT NULL COMMENT '项目组编码',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_unit
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `sys_unit_id` varchar(50) NOT NULL COMMENT '小组编码 主键顺序编码  规则：PR + 日期戳+XXXX (四位随机数 ) ',
  `sys_department_id` varchar(50) DEFAULT NULL COMMENT '部门id',
  `sys_unit_name` varchar(200) DEFAULT NULL COMMENT '小组名称',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_unit_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_unit
-- ----------------------------

-- ----------------------------
-- Table structure for sys_wlayer
-- ----------------------------
DROP TABLE IF EXISTS `sys_wlayer`;
CREATE TABLE `sys_wlayer` (
  `sys_m2layer_id` varchar(50) DEFAULT NULL COMMENT '二级模块编码',
  `sys_wlayer_id` varchar(50) NOT NULL COMMENT '窗体编码 主键顺序编码  规则：HJ + 日期戳+XXXX (四位随机数 ) ',
  `sys_wlayer_name` varchar(200) DEFAULT NULL COMMENT '窗体名称',
  `sys_wlayer_tag` varchar(50) DEFAULT NULL COMMENT '窗体标志:例如：界面：frm_XXX ',
  `sys_wlayer_http` varchar(200) DEFAULT NULL COMMENT 'https：//链接',
  `sys_isactive` varchar(2) DEFAULT 'Y' COMMENT '是否活动    Y或者N  N:删除',
  `sys_created` datetime DEFAULT NULL COMMENT '创建时间',
  `sys_createdby` varchar(50) DEFAULT NULL COMMENT '创建人编码',
  `sys_updated` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_updatedby` varchar(50) DEFAULT NULL COMMENT '修改人编码',
  `sys_remark` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`sys_wlayer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wlayer
-- ----------------------------
