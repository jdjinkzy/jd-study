/*
Navicat MySQL Data Transfer

Source Server         : 【测试local】192.168.3.131
Source Server Version : 50626
Source Host           : 127.0.0.1:3307
Source Database       : cx-admin-test

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-08-01 23:19:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_detail`
-- ----------------------------
DROP TABLE IF EXISTS `account_detail`;
CREATE TABLE `account_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `policy_no` varchar(40) DEFAULT NULL COMMENT '编号',
  `policy_m1` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m2` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m3` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m4` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m5` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m6` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m7` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m8` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m9` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `create_time` date DEFAULT NULL,
  `create_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `account_pool`
-- ----------------------------
DROP TABLE IF EXISTS `account_pool`;
CREATE TABLE `account_pool` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `policy_no` varchar(40) DEFAULT NULL COMMENT '编号',
  `policy_m1` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m2` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m3` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m4` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m5` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m6` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m7` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m8` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `policy_m9` decimal(20,2) DEFAULT NULL COMMENT '钱',
  `create_time` date DEFAULT NULL,
  `create_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_pool
-- ----------------------------

-- ----------------------------
-- Table structure for `adjunct_file`
-- ----------------------------
DROP TABLE IF EXISTS `adjunct_file`;
CREATE TABLE `adjunct_file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `file_type` varchar(20) DEFAULT NULL COMMENT '附件类型',
  `pkid` int(11) DEFAULT NULL COMMENT '申请表ID',
  `file_name` varchar(100) DEFAULT NULL COMMENT '附件原名称',
  `file_size` decimal(20,0) DEFAULT NULL COMMENT '附件大小',
  `store_address` varchar(100) DEFAULT NULL COMMENT '存储地址',
  `server_url` varchar(100) DEFAULT NULL COMMENT '服务器地址',
  `create_user` int(11) DEFAULT NULL COMMENT '上传人ID',
  `create_name` varchar(50) DEFAULT NULL COMMENT '上传人名称',
  `create_time` datetime DEFAULT NULL COMMENT '上传时间',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='附件信息表';

-- ----------------------------
-- Records of adjunct_file
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `user_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL COMMENT '账号',
  `user_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `user_cname` varchar(100) DEFAULT NULL COMMENT '真名',
  `leader` bigint(11) DEFAULT NULL COMMENT '领导ID',
  `leader_name` varchar(100) DEFAULT NULL COMMENT '领导名称',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `is_delete` int(2) DEFAULT NULL COMMENT '是否删除',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `level` varchar(16) DEFAULT NULL COMMENT '等级',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门',
  `openid` varchar(128) DEFAULT NULL COMMENT '微信标识',
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `phone` varchar(20) DEFAULT NULL COMMENT '分机号',
  `phone_auth` int(2) DEFAULT '0' COMMENT '电话权限',
  `entry_time` datetime DEFAULT NULL COMMENT '入职时间',
  `sms_channel` varchar(128) NOT NULL COMMENT '发送短信渠道',
  `is_autonomy` int(2) DEFAULT '2' COMMENT '是否自主经理人',
  `leader_desc` varchar(20) DEFAULT NULL COMMENT '统计标注',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `openid` (`openid`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  KEY `city` (`city`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=utf8 COMMENT='系统用户表：登录车险系统用';

-- ----------------------------
-- Records of admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for `agent`
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账户',
  `user_pwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `server_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在服务器',
  `type` int(2) DEFAULT NULL COMMENT '代理类型1：PD2：服务器3：个人',
  `pd_id` int(11) DEFAULT NULL COMMENT '所属PD',
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(2) DEFAULT NULL COMMENT '状态0：禁用1：启用',
  `pay_status` int(2) DEFAULT NULL COMMENT '支付状态0：未支付1已支付',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `corp_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代理表：代理模块添加代理用';

-- ----------------------------
-- Records of agent
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `agent_attachment`;
CREATE TABLE `agent_attachment` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `agent_car_id` bigint(16) DEFAULT NULL COMMENT '代理ID',
  `group_name` char(15) DEFAULT NULL COMMENT '附件所属组名',
  `group_sort` int(10) DEFAULT NULL COMMENT '所属组顺序',
  `file_name` char(50) DEFAULT NULL COMMENT '附件名称',
  `file_path` char(200) DEFAULT NULL COMMENT '附件路径',
  `file_size` bigint(16) DEFAULT NULL COMMENT '附件大小',
  `file_ext` char(10) DEFAULT NULL COMMENT '附件扩展名',
  `user_id` bigint(16) DEFAULT NULL COMMENT 'userid',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_ip` char(15) DEFAULT NULL COMMENT '上传IP',
  `status` tinyint(1) DEFAULT NULL COMMENT '附件使用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_data`
-- ----------------------------
DROP TABLE IF EXISTS `agent_data`;
CREATE TABLE `agent_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `car_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车型',
  `number` int(4) DEFAULT NULL COMMENT '出险次数',
  `busy_insurance` decimal(20,4) DEFAULT NULL COMMENT '商业险',
  `strong_insurance` decimal(20,4) DEFAULT NULL COMMENT '交强险',
  `tax` decimal(20,4) DEFAULT NULL COMMENT '税',
  `busy_discount` decimal(20,4) DEFAULT NULL COMMENT '商业险返点',
  `strong_discount` decimal(20,4) DEFAULT NULL COMMENT '交强险返点',
  `amount` decimal(20,4) DEFAULT NULL COMMENT '总额',
  `real_amount` decimal(20,4) DEFAULT NULL COMMENT '净额',
  `return_amount` decimal(20,4) DEFAULT NULL COMMENT '返还金额',
  `print_time` datetime DEFAULT NULL COMMENT '出单时间',
  `pay_status` int(1) DEFAULT NULL COMMENT '支付状态0：未支付1：已支付',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '代理人',
  `status` int(2) DEFAULT NULL COMMENT '1已核对2无效0未核对',
  `busy_sup_discount` decimal(20,4) DEFAULT NULL COMMENT '商业险补点',
  `strong_sup_discount` decimal(20,4) DEFAULT NULL COMMENT '交强险补点',
  `sup_amount` decimal(20,4) DEFAULT NULL COMMENT '补返金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代理数据表：每个agent代理自己添加的数据';

-- ----------------------------
-- Records of agent_data
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_insurance`
-- ----------------------------
DROP TABLE IF EXISTS `agent_insurance`;
CREATE TABLE `agent_insurance` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `agent_car_id` bigint(16) DEFAULT NULL COMMENT '代理车辆ID',
  `insurance_type` varchar(20) DEFAULT NULL COMMENT '险种',
  `insurance_text` varchar(1024) DEFAULT NULL COMMENT '险种内容',
  `insurance_select` varchar(20) DEFAULT NULL COMMENT '选择值',
  `insurance_ignore` tinyint(1) DEFAULT NULL COMMENT '不计标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4809 DEFAULT CHARSET=utf8 COMMENT='代理商险信息';

-- ----------------------------
-- Records of agent_insurance
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_type_info`
-- ----------------------------
DROP TABLE IF EXISTS `agent_type_info`;
CREATE TABLE `agent_type_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ins_name` varchar(50) DEFAULT NULL COMMENT '列名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_type_info
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_user`
-- ----------------------------
DROP TABLE IF EXISTS `agent_user`;
CREATE TABLE `agent_user` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '代理用户ID',
  `salesman` varchar(32) DEFAULT NULL,
  `ch_name` varchar(32) DEFAULT NULL COMMENT '名称',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `contacts` varchar(128) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(128) DEFAULT NULL COMMENT '固定电话',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `province` int(11) DEFAULT NULL COMMENT '省份',
  `city` int(11) DEFAULT NULL COMMENT '城市',
  `area` varchar(128) DEFAULT NULL COMMENT '所属区域',
  `account` varchar(128) DEFAULT NULL COMMENT '账号',
  `security_code` varchar(128) DEFAULT NULL COMMENT '密码',
  `user_id` bigint(16) DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '市场删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1574 DEFAULT CHARSET=utf8 COMMENT='代理用户信息';

-- ----------------------------
-- Records of agent_user
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_user_carinfo`
-- ----------------------------
DROP TABLE IF EXISTS `agent_user_carinfo`;
CREATE TABLE `agent_user_carinfo` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '代理车辆信息ID',
  `car_owner_name` varchar(32) DEFAULT NULL COMMENT '车主',
  `car_no` varchar(32) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(32) DEFAULT NULL COMMENT '车型',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `inner_date` datetime DEFAULT NULL COMMENT '初登日期',
  `agend_id` bigint(16) DEFAULT NULL COMMENT '代理人ID',
  `agent_name` varchar(32) DEFAULT NULL COMMENT '代理人名称',
  `issue_id` bigint(16) DEFAULT NULL COMMENT '出单员',
  `types_of_insurance` varchar(128) DEFAULT NULL COMMENT '险种',
  `create_time` datetime DEFAULT NULL COMMENT '录入日期',
  `create_user` bigint(16) DEFAULT NULL COMMENT '录入人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_user` bigint(16) DEFAULT NULL COMMENT '更新人',
  `home_channel` varchar(32) DEFAULT NULL COMMENT '归属渠道',
  `insurance_company` varchar(32) DEFAULT NULL COMMENT '保险公司',
  `strong_date` datetime DEFAULT NULL COMMENT '交强起保',
  `strong_cost` double(20,6) DEFAULT NULL COMMENT '交强保费',
  `business_date` datetime DEFAULT NULL COMMENT '商业起保',
  `business_cost` double(20,6) DEFAULT NULL COMMENT '商业保费',
  `danger_number` int(11) DEFAULT NULL COMMENT '出险次数',
  `tax` double(20,6) DEFAULT NULL COMMENT '车船税',
  `net_fee` double(20,6) DEFAULT NULL COMMENT '净费',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `policy_number` varchar(32) DEFAULT NULL COMMENT '保险单证号',
  `invoice_number` varchar(32) DEFAULT NULL COMMENT '发票单号',
  `invoice_pay` double(20,6) DEFAULT NULL COMMENT '发票金额',
  `logo_number` varchar(32) DEFAULT NULL COMMENT '车标号',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证',
  `pay_type` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `full_fee` decimal(20,6) DEFAULT NULL COMMENT '全费',
  `strong_discount` double(20,6) DEFAULT NULL COMMENT '交强折扣',
  `business_discount` double(20,6) DEFAULT NULL COMMENT '商业折扣',
  `strong_point` int(11) DEFAULT NULL,
  `business_point` int(11) DEFAULT NULL COMMENT '商业点位',
  `real_pay` double(20,6) DEFAULT NULL COMMENT '实际付款',
  `audit_status` tinyint(1) DEFAULT NULL COMMENT '审核状态',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `audit_user` bigint(16) DEFAULT NULL COMMENT '审核人',
  `audit_remark` varchar(256) DEFAULT NULL COMMENT '审核备注',
  `calc_status` tinyint(1) DEFAULT NULL COMMENT '算单状态0新单1算单成功',
  `calc_date` datetime DEFAULT NULL COMMENT '算单时间',
  `calc_user` bigint(16) DEFAULT NULL COMMENT '算单人',
  `issue_status` tinyint(1) DEFAULT NULL COMMENT '出单状态0新单1出单2不出单',
  `issue_date` datetime DEFAULT NULL COMMENT '客服出单时间',
  `issue_user` bigint(16) DEFAULT NULL COMMENT '出单用户',
  `issue_remark` varchar(256) DEFAULT NULL COMMENT '出单备注',
  `pay_status` tinyint(1) DEFAULT NULL COMMENT '收款状态0新单1已收款2未收款',
  `pay_date` datetime DEFAULT NULL COMMENT '收款时间',
  `pay_user` bigint(16) DEFAULT NULL COMMENT '收款人',
  `final_status` tinyint(1) DEFAULT NULL COMMENT '最终状态0待出单1已出单',
  `final_date` datetime DEFAULT NULL COMMENT '确认正式出单时间',
  `final_user` bigint(16) DEFAULT NULL COMMENT '确认正式出单用户',
  `final_remark` varchar(256) DEFAULT NULL COMMENT '出单备注',
  `price_persion` varchar(32) DEFAULT NULL COMMENT '报价员',
  `business_persion` varchar(32) DEFAULT NULL COMMENT '业务员',
  `insurance_persion` varchar(32) DEFAULT NULL COMMENT '被保人',
  `insurance_persion_id_card` varchar(32) DEFAULT NULL COMMENT '身份证',
  `policy_persion` varchar(32) DEFAULT NULL COMMENT '投保人',
  `policy_persion_id_card` varchar(32) DEFAULT NULL COMMENT '投保人身份证',
  `express_status` tinyint(1) DEFAULT NULL COMMENT '快递状态',
  `express_remark` varchar(256) DEFAULT NULL COMMENT '快递备注',
  `validate_phone` varchar(20) DEFAULT NULL COMMENT '接收验证码手机号',
  `customers_to` tinyint(1) DEFAULT NULL COMMENT '客户上门',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `poundage` double(20,6) DEFAULT NULL COMMENT '跟单手续费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8 COMMENT='代理用户车辆信息';

-- ----------------------------
-- Records of agent_user_carinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `audio_translation`
-- ----------------------------
DROP TABLE IF EXISTS `audio_translation`;
CREATE TABLE `audio_translation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `agent_name` varchar(50) DEFAULT NULL COMMENT '业务员名称',
  `extension` varchar(20) DEFAULT NULL COMMENT '分机号',
  `info` longtext COMMENT '翻译内容',
  `callsec` decimal(10,0) DEFAULT NULL COMMENT '座席通话时长',
  `record_filename` text COMMENT '录音名字',
  `answer_stamp` timestamp NULL DEFAULT NULL COMMENT '接通时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `uuid` varchar(40) DEFAULT NULL COMMENT '录音id',
  `seatsector` varchar(50) DEFAULT NULL,
  `remark_info` text,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  FULLTEXT KEY `info` (`info`)
) ENGINE=InnoDB AUTO_INCREMENT=34976 DEFAULT CHARSET=utf8mb4 COMMENT='录音翻译表';

-- ----------------------------
-- Records of audio_translation
-- ----------------------------

-- ----------------------------
-- Table structure for `audio_translation_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `audio_translation_keyword`;
CREATE TABLE `audio_translation_keyword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='关键词';

-- ----------------------------
-- Records of audio_translation_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for `callback`
-- ----------------------------
DROP TABLE IF EXISTS `callback`;
CREATE TABLE `callback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uuid` varchar(20) DEFAULT NULL COMMENT '标识',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新人',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='回拨电话';

-- ----------------------------
-- Records of callback
-- ----------------------------

-- ----------------------------
-- Table structure for `car_info`
-- ----------------------------
DROP TABLE IF EXISTS `car_info`;
CREATE TABLE `car_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_model` varchar(256) DEFAULT NULL COMMENT '车型',
  `car_owner_name` varchar(128) DEFAULT NULL COMMENT '车主',
  `insurant` varchar(128) DEFAULT NULL COMMENT '被保险人',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `inner_date` varchar(128) DEFAULT NULL COMMENT '登记日期',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `underwriting_year` varchar(128) DEFAULT NULL COMMENT '本年承保',
  `business_in_previous` varchar(128) DEFAULT NULL COMMENT '往年商业',
  `strong_in_previous` varchar(128) DEFAULT NULL COMMENT '往年交强',
  `travel_in_previous` varchar(128) DEFAULT NULL COMMENT '往年车船',
  `total_in_previous` varchar(128) DEFAULT NULL COMMENT '往年共计',
  `gifts_in_previous` varchar(128) DEFAULT NULL COMMENT '往年礼品',
  `pay_in_previous` varchar(128) DEFAULT NULL COMMENT '往年支付',
  `discount` varchar(128) DEFAULT NULL COMMENT '往年折扣',
  `sales_name` varchar(128) DEFAULT NULL COMMENT '销售姓名',
  `data_type` int(2) DEFAULT NULL COMMENT '1:新数据,2:续保数据',
  `status` int(2) DEFAULT NULL COMMENT '1:未派单,2:已派单',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注信息',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `data_source` varchar(20) DEFAULT NULL COMMENT '数据来源',
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  PRIMARY KEY (`id`),
  KEY `car_no` (`car_no`) USING BTREE,
  KEY `city` (`city`) USING BTREE,
  KEY `inner_date` (`inner_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1569556 DEFAULT CHARSET=utf8 COMMENT='数据导入表：对应数据管理下的数据导入功能';

-- ----------------------------
-- Records of car_info
-- ----------------------------

-- ----------------------------
-- Table structure for `car_info_deal`
-- ----------------------------
DROP TABLE IF EXISTS `car_info_deal`;
CREATE TABLE `car_info_deal` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(128) DEFAULT NULL,
  `underwriting_year` varchar(128) DEFAULT NULL,
  `business_in_previous` varchar(128) DEFAULT NULL,
  `strong_in_previous` varchar(128) DEFAULT NULL,
  `travel_in_previous` varchar(128) DEFAULT NULL,
  `total_in_previous` varchar(128) DEFAULT NULL,
  `gifts_in_previous` varchar(128) DEFAULT NULL,
  `pay_in_previous` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `sales_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_no` (`car_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_info_deal
-- ----------------------------

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(6) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL COMMENT '上级',
  `short_name` varchar(30) NOT NULL COMMENT '短名称',
  `level_type` char(1) NOT NULL COMMENT '级别',
  `city_code` varchar(4) NOT NULL COMMENT '城市编码',
  `zip_code` varchar(6) NOT NULL COMMENT '邮编',
  `merger_name` varchar(50) NOT NULL COMMENT '合并名称',
  `lng` varchar(15) NOT NULL COMMENT '经度',
  `Lat` varchar(15) NOT NULL COMMENT '纬度',
  `pinyin` varchar(30) NOT NULL COMMENT '拼音',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_car`
-- ----------------------------
DROP TABLE IF EXISTS `claim_car`;
CREATE TABLE `claim_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(200) DEFAULT NULL COMMENT '车型',
  `insurant_name` varchar(50) DEFAULT NULL COMMENT '被保人',
  `car_owner_name` varchar(50) DEFAULT NULL COMMENT '车主名字',
  `car_owner_tel` varchar(20) DEFAULT NULL COMMENT '车主电话',
  `inner_date` varchar(50) DEFAULT NULL COMMENT '登记时间',
  `proxy_name` varchar(50) DEFAULT NULL COMMENT '代理人名字',
  `proxy_tel` varchar(20) DEFAULT NULL COMMENT '代理人电话',
  `insurance_carriers` varchar(200) DEFAULT NULL COMMENT '承保公司',
  `salesman_id` int(11) DEFAULT NULL COMMENT '业务员id',
  `contact_car_pace` varchar(200) DEFAULT NULL COMMENT '接车地点',
  `contact_car_time1` varchar(50) DEFAULT NULL COMMENT '接车时间',
  `contact_car_time2` varchar(50) DEFAULT NULL COMMENT '接车时间',
  `shop_id` int(11) DEFAULT '0' COMMENT '维修店',
  `in_site` int(11) DEFAULT NULL COMMENT '是否进场 0.未进场 1.已进场',
  `is_contact_car1` int(11) DEFAULT '0' COMMENT '是否接车：0否 1接车',
  `is_contact_car2` int(11) DEFAULT '0' COMMENT '是否接车：0否 1接车',
  `claims_info` text COMMENT '理赔备注',
  `repair_info` text COMMENT '维修备注',
  `repair_id` int(11) NOT NULL DEFAULT '0' COMMENT '维修员ID',
  `repair_part` varchar(200) DEFAULT NULL COMMENT '维修部位',
  `repair_price1` double(11,2) DEFAULT '0.00' COMMENT '修理价格',
  `repair_price2` double(11,2) DEFAULT '0.00' COMMENT '修理价格',
  `repair_imgs` text COMMENT '定损照片',
  `claims_count` int(11) DEFAULT '0' COMMENT '出险次数',
  `channel_id` int(11) DEFAULT '0' COMMENT '渠道员id',
  `channel_info` text COMMENT '渠道备注',
  `channel_status` int(11) DEFAULT '0' COMMENT '渠道审核状态 1 通过 2不通过',
  `channel_time` datetime DEFAULT NULL COMMENT '审核时间',
  `finance_id` int(11) DEFAULT NULL COMMENT '财务员id',
  `finance_info` text COMMENT '财务备注',
  `finance_status` int(11) DEFAULT '0' COMMENT '财务审核状态',
  `finance_time` datetime DEFAULT NULL COMMENT '财务审核时间',
  `manager_id` int(11) DEFAULT NULL COMMENT '总经理id',
  `manager_info` text COMMENT '总经理备注',
  `manager_status` int(11) DEFAULT NULL COMMENT '总经理审核状态',
  `manager_time` datetime DEFAULT NULL COMMENT '总经理审核时间',
  `status` int(11) DEFAULT NULL COMMENT '0 理赔管理 1.修理厂管理 2.渠道管理 3.财务管理 4.总经理管理 5.财务管理 6.完成',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `back_money` double(11,2) DEFAULT NULL COMMENT '返款金额',
  `back_money_time` varchar(50) DEFAULT NULL COMMENT '返款时间',
  `hit_money_time` varchar(50) DEFAULT NULL COMMENT '打款时间',
  `review_score` int(11) DEFAULT '0' COMMENT '评分',
  `review_info` text COMMENT '评价',
  `openid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='车辆理赔信息';

-- ----------------------------
-- Records of claim_car
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_carinfo_trck`
-- ----------------------------
DROP TABLE IF EXISTS `claim_carinfo_trck`;
CREATE TABLE `claim_carinfo_trck` (
  `id` bigint(16) unsigned NOT NULL AUTO_INCREMENT,
  `car_id` bigint(16) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `userid` bigint(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL COMMENT '0默认1微信查看',
  `status` varchar(10) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159914 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_carinfo_trck
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_car_info`
-- ----------------------------
DROP TABLE IF EXISTS `claim_car_info`;
CREATE TABLE `claim_car_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `transform_id` bigint(16) DEFAULT NULL COMMENT '转化ID，车险成交ID',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(256) DEFAULT NULL COMMENT '车型',
  `car_owner_name` varchar(128) DEFAULT NULL COMMENT '车主',
  `insurant` varchar(128) DEFAULT NULL COMMENT '被保险人',
  `contacts` varchar(32) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `inner_date` varchar(128) DEFAULT NULL COMMENT '登记日期',
  `stong_date` datetime DEFAULT NULL COMMENT '交强起保日期',
  `insurant_end_time` varchar(50) DEFAULT NULL,
  `business_date` datetime DEFAULT NULL COMMENT '商业起保日期',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `insurance_company` varchar(512) DEFAULT NULL COMMENT '今年承包公司',
  `insurance_company_in_previous` varchar(128) DEFAULT NULL COMMENT '去年承保公司',
  `underwriting_year` varchar(128) DEFAULT NULL COMMENT '本年承保',
  `business_in_previous` varchar(128) DEFAULT NULL COMMENT '往年商业',
  `strong_in_previous` varchar(128) DEFAULT NULL COMMENT '往年交强',
  `travel_in_previous` varchar(128) DEFAULT NULL COMMENT '往年车船',
  `total_in_previous` varchar(128) DEFAULT NULL COMMENT '往年共计',
  `gifts_in_previous` varchar(128) DEFAULT NULL COMMENT '往年礼品',
  `pay_in_previous` varchar(128) DEFAULT NULL COMMENT '往年支付',
  `discount` varchar(128) DEFAULT NULL COMMENT '往年支付',
  `sales_name` varchar(128) DEFAULT NULL COMMENT '销售姓名',
  `data_type` int(2) DEFAULT NULL COMMENT '1:新数据,2:续保数据',
  `status` int(2) DEFAULT NULL COMMENT '1:未派单,2:已派单',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注信息',
  `types_of_insurance` varchar(512) DEFAULT NULL COMMENT '险种',
  `amount` varchar(16) DEFAULT '' COMMENT '保单总额',
  `gifts` varchar(64) DEFAULT NULL COMMENT '赠送项目',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `reserve_time` varchar(32) DEFAULT NULL COMMENT '预约时间',
  `dispatch_name` varchar(20) DEFAULT NULL COMMENT '分配人',
  `real_pay` varchar(20) DEFAULT NULL COMMENT '实付',
  `insurance_num` varchar(20) DEFAULT NULL COMMENT '出险次数',
  `reminders_num` int(11) DEFAULT NULL COMMENT '催办次数',
  `openid` varchar(64) DEFAULT NULL COMMENT '微信唯一标识',
  `channel` varchar(32) DEFAULT NULL COMMENT '渠道',
  `result` varchar(128) DEFAULT NULL COMMENT '最终结果',
  `shopid` bigint(16) DEFAULT NULL,
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `ispickup` int(2) DEFAULT NULL COMMENT '是否接车',
  `callmark` int(2) DEFAULT NULL COMMENT '是否拨打',
  `repair_desc` varchar(128) DEFAULT NULL COMMENT '维修项目',
  `data_source` varchar(20) DEFAULT NULL COMMENT '数据来源',
  `repair_status` int(2) DEFAULT NULL COMMENT '维修状态',
  PRIMARY KEY (`id`),
  KEY `transform_id` (`transform_id`) USING BTREE,
  KEY `sales_name` (`sales_name`) USING BTREE,
  KEY `car_no` (`car_no`) USING BTREE,
  KEY `city` (`city`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=270158 DEFAULT CHARSET=utf8 COMMENT='理赔数据导入表：对应数据管理下的数据导入功能';

-- ----------------------------
-- Records of claim_car_info
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_car_info_copy`
-- ----------------------------
DROP TABLE IF EXISTS `claim_car_info_copy`;
CREATE TABLE `claim_car_info_copy` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `transform_id` bigint(16) DEFAULT NULL COMMENT '转化ID，车险成交ID',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(256) DEFAULT NULL COMMENT '车型',
  `car_owner_name` varchar(128) DEFAULT NULL COMMENT '车主',
  `insurant` varchar(128) DEFAULT NULL COMMENT '被保险人',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `inner_date` varchar(128) DEFAULT NULL COMMENT '登记日期',
  `stong_date` datetime DEFAULT NULL COMMENT '交强起保日期',
  `insurant_end_time` varchar(50) DEFAULT NULL,
  `business_date` datetime DEFAULT NULL COMMENT '商业起保日期',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `insurance_company` varchar(512) DEFAULT NULL COMMENT '今年承包公司',
  `insurance_company_in_previous` varchar(128) DEFAULT NULL COMMENT '去年承保公司',
  `underwriting_year` varchar(128) DEFAULT NULL COMMENT '本年承保',
  `business_in_previous` varchar(128) DEFAULT NULL COMMENT '往年商业',
  `strong_in_previous` varchar(128) DEFAULT NULL COMMENT '往年交强',
  `travel_in_previous` varchar(128) DEFAULT NULL COMMENT '往年车船',
  `total_in_previous` varchar(128) DEFAULT NULL COMMENT '往年共计',
  `gifts_in_previous` varchar(128) DEFAULT NULL COMMENT '往年礼品',
  `pay_in_previous` varchar(128) DEFAULT NULL COMMENT '往年支付',
  `discount` varchar(128) DEFAULT NULL COMMENT '往年支付',
  `sales_name` varchar(128) DEFAULT NULL COMMENT '销售姓名',
  `data_type` int(2) DEFAULT NULL COMMENT '1:新数据,2:续保数据',
  `status` int(2) DEFAULT NULL COMMENT '1:未派单,2:已派单',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注信息',
  `types_of_insurance` varchar(64) DEFAULT NULL COMMENT '险种',
  `amount` varchar(16) DEFAULT '' COMMENT '保单总额',
  `gifts` varchar(64) DEFAULT NULL COMMENT '赠送项目',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `reserve_time` varchar(32) DEFAULT NULL COMMENT '预约时间',
  `dispatch_name` varchar(20) DEFAULT NULL COMMENT '分配人',
  `real_pay` varchar(20) DEFAULT NULL COMMENT '实付',
  `insurance_num` varchar(20) DEFAULT NULL COMMENT '出险次数',
  `reminders_num` int(11) DEFAULT NULL COMMENT '催办次数',
  `openid` varchar(64) DEFAULT NULL COMMENT '微信唯一标识',
  `channel` varchar(32) DEFAULT NULL COMMENT '渠道',
  `result` varchar(128) DEFAULT NULL COMMENT '最终结果',
  `shopid` bigint(16) DEFAULT NULL,
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `ispickup` int(2) DEFAULT NULL COMMENT '是否接车',
  `callmark` int(2) DEFAULT NULL COMMENT '是否拨打',
  `repair_desc` varchar(128) DEFAULT NULL COMMENT '维修项目',
  `data_source` varchar(20) DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`id`),
  KEY `transform_id` (`transform_id`) USING BTREE,
  KEY `sales_name` (`sales_name`) USING BTREE,
  KEY `car_no` (`car_no`) USING BTREE,
  KEY `city` (`city`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=257398 DEFAULT CHARSET=utf8 COMMENT='理赔数据导入表：对应数据管理下的数据导入功能';

-- ----------------------------
-- Records of claim_car_info_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_customer_info`
-- ----------------------------
DROP TABLE IF EXISTS `claim_customer_info`;
CREATE TABLE `claim_customer_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `car_info_id` bigint(16) DEFAULT NULL COMMENT '车辆信息ID',
  `car_no` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '车型',
  `car_owner_name` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '车主',
  `contacts` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机',
  `back_mobile` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用手机',
  `success_time` datetime DEFAULT NULL COMMENT '出单时间',
  `insurance_company` varchar(512) CHARACTER SET utf8 DEFAULT NULL COMMENT '保险公司',
  `insurance_company_in_previous` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `insurant` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '被保人',
  `address` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `insurant_end_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '保险结束日期',
  `strong_date` datetime DEFAULT NULL COMMENT '交强起保日期',
  `business_date` datetime DEFAULT NULL COMMENT '商业起保日期',
  `dispatch_id` bigint(16) DEFAULT NULL COMMENT '分配人',
  `dispatch_name` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '分配人名称',
  `dispatch_level` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '分配人级别',
  `customer_level` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户级别',
  `inner_date` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '登记日期',
  `reserve_time` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '预约时间',
  `data_type` int(2) DEFAULT NULL COMMENT '1：新保2：续保',
  `status` int(2) DEFAULT NULL COMMENT '1:待成交,2:成交3:拒绝',
  `follow_status` int(2) DEFAULT NULL COMMENT '跟踪状态',
  `single_member_id` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '承包业务员',
  `success_status` int(2) DEFAULT NULL COMMENT '保单状态,1：新保单2：暂保单3：正式保单4：打回',
  `remark` varchar(1024) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `trck_remark` varchar(1024) CHARACTER SET utf8 DEFAULT NULL COMMENT '跟踪保存状态',
  `success_remark` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '成交订单备注',
  `repair_remark` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '修理备注',
  `satisfied_degree` int(11) unsigned zerofill DEFAULT '00000000000' COMMENT '客服打分',
  `satisfied_degree_remark` char(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '满意度备注',
  `types_of_insurance` varchar(512) CHARACTER SET utf8 DEFAULT NULL COMMENT '险种',
  `discount` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '折扣',
  `amount` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '保单总额',
  `gifts` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '赠送项目',
  `engine_number` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '车架号',
  `phone_time` datetime DEFAULT NULL COMMENT '上次拨打时间',
  `reminders_num` int(11) DEFAULT NULL COMMENT '催办次数',
  `openid` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信唯一标识',
  `channel` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '渠道',
  `shopid` bigint(16) DEFAULT NULL,
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `ispickup` int(2) DEFAULT NULL COMMENT '是否接车',
  `callmark` int(2) DEFAULT NULL COMMENT '是否拨打',
  `repair_desc` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '维修项目',
  `receive_info` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '接收信息',
  `new_customer` tinyint(1) DEFAULT NULL COMMENT '是否新客户',
  `level_desc` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '类别描述',
  `new_customer_time` datetime DEFAULT NULL COMMENT '新客户开发时间',
  `data_source` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '数据来源',
  `claim_user_id` bigint(20) DEFAULT NULL COMMENT '理赔客服ID',
  `is_come` tinyint(20) DEFAULT NULL COMMENT '是否进场',
  `meet_date` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '接车日期',
  `repair_status` int(2) DEFAULT '1' COMMENT '维修状态',
  `approve1_status` int(2) DEFAULT NULL,
  `approve2_status` int(2) DEFAULT NULL,
  `approve3_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_info_id` (`car_info_id`) USING BTREE,
  KEY `city` (`city`) USING BTREE,
  KEY `success_time` (`success_time`) USING BTREE,
  KEY `dispatch_id` (`dispatch_id`,`new_customer_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=273146 DEFAULT CHARSET=utf8mb4 COMMENT='理赔数据分配表：数据导入之后，点击手动或者自动分配之后，数据会进入这个表';

-- ----------------------------
-- Records of claim_customer_info
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_customer_info_copy`
-- ----------------------------
DROP TABLE IF EXISTS `claim_customer_info_copy`;
CREATE TABLE `claim_customer_info_copy` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `car_info_id` bigint(16) DEFAULT NULL COMMENT '车辆信息ID',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(256) DEFAULT NULL COMMENT '车型',
  `car_owner_name` varchar(128) DEFAULT NULL COMMENT '车主',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `back_mobile` varchar(128) DEFAULT NULL COMMENT '备用手机',
  `success_time` datetime DEFAULT NULL COMMENT '出单时间',
  `insurance_company` varchar(512) DEFAULT NULL COMMENT '保险公司',
  `insurance_company_in_previous` varchar(128) DEFAULT NULL,
  `insurant` varchar(128) DEFAULT NULL COMMENT '被保人',
  `address` varchar(256) DEFAULT NULL,
  `insurant_end_time` varchar(50) DEFAULT NULL COMMENT '保险结束日期',
  `strong_date` datetime DEFAULT NULL COMMENT '交强起保日期',
  `business_date` datetime DEFAULT NULL COMMENT '商业起保日期',
  `dispatch_id` bigint(16) DEFAULT NULL COMMENT '分配人',
  `dispatch_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `dispatch_level` varchar(16) DEFAULT NULL COMMENT '分配人级别',
  `customer_level` varchar(16) DEFAULT NULL COMMENT '客户级别',
  `inner_date` varchar(32) DEFAULT NULL COMMENT '登记日期',
  `reserve_time` varchar(32) DEFAULT NULL COMMENT '预约时间',
  `data_type` int(2) DEFAULT NULL COMMENT '1：新保2：续保',
  `status` int(2) DEFAULT NULL COMMENT '1:待成交,2:成交3:拒绝',
  `follow_status` int(2) DEFAULT NULL COMMENT '跟踪状态',
  `single_member_id` varchar(128) DEFAULT NULL COMMENT '承包业务员',
  `success_status` int(2) DEFAULT NULL COMMENT '保单状态,1：新保单2：暂保单3：正式保单4：打回',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `trck_remark` varchar(1024) DEFAULT NULL COMMENT '跟踪保存状态',
  `success_remark` varchar(256) DEFAULT NULL COMMENT '成交订单备注',
  `repair_remark` varchar(256) DEFAULT NULL COMMENT '修理备注',
  `satisfied_degree` int(11) unsigned zerofill DEFAULT '00000000000' COMMENT '客服打分',
  `satisfied_degree_remark` char(10) DEFAULT NULL COMMENT '满意度备注',
  `types_of_insurance` varchar(64) DEFAULT NULL COMMENT '险种',
  `discount` varchar(16) DEFAULT NULL COMMENT '折扣',
  `amount` varchar(16) DEFAULT NULL COMMENT '保单总额',
  `gifts` varchar(64) DEFAULT NULL COMMENT '赠送项目',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `phone_time` datetime DEFAULT NULL COMMENT '上次拨打时间',
  `reminders_num` int(11) DEFAULT NULL COMMENT '催办次数',
  `openid` varchar(64) DEFAULT NULL COMMENT '微信唯一标识',
  `channel` varchar(32) DEFAULT NULL COMMENT '渠道',
  `shopid` bigint(16) DEFAULT NULL,
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `ispickup` int(2) DEFAULT NULL COMMENT '是否接车',
  `callmark` int(2) DEFAULT NULL COMMENT '是否拨打',
  `repair_desc` varchar(128) DEFAULT NULL COMMENT '维修项目',
  `receive_info` varchar(128) DEFAULT NULL COMMENT '接收信息',
  `new_customer` tinyint(1) DEFAULT NULL COMMENT '是否新客户',
  `level_desc` varchar(20) DEFAULT NULL COMMENT '类别描述',
  `new_customer_time` datetime DEFAULT NULL COMMENT '新客户开发时间',
  `data_source` varchar(20) DEFAULT NULL COMMENT '数据来源',
  `claim_user_id` bigint(20) DEFAULT NULL COMMENT '理赔客服ID',
  `is_come` tinyint(20) DEFAULT NULL COMMENT '是否进场',
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_info_id` (`car_info_id`) USING BTREE,
  KEY `city` (`city`) USING BTREE,
  KEY `success_time` (`success_time`) USING BTREE,
  KEY `dispatch_id` (`dispatch_id`,`new_customer_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=245548 DEFAULT CHARSET=utf8 COMMENT='理赔数据分配表：数据导入之后，点击手动或者自动分配之后，数据会进入这个表';

-- ----------------------------
-- Records of claim_customer_info_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_repair_depot`
-- ----------------------------
DROP TABLE IF EXISTS `claim_repair_depot`;
CREATE TABLE `claim_repair_depot` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `ch_name` varchar(128) DEFAULT NULL COMMENT '名称',
  `style` varchar(256) DEFAULT NULL COMMENT '类型',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `contacts` varchar(128) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `start_date` datetime DEFAULT NULL COMMENT '有效期开始',
  `end_date` datetime DEFAULT NULL COMMENT '有效期结束',
  `is_valid` tinyint(1) DEFAULT NULL COMMENT '是否有效',
  `insurance_company` varchar(128) DEFAULT NULL COMMENT '保险公司',
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` varchar(128) DEFAULT NULL COMMENT '所属区域',
  `user_id` bigint(16) DEFAULT NULL,
  `account` varchar(128) DEFAULT NULL COMMENT '账号',
  `security_code` varchar(128) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) DEFAULT NULL,
  `latitude` varchar(32) DEFAULT NULL,
  `longitude` varchar(32) DEFAULT NULL,
  `headimg` varchar(128) DEFAULT NULL,
  `wx_mobile` varchar(60) DEFAULT NULL,
  `wx_name` varchar(128) DEFAULT NULL,
  `car_num` int(11) DEFAULT NULL COMMENT '派车数量',
  `damage_amount` decimal(20,2) DEFAULT NULL COMMENT '定损金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1438 DEFAULT CHARSET=utf8 COMMENT='理赔数据导入表：对应数据管理下的数据导入功能';

-- ----------------------------
-- Records of claim_repair_depot
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_repair_picture`
-- ----------------------------
DROP TABLE IF EXISTS `claim_repair_picture`;
CREATE TABLE `claim_repair_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `picture` varchar(128) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `is_del` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_repair_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_shuttle_repair`
-- ----------------------------
DROP TABLE IF EXISTS `claim_shuttle_repair`;
CREATE TABLE `claim_shuttle_repair` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `success_id` varchar(128) DEFAULT NULL COMMENT '成交信息',
  `car_no` varchar(256) DEFAULT NULL COMMENT '车牌号',
  `car_ower_name` varchar(126) DEFAULT NULL,
  `car_type` varchar(128) DEFAULT NULL COMMENT '车型',
  `insurance_company` varchar(50) DEFAULT NULL COMMENT '保险公司',
  `contacts` varchar(128) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `meet_date` varchar(128) DEFAULT NULL COMMENT '接车日期',
  `meet_address` varchar(256) DEFAULT NULL,
  `shop_id` bigint(16) DEFAULT NULL,
  `cooperation_shop` varchar(128) DEFAULT NULL COMMENT '合作店',
  `repair_desc` varchar(128) DEFAULT NULL COMMENT '维修内容',
  `assess_damage` varchar(128) DEFAULT NULL COMMENT '定损金额',
  `insurance_num` varchar(128) DEFAULT NULL COMMENT '出险次数',
  `is_return` tinyint(1) DEFAULT NULL COMMENT '是否还车',
  `give_date` varchar(128) DEFAULT NULL COMMENT '还车日期',
  `satisfied_degree` int(11) DEFAULT NULL COMMENT '满意度',
  `solution` varchar(1024) DEFAULT NULL COMMENT '解决方案',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_approach` varchar(128) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `visit_status` enum('no','yes','wait','good','bad') DEFAULT NULL COMMENT '回访状态',
  `visit_time` datetime DEFAULT NULL COMMENT '回访时间',
  `data_source` varchar(20) DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`id`),
  KEY `success_id` (`success_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77676 DEFAULT CHARSET=utf8 COMMENT='接送修数据';

-- ----------------------------
-- Records of claim_shuttle_repair
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_success_info`
-- ----------------------------
DROP TABLE IF EXISTS `claim_success_info`;
CREATE TABLE `claim_success_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `deal_id` varchar(32) DEFAULT NULL COMMENT '快递单号',
  `customer_info_id` bigint(16) DEFAULT NULL COMMENT '客户信息ID',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(128) DEFAULT NULL COMMENT '车型',
  `company_model` varchar(128) DEFAULT NULL,
  `dispatch_id` bigint(16) DEFAULT NULL COMMENT '分配人',
  `dispatch_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `inner_date` varchar(32) DEFAULT NULL COMMENT '登记日期',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `licensed_person` varchar(32) DEFAULT NULL COMMENT '车主',
  `insurant` varchar(32) DEFAULT NULL COMMENT '被保险人',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `strong_date` varchar(32) DEFAULT NULL COMMENT '交强起保日期',
  `business_date` varchar(32) DEFAULT NULL COMMENT '商业起保日期',
  `types_of_insurance` varchar(512) DEFAULT NULL COMMENT '险种',
  `amount` varchar(16) DEFAULT NULL COMMENT '保单金额',
  `real_amount` varchar(16) DEFAULT NULL COMMENT '实收金额',
  `invoice_title` varchar(64) DEFAULT NULL COMMENT '发票抬头',
  `mobile` varchar(200) DEFAULT NULL COMMENT '电话',
  `temporary_address` varchar(128) DEFAULT NULL COMMENT '临时地址',
  `real_address` varchar(128) DEFAULT NULL COMMENT '送单地址',
  `insurant_amount` varchar(100) DEFAULT NULL COMMENT '保费总额',
  `pay_type` varchar(16) DEFAULT NULL COMMENT '缴费方式',
  `send_time` varchar(32) DEFAULT NULL COMMENT '送单时间',
  `send_type` int(1) DEFAULT NULL COMMENT '送单方式',
  `send_person` varchar(32) DEFAULT NULL COMMENT '送单人',
  `self_feeding` varchar(200) DEFAULT NULL COMMENT '自送',
  `gifts` varchar(64) DEFAULT NULL COMMENT '礼品',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注信息',
  `status` int(12) DEFAULT NULL COMMENT '跟踪状态',
  `deal_type` varchar(16) DEFAULT NULL COMMENT '保单类别',
  `remark1` varchar(256) DEFAULT NULL COMMENT '合作店备注',
  `remark2` varchar(256) DEFAULT NULL COMMENT '客服备注',
  `shop_id` bigint(16) DEFAULT NULL COMMENT '合作店',
  `satisfied_degree` int(11) DEFAULT NULL COMMENT '满意度评分',
  `openid` varchar(64) DEFAULT NULL,
  `channel` varchar(32) DEFAULT NULL,
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `assess_damage` varchar(128) DEFAULT NULL COMMENT '定损金额',
  `data_source` varchar(20) DEFAULT NULL,
  `approach_time` date DEFAULT NULL COMMENT '进场时间',
  `repair_status` int(2) DEFAULT '1' COMMENT '维修状态',
  `approve1` bigint(20) DEFAULT NULL COMMENT '审批1-渠道',
  `approve2` bigint(20) DEFAULT NULL COMMENT '审批2-财务',
  `approve3` bigint(20) DEFAULT NULL COMMENT '审批3-总经理',
  `approve1_time` datetime DEFAULT NULL,
  `approve2_time` datetime DEFAULT NULL,
  `approve3_time` datetime DEFAULT NULL,
  `approve1_note` varchar(128) DEFAULT NULL,
  `approve2_note` varchar(128) DEFAULT NULL,
  `approve3_note` varchar(128) DEFAULT NULL,
  `approve1_status` int(2) DEFAULT NULL,
  `approve2_status` int(2) DEFAULT NULL,
  `approve3_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city` (`city`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5479 DEFAULT CHARSET=utf8 COMMENT='理赔成交信息表：成交之后存这个表';

-- ----------------------------
-- Records of claim_success_info
-- ----------------------------

-- ----------------------------
-- Table structure for `claim_wx_order`
-- ----------------------------
DROP TABLE IF EXISTS `claim_wx_order`;
CREATE TABLE `claim_wx_order` (
  `id` bigint(16) unsigned NOT NULL AUTO_INCREMENT,
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_owner_name` varchar(128) DEFAULT NULL COMMENT '车主',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `contacts` varchar(32) DEFAULT NULL COMMENT '联系人',
  `car_type` varchar(128) DEFAULT NULL COMMENT '车型',
  `shop_id` bigint(16) DEFAULT NULL COMMENT '商店',
  `sales_name` varchar(128) DEFAULT NULL COMMENT '代理人',
  `sales_mobile` varchar(20) DEFAULT NULL COMMENT '代理人mobile',
  `reserve_time` varchar(20) DEFAULT NULL COMMENT '预约时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `openid` varchar(64) DEFAULT NULL COMMENT '微信唯一标识',
  `result` varchar(128) DEFAULT NULL COMMENT '最后处理结果',
  `status` int(2) DEFAULT NULL,
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `ispickup` int(2) DEFAULT NULL COMMENT '是否接车',
  `address` varchar(512) DEFAULT NULL COMMENT '接车地址',
  `satisfied_degree` int(11) DEFAULT NULL,
  `repair_desc` varchar(128) DEFAULT NULL COMMENT '维修项目',
  `follow_status` int(2) DEFAULT NULL COMMENT '进场确认',
  `repair_status` int(2) DEFAULT NULL COMMENT '维修状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=270024 DEFAULT CHARSET=utf8 COMMENT='微信订单信息';

-- ----------------------------
-- Records of claim_wx_order
-- ----------------------------

-- ----------------------------
-- Table structure for `common_url`
-- ----------------------------
DROP TABLE IF EXISTS `common_url`;
CREATE TABLE `common_url` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `link` varchar(256) DEFAULT NULL COMMENT '连接地址',
  `name` varchar(20) DEFAULT NULL COMMENT '连接名称',
  `channel` varchar(10) DEFAULT NULL COMMENT '所属渠道',
  `create_id` bigint(11) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='常用连接';

-- ----------------------------
-- Records of common_url
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_info`
-- ----------------------------
DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE `customer_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `car_info_id` bigint(16) DEFAULT NULL COMMENT '车辆信息ID',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(128) DEFAULT NULL COMMENT '车型',
  `car_owner_name` varchar(128) DEFAULT NULL COMMENT '车主',
  `success_time` datetime DEFAULT NULL COMMENT '出单时间',
  `fail_time` datetime DEFAULT NULL COMMENT '失败时间',
  `insurance_company` varchar(128) DEFAULT NULL COMMENT '保险公司',
  `insurant` varchar(128) DEFAULT NULL COMMENT '被保险人',
  `insurant_end_time` varchar(50) DEFAULT NULL COMMENT '车险到期日',
  `mobile` varchar(128) DEFAULT NULL COMMENT '手机',
  `dispatch_id` bigint(16) DEFAULT NULL COMMENT '分配人',
  `dispatch_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `dispatch_level` varchar(16) DEFAULT NULL COMMENT '分配人级别',
  `customer_level` varchar(16) DEFAULT NULL COMMENT '客户级别',
  `inner_date` varchar(32) DEFAULT NULL COMMENT '登记日期',
  `reserve_time` varchar(32) DEFAULT NULL COMMENT '预约时间',
  `data_type` int(2) DEFAULT NULL COMMENT '数据类型，1：有效2：死数据3：成交',
  `status` int(2) DEFAULT NULL COMMENT '1:有效,2:死数据,3:成交',
  `single_member_id` bigint(16) DEFAULT NULL COMMENT '出单员',
  `success_status` int(2) DEFAULT NULL COMMENT '保单状态,1：新保单2：暂保单3：正式保单4：打回',
  `remark` varchar(2048) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark1` varchar(256) DEFAULT NULL COMMENT '跟踪保存状态',
  `remark_cd` varchar(256) DEFAULT NULL COMMENT '成交订单备注',
  `remark_kd` varchar(256) DEFAULT NULL COMMENT '快递订单备注',
  `cxcs` varchar(30) DEFAULT NULL COMMENT '出险次数',
  `syxbdh` varchar(30) DEFAULT NULL COMMENT '商业险保单号',
  `jqxbdh` varchar(30) DEFAULT NULL COMMENT '交强险保单号',
  `sybdlsh` varchar(30) DEFAULT NULL COMMENT '商业保单流水号',
  `jqbdlsh` varchar(30) DEFAULT NULL COMMENT '交强保单流水号',
  `cdjg` varchar(30) DEFAULT NULL COMMENT '出单机构',
  `history_status` int(2) DEFAULT NULL COMMENT '历史状态',
  `engine_number` varchar(48) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(48) DEFAULT NULL COMMENT '车架号',
  `seat_num` int(2) DEFAULT NULL COMMENT '座位数',
  `is_calc` int(1) DEFAULT NULL COMMENT '是否算单',
  `calc_time` datetime DEFAULT NULL COMMENT '算单时间',
  `select_group` int(11) DEFAULT NULL COMMENT '选择分组',
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `is_offer` tinyint(1) DEFAULT NULL COMMENT '是否报价',
  `is_probing` tinyint(1) DEFAULT NULL COMMENT '是否探寻需求',
  `is_processed` tinyint(1) DEFAULT NULL COMMENT '是否已处理',
  `is_introduction` tinyint(1) DEFAULT NULL COMMENT '服务介绍',
  `is_facilitate` tinyint(1) DEFAULT NULL COMMENT '促成',
  `no_answer_num` int(11) DEFAULT NULL COMMENT '无人接听数',
  `reject_num` int(11) DEFAULT NULL COMMENT '拒接数',
  `trck_num` int(11) DEFAULT NULL COMMENT '跟踪次数',
  `premiere` varchar(50) DEFAULT NULL,
  `visit` varchar(50) DEFAULT NULL,
  `product_time` varchar(32) DEFAULT NULL COMMENT '正式出单时间',
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  `create_user` bigint(20) DEFAULT NULL,
  `first_trck_time` datetime DEFAULT NULL COMMENT '首次跟踪时间',
  `receive_validate` varchar(20) DEFAULT NULL COMMENT '接收验证码',
  PRIMARY KEY (`id`),
  KEY `car_info_id` (`car_info_id`) USING BTREE,
  KEY `city` (`city`) USING BTREE,
  KEY `reserve_time` (`reserve_time`) USING BTREE,
  KEY `dispatch_id` (`dispatch_id`,`calc_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1458514 DEFAULT CHARSET=utf8 COMMENT='数据分配表：数据导入之后，点击手动或者自动分配之后，数据会进入这个表';

-- ----------------------------
-- Records of customer_info
-- ----------------------------

-- ----------------------------
-- Table structure for `deal_mobile_data`
-- ----------------------------
DROP TABLE IF EXISTS `deal_mobile_data`;
CREATE TABLE `deal_mobile_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(50) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `real_mobile` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `real_phone` varchar(20) DEFAULT NULL,
  `ddd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_mobile_data
-- ----------------------------

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `is_delete` int(2) DEFAULT NULL COMMENT '是否删除',
  `pid` int(11) DEFAULT NULL COMMENT '上级部门',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `icon` varchar(32) DEFAULT NULL,
  `seq` tinyint(1) DEFAULT NULL,
  `is_collect` int(2) DEFAULT NULL COMMENT '是否汇总数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of dept
-- ----------------------------

-- ----------------------------
-- Table structure for `fail_info`
-- ----------------------------
DROP TABLE IF EXISTS `fail_info`;
CREATE TABLE `fail_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `customer_info_id` bigint(16) DEFAULT NULL COMMENT '客户信息',
  `last_insurance_company` varchar(16) DEFAULT NULL COMMENT '去年保险公司',
  `last_insurance_company_else` varchar(16) DEFAULT NULL COMMENT '其他',
  `this_insurance_company` varchar(16) DEFAULT NULL COMMENT '今年保险公司',
  `this_insurance_company_else` varchar(16) DEFAULT NULL COMMENT '其他',
  `fail_reason` varchar(256) DEFAULT NULL COMMENT '失败原因',
  `status` int(1) DEFAULT NULL COMMENT '状态信息，1：',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1209692 DEFAULT CHARSET=utf8 COMMENT='联系失败表：联系失败之后存这个表。';

-- ----------------------------
-- Records of fail_info
-- ----------------------------

-- ----------------------------
-- Table structure for `financial_list`
-- ----------------------------
DROP TABLE IF EXISTS `financial_list`;
CREATE TABLE `financial_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK主键',
  `openid` varchar(40) DEFAULT NULL COMMENT '微信标识',
  `success_id` bigint(16) DEFAULT NULL COMMENT '成交Id',
  `customer_info_id` bigint(16) DEFAULT NULL COMMENT '分配Id',
  `car_id` bigint(16) DEFAULT NULL COMMENT '车辆Id',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_owner` varchar(128) DEFAULT NULL COMMENT '车主',
  `contract_mobile` varchar(128) DEFAULT NULL COMMENT '联系电话',
  `assess_damage` decimal(20,2) DEFAULT NULL COMMENT '定损金额',
  `insurance_num` int(11) DEFAULT NULL COMMENT '出险次数',
  `bank_card` varchar(20) DEFAULT NULL COMMENT '银行卡号',
  `account` varchar(20) DEFAULT NULL COMMENT '账户',
  `open_bank` varchar(40) DEFAULT NULL COMMENT '开户行',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `settlement_status` tinyint(1) DEFAULT NULL COMMENT '结算状态,0未结算，1已结算',
  `settlement_money` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `settlement_rate` decimal(20,2) DEFAULT NULL COMMENT '结算点位',
  `settlement_time` datetime DEFAULT NULL COMMENT '结算时间',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_id` int(11) DEFAULT NULL COMMENT '添加人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='财务列表';

-- ----------------------------
-- Records of financial_list
-- ----------------------------

-- ----------------------------
-- Table structure for `follow_status`
-- ----------------------------
DROP TABLE IF EXISTS `follow_status`;
CREATE TABLE `follow_status` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `customer_info_id` bigint(16) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `remark1` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=726293 DEFAULT CHARSET=utf8 COMMENT='客户跟进表：描述客户的跟进状态';

-- ----------------------------
-- Records of follow_status
-- ----------------------------

-- ----------------------------
-- Table structure for `gift_group`
-- ----------------------------
DROP TABLE IF EXISTS `gift_group`;
CREATE TABLE `gift_group` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) DEFAULT NULL COMMENT '礼品分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gift_group
-- ----------------------------

-- ----------------------------
-- Table structure for `gift_group_info`
-- ----------------------------
DROP TABLE IF EXISTS `gift_group_info`;
CREATE TABLE `gift_group_info` (
  `gift_id` int(11) NOT NULL DEFAULT '0',
  `gift_group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gift_id`,`gift_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gift_group_info
-- ----------------------------

-- ----------------------------
-- Table structure for `gift_info`
-- ----------------------------
DROP TABLE IF EXISTS `gift_info`;
CREATE TABLE `gift_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `gift_name` varchar(32) DEFAULT NULL COMMENT '礼品名称',
  `price` varchar(16) DEFAULT NULL COMMENT '礼品价值',
  `des` varchar(16) DEFAULT NULL COMMENT '礼品描述',
  `status` int(1) DEFAULT NULL COMMENT '礼品状态1：正常0：未开启',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='礼品表：赠送的礼品数据';

-- ----------------------------
-- Records of gift_info
-- ----------------------------

-- ----------------------------
-- Table structure for `guidance`
-- ----------------------------
DROP TABLE IF EXISTS `guidance`;
CREATE TABLE `guidance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uuid` varchar(40) DEFAULT NULL COMMENT '录音标识',
  `mobile` varchar(20) DEFAULT NULL COMMENT '客户手机 ',
  `salesman` varchar(20) DEFAULT NULL COMMENT '业务员',
  `record_mark` varchar(40) DEFAULT NULL COMMENT '录音标记',
  `advantage` varchar(255) DEFAULT NULL COMMENT '录音有点',
  `shortcoming` varchar(255) DEFAULT NULL COMMENT '录音缺点',
  `coach_desc` varchar(255) DEFAULT NULL COMMENT '辅导内容',
  `improve_time` date DEFAULT NULL COMMENT '改善时间',
  `coach_id` int(11) DEFAULT NULL COMMENT '辅导人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新人',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`,`coach_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='辅导信息';

-- ----------------------------
-- Records of guidance
-- ----------------------------

-- ----------------------------
-- Table structure for `holiday_info`
-- ----------------------------
DROP TABLE IF EXISTS `holiday_info`;
CREATE TABLE `holiday_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `today` date DEFAULT NULL COMMENT '日期',
  `note` varchar(20) DEFAULT NULL COMMENT '备注',
  `work_date` date DEFAULT NULL COMMENT '工作日',
  `single_len` int(11) DEFAULT NULL COMMENT '长度',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新人',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `today` (`today`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='节假日信息';

-- ----------------------------
-- Records of holiday_info
-- ----------------------------

-- ----------------------------
-- Table structure for `insurance_info`
-- ----------------------------
DROP TABLE IF EXISTS `insurance_info`;
CREATE TABLE `insurance_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `customer_info_id` bigint(16) DEFAULT NULL COMMENT '客户信息ID',
  `commercial_insurance_amount` varchar(128) DEFAULT NULL COMMENT '商险金额',
  `type` varchar(256) DEFAULT NULL COMMENT '险种',
  `selectxian` varchar(16) DEFAULT NULL COMMENT '三者',
  `textxian` varchar(32) DEFAULT NULL,
  `selectxian1` varchar(32) DEFAULT NULL COMMENT '划痕',
  `textxian1` varchar(32) DEFAULT NULL COMMENT '车损描述',
  `imposed_insurance_amount` varchar(16) DEFAULT NULL COMMENT '交强险金额',
  `tax` varchar(16) DEFAULT NULL COMMENT '税',
  `amount` varchar(16) DEFAULT NULL COMMENT '总额',
  `discount` varchar(16) DEFAULT NULL COMMENT '折扣',
  `insurance_num` int(8) DEFAULT NULL COMMENT '出险次数',
  `status` int(1) DEFAULT NULL,
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_info_id` (`customer_info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1209244 DEFAULT CHARSET=utf8 COMMENT='商险信息表';

-- ----------------------------
-- Records of insurance_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_white`
-- ----------------------------
DROP TABLE IF EXISTS `ip_white`;
CREATE TABLE `ip_white` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` bigint(20) DEFAULT NULL COMMENT 'IP地址整数',
  `ip_addr` varchar(20) DEFAULT NULL COMMENT 'ip地址字符串',
  `enable_status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新人',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='IP auth 白名单';

-- ----------------------------
-- Records of ip_white
-- ----------------------------

-- ----------------------------
-- Table structure for `operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `operation` varchar(128) DEFAULT NULL,
  `parameter` varchar(3072) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operation` (`operation`) USING BTREE,
  KEY `operation_2` (`operation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2728814 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for `quality_testing`
-- ----------------------------
DROP TABLE IF EXISTS `quality_testing`;
CREATE TABLE `quality_testing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sell_id` bigint(20) DEFAULT NULL COMMENT '销售人员',
  `sell_name` varchar(40) DEFAULT NULL COMMENT ' 销售姓名',
  `uuid` varchar(40) DEFAULT NULL COMMENT '录音编码',
  `is_start` tinyint(1) DEFAULT NULL COMMENT '开头语',
  `is_need` tinyint(1) DEFAULT NULL COMMENT '探寻需求',
  `is_intro` tinyint(1) DEFAULT NULL COMMENT '服务介绍',
  `is_objection` tinyint(1) DEFAULT NULL COMMENT '异议处理',
  `is_facilitate` tinyint(1) DEFAULT NULL COMMENT '促成',
  `is_end` tinyint(1) DEFAULT NULL COMMENT '结束语',
  `is_qualified` tinyint(1) DEFAULT NULL COMMENT '是否合格',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新人',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='质检';

-- ----------------------------
-- Records of quality_testing
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `is_delete` int(2) DEFAULT NULL COMMENT '是否删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `pid` int(11) DEFAULT NULL COMMENT '上级角色',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6354 DEFAULT CHARSET=utf8 COMMENT='角色权限表：某个角色对应了哪些权限';

-- ----------------------------
-- Records of role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sms_record`
-- ----------------------------
DROP TABLE IF EXISTS `sms_record`;
CREATE TABLE `sms_record` (
  `msg_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) DEFAULT NULL,
  `content` varchar(1028) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  `result` varchar(256) DEFAULT NULL,
  `result_state` int(11) DEFAULT NULL,
  `result_msg` varchar(100) DEFAULT NULL,
  `send_user_id` int(11) DEFAULT NULL,
  `send_user_name` varchar(20) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=309340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_record
-- ----------------------------

-- ----------------------------
-- Table structure for `softphone`
-- ----------------------------
DROP TABLE IF EXISTS `softphone`;
CREATE TABLE `softphone` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(20) DEFAULT NULL,
  `phone` varchar(512) DEFAULT NULL,
  `extension` varchar(32) DEFAULT NULL,
  `update_id` bigint(20) DEFAULT NULL,
  `update_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of softphone
-- ----------------------------

-- ----------------------------
-- Table structure for `success_info`
-- ----------------------------
DROP TABLE IF EXISTS `success_info`;
CREATE TABLE `success_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `temp_deal_id` varchar(32) DEFAULT NULL COMMENT '暂保快递单号',
  `deal_id` varchar(32) DEFAULT NULL COMMENT '快递单号',
  `customer_info_id` bigint(16) DEFAULT NULL COMMENT '客户信息ID',
  `car_no` varchar(128) DEFAULT NULL COMMENT '车牌号',
  `car_model` varchar(128) DEFAULT NULL COMMENT '车型',
  `company_model` varchar(128) DEFAULT NULL,
  `dispatch_id` bigint(16) DEFAULT NULL COMMENT '分配人',
  `dispatch_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `inner_date` varchar(32) DEFAULT NULL COMMENT '登记日期',
  `engine_number` varchar(32) DEFAULT NULL COMMENT '发动机号',
  `vehicle_frame` varchar(32) DEFAULT NULL COMMENT '车架号',
  `licensed_person` varchar(128) DEFAULT NULL COMMENT '车主',
  `insurant` varchar(128) DEFAULT NULL COMMENT '被保险人',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `jqbegin_date` varchar(32) DEFAULT NULL COMMENT '交强起保日期',
  `begin_date` varchar(32) DEFAULT NULL COMMENT '商业起保日期',
  `types_of_insurance` varchar(64) DEFAULT NULL COMMENT '险种',
  `amount` varchar(16) DEFAULT NULL COMMENT '保单金额',
  `real_amount` varchar(16) DEFAULT NULL COMMENT '实收金额',
  `invoice_title` varchar(64) DEFAULT NULL COMMENT '发票抬头',
  `mobile` varchar(200) DEFAULT NULL COMMENT '电话',
  `temporary_address` varchar(128) DEFAULT NULL COMMENT '临时地址',
  `real_address` varchar(128) DEFAULT NULL COMMENT '送单地址',
  `insurant_amount` varchar(100) DEFAULT NULL COMMENT '保费总额',
  `pay_type` varchar(16) DEFAULT NULL COMMENT '缴费方式',
  `temp_time` varchar(32) DEFAULT NULL COMMENT '暂保时间',
  `product_time` varchar(32) DEFAULT NULL COMMENT '出单时间',
  `send_time` varchar(32) DEFAULT NULL COMMENT '暂保送单时间',
  `product_send_time` varchar(32) DEFAULT NULL COMMENT '正式送单时间',
  `send_type` int(1) DEFAULT NULL COMMENT '送单方式',
  `send_person` varchar(32) DEFAULT NULL COMMENT '送单人',
  `self_feeding` varchar(200) DEFAULT NULL COMMENT '自送',
  `gifts` varchar(200) DEFAULT NULL COMMENT '礼品',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注信息',
  `status` int(12) DEFAULT NULL COMMENT '跟踪状态',
  `temp_deal_type` varchar(16) DEFAULT NULL COMMENT '暂保状态',
  `deal_type` varchar(16) DEFAULT NULL COMMENT '保单类别',
  `temp_remark` varchar(256) DEFAULT NULL COMMENT '暂保备注',
  `remark1` varchar(256) DEFAULT NULL COMMENT '快递备注',
  `remark2` varchar(256) DEFAULT NULL COMMENT '出单员ID',
  `addressee` varchar(32) DEFAULT NULL COMMENT '收件人',
  `phone` varchar(40) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(40) DEFAULT NULL COMMENT '被保人邮箱',
  `city` int(11) DEFAULT NULL COMMENT '所属城市',
  `temp_courier` varchar(20) DEFAULT NULL COMMENT '暂保快递师傅姓名',
  `temp_phone` varchar(20) DEFAULT NULL COMMENT '暂保快递师傅电话',
  `temp_date` datetime DEFAULT NULL COMMENT '暂保快递师傅妥投日期',
  `formal_courier` varchar(20) DEFAULT NULL COMMENT '正式快递师傅姓名',
  `formal_phone` varchar(255) DEFAULT NULL COMMENT '正式快递师傅电话',
  `formal_date` datetime DEFAULT NULL COMMENT '正式快递师傅妥投日期',
  `data_source` varchar(20) DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_info_id` (`customer_info_id`) USING BTREE,
  KEY `dispatch_id` (`dispatch_id`) USING BTREE,
  KEY `city` (`city`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1209622 DEFAULT CHARSET=utf8 COMMENT='成交信息表：成交之后存这个表';

-- ----------------------------
-- Records of success_info
-- ----------------------------

-- ----------------------------
-- Table structure for `system_key`
-- ----------------------------
DROP TABLE IF EXISTS `system_key`;
CREATE TABLE `system_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `red_key` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_key
-- ----------------------------

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `pid` int(11) DEFAULT NULL COMMENT '上级菜单',
  `url` varchar(200) DEFAULT NULL COMMENT '链接',
  `is_delete` int(2) DEFAULT NULL COMMENT '是否删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `temp`
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `uuid` varchar(60) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp
-- ----------------------------

-- ----------------------------
-- Table structure for `temp2`
-- ----------------------------
DROP TABLE IF EXISTS `temp2`;
CREATE TABLE `temp2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `loginnm` varchar(100) DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  `leader_id` bigint(11) DEFAULT NULL,
  `leader_nm` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp2
-- ----------------------------

-- ----------------------------
-- Table structure for `the_words`
-- ----------------------------
DROP TABLE IF EXISTS `the_words`;
CREATE TABLE `the_words` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category` int(2) DEFAULT NULL COMMENT '栏目',
  `topic` varchar(256) DEFAULT NULL COMMENT '话题',
  `answer` text COMMENT '解答',
  `channel` varchar(10) DEFAULT NULL COMMENT '所属渠道',
  `create_id` bigint(11) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='话术';

-- ----------------------------
-- Records of the_words
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp`
-- ----------------------------
DROP TABLE IF EXISTS `tmp`;
CREATE TABLE `tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_info_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_info_id` (`car_info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1221138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `type_info`
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL COMMENT '保险名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='保险类型表';

-- ----------------------------
-- Records of type_info
-- ----------------------------

-- ----------------------------
-- Table structure for `type_of_insurance`
-- ----------------------------
DROP TABLE IF EXISTS `type_of_insurance`;
CREATE TABLE `type_of_insurance` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `insurance_id` bigint(16) DEFAULT NULL COMMENT '商险ID',
  `name` varchar(16) DEFAULT NULL COMMENT '商险名称',
  `selectvalue` varchar(16) DEFAULT NULL COMMENT '下拉选择值',
  `textvalue` varchar(128) DEFAULT NULL COMMENT '文本内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9165482 DEFAULT CHARSET=utf8 COMMENT='保单对应的保险种类表：每个保单下面包含了几种险种';

-- ----------------------------
-- Records of type_of_insurance
-- ----------------------------

-- ----------------------------
-- Table structure for `user_coll`
-- ----------------------------
DROP TABLE IF EXISTS `user_coll`;
CREATE TABLE `user_coll` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_coll
-- ----------------------------

-- ----------------------------
-- Table structure for `user_kpi`
-- ----------------------------
DROP TABLE IF EXISTS `user_kpi`;
CREATE TABLE `user_kpi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户',
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `target` decimal(20,2) DEFAULT NULL COMMENT '任务目标',
  `busi_type` varchar(20) DEFAULT NULL COMMENT '业务类型sell，claim',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COMMENT='用户KPI考核指标';

-- ----------------------------
-- Records of user_kpi
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_redpackage`
-- ----------------------------
DROP TABLE IF EXISTS `wx_redpackage`;
CREATE TABLE `wx_redpackage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nickname` varchar(64) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL COMMENT '0:男,1:女',
  `language` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `headimgurl` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `privilege` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `red_key` varchar(20) DEFAULT NULL COMMENT '红包key',
  `red_money` decimal(4,2) DEFAULT NULL COMMENT '红包金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `openidredkey` (`openid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wx_redpackage
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_redpackage_ext`
-- ----------------------------
DROP TABLE IF EXISTS `wx_redpackage_ext`;
CREATE TABLE `wx_redpackage_ext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `red_money` decimal(5,2) DEFAULT NULL COMMENT '红包金额',
  `openid` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nickname` varchar(64) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL COMMENT '0:男,1:女',
  `language` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `headimgurl` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `privilege` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `red_key` varchar(20) DEFAULT NULL COMMENT '红包key',
  PRIMARY KEY (`id`),
  UNIQUE KEY `openidredkey` (`openid`,`red_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wx_redpackage_ext
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `wx_userinfo`;
CREATE TABLE `wx_userinfo` (
  `openid` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nickname` varchar(64) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL COMMENT '0:男,1:女',
  `language` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `headimgurl` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `privilege` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wx_userinfo
-- ----------------------------

-- ----------------------------
-- Function structure for `PARSE_MOBILE`
-- ----------------------------
DROP FUNCTION IF EXISTS `PARSE_MOBILE`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `PARSE_MOBILE`(mobile varchar(255)) RETURNS varchar(255) CHARSET utf8
BEGIN 
		DECLARE i int;
		DECLARE s varchar(3);
		DECLARE repstr varchar(248);
		DECLARE e varchar(4);
		IF LENGTH(ifnull(mobile,''))<=7 then
			RETURN mobile;
		END IF;
		set i=0;
		set s = LEFT(mobile,3);
		set repstr = '';
		set e = RIGHT(mobile,4);
		WHILE i<LENGTH(mobile)-7 DO
			set repstr = CONCAT(repstr,'*');
			set i = i+1;
		END WHILE;
		return CONCAT(s,'****',e);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryAllChildrenAreaInfo`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryAllChildrenAreaInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryAllChildrenAreaInfo`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(8000);
DECLARE sTempChd VARCHAR(8000);

SET sTemp = cast(id as char);
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO

if sTemp <> sTempChd then
	if right(sTempChd,1)=',' then
		SET sTemp = CONCAT(sTemp,',',left(sTempChd,length(sTempChd)-1));
	ELSE
		SET sTemp = CONCAT(sTemp,',',sTempChd);
	END IF;
	#SET sTemp = CONCAT(sTemp,',',sTempChd);
end if;
SELECT group_concat(distinct user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0;

END WHILE;
return sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryChildrenAreaInfo`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenAreaInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryChildrenAreaInfo`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = cast(id as char);
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO
if sTemp <> sTempChd then
SET sTemp = CONCAT(sTemp,',',sTempChd);
end if;
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0;
END WHILE;
return sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryChildrenAreaInfo_dept21_phone`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenAreaInfo_dept21_phone`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryChildrenAreaInfo_dept21_phone`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0 and phone>'' and dept_id = 21;
END WHILE;
return sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryChildrenAreaInfo_dept_phone`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenAreaInfo_dept_phone`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryChildrenAreaInfo_dept_phone`(`userId` bigint,`deptId` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(userId as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0 and phone>'' and dept_id = deptId;
END WHILE;
return sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryChildrenAreaInfo_phone`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenAreaInfo_phone`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryChildrenAreaInfo_phone`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0 and phone>'' and role_id in (1,2,3,12,13,29,30,31,32,33,46,47);
END WHILE;
return sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryChildrenDeptInfo`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryChildrenDeptInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryChildrenDeptInfo`(`deptId` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = cast(deptId as char);
SET sTempChd = cast(deptId as char);

WHILE sTempChd is not NULL DO
if sTemp <> sTempChd then
SET sTemp = CONCAT(sTemp,',',sTempChd);
end if;
SELECT group_concat(id) INTO sTempChd FROM dept where FIND_IN_SET(pid,sTempChd)>0 and is_delete=0;
END WHILE;
return sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `queryDeptInfo`
-- ----------------------------
DROP FUNCTION IF EXISTS `queryDeptInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `queryDeptInfo`(`deptId` int) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE fid int(11) default 0; 
DECLARE fnm varchar(100) default '';
DECLARE str varchar(1000) default '';

WHILE deptId is not null  do   
    SET fid =(SELECT pid FROM dept WHERE id = deptId);
		SET fnm =(SELECT dept_name FROM dept WHERE id = deptId);   
    IF fid is not null THEN
				if fid > 0 and length(str)>0 then
        SET str = concat(fnm, '-', str);
				end if;
				if fid > 0 and length(str)=0 then
        SET str = concat(fnm, '-',str);
				end if;
        SET deptId = fid;   
    ELSE   
        SET deptId = fid;   
    END IF;
END WHILE;
SET str = concat('中京国际', '-',str); 
return LEFT(str,char_length(str)-1);
END
;;
DELIMITER ;
