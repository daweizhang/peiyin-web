/*
Navicat MySQL Data Transfer

Source Server         : admincc
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : voice

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-10-23 21:23:09
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
INSERT INTO `a_isadmin` VALUES ('afdasfasberae', 'admincom', '3d414ff33b056f2b', '管理员', null, '男', '969353498@qq.com', '15213478863', '2016-5-5 00:00:00', '2016-10-23 16:32:46', null, '0:0:0:0:0:0:0:1', '1', 'null', 'null', 'null');

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
  `B_voicefileName` varchar(500) DEFAULT NULL,
  `B_xxmiaoshu` varchar(8000) DEFAULT NULL COMMENT '任务要求详细描述',
  `B_AsofTime` varchar(40) NOT NULL COMMENT '任务截止时间',
  `B_Price` int(10) DEFAULT NULL COMMENT '任务预算价位',
  `B_stateID` varchar(40) DEFAULT NULL COMMENT '招标信息进度ID',
  `B_liuyanNum` int(10) DEFAULT NULL COMMENT '浏览人数',
  `B_filegeshi` varchar(40) DEFAULT NULL COMMENT '要求文件格式',
  `B_pyyusu` varchar(40) DEFAULT NULL COMMENT '配音速度',
  `B_TS` varchar(300) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`B_TID`),
  KEY `FK_Relationship_4` (`B_GtypeID`),
  KEY `FK_Relationship_5` (`B_VoiceID`),
  KEY `FK_Relationship_6` (`B_CrowdID`),
  KEY `FK_Relationship_7` (`B_stateID`),
  KEY `FK_Relationship_8` (`B_filegeshi`) USING BTREE,
  KEY `FK_Relationship_9` (`B_pyyusu`) USING BTREE,
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`B_GtypeID`) REFERENCES `l_gtype` (`L_ID`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`B_VoiceID`) REFERENCES `t_voice` (`T_vID`),
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`B_CrowdID`) REFERENCES `s_crowd` (`S_ID`),
  CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`B_stateID`) REFERENCES `z_state` (`Z_ID`),
  CONSTRAINT `FK_Relationship_8` FOREIGN KEY (`B_filegeshi`) REFERENCES `f_ileormat` (`f_id`),
  CONSTRAINT `FK_Relationship_91` FOREIGN KEY (`B_pyyusu`) REFERENCES `h_speed` (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务信息表';

-- ----------------------------
-- Records of b_tender
-- ----------------------------
INSERT INTO `b_tender` VALUES ('2c8d850257cbfca20157cc1a8c700000', 'IVR talent needed', '2016-10-16 14:07:54', 'xiaochao', 'baerawvaecaeade', '523456rgbdfseg', '2016-10-16-14-07-54-7541157662fcb7650de45cce4c5321160f1646013The XX-Intro.mp3', '不限', 'rhaefae442Dfasdg', '2分', '7777777777777777777777', '2016-10-16-14-07-54-754958632de54e25108021f31558d6f63b4d8d612IVR.doc', '8888888888888888888', '3', '50', 'baefaf758eaecc', '4', '3g56a6sdgs65ed6v5d0009', 'as648se5br5d5s24s5dx001', '1');
INSERT INTO `b_tender` VALUES ('40284742574b844901574b87565d0000', '中国新歌声配音广告50秒还不错的配音广告', '2016-09-21 14:55:43', 'bbadminbb', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '50秒', '《中国新歌声》是由浙江卫视联合星空传媒旗下灿星制作打造的大型原创专业音乐节目。自2016年起，系列节目不再引进国外版权，而是采用原创模式。[1]  节目四位固定导师为周杰伦、汪峰、那英、庾澄庆。[2-4] \r\n《中国新歌声》是一档优质的音乐类节目。四位导师通过盲选选择自己心仪的学员组成战队，并带领自己的战队进行战队内和战队间关于音乐的对抗。\r\n《中国新歌声》于2016年7月15日起每周五晚21:10在浙江卫视首播 。网络由优酷网和腾讯视频联合独播。[5-6]  节目歌曲在酷狗音乐、酷我音乐、QQ音乐等同步上线。[7]  [8]  节目由法兰琳卡独家冠名播出；由oppo手机特约播出；由唯品会、微鲸电视、中国人寿特别赞助。', 'lksfj.sxl', '《中国新歌声》是由浙江卫视联合星空传媒旗下灿星制作打造的大型原创专业音乐节目。自2016年起，系列节目不再引进国外版权，而是采用原创模式。[1]  节目四位固定导师为周杰伦、汪峰、那英、庾澄庆。[2-4] \r\n《中国新歌声》是一档优质的音乐类节目。四位导师通过盲选选择自己心仪的学员组成战队，并带领自己的战队进行战队内和战队间关于音乐的对抗。\r\n《中国新歌声》于2016年7月15日起每周五晚21:10在浙江卫视首播 。网络由优酷网和腾讯视频联合独播。[5-6]  节目歌曲在酷狗音乐、酷我音乐、QQ音乐等同步上线。[7]  [8]  节目由法兰琳卡独家冠名播出；由oppo手机特约播出；由唯品会、微鲸电视、中国人寿特别赞助。', '2', '88', 'baefaf758eaecc', '41', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575aa58301575aa77d340000', 'fasdfasdf', '2016-09-24 13:25:08', 'bbadminbb', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'braraefaceaav', '21秒', 'fasdf', 'lksfj.sxl', 'fasdfa', '1', '22', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0005', 'as648se5br5d5s24s5dx003	', '0');
INSERT INTO `b_tender` VALUES ('402881e5575ad8ce01575ada85930001', '美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音美国ORB公司配音', '2016-09-24 14:20:53', 'xiaochao', 'baerawvaecaeade', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男', 'easheraveaeA', '50秒', '具体电路不太了解 CPU 是 640Mhz      2G nand    512M flash   150M  802.11n网卡，网卡可以拆出来插电脑用免驱  对于一款音频播放器来说应该是非常好的了', 'lksfj.sxl', '具体电路不太了解 CPU 是 640Mhz      2G nand    512M flash   150M  802.11n网卡，网卡可以拆出来插电脑用免驱  对于一款音频播放器来说应该是非常好的了', '1', '500', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c356601575c3675ef0000', 'gadfasdf', '2016-09-24 20:40:55', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'braraefaceaav', '546秒', 'fasdfas', 'lksfj.sxl', 'fasdfsaf', '1', '346', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c356601575c37c3560001', 'fasdfasfas', '2016-09-24 20:42:20', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'braraefaceaav', '4523秒', 'sgdfg', 'lksfj.sxl', 'asfasf', '1', '234', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0005', 'as648se5br5d5s24s5dx003	', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c356bsefc3675ef0000', 'gadfasdf', '2016-09-24 20:40:55', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'braraefaceaav', '546秒', 'fasdfas', 'lksfj.sxl', 'fasdfsaf', '1', '346', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c3bcc4550000', 'asdfafasf', '2016-09-24 20:47:48', 'xiaochao', 'beraefeacac', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '234秒', 'fasdfasdf', 'lksfj.sxl', 'asdfadf', '1', '234', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c3bfc01575c3cc4550000', 'asdfafasf', '2016-09-24 20:47:48', 'xiaochao', 'beraefeacac', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '234秒', 'fasdfasdf', 'lksfj.sxl', 'asdfadf', '1', '234', 'baefaf758eaecc', '8', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c3bfc0segd3cc4550000', 'asdfafasf-', '2016-09-24 20:47:48', 'xiaochao', 'beraefeacac', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '234秒', 'fasdfasdf', 'lksfj.sxl', 'asdfadf', '1', '234', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c54d301575c55971c0000', 'fasfasf', '2016-09-24 21:14:55', 'xiaochao', 'baerawvaecaeade', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '47秒', 'afsdfas', 'lksfj.sxl', 'fasf', '1', '17', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c5fb801575c7aa1530000', 'asfadfadf', '2016-09-24 21:55:23', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '4141秒', 'gsdfg', 'lksfj.sxl', 'sdfgsdfg', '1', '254', 'baefaf758eaecc', '3', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575c9fc501575ca28f750000', 'fsdfasdf', '2016-09-24 22:38:59', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'braraefaceaav', '432秒', 'fasf', 'lksfj.sxl', 'asfs', '1', '4234', 'baefaf758eaecc', '2', '3g56a6sdgs65ed6v5d0005', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575fd3a701575fdeb3f40000', '888888888888', '2016-09-25 13:43:33', 'xiaochao', 'beawfeasca', 'baseha4tshtsg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '423秒', 'afsdaf', 'lksfj.sxl', 'asdfasdf', '1', '324', 'baefaf758eaecc', '21', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '1');
INSERT INTO `b_tender` VALUES ('402881e5575fd3gseae5fdeb3f40000', 'fASFDasd', '2016-09-25 13:43:33', 'xiaochao', 'beawfeasca', 'baseha4tshtsg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '423秒', 'afsdaf', 'lksfj.sxl', 'asdfasdf', '1', '324', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575gsefg575c55971c0000', 'fasfasf', '2016-09-24 21:14:55', 'xiaochao', 'baerawvaecaeade', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '47秒', 'afsdfas', 'lksfj.sxl', 'fasf', '1', '17', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e5575gsefgrhwe971c0000', 'fasfasf', '2016-09-24 21:14:55', 'xiaochao', 'baerawvaecaeade', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '47秒', 'afsdfas', 'lksfj.sxl', 'fasf', '1', '17', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55766f6ef0157670732ea0000', '我都是拉开房间爱可乐放', '2016-09-26 23:05:07', 'xiaochao', 'veasgaefafecaec', 'baseha4tshtsg', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '55秒', 'hahahahha', 'lksfj.sxl', 'hahahahha', '1', '522', 'baefaf758eaecc', '15', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx003	', '1');
INSERT INTO `b_tender` VALUES ('402881e55766f6ef01576713a1b20001', '陈超fsfsfsf', '2016-09-26 23:18:42', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '827秒', 'asdfafadfasdf', 'lksfj.sxl', 'asdfasdf', '1', '722', 'baefaf758eaecc', '45', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e55766f6ef01576saeghb20001', '陈超fsfsfsf', '2016-09-26 23:18:42', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '827秒', 'asdfafadfasdf', 'lksfj.sxl', 'asdfasdf', '1', '722', 'baefaf758eaecc', '11', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e55766f6efbrha732ea0000', '我都是拉开房间爱可乐放', '2016-09-26 23:05:07', 'xiaochao', 'veasgaefafecaec', 'baseha4tshtsg', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '55秒', 'hahahahha', 'lksfj.sxl', 'hahahahha', '1', '522', 'bratqaefabasfa', '37', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx003	', '0');
INSERT INTO `b_tender` VALUES ('402881e55798a75e015798a815560000', 'fasdfafa', '2016-10-06 14:22:14', 'xiaochao', 'beawfeasca', '523456rgbdfseg', '2016-10-06-14-22-14-2214454714135b101380e6c55f74c75f384978fa56RUNNING.txt', '女', 'easheraveaeA', '40秒', 'asdfasdfa', null, 'fasdfadfadf', '1', '80', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55798a75e015798a97caf0001', 'asdfaf', '2016-10-06 14:23:46', 'xiaochao', 'beawfeascafes', '673sntsgwtg3245sd', '2016-10-06-14-23-46-2346908458413c34c58b1f80bccb66feab4818b392LICENSE', '女', 'rhaefae442Dfasdg', '23秒', 'asdfasdf', null, 'sadfasdf', '1', '23', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0007', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55798a75e015798aa21240002', 'dfsafaf', '2016-10-06 14:24:28', 'xiaochao', 'baerawvaecaeade', '523456rgbdfseg', '2016-10-06-14-24-28-24286138298e98516cd16dcc46a2f9c74f3e9a5a38RELEASE-NOTES', '女', 'easheraveaeA', '40秒', 'fasfdad', null, 'asdfasdf', '1', '40', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e55798a75e015798ad1b220003', 'fasdafas', '2016-10-06 14:27:44', 'xiaochao', 'beawfeascafes', '523456rgbdfseg', '2016-10-06-14-27-44-2744369536206b637babefe9024f971596eade8126RELEASE-NOTES', '男', 'rhaefae442Dfasdg', '233秒', 'fasdfasdfaf', null, 'fasdfaf', '1', '232', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55798adb1015798aed93e0000', 'fasdfafa', '2016-10-06 14:29:38', 'xiaochao', 'beawfeasca', '523456rgbdfseg', '2016-10-06-14-29-38-293893757630d74629ec6cb98fbca44620aaea311RELEASE-NOTES', '女', 'easheraveaeA', '322秒', 'fasdfa', null, 'fasdfafaf', '1', '232', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55798c63a015798c85e750000', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyh', '2016-10-06 14:57:30', 'xiaochao', 'baerawvaecaeade', '523456rgbdfseg', '2016-10-06-14-57-30-57305026435f87d064667200621770197c434fd5f5Kalimba.mp3', '男女混合', 'rhaefae442Dfasdg', '58秒', 'dfasfafafaf', '2016-10-06-14-57-30-5730931295e291880334d18287db4f91c9cccb8e70Kalimba.mp3', 'fsadfvsabadg', '1', '88', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx003	', '0');
INSERT INTO `b_tender` VALUES ('402881e55798c63a015798cba0ce0001', 'gsdfgsfgsdf', '2016-10-06 15:01:04', 'xiaochao', 'beawfeascafes', '523456rgbdfseg', '2016-10-06-15-01-04-14330069acbebbf239d46475d2ca226b3e8f7b61测试长度的东西ss家家 - 印记.mp3', '男女混合', 'easheraveaeA', '4343秒', 'fsdafaf', '2016-10-06-15-01-04-14560875e9054fde74a2fb02b3a1d62d66485100测试长度的东西ss家家 - 印记.mp3', 'asdfasfasdfa', '1', '343', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx003	', '0');
INSERT INTO `b_tender` VALUES ('402881e55798c63a015798d424650002', 'ggggggggggggggggggggggggggg', '2016-10-06 15:10:22', 'xiaochao', 'beawfeasca', '523456rgbdfseg', '2016-10-06-15-10-22-10227800d31f68db9b46f3052ede50fe8fd39f55upload_d3313951_2956_4a72_8c19_aa5660700367_00000087.tmp', '女', 'easheraveaeA', '55秒', 'fsdfasdf', '2016-10-06-15-10-22-10222133704d1db7af54aa85694b5eb1efd36f4066upload_d3313951_2956_4a72_8c19_aa5660700367_00000088.tmp', 'fasdfaf', '1', '55', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0007', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55798da25015798db29430000', 'tgttttttttttttttttttttttttttttttttttttt', '2016-10-06 15:18:02', 'xiaochao', 'beraefeacac', '523456rgbdsbrdg', '2016-10-06-15-52-31-52319081468047b8ac6e320e69aa4c300350d2b822测试长度的东西ss家家 - 印记.mp3', '女', 'easheraveaeA', '77秒', 'hfshsghsdgsdfg', '2016-10-06-15-52-31-52313368758567430b01acb190bf83c3664ebc2edeppppp.txt', 'dfgasgsg', '1', '77', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881e55bnsdr4sefc3675ef0000', 'gadfasdf', '2016-09-24 20:40:55', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '2016-10-16-18-20-20-2020484468e26df99b608377372a2cecffc60f71cd测试长度的东西ss家家 - 印记.mp3', '女', 'braraefaceaav', '546秒', 'oooooooooooooooo', 'lksfj.sxl', 'ooooooooo', '1', '346', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881e55bnsdr4sefc36gasgd0', 'gadfasdfyyyy', '2016-09-24 20:40:55', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'braraefaceaav', '546秒', 'fasdfas', 'lksfj.sxl', 'fasdfsaf', '1', '346', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881ebarbsd6713a1b20001', '陈超fsfsfsf', '2016-09-26 23:18:42', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '2016-10-06-14-50-42-504222159987fc59f2364d7deb5e495f62b3e173fbDaveed - Great Morning.mp3', '男女混合', 'easheraveaeA', '827秒', 'asdfafadfasdf', '2016-10-06-14-51-07-51738922335d50d5af7604e4889db1ce434d23207null', 'asdfasdf', '1', '722', 'bratqaefabasfa', '0', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881ebarbsd6713a1bsegh01', '行测试行测试行测试行测试行测试行测试行测试行测试行测试试行测试试', '2016-09-26 23:18:42', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '827秒', 'asdfafadfasdf', 'lksfj.sxl', 'asdfasdf', '1', '722', 'baefaf758eaecc', '47', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881ebarh01576713a1b20001', '陈超fsfsfsf', '2016-09-26 23:18:42', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '827秒', 'asdfafadfasdf', 'lksfj.sxl', 'asdfasdf', '1', '722', 'baefaf758eaecc', '2', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881ebarh01576713a1bbnads01', '陈超fsfsfsfbadrba', '2016-09-26 23:18:42', 'xiaochao', 'beawfeasca', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '827秒', 'asdfafadfasdf', 'lksfj.sxl', 'asdfasdf', '1', '722', 'baefaf758eaecc', '32', '3g56a6sdgs65ed6v5d0006', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('402881gegbn75c5fb801575c7aa1530000', 'asfadfadf', '2016-09-24 21:55:23', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '4141秒', 'gsdfg', 'lksfj.sxl', 'sdfgsdfg', '1', '254', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881gegbn75c5fb8015ase530000', 'asfadfadf54545', '2016-09-24 21:55:23', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '4141秒', 'gsdfg', 'lksfj.sxl', 'sdfgsdfg', '1', '254', 'baefaf758eaecc', '2', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881gegbn75c5fbh45aa1530000', 'asfadfadf', '2016-09-24 21:55:23', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '4141秒', 'gsdfg', 'lksfj.sxl', 'sdfgsdfg', '1', '254', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402881gegbn75c5fbh45aa153bbb0', 'asfadfadf2782', '2016-09-24 21:55:23', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '4141秒', 'gsdfg', 'lksfj.sxl', 'sdfgsdfg', '1', '254', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('402ega55766f6efbrha732ea0000', '我都是拉开房间爱可乐放', '2016-09-26 23:05:07', 'xiaochao', 'veasgaefafecaec', 'baseha4tshtsg', '陈琳 - 爱就爱了 (国语).mp3', '男女混合', 'easheraveaeA', '55秒', 'hahahahha', 'lksfj.sxl', 'hahahahha', '1', '522', 'baefaf758eaecc', '29', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx003	', '0');
INSERT INTO `b_tender` VALUES ('asgavba344hb3gas34q34t34gwse4rf34', '我叫陈超ser5wbnaw', '2016-09-25 13:38:59', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女不限', 'easheraveaeA', '300秒', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过--', 'lksfj.sxl', '要求不要太快 差不多久行了--', '5', '580', 'baefaf758eaecc', '2', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('baefkafasfabvabsdgb', '长城宽带广告配音', '2016-09-25 10:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '300', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('baefkafasfabvabsdgbafse332', '长城宽带广告配音', '2016-09-25 10:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '300', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('baefkafasfleklca', '长城宽带广告配音', '2016-09-25 10:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '30时', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了----', '2016/5/25', '58', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('baefkafasfleklcabrah', '长城宽带广告配音', '2016-09-25 10:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '300', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('brlaskemafecas', '淘宝商品广告配音888', '2016-09-25 11:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '30时', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('brlaskemafecas54hw464564', '淘宝商品广告配音888', '2016-09-25 11:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '30时', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '12', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('brlaskemafecas54hw464564235ad', '淘宝商品广告配音888', '2016-09-25 11:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '30时', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('brlaskemafecasargwqa32', '淘宝商品广告配音888', '2016-09-25 11:38:59', 'xiaochao', 'veasgaefafecaec', '523456rgbdsbrdg', '陈琳 - 爱就爱了 (国语).mp3', '男', 'braraefaceaav', '30时', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过', 'lksfj.sxl', '要求不要太快 差不多久行了', '2016/5/25', '58', 'baefaf758eaecc', '4', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('gbhabnsdbnda434h34yhq3h434', '我叫陈超5454bnsd', '2016-09-25 13:38:59', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女不限', 'easheraveaeA', '300秒', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过--', 'lksfj.sxl', '要求不要太快 差不多久行了--', '5', '580', 'baefaf758eaecc', '4', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('gw34881e5575fd3gseae5fdeb3f40000', 'fASFDasd', '2016-09-25 13:43:33', 'xiaochao', 'beawfeasca', 'baseha4tshtsg', '陈琳 - 爱就爱了 (国语).mp3', '女', 'easheraveaeA', '423秒', 'afsdaf', 'lksfj.sxl', 'asdfasdf', '1', '324', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0');
INSERT INTO `b_tender` VALUES ('vbearvelbaceae235t2', '我叫陈超', '2016-09-25 13:38:59', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女不限', 'easheraveaeA', '300秒', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过--', 'lksfj.sxl', '要求不要太快 差不多久行了--', '5', '580', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('vbearvelbaceae45435ghwg4f', '我叫陈超', '2016-09-25 13:38:59', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女不限', 'easheraveaeA', '300秒', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过--', 'lksfj.sxl', '要求不要太快 差不多久行了--', '5', '580', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('vbearvelbaceae45435ghwg4fb344h4', '我叫陈超bdr4e', '2016-09-25 13:38:59', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女不限', 'easheraveaeA', '300秒', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过--', 'lksfj.sxl', '要求不要太快 差不多久行了--', '5', '580', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx002', '0');
INSERT INTO `b_tender` VALUES ('vbearvelbaceae45435ghwg4fxd3', '我叫陈超', '2016-09-25 13:38:59', 'xiaochao', 'beraefeacac', '673sntsgwt4vr', '陈琳 - 爱就爱了 (国语).mp3', '男女不限', 'easheraveaeA', '300秒', '中国移动现在推出冲500话费送智能手机,走过路过千万不要错过--', 'lksfj.sxl', '要求不要太快 差不多久行了--', '5', '580', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0008', 'as648se5br5d5s24s5dx002', '0');

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
INSERT INTO `d_type` VALUES ('berwartaedfeee', '配音员', '备用字段');
INSERT INTO `d_type` VALUES ('gseaeffasdasc', '任务方', '备用字段');

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
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0004', 'MP3', '');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0005', 'WAV', '');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0006', 'MIDI', '');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0007', 'WMA', '');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0008', 'MP4', '');
INSERT INTO `f_ileormat` VALUES ('3g56a6sdgs65ed6v5d0009', '不限', null);

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
INSERT INTO `h_speed` VALUES ('as648se5br5d5s24s5dx001', '正常', null);
INSERT INTO `h_speed` VALUES ('as648se5br5d5s24s5dx002', '较快', '');
INSERT INTO `h_speed` VALUES ('as648se5br5d5s24s5dx003	', '较慢', null);

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
INSERT INTO `inusers` VALUES ('4028474257d5a5350157d66e25ab0000', '965449898', 'c67ee448337e0ab455bffc2bc705e91e', 'V542030', 'txtub.png', null, null, null, null, null, '969353498@qq.com', null, null, '2016-10-18 14:15:25', null, null, '0', '1', null, null, null, null, 'berwartaedfeee', '');
INSERT INTO `inusers` VALUES ('4028474257db13230157db347b360000', '969353498', '4218bb3e9d7915224f0bb74ae8e2f8c1', 'V963427', '2016-10-20-16-11-46-114670787752292b91989c48e7bb489c0d7281ad6atouxssss.png', '男', '2016-10-11', null, null, null, '965449898@qq.com', '15213478863', '新加坡-新加坡', '2016-10-19 12:30:32', null, null, '0', '0', 'easheraveaeA', '河南话♫重庆话♫湖北话♫东北话', '广告配音♫方言配音♫演讲配音♫课件配音', '大气高雅♫男高音♫女高音♫雄厚磁性', 'berwartaedfeee', '0');
INSERT INTO `inusers` VALUES ('4028474257e122860157e12f29210000', 'chenchao', 'a57cee6498dbec9a066daccaa262e982', 'C53842', '2016-10-20-16-40-03-403257768ba63c271b58093617b070d216a33f15cshitou.png', '男', '2016-10-12', '谷歌公司', '哈临街', '陈超', '969353498@qq.com', '15213478863', '俄罗斯-中央 Central\'nyj ', '2016-10-20 16:22:26', null, null, '0', '0', null, null, null, null, 'gseaeffasdasc', '0');
INSERT INTO `inusers` VALUES ('4028474257e122860157e14092f30001', '85208520', 'eedaefdfee825b45066daccaa262e982', 'C23644', 'renwuf.png', '男', '2016-10-04', 'adsfasf', 'asdfadf', 'asfafda', '965449898@qq.com', 'adfadfaf', '意大利-托斯卡纳 Toscana', '2016-10-20 16:41:28', null, null, '0', '0', null, null, null, null, 'gseaeffasdasc', '0');
INSERT INTO `inusers` VALUES ('402881drhsefedfgaw4f12e4e0ggg', 'sgsgsb', '0db4ba93530764fa4aafa0206d589a90', '测试人员26', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e4576c4b2901576c5366bd0000', 'lanqiulian', 'a1815d0283a1f0054903b860368cab05', null, 'ffffxxx.png', '男', null, null, null, null, '969353498@qq.com', null, null, '2016-09-27 23:46:27', null, null, '0', '1', null, null, null, null, 'gseaeffasdasc', '1');
INSERT INTO `inusers` VALUES ('402881e5564rfgaw4f1eee4e0866', 'snjdrnf', '0db4ba93530764fa4aafa0206d589a90', '测试人员13', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efed0156f4f12e4e0000', 'ccadmincc', '0db4ba93530764fa4aafa0206d589a90', '测试人员', '2016-10-19-17-30-42-30421575549ba7394cd735085358edc20751a137e501678a554b5932000001bf727f2580.jpg', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '韩国-仁川广域市', '2016-09-04 19:24:21', '', null, '0', '1', 'easheraveaeA', '粤语♫吴语♫湘语♫赣语♫客家话♫其他♫台语♫闽语♫中式英语♫普通话', '商业广告♫卡通♫纪录片♫教育/教学♫电子书♫网络♫语音应答♫游戏♫影视预告♫电视/广播♫歌唱', '优质音色♫大气高雅♫男高音♫女高音♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f12e4e0000', 'hhhhdddd', '0db4ba93530764fa4aafa0206d589a90', '测试人员2', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f12e4e0055', 'gsghas', '0db4ba93530764fa4aafa0206d589a90', '测试人员6', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f12e4e0152', 'hhhhddgg', '0db4ba93530764fa4aafa0206d589a90', '测试人员4', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f12e4e01g', 'hhseghg', '0db4ba93530764fa4aafa0206d589a90', '测试人员8', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f12e4e0ggg', 'gabnafg', '0db4ba93530764fa4aafa0206d589a90', '测试人员10', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f12egse000', 'hhhhgasdg', '0db4ba93530764fa4aafa0206d589a90', '测试人员18', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f1eee4e0000', 'eravagafg', '0db4ba93530764fa4aafa0206d589a90', '测试人员3', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f1eee4e00gs', 'ergseg', '0db4ba93530764fa4aafa0206d589a90', '测试人员7', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f1eee4e0866', 'egggafg', '0db4ba93530764fa4aafa0206d589a90', '测试人员5', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f1eee4ee0', 'ghahaba', '0db4ba93530764fa4aafa0206d589a90', '测试人员11', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfgaw4f1eee4egs6', 'eggegsg', '0db4ba93530764fa4aafa0206d589a90', '测试人员9', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4efedfheasf1eee4e00gs', 'sdrnbsdn', '0db4ba93530764fa4aafa0206d589a90', '测试人员15', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4egasaw4f1eee4e0000', 'esdgnn', '0db4ba93530764fa4aafa0206d589a90', '测试人员19', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e556f4ehhaw4f12e4e0055', 'gabasd', '0db4ba93530764fa4aafa0206d589a90', '测试人员14', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881e5578016c8015780309b730000', 'xiaochaoo', '833e874c686b10fa2a90635b3ab67c82', null, 'ffffxxx.png', '男', null, null, null, null, '969353498@qq.com', null, '中国-重庆', '2016-10-01 20:20:51', null, null, '0', '1', null, null, null, null, 'berwartaedfeee', '');
INSERT INTO `inusers` VALUES ('402881e557d3321e0157d33307fa0000', '847078739', '196baee12944f4d8bf1d99cb75560406', 'V684340', null, null, null, null, null, null, '847078739@qq.com', null, null, '2016-10-17 23:11:59', null, null, null, '1', null, null, null, null, 'berwartaedfeee', '');
INSERT INTO `inusers` VALUES ('402881e55haedfgaw4f12e4e0055', 'asersnrnn', '0db4ba93530764fa4aafa0206d589a90', '测试人员22', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881ed571ce5c701571ce72bea0000', 'admincccc', '75e51ffcfcea17474aafa0206d589a90', null, 'ffffxxx.png', '男', null, null, null, null, '969353498@qq.com', null, null, '2016-09-12 13:38:14', null, null, '0', '1', null, null, null, null, 'gseaeffasdasc', '');
INSERT INTO `inusers` VALUES ('402881ed571d1ae101571d2844080000', 'xulongfei', 'ac4ec150369cf812', null, 'ffffxxx.png', '男', null, null, null, null, '121071500@qq.com', null, null, '2016-09-12 14:49:20', null, null, '0', '1', null, null, null, null, 'gseaeffasdasc', '');
INSERT INTO `inusers` VALUES ('402881ed571d61b101571d624e590000', 'bbadminbb', '155a49c974c6fb40f9192cac9d46d634', null, 'ffffxxx.png', '男', null, null, null, null, '847078739@qq.com', null, null, '2016-09-12 15:52:44', null, null, '0', '1', null, null, null, null, 'gseaeffasdasc', '');
INSERT INTO `inusers` VALUES ('402881ed571d7c7001571d7cee2f0000', 'xiaochao', '833e874c686b10fa066daccaa262e982', '陈超', '2016-10-21-00-25-11-2511138017a4cba040bb40e6f88ddf258acde85cd0山地大猩猩.jpg', '男', '2016-09-19', 'fasdfasdfasf', 'afsdfsadf', 'asdfadfa', '969353498@qq.com', 'adfaf', '西班牙-阿斯图利亚斯 Asturias', '2016-09-12 16:21:49', null, null, '0', '1', null, null, null, null, 'gseaeffasdasc', '');
INSERT INTO `inusers` VALUES ('402881egas6f4efedfgaw4f12e4e0152', 'strnjsnm', '0db4ba93530764fa4aafa0206d589a90', '测试人员20', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881ensdr4rfgaw4f1eee4e0866', 'snjdrnfbasd', '0db4ba93530764fa4aafa0206d589a90', '测试人员29', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402881sdrh4efedfgaw4f1eee4ee0', 'ghanaern', '0db4ba93530764fa4aafa0206d589a90', '测试人员27', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('40288gg56f4efedfgaw4f12e4e0152', 'hhsdbnd', '0db4ba93530764fa4aafa0206d589a90', '测试人员12', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('40288hsdrh4ehhaw4f12e4e0055', 'gergah', '0db4ba93530764fa4aafa0206d589a90', '测试人员30', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('4028978156d67f2c0156d6827ff10001', 'bratavbav', 'a57cee6498dbec9a066daccaa262e982', '嘿嘿', 'ffffxxx.png', '女', '1995/5/5', null, null, null, '969353498@qq.com', '15213478863', '中国-北京', '2016-05-21 00:00:00', '2016-05-21 00:00:00', '1', '0', '1', 'rhaefaedWDfasdg', '普通话/四川话/东北话/', '广告配音/文艺配音/演讲配音', '磁性雄厚/优美文艺', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('4028afgfedfgaw4f1eee4egs6', '34bnaerbna', '0db4ba93530764fa4aafa0206d589a90', '测试人员25', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('4028hasdrfefedfgaw4f12e4e01g', 'rasrebna', '0db4ba93530764fa4aafa0206d589a90', '测试人员32', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('4028haw56f4efedfgaw4f12e4e01g', 'hdsnsd', '0db4ba93530764fa4aafa0206d589a90', '测试人员16', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'easheraveaeA', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402gha56f4efedfgaw4f1eee4e0866', 'qaweegag', '0db4ba93530764fa4aafa0206d589a90', '测试人员21', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402ghsehefedfheasf1eee4e00gs', 'basbab', '0db4ba93530764fa4aafa0206d589a90', '测试人员31', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402heh556f4efedfgaw4f1eee4egs6', 'hsdhsdn', '0db4ba93530764fa4aafa0206d589a90', '测试人员17', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'easheraveaeA', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('402hejshjefedfgaw4f1eee4egs6', 'nsdnnnn', '0db4ba93530764fa4aafa0206d589a90', '测试人员33', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('40gadgf4efedfgaw4f12e4e01g', 'hnbadr', '0db4ba93530764fa4aafa0206d589a90', '测试人员24', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('40nsdedfgaw4f12e4e0152', 'hhasre', '0db4ba93530764fa4aafa0206d589a90', '测试人员28', 'ffffxxx.png', '女', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');
INSERT INTO `inusers` VALUES ('barefaecasca', 'adminsscs', 'a57cee6498dbec9a066daccaa262e982', '陈超', 'ffffxxx.png', '男', '1995/5/5', '谷歌公司', '美国纽约', '陈超', '969353498@.com', '15213478863', '中国-北京', '2016-05-21 00:00:00', '2016-05-21 00:00:00', '1', '0', '1', null, null, null, null, 'gseaeffasdasc', '');
INSERT INTO `inusers` VALUES ('dfgasdgadgagaasdgahadga', '5345gasega', '0db4ba93530764fa4aafa0206d589a90', '测试人员23', 'ffffxxx.png', '男', '1995-03-16', '', '', '', '969353498@qq.com', '15213478863', '中国-重庆', '2016-09-04 19:24:21', '', null, '0', '1', 'rhaefaedWDfasdg', '普通话♫重庆话♫粤语话♫其他话', '演讲配音♫音乐配音♫广告配音', '大气高雅♫优美文艺♫雄厚磁性', 'berwartaedfeee', '1');

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
INSERT INTO `m_essge` VALUES ('402881e457f074d90157f076293e0000', 'Y946740', 'Y946740', 'admincom', '333', '2016-10-23 15:34:18', '<p>您好</p>', '1', '1', '0', 'images/touxd.png', '200', '0', '2016-10-23 15:38:03');
INSERT INTO `m_essge` VALUES ('402881e457f074d90157f07659670001', 'Y946740', 'Y946740', 'admincom', '333', '2016-10-23 15:34:30', '<p>有事吗？</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f074d90157f07671d50002', 'Y946740', 'Y946740', 'admincom', '333', '2016-10-23 15:34:36', '<p>对呀</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0884a0157f08f79c80000', 'Y780408', 'Y780408', 'admincom', '333', '2016-10-23 16:01:57', '<p>呵呵</p>', '1', '1', '0', 'images/touxd.png', '200', '0', '2016-10-23 16:02:38');
INSERT INTO `m_essge` VALUES ('402881e457f0884a0157f09019940001', 'Y780408', 'Y780408', 'admincom', '333', '2016-10-23 16:02:38', '<p>呵呵方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a002ca0000', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:00', '<p>但是</p>', '1', '1', '0', 'images/touxd.png', '200', '0', '2016-10-23 16:22:15');
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a01d670001', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:07', '<p>发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0369f0002', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:14', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a071370003', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:29', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a07f190004', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:32', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a08a5e0005', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:35', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0951d0006', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:38', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a09abe0007', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:39', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0a3280008', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:41', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0a9b30009', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:43', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0b875000a', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:47', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0d31f000b', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:54', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0e23a000c', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:58', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0e921000d', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:20:59', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0f3f9000e', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:02', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a0fa65000f', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:04', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a103400010', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:06', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a10ab10011', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:08', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a112de0012', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:10', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a11a320013', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:12', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a121ca0014', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:14', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a12aa60015', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:16', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a12e9c0016', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:17', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a131f20017', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:18', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a1359f0018', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:19', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a16d640019', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:33', '<p>但是发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a1aca2001a', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:49', '<p>但是发生的发</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a1b721001b', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:21:52', '<p>但是发生的发斯蒂芬</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a1dba8001c', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:22:01', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a1ecae001d', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:22:06', '<p>但是发生的发斯蒂芬是非法</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a1f5b6001e', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:22:08', '<p>发生的发生的</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f09c8a0157f0a2125d001f', 'Y507094', 'Y507094', 'admincom', '333', '2016-10-23 16:22:15', '<p>但是发生的发斯蒂芬是非法的说法</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a69ef50000', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:27:14', '<p>撒地方</p>', '1', '1', '0', 'images/touxd.png', '200', '0', '2016-10-23 16:30:14');
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a715fb0001', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:27:44', '<p>嘎达</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a724fc0002', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:27:48', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a740920003', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:27:55', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7647f0004', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:04', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a776ff0005', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:09', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a788360006', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:13', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7a2370007', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:20', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7b4a60008', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:25', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7c25f0009', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:28', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7e0d6000a', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:36', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7ea89000b', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:38', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7f17b000c', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:40', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7f55b000d', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:41', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a7f8f6000e', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:42', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a800c6000f', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:44', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a8059c0010', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:45', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a82a740011', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:55', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a830f70012', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:56', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a834970013', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:57', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a83cb60014', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:28:59', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a84ac80015', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:29:03', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a852390016', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:29:05', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a856cd0017', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:29:06', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a85b960018', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:29:07', '<p>嘎达的说法</p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a8be200019', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:29:33', '<p>嘎达的说法<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://i.froala.com/download/c58f6691a01dc6fe2a241f4038fd3606f9f104d9.png?1477211367\" width=\"300\"></p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a927de001a', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:00', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a93768001b', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:04', '<p>嘎达的说法<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://i.froala.com/download/c58f6691a01dc6fe2a241f4038fd3606f9f104d9.png?1477211367\" width=\"300\"></p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a9441b001c', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:07', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a94cd2001d', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:09', '<p>嘎达的说法<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://i.froala.com/download/c58f6691a01dc6fe2a241f4038fd3606f9f104d9.png?1477211367\" width=\"300\"></p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a9567e001e', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:12', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a95b38001f', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:13', '<p>嘎达的说法<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://i.froala.com/download/c58f6691a01dc6fe2a241f4038fd3606f9f104d9.png?1477211367\" width=\"300\"></p>', '1', '2', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0a961300020', 'Y392263', 'Y392263', 'admincom', '333', '2016-10-23 16:30:14', '<p>撒地方</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0ab52000021', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:32:22', '<p>你好</p>', '1', '1', '0', 'images/touxd.png', '200', '201', '2016-10-23 16:37:22');
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0acfc880022', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:34:11', '<p>你好发的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0add2370023', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:35:05', '<p>你好发的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0ae8ad90024', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:35:53', '<p>你好发的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0af22710025', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:36:31', '<p>你好发的</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0afa3b70026', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:37:05', '<p>你好发的撒地方a</p>', '1', '1', null, 'images/touxd.png', null, null, null);
INSERT INTO `m_essge` VALUES ('402881e457f0a5f00157f0afe7280027', 'Y229805', 'Y229805', 'admincom', '333', '2016-10-23 16:37:22', '<p>你好发的撒地方a发生的</p>', '1', '1', null, 'images/touxd.png', null, null, null);

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
INSERT INTO `p_artpate` VALUES ('4028353erd2728550157027c93esefx', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('4028474257ad32490157ad3305380000', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', 'brlaskemafecas54hw464564', '2016-10-10 14:06:24', null, 'baseecasef', '300', '969353498@qq.com', null, '100', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('4028474257ad32490157ad334f910001', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', 'brlaskemafecas54hw464564', '2016-10-10 14:06:43', null, 'baseecasef', '300', '969353498@qq.com', '969353498@qq.com', '100', '2', null, null, null, null, '225.00', '88', null, '12', null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881e27722saeb57027c93ewgaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, '', '200', '2', '2016-10-15 20:21:05', null, null, '', '225.00', '88', 'MD72c3wa220161015202105105215174876', '12', null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881e27722saeb57027c9ge345', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, '1');
INSERT INTO `p_artpate` VALUES ('402881e27722sagsed027c93ewgaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'brafeacasd', '300', null, '969353498@qq.com', '200', '2', null, null, null, '50.00', '225.00', '88', 'MDd2c3wa220161014222701701271334595', '144', null, '15213478863', 'test3.mp3', '1', null, null, null, '1');
INSERT INTO `p_artpate` VALUES ('402881ed570278550157027c93baseb', '402881e556f4efed0156f4f12e4e0000', 'chenchao', '402881e5575fd3a701575fdeb3f40000', '2016-9-26 23:23:37', '', 'brafeacasd', '300', 'MD172c37522016101601004004004085249', '847078739Q@qq.com', '200', '3', '2016-10-15 21:47:45', null, '2016-10-15 21:47:45', '50.00', '225.00', '88', 'MD172c3ae2201610152147454547451005892', '12', '陈超', '15213478863', 'test3.mp3', '1', null, null, '2016-10-18-11-00-38-038297539aaa2f25fc2a4b6e3c2a734b0beb44b3c杨洋 - 从开始到现在.mp3', '1');
INSERT INTO `p_artpate` VALUES ('402881ed570278550157027c93d7852', '402881e556f4efed0156f4f12e4e0000', 'chenchao', '402881e55766f6ef0157670732ea0000', '2016-9-26 23:23:37', null, 'baseecasef', '300', null, '847078739Q@qq.com', '200', '3', '2016-10-16 01:00:40', null, '2016-10-16 01:05:00', '88888888888', '225.00', '88', 'MD172c375220161016010040040040918949', '144', null, '15213478863', 'test3.mp3', '1', null, 'vbaseacsecesa6', null, '');
INSERT INTO `p_artpate` VALUES ('402881ed570278550157027c93d7egh', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e5575c5fb801575c7aa1530000', '2016-9-26 23:23:37', '', 'brafeacasd', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, '陈超', '15213478863', 'test3.mp3', '1', null, null, '2016-10-18-11-00-38-038297539aaa2f25fc2a4b6e3c2a734b0beb44b3c杨洋 - 从开始到现在.mp3', null);
INSERT INTO `p_artpate` VALUES ('402881ed570278550157027gberasrf', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e5575c356601575c3675ef0000', '2016-9-26 23:23:37', '', 'brafeacasd', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881ed5702785sefsad93d7egh', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef0157670732ea0000', '2016-9-26 23:23:37', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881ed570278ndfbsd027c93d7egh', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:37', '', 'brafeacasd', '300', '969353498@qq.com', '969353498@qq.com', '200', '2', null, null, null, '50.00', '225.00', '88', 'MDbd2c37g220161013155654545654833186', '72', null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881eedfg855fasfsedssbd5', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881eetwasdnrfbs27gesd98495', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es2728550157027c93esefx', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es2728550157vsdasc93esefx', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es2728e4t0157vsdasc93esefx', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, '847078739@qq.com', '200', '2', null, null, null, '13838384388', '225.00', '88', 'MD5vds9eex20161013161301301131700026', '144', null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es475278550157027c93bages', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es475278550157027ghw43ages', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es47527855015sefd93bages', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881es475rthse45sefd93bages', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essbfa278550gsec27c93d98495', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef0157670732ea0000', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essfed27dnrfbs27c93d98495', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '200', '2', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essfed27dnrfbs27gesd98495', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881esssbsevs855gsedg7c93efeaf', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e5575c9fc501575ca28f750000', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss278550157027c93bafb', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss278550157027c93esefx', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss278550157027c93ewgaf', '402881e556f4efed0156f4f12e4e0000', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss27855fasf27c93d9sbd5', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss27855fasfsedssbd5', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss27855gsedg7c93efeaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e5575c5fb801575c7aa1530000', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss27855gsedg7grfbnsaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e5575fd3a701575fdeb3f40000', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, '847078739Q@qq.com', '100', '1', '2016-10-15 21:52:07', null, null, '33.00', '225.00', '88', 'MDsd7rbsf220161015215207207527269710', '12', null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss2785gdssefas93d98495', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e5575c5fb801575c7aa1530000', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss278nsdfbdcv93ewgaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e5575c356601575c37c3560001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss278nsdfbdcvhrefgaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e5575c356601575c37c3560001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss27dnrfbs27c93d98495', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402881essss2saeb57027c93ewgaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, '847078739@qq.com', '100', '1', null, null, null, '50.00', '225.00', '88', 'MD72c3wa2020161013233927273927106983', '72', null, '15213478863', 'test3.mp3', '1', null, null, null, null);
INSERT INTO `p_artpate` VALUES ('402twerd27722sagsed027c93ewgaf', '4028978156d67f2c0156d6827ff10001', 'xiaochao', '402881e55766f6ef01576713a1b20001', '2016-9-26 23:23:35', '', 'baseecasef', '300', null, null, '100', '1', null, null, null, null, '225.00', null, null, null, null, '15213478863', 'test3.mp3', '1', null, null, null, null);

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
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaabbbrbrbn23seb32', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613a000044', 'admincom', 'xiaochao', '1111核', '你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核你订单提交的作品已通过审核', '2016-10-20 14:03:55', null, '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613a000344', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613a002332', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613a03534G', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613a0fgseg', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613agag03', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84613bseb32', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk8461asb534G', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk8461bseb344', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk8461GSEGC32', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk8461GSfesa32', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk846baebabseg', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk846erbab332', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84aebbea0344', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84aerbrb43344', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84besbb34G', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84bsababeg03', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84esgasbv044', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslk84gesageav3', 'admincom', 'xiaochao', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');
INSERT INTO `x_systemnews` VALUES ('400852lh54ba5ebaeslkbnraGSEGC32', 'admincom', 'ccadmincc', '你单提交的作品已通过审核', '你<a href=\"#\">---</a>订单提交的作品已通过审核', '2016-10-20 14:03:55', '', '333', '系统消息');

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
INSERT INTO `z_state` VALUES ('baefaf758eaecc', '发布中', '备用字段');
INSERT INTO `z_state` VALUES ('bratqaefabasfa', '审核中', '备用字段');
