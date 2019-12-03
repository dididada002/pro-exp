/*
Navicat MySQL Data Transfer

Source Server         : 我的阿里云
Source Server Version : 50724
Source Host           : 101.200.58.119:3306
Source Database       : pro_dev

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-04-15 15:35:10
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
