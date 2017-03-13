/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : voice

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-09-18 17:42:04
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
INSERT INTO `a_isadmin` VALUES ('402881ed571cc9c401571cd1b48c0000', 'fasdfadfds', '6f1e8a96e30e2d99', 'fadfaf', '2016-09-12-13-16-21-16217461490dc238568d0008b7a263cba02ceb0872bottom1.jpg', '男', 'asdfa', 'dfafaf', '', '', null, '', '2', null, null, null);
INSERT INTO `a_isadmin` VALUES ('402881ed571cc9c401571cd20cb20001', 'sdfadf', 'd9be4b8bf45a26dc', 'adfadfadfa', '2016-09-12-13-16-28-1628323910836e0e4a1e0be67aa8d2c28ae2005e06bottom1.jpg', '男', 'fafa', 'dfaf', '', '', null, '', '2', null, null, null);
INSERT INTO `a_isadmin` VALUES ('afdasfasberae', 'admincom', '3d414ff33b056f2b', '管理员', '2016-09-12-13-17-06-17645073735ba513bbd188b1376f9e61a6ad843c1bottom1.jpg', '男', '969353498@qq.com', '15213478863', '2016-5-5 00:00:00', '2016-09-14 11:00:35', null, '0:0:0:0:0:0:0:1', '1', 'null', 'null', 'null');

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
  `B_Sex` varchar(10) DEFAULT NULL COMMENT '任务要求性别(1是男  2是女)',
  `B_CrowdID` varchar(40) DEFAULT NULL COMMENT '任务要求配音人群ID',
  `B_TimeLength` varchar(40) DEFAULT NULL COMMENT '任务要求配音时间长度',
  `B_pygaowen` varchar(8000) DEFAULT NULL COMMENT '任务稿文',
  `B_xxmiaoshu` varchar(8000) DEFAULT NULL COMMENT '任务要求详细描述',
  `B_AsofTime` varchar(40) NOT NULL COMMENT '任务截止时间',
  `B_Price` int(10) DEFAULT NULL COMMENT '任务预算价位',
  `B_stateID` varchar(40) DEFAULT NULL COMMENT '招标信息进度ID',
  `B_liuyanNum` int(10) DEFAULT NULL COMMENT '浏览人数',
  `B_filegeshi` varchar(40) DEFAULT NULL COMMENT '要求文件格式',
  `B_pyyusu` varchar(10) DEFAULT NULL COMMENT '配音速度',
  `B_TS` varchar(300) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`B_TID`),
  KEY `FK_Relationship_4` (`B_GtypeID`),
  KEY `FK_Relationship_5` (`B_VoiceID`),
  KEY `FK_Relationship_6` (`B_CrowdID`),
  KEY `FK_Relationship_7` (`B_stateID`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`B_GtypeID`) REFERENCES `l_gtype` (`L_ID`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`B_VoiceID`) REFERENCES `t_voice` (`T_vID`),
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`B_CrowdID`) REFERENCES `s_crowd` (`S_ID`),
  CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`B_stateID`) REFERENCES `z_state` (`Z_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务信息表';

-- ----------------------------
-- Records of b_tender
-- ----------------------------
INSERT INTO `b_tender` VALUES ('baefka;leklca', '长城宽带广告配音', '2016/5/21', 'barefaecasca', 'veasgaefafecaec', '523456rgbdsbrdg', 'kjfs.mp3', '男', 'braraefaceaav', '300', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', null, null, null);
INSERT INTO `b_tender` VALUES ('brlaskemafecas', '淘宝商品广告配音', '2016/5/21', 'barefaecasca', 'veasgaefafecaec', '523456rgbdsbrdg', 'kjfs.mp3', '男', 'braraefaceaav', '300', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', null, null, null);
INSERT INTO `b_tender` VALUES ('vbearvelbaceae', '中国移动广告配音', '2016/5/21', 'barefaecasca', 'veasgaefafecaec', '523456rgbdsbrdg', 'kjfs.mp3', '男', 'braraefaceaav', '300', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', null, null, null);

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
INSERT INTO `d_type` VALUES ('berwartaedfeee', '配音员', '备用字段');
INSERT INTO `d_type` VALUES ('gseaeffasdasc', '任务方', '备用字段');

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
  PRIMARY KEY (`I_ID`),
  UNIQUE KEY `I_UserName` (`I_UserName`),
  KEY `FK_Relationship_1` (`I_crowd`),
  KEY `FK_Relationship_2` (`I_yhlxID`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`I_crowd`) REFERENCES `s_crowd` (`S_ID`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`I_yhlxID`) REFERENCES `d_type` (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of inusers
-- ----------------------------
INSERT INTO `inusers` VALUES ('402881e556f4efed0156f4f12e4e0000', 'ccadmincc', '0db4ba93530764fa4aafa0206d589a90', '测试人员', '2016-09-12-16-47-15-47153865673779d535a96a2e721a8e1ba97f90ff50www6Lucn0028.gif', '男', '1995-03-16', null, null, null, '969353498@qq.com', '15213478863', '马来西亚-吉兰丹 Kelantan', '2016-09-04 19:24:21', null, null, null, null, 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', null);
INSERT INTO `inusers` VALUES ('402881ed571ce5c701571ce72bea0000', 'admincccc', '75e51ffcfcea17474aafa0206d589a90', null, null, null, null, null, null, null, '969353498@qq.com', null, null, '2016-09-12 13:38:14', null, null, null, null, null, null, null, null, 'gseaeffasdasc', null);
INSERT INTO `inusers` VALUES ('402881ed571d1ae101571d2844080000', 'xulongfei', 'ac4ec150369cf812', null, null, null, null, null, null, null, '121071500@qq.com', null, null, '2016-09-12 14:49:20', null, null, null, null, null, null, null, null, 'gseaeffasdasc', null);
INSERT INTO `inusers` VALUES ('402881ed571d61b101571d624e590000', 'bbadminbb', '155a49c974c6fb40f9192cac9d46d634', null, null, null, null, null, null, null, '847078739@qq.com', null, null, '2016-09-12 15:52:44', null, null, null, null, null, null, null, null, 'gseaeffasdasc', null);
INSERT INTO `inusers` VALUES ('402881ed571d7c7001571d7cee2f0000', 'xiaochao', '833e874c686b10fa066daccaa262e982', '陈超', '2016-09-14-11-08-33-833806113854999aad7d447f51203cee6068ecebwww6Lucn0028.gif', '男', '2016-09-19', 'fasdfasdfasf', 'afsdfsadf', 'asdfadfa', '969353498@qq.com', 'adfaf', '西班牙-阿斯图利亚斯 Asturias', '2016-09-12 16:21:49', null, null, null, null, null, null, null, null, 'gseaeffasdasc', null);
INSERT INTO `inusers` VALUES ('4028978156d67f2c0156d6827ff10000', 'adminchao', 'a57cee6498dbec9a066daccaa262e982', null, null, null, null, null, null, null, '969353498@qq.com', null, null, '2016-08-29 21:34:51', null, null, null, null, null, null, null, null, 'berwartaedfeee', null);
INSERT INTO `inusers` VALUES ('4028978156d67f2c0156d6827ff10001', 'bratavbav', 'a57cee6498dbec9a066daccaa262e982', '嘿嘿', 'login.jpg', '女', '1995/5/5', null, null, null, '969353498@qq.com', '15213478863', '中国北京', '2016-05-21 00:00:00', '2016-05-21 00:00:00', '1', '0', '0', 'rhaefaedWDfasdg', '普通话/四川话/东北话/', '广告配音/文艺配音/演讲配音', '磁性雄厚/优美文艺', 'berwartaedfeee', '备用字段');
INSERT INTO `inusers` VALUES ('barefaecasca', 'adminsscs', 'a57cee6498dbec9a066daccaa262e982', '陈超', 'login.jpg', '男', '1995/5/5', '谷歌公司', '美国纽约', '陈超', '969353498@.com', '15213478863', '中国北京', '2016-05-21 00:00:00', '2016-05-21 00:00:00', '1', '0', '0', null, null, null, null, 'gseaeffasdasc', '备用字段');

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
INSERT INTO `l_gtype` VALUES ('baerawvaecaeade', '其他话', '备用字段');
INSERT INTO `l_gtype` VALUES ('beawfeasca', '粤语话', '备用字段');
INSERT INTO `l_gtype` VALUES ('beraefeacac', '重庆话', '备用字段');
INSERT INTO `l_gtype` VALUES ('veasgaefafecaec', '普通话', '备用字段');

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
  `P_omplete` varchar(40) DEFAULT NULL COMMENT '完成状态ID(竞标成功后产生，进行中，已完成，失败)',
  `P_pingfen` int(10) DEFAULT NULL COMMENT '完成后的评分',
  `P_vire` varchar(500) DEFAULT NULL COMMENT '完成后提交的作品',
  `P_TS` varchar(300) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`P_ID`),
  KEY `FK_Relationship_13` (`P_TenderID`),
  KEY `FK_Relationship_14` (`P_zbID`),
  KEY `FK_Relationship_15` (`P_omplete`),
  CONSTRAINT `FK_Relationship_13` FOREIGN KEY (`P_TenderID`) REFERENCES `b_tender` (`B_TID`),
  CONSTRAINT `FK_Relationship_14` FOREIGN KEY (`P_zbID`) REFERENCES `u_zbztb` (`U_zbID`),
  CONSTRAINT `FK_Relationship_15` FOREIGN KEY (`P_omplete`) REFERENCES `c_omplete` (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞标人参与任务表 (邀请表多对多)';

-- ----------------------------
-- Records of p_artpate
-- ----------------------------
INSERT INTO `p_artpate` VALUES ('baefaecaba', 'bratavbav', 'adminsscs', 'vbearvelbaceae', '2016/5/21', '2016/5/25', 'baseecasef', null, '0', 'fkjaln.mp3', null);
INSERT INTO `p_artpate` VALUES ('bveacevtggba', 'chenchao', 'adminsscs', 'vbearvelbaceae', '2016/5/21', '2016/5/25', 'baseecasef', null, '0', 'fkjaln.mp3', null);
INSERT INTO `p_artpate` VALUES ('nsaeracevacea', 'barfasv', 'adminsscs', 'vbearvelbaceae', '2016/5/21', '2016/5/25', 'baseecasef', null, '0', 'fkjaln.mp3', null);
INSERT INTO `p_artpate` VALUES ('vbeacaebasef', 'chenchao', 'eawbearefa', 'brlaskemafecas', '2016/5/21', '2016/5/25', 'brafeacasd', 'vbaseacsecesa6', '0', 'fkjaln.mp3', null);

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
INSERT INTO `s_crowd` VALUES ('braraefaceaav', '青年', '备用字段');
INSERT INTO `s_crowd` VALUES ('easheraveaeA', '儿童', '备用字段');
INSERT INTO `s_crowd` VALUES ('rhaefaedWDfasdg', '中年', '备用字段');

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
INSERT INTO `t_voice` VALUES ('523456rgbdsbrdg', '广告配音', '备用字段');
INSERT INTO `t_voice` VALUES ('673sntsgwt4vr', '演讲配音', '备用字段');
INSERT INTO `t_voice` VALUES ('baseha4tshtsg', '音乐配音', '备用字段');

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
INSERT INTO `w_works` VALUES ('402881ed570278550157027c93d70000', '中国移动话费宣传广告样本', '2016-09-07-10-31-41-3141394585c19016f432579b4c05533cd50ae9ac84新建文本文档.txt', '2016-09-07 10:31:41', 'ccadmincc', '0', '0', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国移动话费宣传广告样本');
INSERT INTO `w_works` VALUES ('402881ed570278550157027c93d70001', '中国移动话费宣传广告样本', '2016-09-07-10-31-41-3141394585c19016f432579b4c05533cd50ae9ac84新建文本文档.txt', '2016-09-07 10:31:41', 'ccadmincc', '0', '0', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国移动话费宣传广告样本');
INSERT INTO `w_works` VALUES ('402881ed570278550fffffc93d70000', '中国移动话费宣传广告样本', '2016-09-07-10-31-41-3141394585c19016f432579b4c05533cd50ae9ac84新建文本文档.txt', '2016-09-07 10:31:41', 'ccadmincc', '0', '0', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国移动话费宣传广告样本');
INSERT INTO `w_works` VALUES ('402881ed57027sdfsd57027c93d70000', '中国移动话费宣传广告样本', '2016-09-07-10-31-41-3141394585c19016f432579b4c05533cd50ae9ac84新建文本文档.txt', '2016-09-07 10:31:41', 'ccadmincc', '0', '0', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国移动话费宣传广告样本');
INSERT INTO `w_works` VALUES ('402881ed5702923f01570295f2900000', 'ghaefagega', '2016-09-07-10-59-23-59235334407ba67c7b2d9e150422537a69e351abb4陈超--身份证件--已调整.docx', '2016-09-07 10:59:23', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '673sntsgwt4vr', 'htrsgsrsdf', '0', 'asefgaegbeabab');
INSERT INTO `w_works` VALUES ('402881ed5702923f01570295f2900fh0', 'ghaefagega', '2016-09-07-10-59-23-59235334407ba67c7b2d9e150422537a69e351abb4陈超--身份证件--已调整.docx', '2016-09-07 10:59:23', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '673sntsgwt4vr', 'htrsgsrsdf', '0', 'asefgaegbeabab');
INSERT INTO `w_works` VALUES ('402881ed5702923f0157029626c00001', 'baebrabeaefag4ebh', '2016-09-07-10-59-37-5937559788c7c29de3158a7a2e56c65fab4268d0d2WeChat.exe', '2016-09-07 10:59:37', 'ccadmincc', '0', '0', 'easheraveaeA', 'beawfeasca', 'baseha4tshtsg', 'nsertnsaaew', '0', 'brsbabrrsnrafreaer');
INSERT INTO `w_works` VALUES ('402881ed5702923f0157029626c00008', 'baebrabeaefag4ebh', '2016-09-07-10-59-37-5937559788c7c29de3158a7a2e56c65fab4268d0d2WeChat.exe', '2016-09-07 10:59:37', 'ccadmincc', '0', '0', 'easheraveaeA', 'beawfeasca', 'baseha4tshtsg', 'nsertnsaaew', '0', 'brsbabrrsnrafreaer');
INSERT INTO `w_works` VALUES ('402881ed5702923f0157029626c25001', 'baebrabeaefag4ebh', '2016-09-07-10-59-37-5937559788c7c29de3158a7a2e56c65fab4268d0d2WeChat.exe', '2016-09-07 10:59:37', 'ccadmincc', '0', '0', 'easheraveaeA', 'beawfeasca', 'baseha4tshtsg', 'nsertnsaaew', '0', 'brsbabrrsnrafreaer');
INSERT INTO `w_works` VALUES ('402881ed5702923f01favbsbefasf', 'ghaefagega', '2016-09-07-10-59-23-59235334407ba67c7b2d9e150422537a69e351abb4陈超--身份证件--已调整.docx', '2016-09-07 10:59:23', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '673sntsgwt4vr', 'htrsgsrsdf', '0', 'asefgaegbeabab');
INSERT INTO `w_works` VALUES ('402881ed5702e1b0015702e2ae640000', '中国联通公司活动配音', '2016-09-07-12-23-12-231286778d52f6ebd1b53a255aca63ba8ce28984bbugreport.exe', '2016-09-07 12:23:12', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国联通公司活动配音');
INSERT INTO `w_works` VALUES ('402881ed5702e1b0015702e2ae640090', '中国联通公司活动配音', '2016-09-07-12-23-12-231286778d52f6ebd1b53a255aca63ba8ce28984bbugreport.exe', '2016-09-07 12:23:12', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国联通公司活动配音');
INSERT INTO `w_works` VALUES ('402881ed5702e1b0015702e2ae640850', '中国联通公司活动配音', '2016-09-07-12-23-12-231286778d52f6ebd1b53a255aca63ba8ce28984bbugreport.exe', '2016-09-07 12:23:12', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国联通公司活动配音');
INSERT INTO `w_works` VALUES ('402881ed5702e1bsdfsdf2e2ae640000', '中国联通公司活动配音', '2016-09-07-12-23-12-231286778d52f6ebd1b53a255aca63ba8ce28984bbugreport.exe', '2016-09-07 12:23:12', 'ccadmincc', '0', '1', 'braraefaceaav', 'beraefeacac', '523456rgbdsbrdg', 'nsertnsaaew', '0', '中国联通公司活动配音');
INSERT INTO `w_works` VALUES ('402881ed57030ee101570329375c0000', '我的音乐', '2016-09-07-13-40-15-401572150094a7b327586c3466ce3153cebbcc809e杨洋 - 从开始到现在.mp3', '2016-09-07 13:40:15', 'ccadmincc', '0', '0', 'braraefaceaav', 'veasgaefafecaec', 'baseha4tshtsg', 'htrsgsrsdf', '0', '我的音乐');
INSERT INTO `w_works` VALUES ('402881ed570sdfsdf157029626c00001', 'baebrabeaefag4ebh', '2016-09-07-10-59-37-5937559788c7c29de3158a7a2e56c65fab4268d0d2WeChat.exe', '2016-09-07 10:59:37', 'ccadmincc', '0', '0', 'easheraveaeA', 'beawfeasca', 'baseha4tshtsg', 'nsertnsaaew', '0', 'brsbabrrsnrafreaer');
INSERT INTO `w_works` VALUES ('baeklmakwlcas', '呵呵广告录音', 'jklsf.mp3', '2016/5/21', 'brarfafeadasdcb', '0', '1', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'sgavefasvgbe', '0', null);
INSERT INTO `w_works` VALUES ('fgrgblkmvbas', '2分钟广告录音', 'jklsf.mp3', '2016/5/21', 'brarfafeadasdcb', '0', '1', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'sgavefasvgbe', '0', null);
INSERT INTO `w_works` VALUES ('nwklqacvase', '测试广告录音', 'jklsf.mp3', '2016/5/21', 'brarfafeadasdcb', '0', '0', 'braraefaceaav', 'veasgaefafecaec', '523456rgbdsbrdg', 'sgavefasvgbe', '0', null);

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
INSERT INTO `y_syleix` VALUES ('htrsgsrsdf', '优美文艺', '备用字段');
INSERT INTO `y_syleix` VALUES ('nsertnsaaew', '大气高雅', '备用字段');
INSERT INTO `y_syleix` VALUES ('sgavefasvgbe', '雄厚磁性', '备用字段');

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
INSERT INTO `z_state` VALUES ('baefaf758eaecc', '发布中', '备用字段');
INSERT INTO `z_state` VALUES ('bratqaefabasfa', '审核中', '备用字段');
