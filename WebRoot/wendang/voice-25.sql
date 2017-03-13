/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : voice

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-11-04 16:53:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_isadmin
-- ----------------------------
DROP TABLE IF EXISTS `a_isadmin`;
CREATE TABLE `a_isadmin` (
  `A_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `A_isadmName` varchar(100) NOT NULL COMMENT '超级管理员账号',
  `A_isadPassword` varchar(100) NOT NULL COMMENT '用户密码',
  `A_isadName` varchar(500) DEFAULT NULL COMMENT '姓名',
  `A_isadPortrait` varchar(500) DEFAULT NULL COMMENT '头像',
  `A_isadSex` varchar(40) DEFAULT NULL COMMENT '性别',
  `A_isadEmail` varchar(500) NOT NULL COMMENT '邮箱地址',
  `A_isadPhone` varchar(40) DEFAULT NULL COMMENT '手机号码',
  `A_isadredTime` varchar(40) DEFAULT NULL COMMENT '注册时间',
  `A_isadLastTime` varchar(40) DEFAULT NULL COMMENT '登录时间',
  `A_isadLoginStus` int(10) DEFAULT NULL COMMENT '登录状态',
  `A_isadIP` varchar(40) DEFAULT NULL COMMENT '登录IP',
  `A_isadzhiwei` int(10) DEFAULT NULL COMMENT '职位权限',
  `A_isadTSyi` varchar(50) DEFAULT NULL COMMENT '备用1',
  `A_isadTSer` varchar(50) DEFAULT NULL COMMENT '备用2',
  `A_isadTSan` varchar(50) DEFAULT NULL COMMENT '备用3',
  PRIMARY KEY (`A_ID`),
  UNIQUE KEY `A_isadmName` (`A_isadmName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of a_isadmin
-- ----------------------------
INSERT INTO `a_isadmin` VALUES ('402881ed571cc9c401571cd1b48c0000', 'fasdfadfds', '6f1e8a96e30e2d99', 'fadfaf', null, '男', 'asdfa', 'dfafaf', '', '', null, '', '2', null, null, null);
INSERT INTO `a_isadmin` VALUES ('402881ed571cc9c401571cd20cb20001', 'sdfadf', 'd9be4b8bf45a26dc', 'adfadfadfa', null, '男', 'fafa', 'dfaf', '', '', null, '', '2', null, null, null);
INSERT INTO `a_isadmin` VALUES ('afdasfasberae', 'admincom', '3d414ff33b056f2b', '管理员', null, '男', '969353498@qq.com', '15213478863', '2016-5-5 00:00:00', '2016-11-04 16:33:42', null, '0:0:0:0:0:0:0:1', '1', 'null', 'null', 'null');

-- ----------------------------
-- Table structure for bf_translate
-- ----------------------------
DROP TABLE IF EXISTS `bf_translate`;
CREATE TABLE `bf_translate` (
  `bf_ID` varchar(50) NOT NULL,
  `bf_Names` varchar(50) NOT NULL,
  `bf_sygw` varchar(4000) DEFAULT NULL COMMENT '试音稿文',
  `bf_yqsc` varchar(50) DEFAULT NULL COMMENT '要求时长',
  `bf_tisyi` varchar(50) DEFAULT NULL,
  `bf_rwmiaos` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`bf_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_translate
-- ----------------------------
INSERT INTO `bf_translate` VALUES ('40284742582e45b401582e4b9bba0003', '一个测试任务标题', '一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题一个测试任务标题', null, 'DF152201201611041544164416860995', '一个测试任务标题');

-- ----------------------------
-- Table structure for b_tender
-- ----------------------------
DROP TABLE IF EXISTS `b_tender`;
CREATE TABLE `b_tender` (
  `B_TID` varchar(40) NOT NULL COMMENT '主键ID',
  `B_TName` varchar(100) NOT NULL COMMENT '任务信息标题',
  `B_Time` varchar(40) NOT NULL COMMENT '任务发布时间',
  `B_UserID` varchar(40) DEFAULT NULL COMMENT '任务发布人ID',
  `B_GtypeID` varchar(40) DEFAULT NULL COMMENT '任务语言类型ID',
  `B_VoiceID` varchar(40) DEFAULT NULL COMMENT '任务配音类型ID',
  `B_Ypfile` varchar(300) DEFAULT NULL COMMENT '任务音频文件（样音)',
  `B_Sex` varchar(40) DEFAULT NULL COMMENT '任务要求性别(1是男  2是女)',
  `B_CrowdID` varchar(40) DEFAULT NULL COMMENT '任务要求配音人群ID',
  `B_TimeLength` varchar(40) DEFAULT NULL COMMENT '任务要求配音时间长度',
  `B_pygaowen` varchar(8000) DEFAULT NULL COMMENT '任务稿文',
  `B_voicefileName` varchar(500) DEFAULT NULL,
  `B_xxmiaoshu` varchar(8000) DEFAULT NULL COMMENT '任务要求详细描述',
  `B_AsofTime` varchar(40) NOT NULL COMMENT '任务截止时间',
  `B_Price` int(10) DEFAULT NULL COMMENT '任务预算价位',
  `B_stateID` varchar(40) DEFAULT NULL COMMENT '招标信息进度ID',
  `B_liuyanNum` int(10) DEFAULT NULL COMMENT '浏览人数',
  `B_filegeshi` varchar(40) DEFAULT NULL COMMENT '要求文件格式',
  `B_pyyusu` varchar(40) DEFAULT NULL COMMENT '配音速度',
  `B_TS` varchar(300) DEFAULT NULL COMMENT '备用字段',
  `B_sffy` varchar(50) DEFAULT NULL,
  `B_rwtype` varchar(50) DEFAULT NULL,
  `b_bfid` varchar(50) DEFAULT NULL COMMENT '翻译表ID',
  `b_counts` int(50) DEFAULT NULL COMMENT '竞标人数',
  `b_rwjdjls` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`B_TID`),
  KEY `FK_Relationship_4` (`B_GtypeID`),
  KEY `FK_Relationship_5` (`B_VoiceID`),
  KEY `FK_Relationship_6` (`B_CrowdID`),
  KEY `FK_Relationship_7` (`B_stateID`),
  KEY `FK_Relationship_8` (`B_filegeshi`) USING BTREE,
  KEY `FK_Relationship_9` (`B_pyyusu`) USING BTREE,
  KEY `FK_Relationship_10` (`b_bfid`) USING BTREE,
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`B_GtypeID`) REFERENCES `l_gtype` (`L_ID`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`B_VoiceID`) REFERENCES `t_voice` (`T_vID`),
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`B_CrowdID`) REFERENCES `s_crowd` (`S_ID`),
  CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`B_stateID`) REFERENCES `z_state` (`Z_ID`),
  CONSTRAINT `FK_Relationship_8` FOREIGN KEY (`B_filegeshi`) REFERENCES `f_ileormat` (`f_id`),
  CONSTRAINT `FK_Relationship_91` FOREIGN KEY (`B_pyyusu`) REFERENCES `h_speed` (`h_id`),
  CONSTRAINT `FK_Relationship_92` FOREIGN KEY (`b_bfid`) REFERENCES `bf_translate` (`bf_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务信息表';

-- ----------------------------
-- Records of b_tender
-- ----------------------------
INSERT INTO `b_tender` VALUES ('40284742582e45b401582e4b9bf10004', 'A test task title', '2016-11-04 15:44:14', 'chenchao', 'beawfeasca', '523456rg3467eg', '2016-11-04-15-44-14-441413736f33904b24cd2d48c845a2a934e16a021a.mp3', '女', 'brarabas32fsdf', '', 'A test task title a test task title a test task title a test task title a test task title a test task title a test task title a test task title a test task title a test task title a test task title a test task title', '2016-11-04-15-44-14-4414323572c4ff269b34b0520311cd37296f87a249URL.txt', 'A test task title', '520', '850', 'baefaf758eaecc', '2', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742582e45b401582e4b9bba0003', '0', '1');

-- ----------------------------
-- Table structure for c_omplete
-- ----------------------------
DROP TABLE IF EXISTS `c_omplete`;
CREATE TABLE `c_omplete` (
  `C_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `C_OmpName` varchar(50) NOT NULL COMMENT '竞标人完成状态名称',
  `C_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞标人完成状态表';

-- ----------------------------
-- Records of c_omplete
-- ----------------------------
INSERT INTO `c_omplete` VALUES ('basehkljmvasdfs', '已完成', '备用字段');
INSERT INTO `c_omplete` VALUES ('vbaseacsecesa6', '合作中', '备用字段');
INSERT INTO `c_omplete` VALUES ('vbflkenlkbdklrmv2240', '合作失败', '备用字段');

-- ----------------------------
-- Table structure for d_type
-- ----------------------------
DROP TABLE IF EXISTS `d_type`;
CREATE TABLE `d_type` (
  `D_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `D_typeName` varchar(50) NOT NULL COMMENT '用户类型名称',
  `D_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表类型表';

-- ----------------------------
-- Records of d_type
-- ----------------------------
INSERT INTO `d_type` VALUES ('berwartaedfeee', '配音员', 'Voice staff');
INSERT INTO `d_type` VALUES ('gseaeffasdasc', '任务方', 'Task party');

-- ----------------------------
-- Table structure for f_ileormat
-- ----------------------------
DROP TABLE IF EXISTS `f_ileormat`;
CREATE TABLE `f_ileormat` (
  `f_id` varchar(40) NOT NULL,
  `f_Name` varchar(100) NOT NULL,
  `f_ts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_ileormat
-- ----------------------------
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0004', 'MP3', 'MP3');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0005', 'WAV', 'WAV');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0006', 'MIDI', 'MIDI');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0007', 'WMA', 'WMA');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0008', 'MP4', 'MP4');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0009', 'CD', 'CD');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6vgss008', '不限', 'Unlimited');

-- ----------------------------
-- Table structure for h_speed
-- ----------------------------
DROP TABLE IF EXISTS `h_speed`;
CREATE TABLE `h_speed` (
  `h_id` varchar(40) NOT NULL,
  `h_Name` varchar(100) NOT NULL,
  `h_ts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_speed
-- ----------------------------
INSERT INTO `h_speed` VALUES ('as648se5br5d5s24s5dx001', '正常', 'normal');
INSERT INTO `h_speed` VALUES ('as648se5br5d5s24s5dx002', '较快', 'Fast');
INSERT INTO `h_speed` VALUES ('as648se5br5d5s24s5dx003	', '较慢', 'slower');

-- ----------------------------
-- Table structure for if_ehuser
-- ----------------------------
DROP TABLE IF EXISTS `if_ehuser`;
CREATE TABLE `if_ehuser` (
  `if_ehid` varchar(40) NOT NULL COMMENT 'ID',
  `if_ehsex` varchar(40) DEFAULT NULL COMMENT '英文性别',
  `if_diqu` varchar(50) DEFAULT NULL COMMENT '英文地址',
  `if_ehlytype` varchar(400) DEFAULT NULL COMMENT '英文语言类型',
  `if_ehpytype` varchar(400) DEFAULT NULL COMMENT '英文配音类型',
  `if_ehsytype` varchar(400) DEFAULT NULL COMMENT '英文声音类型',
  `if_gznf` varchar(50) DEFAULT NULL COMMENT '因为工作年限',
  `if_ifts` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`if_ehid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of if_ehuser
-- ----------------------------
INSERT INTO `if_ehuser` VALUES ('40284742582e45b401582e49e9bc0001', 'male', 'China - Chongqing', 'Wu♫Cantonese', 'Business♫Documentaries', 'Power/Energetic♫Conversational/Natural', 'Newbie', 'xulongfei');

-- ----------------------------
-- Table structure for inusers
-- ----------------------------
DROP TABLE IF EXISTS `inusers`;
CREATE TABLE `inusers` (
  `I_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `I_UserName` varchar(100) NOT NULL COMMENT '账号',
  `I_Password` varchar(100) NOT NULL COMMENT '用户密码',
  `I_Name` varchar(500) DEFAULT NULL COMMENT '昵称或姓名',
  `I_Portrait` varchar(500) DEFAULT NULL COMMENT '头像',
  `I_Sex` varchar(40) DEFAULT NULL COMMENT '性别',
  `I_Birthday` varchar(40) DEFAULT NULL COMMENT '出身年月',
  `I_GName` varchar(40) DEFAULT NULL COMMENT '公司名称-配音员无该字段',
  `I_GDetailed` varchar(400) DEFAULT NULL COMMENT '公司详细地址-配音员无该字段',
  `I_GPerson` varchar(400) DEFAULT NULL COMMENT '公司法人-配音员无该字段',
  `I_Email` varchar(500) NOT NULL COMMENT '邮箱地址',
  `I_Phone` varchar(40) DEFAULT NULL COMMENT '手机号码',
  `I_Region` varchar(40) DEFAULT NULL COMMENT '国家地区',
  `I_RedTime` varchar(40) DEFAULT NULL COMMENT '注册时间',
  `I_LastTime` varchar(40) DEFAULT NULL COMMENT '最后登录时间',
  `I_LoginStatus` int(10) DEFAULT NULL COMMENT '登录状态',
  `I_Credibility` int(10) DEFAULT NULL COMMENT '信誉度',
  `I_Mxbi` int(10) DEFAULT NULL COMMENT 'M币',
  `I_crowd` varchar(40) DEFAULT NULL COMMENT '人群阶段ID-任务方无该字段',
  `I_LanguageLabels` varchar(400) DEFAULT NULL COMMENT '语言类型标签-任务方无该字段',
  `I_VoiceLabels` varchar(400) DEFAULT NULL COMMENT '配音类型标签-任务方无该字段',
  `I_slID` varchar(400) DEFAULT NULL COMMENT '声音类型标签-任务方无该字段',
  `I_yhlxID` varchar(40) DEFAULT NULL COMMENT '用户类型ID',
  `I_TS` varchar(500) DEFAULT NULL COMMENT '备用字段',
  `I_pynx` varchar(50) DEFAULT NULL COMMENT '配音员配音年限',
  `I_bfids` varchar(50) DEFAULT NULL COMMENT '英文字段ID',
  PRIMARY KEY (`I_ID`),
  UNIQUE KEY `I_UserName` (`I_UserName`),
  KEY `FK_Relationship_1` (`I_crowd`),
  KEY `FK_Relationship_2` (`I_yhlxID`),
  KEY `FK_Relationship_3` (`I_bfids`) USING BTREE,
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`I_bfids`) REFERENCES `if_ehuser` (`if_ehid`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`I_crowd`) REFERENCES `s_crowd` (`S_ID`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`I_yhlxID`) REFERENCES `d_type` (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of inusers
-- ----------------------------
INSERT INTO `inusers` VALUES ('40284742582e45b401582e48fe950000', 'xulongfei', 'a0f8eb19710b5443fb98973e980eff97', 'V508720', 'txtub.png', '男', '1989-11-08', null, null, null, '121071500@qq.com', '1383838438', '中国-重庆', '2016-11-04 15:41:25', null, null, '0', '1', 'easheraveaeA', '吴语♫粤语', '商业广告♫纪录片', '激昂高亢♫自然亲和', 'berwartaedfeee', '0', '新手', '40284742582e45b401582e49e9bc0001');
INSERT INTO `inusers` VALUES ('40284742582e45b401582e4a70b60002', 'chenchao', 'a57cee6498dbec9a066daccaa262e982', 'C54233', 'renwuf.png', '男', '', '', '', '', '969353498@qq.com', '152134878863', '中国-广西', '2016-11-04 15:43:00', null, null, '0', '0', null, null, null, null, 'gseaeffasdasc', '0', null, null);

-- ----------------------------
-- Table structure for l_gtype
-- ----------------------------
DROP TABLE IF EXISTS `l_gtype`;
CREATE TABLE `l_gtype` (
  `L_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `L_gtypeName` varchar(50) NOT NULL COMMENT '语言类型名称称',
  `L_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`L_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='语言类型表';

-- ----------------------------
-- Records of l_gtype
-- ----------------------------
INSERT INTO `l_gtype` VALUES ('baerawvaecaeade', '普通话', 'Mandarin');
INSERT INTO `l_gtype` VALUES ('beawfeasca', '粤语', 'Cantonese');
INSERT INTO `l_gtype` VALUES ('beawfeascafes', '吴语', 'Wu');
INSERT INTO `l_gtype` VALUES ('beraefeaca23452', '台语', 'Taiwanese');
INSERT INTO `l_gtype` VALUES ('beraefeacac', '湘语', 'Xiang');
INSERT INTO `l_gtype` VALUES ('beraefeacacee3', '赣语', 'Gan');
INSERT INTO `l_gtype` VALUES ('veag3232fafecedx4', '其他', 'other');
INSERT INTO `l_gtype` VALUES ('veasgaefafecaec', '客家话', 'Hakka');
INSERT INTO `l_gtype` VALUES ('veasgaefafecedx4', '闽语', 'Min');
INSERT INTO `l_gtype` VALUES ('veasgagew2323c', '中式英语', 'English with Chinese accent');

-- ----------------------------
-- Table structure for m_essge
-- ----------------------------
DROP TABLE IF EXISTS `m_essge`;
CREATE TABLE `m_essge` (
  `m_id` varchar(40) NOT NULL COMMENT '流水ID',
  `m_role` varchar(40) NOT NULL COMMENT '角色类型',
  `m_essagesender` varchar(50) NOT NULL COMMENT '消息发送者--',
  `m_essagereceiver` varchar(50) NOT NULL COMMENT '消息接收者',
  `m_whethertoview` varchar(40) NOT NULL COMMENT '是否查看(222为已查看  333未查看)',
  `m_datesent` varchar(50) NOT NULL COMMENT '发送日期',
  `m_essagecontent` varchar(5000) NOT NULL COMMENT '消息内容',
  `m_whetherdisplay` varchar(50) DEFAULT NULL COMMENT '聊天记录是否显示(1为显示  2为不限)',
  `m_spareyi` varchar(50) DEFAULT NULL COMMENT '备用一',
  `m_count` int(50) unsigned DEFAULT NULL COMMENT '消息记录数',
  `m_spareer` varchar(500) DEFAULT NULL COMMENT '备用二',
  `m_sparesan` varchar(50) DEFAULT NULL COMMENT '备用三',
  `m_click` int(50) DEFAULT NULL,
  `m_cwTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_essge
-- ----------------------------
INSERT INTO `m_essge` VALUES ('40284742582e5f7d01582e7a685b0020', 'Y676036', 'Y676036', 'admincom', '333', '2016-11-04 16:35:23', '<p>发顺丰</p>', '1', '1', '0', 'images/touxd.png', '200', '201', '2016-11-04 16:36:31');
INSERT INTO `m_essge` VALUES ('40284742582e5f7d01582e7a77510021', 'Y676036', 'Y676036', 'admincom', '333', '2016-11-04 16:35:27', '<p>法师打发</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('40284742582e5f7d01582e7b64210022', 'Y676036', 'Y676036', 'admincom', '333', '2016-11-04 16:36:28', '<p>发顺丰的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('40284742582e5f7d01582e7b722c0023', 'Y676036', 'Y676036', 'admincom', '333', '2016-11-04 16:36:31', '<p>法师打发</p>', '1', '1', null, 'images/touxd.png', null, null, null);

-- ----------------------------
-- Table structure for p_artpate
-- ----------------------------
DROP TABLE IF EXISTS `p_artpate`;
CREATE TABLE `p_artpate` (
  `P_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `P_UserID` varchar(40) NOT NULL COMMENT '竞标人(用户名)',
  `P_UserSID` varchar(40) NOT NULL COMMENT '任务方(用户名)',
  `P_TenderID` varchar(40) DEFAULT NULL COMMENT '招标信息ID',
  `P_CyTime` varchar(40) NOT NULL COMMENT '参与任务时间',
  `P_WcTime` varchar(40) DEFAULT NULL COMMENT '任务完成时间',
  `P_zbID` varchar(40) DEFAULT NULL COMMENT '招，竞标状态ID(竞标中，竞标成功，竞标失败)',
  `P_jbrphone` varchar(40) DEFAULT NULL COMMENT '竞标人电话',
  `P_jbremail` varchar(500) DEFAULT NULL COMMENT '竞标人邮箱',
  `P_aycount` varchar(500) DEFAULT NULL COMMENT '任务方付款账号',
  `P_rwfemail` varchar(500) DEFAULT NULL COMMENT '任务方邮箱',
  `P_zhifuzt` varchar(10) DEFAULT NULL COMMENT '支付状态（默认为1）1未支付  2已支付 3交易失败）（实时查询字段）',
  `P_fqTime` varchar(40) DEFAULT NULL COMMENT '订单发起时间',
  `P_maturityTime` varchar(40) DEFAULT NULL,
  `P_fkTime` varchar(40) DEFAULT NULL COMMENT '付款时间',
  `P_rwfphone` varchar(40) DEFAULT NULL COMMENT '任务方电话',
  `P_thefinalfee` varchar(40) DEFAULT NULL,
  `P_totalprice` varchar(50) DEFAULT '' COMMENT '总金额',
  `P_temporaryID` varchar(100) DEFAULT NULL COMMENT '零时订单查询号',
  `P_timelimit` varchar(50) DEFAULT NULL,
  `P_cName` varchar(20) DEFAULT NULL COMMENT '竞标人收款真实姓名',
  `P_zfbaccount` varchar(100) DEFAULT NULL COMMENT '竞标人支付宝账户',
  `P_syfileName` varchar(500) DEFAULT NULL COMMENT '试音文件',
  `P_skzt` varchar(10) DEFAULT NULL COMMENT '配音员收款状态(默认1）（1.未收款  2.收款成功 3收款失败）（实时查询字段）',
  `P_skTime` varchar(40) DEFAULT NULL,
  `P_omplete` varchar(40) DEFAULT NULL COMMENT '完成状态ID(竞标成功后产生，进行中，已完成，失败)',
  `P_vire` varchar(500) DEFAULT NULL COMMENT '完成后提交的作品',
  `P_TS` varchar(300) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`P_ID`),
  KEY `FK_Relationship_13` (`P_TenderID`),
  KEY `FK_Relationship_14` (`P_zbID`),
  KEY `FK_Relationship_15` (`P_omplete`),
  KEY `FK_Relationship_16` (`P_UserID`) USING BTREE,
  CONSTRAINT `FK_Relationship_13` FOREIGN KEY (`P_TenderID`) REFERENCES `b_tender` (`B_TID`),
  CONSTRAINT `FK_Relationship_14` FOREIGN KEY (`P_zbID`) REFERENCES `u_zbztb` (`U_zbID`),
  CONSTRAINT `FK_Relationship_15` FOREIGN KEY (`P_omplete`) REFERENCES `c_omplete` (`C_ID`),
  CONSTRAINT `FK_Relationship_199` FOREIGN KEY (`P_UserID`) REFERENCES `inusers` (`I_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞标人参与任务表 (邀请表多对多)';

-- ----------------------------
-- Records of p_artpate
-- ----------------------------

-- ----------------------------
-- Table structure for s_crowd
-- ----------------------------
DROP TABLE IF EXISTS `s_crowd`;
CREATE TABLE `s_crowd` (
  `S_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `S_crowdName` varchar(50) NOT NULL COMMENT '人群类型名称',
  `S_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人群阶段表';

-- ----------------------------
-- Records of s_crowd
-- ----------------------------
INSERT INTO `s_crowd` VALUES ('b00984534yvsdgfva', '新疆维吾尔族自治区', 'Xinjiang Uygur Autonomous Region');
INSERT INTO `s_crowd` VALUES ('brarabas32fsdf', '河南  ', 'Henan');
INSERT INTO `s_crowd` VALUES ('brarabfase324500fsdf', '上海 ', 'Shanghaishi ');
INSERT INTO `s_crowd` VALUES ('braraeface2342fasf', '黑龙江 ', 'Heilongjiang');
INSERT INTO `s_crowd` VALUES ('braraefaceaav', '安徽', 'Anhui ');
INSERT INTO `s_crowd` VALUES ('braraefaceaavff', '湖南 ', 'Hunan ');
INSERT INTO `s_crowd` VALUES ('braraefaceaavfsdf', '北京  ', 'Beijing');
INSERT INTO `s_crowd` VALUES ('braraeffse320042fasf', '山东 ', 'Shandong ');
INSERT INTO `s_crowd` VALUES ('bsdg34534yvsdgfva', '吉林 ', 'Jilin ');
INSERT INTO `s_crowd` VALUES ('easge4348gveaeAgse', '四川  ', 'Sichuan');
INSERT INTO `s_crowd` VALUES ('easha2344eaeAgse', '湖北 ', 'Hubei ');
INSERT INTO `s_crowd` VALUES ('easher434346teaeA', '香港 ', 'Hongkong');
INSERT INTO `s_crowd` VALUES ('easheraveaeA', '重庆 ', 'Chongqing');
INSERT INTO `s_crowd` VALUES ('easheraveaeAgse', '福建 ', 'Fujian');
INSERT INTO `s_crowd` VALUES ('emikwsr434346teaeA', '山西 ', 'Shanxi ');
INSERT INTO `s_crowd` VALUES ('rh23450gasdr423dg23', '其他', 'other');
INSERT INTO `s_crowd` VALUES ('rhabab3423453dg', '江苏 ', 'Jiangsu ');
INSERT INTO `s_crowd` VALUES ('rhabbsdr34343453dg', '天津 ', 'Tianjin ');
INSERT INTO `s_crowd` VALUES ('rhabsdf342s34hhah', '台湾', 'Taiwan ');
INSERT INTO `s_crowd` VALUES ('rhaefae322fsDfasdg', '甘肃 ', 'Gansu');
INSERT INTO `s_crowd` VALUES ('rhaefae442D3456gse', '澳门', 'Macao');
INSERT INTO `s_crowd` VALUES ('rhaefae442Dfasdg', '广东  ', 'Guangdong');
INSERT INTO `s_crowd` VALUES ('rhaefae442Dfasdgse', '广西壮族自治区', 'Guangxi Zhuang Autonomous Region');
INSERT INTO `s_crowd` VALUES ('rhaefae4es4fasdg', '贵州 ', 'Guizhou');
INSERT INTO `s_crowd` VALUES ('rhaefae4es4fasdg23', '海南 ', 'Hainan');
INSERT INTO `s_crowd` VALUES ('rhaefaebas435234dg', '内蒙古 ', 'Inner Mongolia Autonomous Region');
INSERT INTO `s_crowd` VALUES ('rhaefaedWDfasdg', '河北', 'Hebei');
INSERT INTO `s_crowd` VALUES ('rhaefaedWDfasdgbre00', '陕西 ', 'Shaanxi ');
INSERT INTO `s_crowd` VALUES ('rhaefaegasdr423dg23', '辽宁 ', 'Liaoning ');
INSERT INTO `s_crowd` VALUES ('rhaefbasdb345523e', '江西 ', 'Jiangxi ');
INSERT INTO `s_crowd` VALUES ('rhawehds4es4fasdg', '宁夏回族自治区 ', 'Ningxia Hui Autonomous Region');
INSERT INTO `s_crowd` VALUES ('rhsdb32basdb345523e', '西藏自治区', 'Tibet Autonomous Region');
INSERT INTO `s_crowd` VALUES ('sbnd34e4es4fasdg23', '青海 ', 'Qinghai ');
INSERT INTO `s_crowd` VALUES ('sbnd34egfasg4fasdg23', '不限', 'Unlimited');

-- ----------------------------
-- Table structure for t_voice
-- ----------------------------
DROP TABLE IF EXISTS `t_voice`;
CREATE TABLE `t_voice` (
  `T_vID` varchar(40) NOT NULL COMMENT '主键ID',
  `T_vtypeName` varchar(50) NOT NULL COMMENT '配音类型名称',
  `T_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`T_vID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配音类型表';

-- ----------------------------
-- Records of t_voice
-- ----------------------------
INSERT INTO `t_voice` VALUES ('523456rg3467eg', '电子书', 'Audiobooks');
INSERT INTO `t_voice` VALUES ('523456rgbdfseg', '商业广告', 'Business');
INSERT INTO `t_voice` VALUES ('523456rgbdsbrdg', '卡通', 'Cartoons');
INSERT INTO `t_voice` VALUES ('673sntsgw465sd', '纪录片', 'Documentaries');
INSERT INTO `t_voice` VALUES ('673sntsgwt4vr', '教育/教学', 'E-Learning');
INSERT INTO `t_voice` VALUES ('673sntsgwtg3245sd', '网络', 'Internet');
INSERT INTO `t_voice` VALUES ('673sntsgwtg3fes', '语音应答', 'On Hold / IVR');
INSERT INTO `t_voice` VALUES ('baseha4tshse234', '游戏', 'Videogames');
INSERT INTO `t_voice` VALUES ('baseha4tshsegba', '影视预告', 'Movie Trailers');
INSERT INTO `t_voice` VALUES ('baseha4tsht64356', '播客', 'Podcasting');
INSERT INTO `t_voice` VALUES ('baseha4tshtsg', '电视/广播', 'TV/Radio');
INSERT INTO `t_voice` VALUES ('basehagse3244', '其他', 'other');
INSERT INTO `t_voice` VALUES ('basehe3264356', '歌唱', 'Sing');

-- ----------------------------
-- Table structure for u_zbztb
-- ----------------------------
DROP TABLE IF EXISTS `u_zbztb`;
CREATE TABLE `u_zbztb` (
  `U_zbID` varchar(40) NOT NULL COMMENT '主键ID',
  `U_zbName` varchar(50) NOT NULL COMMENT '招标状态名称',
  `U_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`U_zbID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招标状态表';

-- ----------------------------
-- Records of u_zbztb
-- ----------------------------
INSERT INTO `u_zbztb` VALUES ('baerqafeavead', '竞标失败', '备用字段');
INSERT INTO `u_zbztb` VALUES ('baseecasef', '竞标中', '备用字段');
INSERT INTO `u_zbztb` VALUES ('brafeacasd', '竞标成功', '备用字段');

-- ----------------------------
-- Table structure for w_works
-- ----------------------------
DROP TABLE IF EXISTS `w_works`;
CREATE TABLE `w_works` (
  `W_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `W_worksName` varchar(100) NOT NULL COMMENT '竞标人作品名称',
  `W_worksFile` varchar(300) DEFAULT NULL COMMENT '音频文件',
  `W_Time` varchar(40) NOT NULL COMMENT '上传时间',
  `W_UserID` varchar(40) DEFAULT NULL COMMENT '属于哪个人的ID',
  `W_workScore` int(10) DEFAULT NULL COMMENT '作品评分',
  `W_xiebei` varchar(10) NOT NULL COMMENT '任务要求性别(1是男  2是女)',
  `W_renQunID` varchar(40) DEFAULT NULL COMMENT '人群类型ID',
  `W_GtypeID` varchar(40) DEFAULT NULL COMMENT '语言类型ID',
  `W_VoiceID` varchar(40) DEFAULT NULL COMMENT '配音类型ID',
  `W_slID` varchar(40) DEFAULT NULL COMMENT '声音类型ID',
  `W_liulanRs` int(10) DEFAULT NULL COMMENT '浏览人数',
  `W_TS` varchar(300) DEFAULT NULL COMMENT '备用字段',
  `W_pyID` varchar(40) DEFAULT NULL COMMENT '配音员ID',
  `W_ehName` varchar(500) DEFAULT NULL COMMENT '英文标题',
  PRIMARY KEY (`W_ID`),
  KEY `FK_Relationship_9` (`W_GtypeID`),
  KEY `FK_Relationship_10` (`W_VoiceID`),
  KEY `FK_Relationship_11` (`W_renQunID`),
  KEY `FK_Relationship_12` (`W_slID`),
  CONSTRAINT `FK_Relationship_10` FOREIGN KEY (`W_VoiceID`) REFERENCES `t_voice` (`T_vID`),
  CONSTRAINT `FK_Relationship_11` FOREIGN KEY (`W_renQunID`) REFERENCES `s_crowd` (`S_ID`),
  CONSTRAINT `FK_Relationship_12` FOREIGN KEY (`W_slID`) REFERENCES `y_syleix` (`Y_slID`),
  CONSTRAINT `FK_Relationship_9` FOREIGN KEY (`W_GtypeID`) REFERENCES `l_gtype` (`L_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞标人作品表';

-- ----------------------------
-- Records of w_works
-- ----------------------------

-- ----------------------------
-- Table structure for x_systemnews
-- ----------------------------
DROP TABLE IF EXISTS `x_systemnews`;
CREATE TABLE `x_systemnews` (
  `X_ID` varchar(40) NOT NULL,
  `X_RecipientUser` varchar(50) NOT NULL COMMENT '收件人',
  `X_FromUser` varchar(50) NOT NULL COMMENT '发件人',
  `X_Themessagetitle` varchar(250) NOT NULL COMMENT '标题',
  `X_Messagecontent` varchar(2000) NOT NULL COMMENT '内容',
  `X_Sendtime` varchar(40) NOT NULL COMMENT '发送时间',
  `X_Filecontent` varchar(2000) DEFAULT NULL COMMENT '文件',
  `X_Messagestatus` varchar(50) DEFAULT NULL COMMENT '查看状态',
  `X_ts` varchar(500) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`X_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_systemnews
-- ----------------------------
INSERT INTO `x_systemnews` VALUES ('40284742582e45b401582e4c93270005', 'admincom', 'xulongfei', '任务方ID为:C54233邀请您参与竞标!', '任务方ID为:C54233邀请您参与竞标‘《<a href=\'voiwtaskbt.action?bid=40284742582e45b401582e4b9bf10004\' target=\'_blank\'>一个测试任务标题</a>》’该任务,点击可直接进入任务详细页面,可进行参与竞标!', '2016-11-04 15:45:20', null, '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('40284742582e45b401582e5269760006', 'admincom', 'xulongfei', '任务方ID为:C54233邀请您参与竞标!', '任务方ID为:C54233邀请您参与竞标‘《<a href=\'voiwtaskbt.action?bid=40284742582e45b401582e4b9bf10004\' target=\'_blank\'>一个测试任务标题</a>》’该任务,点击可直接进入任务详细页面,可进行参与竞标!', '2016-11-04 15:51:42', null, '333', '系统消息');

-- ----------------------------
-- Table structure for y_syleix
-- ----------------------------
DROP TABLE IF EXISTS `y_syleix`;
CREATE TABLE `y_syleix` (
  `Y_slID` varchar(40) NOT NULL COMMENT '主键ID',
  `Y_slName` varchar(50) NOT NULL COMMENT '声音类型名称',
  `Y_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`Y_slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='声音类型表';

-- ----------------------------
-- Records of y_syleix
-- ----------------------------
INSERT INTO `y_syleix` VALUES ('htrsgsrsdf', '浑厚大气', 'Epic/Classy');
INSERT INTO `y_syleix` VALUES ('htrsgsrsdf6456', '娓娓道来', 'Believable/Calming');
INSERT INTO `y_syleix` VALUES ('htrsgsrsdf6456f3', '激昂高亢', 'Power/Energetic');
INSERT INTO `y_syleix` VALUES ('htrsgsrsdffsd323', '自然亲和', 'Conversational/Natural');
INSERT INTO `y_syleix` VALUES ('nsertn3242522fsd', '风趣俏皮', 'Amusing/Funny');
INSERT INTO `y_syleix` VALUES ('nsertns2344segb', '童音童趣', 'Child/Teenager');
INSERT INTO `y_syleix` VALUES ('nsertnsaaew', '稳重磁性', 'Authoritative/Mature');
INSERT INTO `y_syleix` VALUES ('nsertnsaagsegb', '活力自信', 'Joyful/Upbeat/Confident');
INSERT INTO `y_syleix` VALUES ('sga234svgbesav3', '其他风格', 'Other');
INSERT INTO `y_syleix` VALUES ('sgags234se23vevv', '角色扮演', 'Characters');
INSERT INTO `y_syleix` VALUES ('sgags234sv34vevv', '沙哑', 'Husky');
INSERT INTO `y_syleix` VALUES ('sgagse3334vevv', '甜美稚嫩', 'Lovely/Attractive');
INSERT INTO `y_syleix` VALUES ('sgavefasvgbe', '温柔知性', 'Warm/Friendly/Caring');
INSERT INTO `y_syleix` VALUES ('sgavefasvgbesav3', '故事旁白', 'Storyteller');

-- ----------------------------
-- Table structure for z_state
-- ----------------------------
DROP TABLE IF EXISTS `z_state`;
CREATE TABLE `z_state` (
  `Z_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `Z_basName` varchar(50) NOT NULL COMMENT '招标信息状态名称',
  `Z_TS` varchar(100) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`Z_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招标信息状态表';

-- ----------------------------
-- Records of z_state
-- ----------------------------
INSERT INTO `z_state` VALUES ('baefaf758eaecc', '发布中', 'Already released');
INSERT INTO `z_state` VALUES ('bratqaefabasfa', '审核中', 'Under review');
INSERT INTO `z_state` VALUES ('bratqaefabasfa324fa', '不通过', 'Not through');
