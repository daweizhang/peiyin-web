/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : voice

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-11-02 17:00:18
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
INSERT INTO `a_isadmin` VALUES ('afdasfasberae', 'admincom', '3d414ff33b056f2b', '管理员', null, '男', '969353498@qq.com', '15213478863', '2016-5-5 00:00:00', '2016-11-02 16:59:00', null, '0:0:0:0:0:0:0:1', '1', 'null', 'null', 'null');

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
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581d851e110001', '公众配音，和谐重庆，绿色环保，赶紧参与竞标吧!亲们。', '绿色环保，人人有责，让我们行动起来!地球是我们每个人共同的家园，如果家被破坏了，那么我们将会付出代价。在茫茫宇宙中，有一颗蔚蓝色的星球，她就是我们人类赖以生存的家园-地球。地球母亲给予了我们生命，给予了我们山清水秀、鸟语花香，让我们在她温暖的怀抱里快乐生活。可如今，她被折磨得遍体鳞伤，我们人类在一步步把自己推向灭亡。', '废弃字段', 'DF469980201611010933333333173173', '要求:语气煽情凝重，赋有感情。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581d97888d0003', '香港地产广告—房地产广告语，欢迎配音', ' 华南碧桂园华南碧桂园，每日的星级享受，华南碧桂园，离城不离市，中海锦苑天天不一样的江景\r\n香榭里花园品位是底蕴的境界，广州奥园花园靓景单位多层电梯湖景洋房幸福源自健康家庭广州白云堡山外青山楼外楼，白云仙境白云。', '废弃字段', 'DF836767201611010953395339448212', '要求热情积极的心态去配音');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581da741fb0006', 'TCKING商城广告宣传配音火爆招标，赶紧参与竞标吧！', 'TCKING商城有限公司成立于2007年7月18日,是一个以电子商务和网站建设为主，提供互联网服务和搭建信息交流平台的创新型企业。主要经营:湖北恩施巨众信息网应用及推广，网易-恩施分类信息网独家代理，网站策划建设与开发、企业形象设计与广告。公司本着“服务第一，客户价值至上”的经营思想，以网络资源为平台，运用科技服务于恩施，全心全意打造恩施互联网资源平台。', '废弃字段', 'DF915340201611011010501050207625', '要求：语气亲和。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581dafc0ca0009', 'ORM是一家全球性的3D技术公司成立', 'ORM是一家全球性的3D技术公司，成立于2010年。您可以使用手机模拟自己的3D立体效果！想象很现实。', '空空', 'DF28324720161101102007207495072', 'ORM是一家全球性的3D技术公司，成立于2010年。您可以使用手机模拟自己的3D立体效果！想象很现实。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581db8ef75000b', '加拿大BharcHitects多功能建筑', 'BharcHitects称为B + H公司经过1992年厦门高崎国际机场项目赢在上海设立办事处，这是第一次进驻中国设立办事处的外国建筑公司的之一。在多伦多的B +中的H国家授予001资格许可打造此后编号，设计咨询公司已采取总部设在进攻中的各种项目。', '空空', 'DF108713520161101103009309105897', 'BharcHitects称为B + H公司经过1992年厦门高崎国际机场项目赢在上海设立办事处，这是第一次进驻中国设立办事处的外国建筑公司的之一。在多伦多的B +中的H国家授予001资格许可打造此后编号，设计咨询公司已采取总部设在进攻中的各种项目。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581dbaa975000d', '派拉蒙：派拉蒙图片美国', '派拉蒙电影公司（Paramount电影公司）是一家成立于1912年美国，是电影生产和销售商，是美国历史上最长的，一个电影制作公司阿道夫·朱克（阿道夫·朱克）的成立。 “教父”的代表，“周末夜狂热”，“夺宝奇兵”，“阿甘正传”和“变形金刚”等。', '空空', 'DF86574620161101103202322440675', '派拉蒙电影公司（Paramount电影公司）是一家成立于1912年美国，是电影生产和销售商，是美国历史上最长的，一个电影制作公司阿道夫·朱克（阿道夫·朱克）的成立。 “教父”的代表，“周末夜狂热”，“夺宝奇兵”，“阿甘正传”和“变形金刚”等。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581dbc326e000f', 'KPCB：美国KPCB风险美食', 'KPCB（凯鹏华＆Byers公司，叫KPCB）是全球领先的风险投资公司，成立于1972年，总部位于美国硅谷，TDF基金成立在中国成立于2007年，与合作伙伴基金联合美国管理的基金35亿$。 KPCB成立38年前，大约有500初创企业投资，包括谷歌，AOL，亚马逊，网景，康柏电脑，EA，Sun等国际知名公司。', '空空', 'DF320086201611011033423342432094', 'KPCB（凯鹏华＆Byers公司，叫KPCB）是全球领先的风险投资公司，成立于1972年，总部位于美国硅谷，TDF基金成立在中国成立于2007年，与合作伙伴基金联合美国管理的基金35亿$。 KPCB成立38年前，大约有500初创企业投资，包括谷歌，AOL，亚马逊，网景，康柏电脑，EA，Sun等国际知名公司。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581dbe61b80011', '良好的复制：商务英语字母参考，', '良好的复制是集熟人科技公司的电子邮件征文专用的点，所以需要写电子信件民用标准参考范文有，作为证据，道歉信，产品推荐，公开信，产品推荐等。 ..', '空空', 'DF93319820161101103605365112060', '良好的复制是集熟人科技公司的电子邮件征文专用的点，所以需要写电子信件民用标准参考范文有，作为证据，道歉信，产品推荐，公开信，产品推荐等。 ..');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581dc0506a0013', '美国Acronis Daten发展公司', '的Acronis是在2002年公司成立软件开发公司，总部设在马萨诸塞州沃本市，该公司已开发的软件，以帮助各种规模的企业简化其备份和灾难恢复流程和自动化，安装和管理地理上分散的PC，笔记本电脑，工作站和服务器。', '空空', 'DF1015361201611011038123812746736', '的Acronis是在2002年公司成立软件开发公司，总部设在马萨诸塞州沃本市，该公司已开发的软件，以帮助各种规模的企业简化其备份和灾难恢复流程和自动化，安装和管理地理上分散的PC，笔记本电脑，工作站和服务器。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581dd7d57b0016', 'FoxMovies:20世纪福克斯电影公司', '二十世纪福克斯电影公司(Twentieth (20th) Century Fox Film Corporation)是美国的一家拥有老牌电影制片和发行公司，成立于1935年，由默片时代的大公司福斯电影公司和20世纪影片公司合并而成，是30-40年代好莱坞8家大电影公司之一。', '废弃字段', 'DF1040689201611011103533531097487', '二十世纪福克斯电影公司(Twentieth (20th) Century Fox Film Corporation)是美国的一家拥有老牌电影制片和发行公司，成立于1935年，由默片时代的大公司福斯电影公司和20世纪影片公司合并而成，是30-40年代好莱坞8家大电影公司之一。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581ddcaf40001c', 'PanTone:彩通色彩研究机构,欢迎竞标。谢谢', '彩通(Pantone又称潘通)是美国的一家研究颜色最权威的机构，专门开发和研究色彩而闻名全球;也是色彩系统的供应商，提供许多行业包括印刷及其他关于颜色如数字技术、纺织、塑胶、建筑以及室内设计等的专业色彩选择.', '废弃字段', 'DF74654920161101110911911842186', '彩通(Pantone又称潘通)是美国的一家研究颜色最权威的机构，专门开发和研究色彩而闻名全球;也是色彩系统的供应商，提供许多行业包括印刷及其他关于颜色如数字技术、纺织、塑胶、建筑以及室内设计等的专业色彩选择');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581ddea83c001e', '德国HPP建筑事务所，广告配音!', 'HPP Architects 是德国一家知名的建筑设计事务所，拥有数十年的历史，1933年，Helmut Hentrich 先生成立了一间小型建筑设计工作室，后发展成为合伙人制的建筑设计公司，在过去许多年里直到今天，公司所承接的业务都始终如一地贯彻着公司一贯的宗旨和精神。', '废弃字段', 'DF313906201611011111211121694310', 'HPP Architects 是德国一家知名的建筑设计事务所，拥有数十年的历史，1933年，Helmut Hentrich 先生成立了一间小型建筑设计工作室，后发展成为合伙人制的建筑设计公司，在过去许多年里直到今天，公司所承接的业务都始终如一地贯彻着公司一贯的宗旨和精神。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581de0bc150020', '恒大音乐公司广告配音,赶紧参与竞标吧!', '恒大音乐公司，于2010年12月投资5000万元成立。恒大音乐现已拥有数万首歌曲、录音以及MV、演唱会的版权，是国内最大的音乐版权公司。截止2013年底，恒大音乐已拥有2.2万首歌曲版权，独创中国音乐商业运营新模式。同时，公司拥有大型网络门户、电视频道、视频载体、电台广播、大型户外、潮流杂志等立体化媒体群。', '废弃字段', 'DF1091866201611011113371337573967', '恒大音乐公司，于2010年12月投资5000万元成立。恒大音乐现已拥有数万首歌曲、录音以及MV、演唱会的版权，是国内最大的音乐版权公司。截止2013年底，恒大音乐已拥有2.2万首歌曲版权，独创中国音乐商业运营新模式。同时，公司拥有大型网络门户、电视频道、视频载体、电台广播、大型户外、潮流杂志等立体化媒体群。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581de2754a0022', '音乐1号,电影预告配音，有经验的赶紧参与竞标吧!', '音乐1号拥有迄今为止业内技术最为领先、内容最为全面的无线数字音乐播放系统。它是一款集互联网数字音源、无线音源播放以及无线播放设备管理于一身的无线HIFI音乐应用，时刻为用户打造数字音乐的极致听觉盛宴。\r\n\r\n音乐1号通过WIFI的方式将数字音乐无缝推送至音箱进行播放，它是数字音乐时代获取音乐、推送音乐、收听音乐以及所有类型播放设备的最佳选择。\r\n\r\n音乐1号拥有高保真的互联网数字音乐、海量高清的有声书库、地域全面的在线FM，它打造出互联网音源完美的线下出口。', '废弃字段', 'DF1048127201611011115301530585471', '音乐1号拥有迄今为止业内技术最为领先、内容最为全面的无线数字音乐播放系统。它是一款集互联网数字音源、无线音源播放以及无线播放设备管理于一身的无线HIFI音乐应用，时刻为用户打造数字音乐的极致听觉盛宴。\r\n\r\n音乐1号通过WIFI的方式将数字音乐无缝推送至音箱进行播放，它是数字音乐时代获取音乐、推送音乐、收听音乐以及所有类型播放设备的最佳选择。\r\n\r\n音乐1号拥有高保真的互联网数字音乐、海量高清的有声书库、地域全面的在线FM，它打造出互联网音源完美的线下出口。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581deaa2530025', '妙网电子书设计科技公司广告配音，请竞标!', '公司9年电子杂志设计制作经验，全国一流技术服务，可以为您制作PC版、网页版、手机版、ipad版等电子杂志或电子书。在互联网高速发展的今天，电子刊物的阅读量以及传播速度远远超过了纸质刊物，同时制作成本也远远低于纸质刊物。', '废弃字段', 'DF715661201611011124262426544767', '公司9年电子杂志设计制作经验，全国一流技术服务，可以为您制作PC版、网页版、手机版、ipad版等电子杂志或电子书。在互联网高速发展的今天，电子刊物的阅读量以及传播速度远远超过了纸质刊物，同时制作成本也远远低于纸质刊物。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581decef450027', '海梦卡通配音室，诚心找配音合作。价格丰厚!', '卡通配音室是由Tony于2009年4月开发的一种幼儿英语学习方法，通过模仿动画片段中的原声英语，迅速提高孩子的语言感觉与自然的英语表达能力。', '废弃字段', 'DF832189201611011126562656711891', '卡通配音室是由Tony于2009年4月开发的一种幼儿英语学习方法，通过模仿动画片段中的原声英语，迅速提高孩子的语言感觉与自然的英语表达能力。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581deec2930029', '卡曼尼动漫工作室邀请合作。亲们!赶紧参与竞标吧。', '由辽宁人民艺术剧院、辽宁儿童艺术剧院、沈阳军区话剧团组成的配音机构。不用多说了，在配音界，真人电影的霸主是上译和长影，动画片的王者则是辽艺。诸如《魔神英雄传》、《一休》……拿与日语原声相比，那也是毫不逊色。虽然辽艺前几年因为译制了《天鹰战士》和《百变小樱》几乎身败名裂，但对于无数80后而言，“辽艺”就等于“童年回忆”！ ', '废弃字段', 'DF304819201611011128562856256871', '由辽宁人民艺术剧院、辽宁儿童艺术剧院、沈阳军区话剧团组成的配音机构。不用多说了，在配音界，真人电影的霸主是上译和长影，动画片的王者则是辽艺。诸如《魔神英雄传》、《一休》……拿与日语原声相比，那也是毫不逊色。虽然辽艺前几年因为译制了《天鹰战士》和《百变小樱》几乎身败名裂，但对于无数80后而言，“辽艺”就等于“童年回忆”！ ');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581df0be1b002b', '动画宣传片《三字经里的故事》解说词', '700多年前的南宋，大文豪王应麟编撰成了《三字经》，使之成为我国现存最早、影响最深远的儿童启蒙教材。虽然只有区区千余字，但其却是家喻户晓，脍炙人口。内容包罗万象，涵盖了历史、天文、地理、伦理、道德及古今人物民间传说等知识，在看似浅显的词句中，蕴含了深刻的道理，被称为 “千古一奇书”，“袖里通鉴纲目”，“小型百科全书”，“若能句句知诠解，子史经书一贯通”，因此被誉为“中华蒙学之冠”。', '废弃字段', 'DF83338720161101113106316530086', '700多年前的南宋，大文豪王应麟编撰成了《三字经》，使之成为我国现存最早、影响最深远的儿童启蒙教材。虽然只有区区千余字，但其却是家喻户晓，脍炙人口。内容包罗万象，涵盖了历史、天文、地理、伦理、道德及古今人物民间传说等知识，在看似浅显的词句中，蕴含了深刻的道理，被称为 “千古一奇书”，“袖里通鉴纲目”，“小型百科全书”，“若能句句知诠解，子史经书一贯通”，因此被誉为“中华蒙学之冠”。');
INSERT INTO `bf_translate` VALUES ('40284742581d7ab401581df19012002d', '金融银行办理动画片旁白角色配音内容', '保安甲：“头儿，都走了大半天了，又热又渴的，咱们下车吃点儿饭吧，你看，旁边有个黄泥岗大酒店，五星级的哦。”\r\n杨志：“你小子就知道吃，好吧，哥也饿得肚子呱呱叫了。”\r\n　店小二（晁盖假扮）：“客官里面坐，请问几位吃什么？”\r\n　　杨志：“小二，你们这里有鱼翅没有？”\r\n　　店小二（晁盖假扮）：“有，客官放心点吧！”\r\n　　杨志：“那你们这里有鲍鱼没有？”\r\n　　店小二（晁盖假扮）：有，您来几斤？', '废弃字段', 'DF63063620161101113200320889174', '保安甲：“头儿，都走了大半天了，又热又渴的，咱们下车吃点儿饭吧，你看，旁边有个黄泥岗大酒店，五星级的哦。”\r\n　　杨志：“你小子就知道吃，好吧，哥也饿得肚子呱呱叫了。”\r\n　　店小二（晁盖假扮）：“客官里面坐，请问几位吃什么？”\r\n　　杨志：“小二，你们这里有鱼翅没有？”\r\n　　店小二（晁盖假扮）：“有，客官放心点吧！”\r\n　　杨志：“那你们这里有鲍鱼没有？”\r\n　　店小二（晁盖假扮）：有，您来几斤？');
INSERT INTO `bf_translate` VALUES ('4028474258238374015823b700340027', 'high购配音,欢迎参与竞标!', 'High购，中国首档网购服务类节目，应广大电商企业的要求，隆重推出周热卖促销版，本期促销时间2月1日到2月10日，全网最低价！5100西藏冰川矿泉水，多次获国际矿泉水大奖，绝对零污染，原价235每箱，现价199元。用手机扫一扫屏幕上的二维码，立即下单，更多优惠等你抢。High购周热卖，越抢越high，周周有惊喜！', '废弃字段', 'DF1065399201611021425452545837914', '要求配音要有激情。');

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
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581d851e470002', 'Public voice, harmonious Chongqing, green, and quickly participate in the bidding it! Pro.', '2016-11-01 09:33:31', 'abcd0001', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-09-33-29-3329767247bd6cfa68dda83c2c824a75e7439f6186ceshi.mp3', '不限', 'easge4348gveaeAgse', '', 'Green, everyone is responsible, let us act! Earth is the common home of each of us, if the home is destroyed, then we will pay the price. In the vast universe, there is a blue planet, she is our human survival of the home - the earth. Earth Mother gave us life, gave us a beautiful, beautiful flowers, let us in her warm embrace of a happy life. But now, she was tortured black and blue, we human beings in a step by step to push themselves to destruction.', '2016-11-01-09-33-29-3329952790e7dadcbdf0b7a5ad42621924a383e9f5配音稿文.docx', 'Requirements: tone sensational dignified, endowed with feelings.', '50', '300', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581d851e110001', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581d9788b20004', 'Hong Kong real estate advertising - real estate advertising language, welcome voice', '2016-11-01 09:53:37', 'abcd0001', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-09-53-36-53364732456d7ac0409e12dc34b7a4b5e4f67817e6ceshi.mp3', '男', 'easheraveaeA', '', ' South China Country Garden South China Country Garden, the daily star enjoy, South China Country Garden, from the city not separated from the city, in the sea Jinyuan every day not the same Riverview Champs Elysees garden grade is the realm of heritage, Guangzhou Olympic Garden Garden King unit multi - storey elevator Lake View house from well - being of family Guangzhou Baiyun Fort Castle outside the Castle Peak floor, white clouds Wonderland white clouds.', '2016-11-01-09-53-36-5336482314a3b76b304a2df66e077274fafa124b49配音稿文.docx', 'Requires a warm and positive attitude to voice', '500', '350', 'baefaf758eaecc', '1224', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581d97888d0003', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581da742210007', 'TCKING mall advertising hot dubbing tender, and quickly participate in bidding it!', '2016-11-01 10:10:48', 'abcd0002', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-10-10-47-1047229746dd1a7a26a26233020b71b0e43860dc4dceshi.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'TCKING Mall Co., Ltd. was established in July 18, 2007, is an e-commerce and Web site-based, to provide Internet services and information exchange platform to build innovative enterprises. Main business: Hubei Enshi public information network applications and promotion, Netease - Enshi classified information network exclusive agent, site planning and construction and development, corporate image design and advertising. In the company of \"service first, customer value first\" business ideas to network resources as a platform, the use of science and technology services in Enshi, and wholeheartedly to build Enshi Internet resources platform.', '2016-11-01-10-10-47-1047675899f39e465e56fc976571028a7e7e9fd7ae配音稿文.docx', 'Requirements: tone affinity.', '500', '500', 'baefaf758eaecc', '9', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581da741fb0006', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581dafc0eb000a', 'ORM is a global 3D technology company founded', '2016-11-01 10:20:05', 'jdbcbdqn', 'beawfeasca', '523456rgbdfseg', '2016-11-01-10-20-05-205585727c0e5f0724700bbadd413b3342a05286bceshi.mp3', 'Unlimited', 'sbnd34egfasg4fasdg23', 'nullnull', 'ORM is a global 3D technology company founded in 2010. You can use the phone to simulate their own 3D stereo effect! Imagine very realistic.', '2016-11-01-10-20-05-205445947d9c88576146bbdd27e64e9fe6a2aba99配音稿文.docx', 'ORM is a global 3D technology company founded in 2010. You can use the phone to simulate their own 3D stereo effect! Imagine very realistic.', '50', '594', 'baefaf758eaecc', '10', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '2', '205', '111', '40284742581d7ab401581dafc0ca0009', '1', '12345');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581db8ef8e000c', 'Kanada BharcHitects vielseitig Bauunternehmen', '2016-11-01 10:30:08', 'jdbcbdqn', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-10-30-07-307178921cdf9e7ee275d81b5978f0371c917a56dceshi.mp3', 'Unlimited', 'sbnd34egfasg4fasdg23', 'nullnull', 'BharcHitects bezeichnet als B + H Gesellschaft nach 1992 Xiamen Gaoqi International Airport Projekt gewinnen Büros in Shanghai einzurichten, ist es eines der ersten in China stationiert Büros in ausländischen Architekturbüros einzurichten. Danach vergeben nummeriert 001 Qualifizierungs Baulizenz, Design-Beratung in Toronto B + H in dem Land hat seinen Hauptsitz in verschiedene Projekte in Angriff nehmen.', '2016-11-01-10-30-07-307971559b9681ab6ecf8aa2a1c825fa48d2ce239配音稿文.docx', 'BharcHitects bezeichnet als B + H Gesellschaft nach 1992 Xiamen Gaoqi International Airport Projekt gewinnen Büros in Shanghai einzurichten, ist es eines der ersten in China stationiert Büros in ausländischen Architekturbüros einzurichten. Danach vergeben nummeriert 001 Qualifizierungs Baulizenz, Design-Beratung in Toronto B + H in dem Land hat seinen Hauptsitz in verschiedene Projekte in Angriff nehmen.', '585', '1512', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx002', '0', '205', '111', '40284742581d7ab401581db8ef75000b', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581dbaa998000e', 'Paramount : Paramount Pictures USA', '2016-11-01 10:32:01', 'jdbcbdqn', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-10-32-00-3203648156f748fc563f047a4f9951f25e0a2bdf8ceshi.mp3', 'Unlimited', 'sbnd34egfasg4fasdg23', 'nullnull', 'Paramount Studios (Paramount Pictures Corporation) ist ein US in 1912 gegründet, ist die Filmhersteller und Vertriebsgesellschaft , ist die längste in der Geschichte der USA, eine Filmproduktionsfirma von Adolph Zukor (Adolph Zukor) gegründet. Der Vertreter von \"The Godfather\", \"Saturday Night Fever\", \"Indiana Jones\", \"Forrest Gump\" und \"Transformers\" und so weiter.', '2016-11-01-10-32-00-320287905ed3fd4e61dd1de262c239484471025de配音稿文.docx', 'Paramount Studios (Paramount Pictures Corporation) ist ein US in 1912 gegründet, ist die Filmhersteller und Vertriebsgesellschaft , ist die längste in der Geschichte der USA, eine Filmproduktionsfirma von Adolph Zukor (Adolph Zukor) gegründet. Der Vertreter von \"The Godfather\", \"Saturday Night Fever\", \"Indiana Jones\", \"Forrest Gump\" und \"Transformers\" und so weiter.', '55', '1368', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx003	', '0', '205', '111', '40284742581d7ab401581dbaa975000d', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581dbc329e0010', 'KPCB: Vereinigte Staaten KPCB-Venture-Unterne', '2016-11-01 10:33:41', 'jdbcbdqn', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-10-33-41-334166965457dc9989a0882da90a395d28985af652ceshi.mp3', 'Unlimited', 'sbnd34egfasg4fasdg23', 'nullnull', 'KPCB (Kleiner Perkins Caulfield & Byers, genannt KPCB) ist ein weltweit führender Venture Capital-Firma, 1972 gegründet und hat seinen Hauptsitz in Silicon Valley, im Jahr 2007 TDF Fonds gegründet in China gegründet wurde, und der Partnerschaftsfonds USA gemeinsam Fonds über verwaltete 3500000000 $. Vor 38 Jahren gegründet, hat KPCB etwa 500 Start-ups investiert, darunter Google, AOL, Amazon, Netscape , Compaq Computer, EA, Sun und andere namhafte internationale Unternehmen.', '2016-11-01-10-33-41-334163431294392120785c6b247e046d355190ad4f配音稿文.docx', 'KPCB (Kleiner Perkins Caulfield & Byers, genannt KPCB) ist ein weltweit führender Venture Capital-Firma, 1972 gegründet und hat seinen Hauptsitz in Silicon Valley, im Jahr 2007 TDF Fonds gegründet in China gegründet wurde, und der Partnerschaftsfonds USA gemeinsam Fonds über verwaltete 3500000000 $. Vor 38 Jahren gegründet, hat KPCB etwa 500 Start-ups investiert, darunter Google, AOL, Amazon, Netscape , Compaq Computer, EA, Sun und andere namhafte internationale Unternehmen.', '500', '888', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', '205', '111', '40284742581d7ab401581dbc326e000f', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581dbe61e80012', 'Gut Copy: Business-Englisch-Buchstaben-Refere', '2016-11-01 10:36:04', 'jdbcbdqn', 'baerawvaecaeade', '523456rg3467eg', '2016-11-01-10-36-04-36478706051edd49a4988e7535542449677cd551dceshi.mp3', 'Unlimited', 'sbnd34egfasg4fasdg23', 'nullnull', 'Gut Copy ist ein Ort der Sammlung Gewidmet von Bekannten Technologie-Unternehmen in der E-Mail-Essay, so Müssen elektronische Briefe zu schreiben zivilen EINEN Standardreferenzmodell Essay Zu haben, Wie Zeugnisse, EINEN Brief der Entschuldigung, Produktempfehlungen, Ankündigung Briefe, Produktempfehlungen , usw ..', '2016-11-01-10-36-04-36419407575429bf707c8b0b5952ba1bcd4b39378配音稿文.docx', 'Gut Copy ist ein Ort der Sammlung Gewidmet von Bekannten Technologie-Unternehmen in der E-Mail-Essay, so Müssen elektronische Briefe zu schreiben zivilen EINEN Standardreferenzmodell Essay Zu haben, Wie Zeugnisse, EINEN Brief der Entschuldigung, Produktempfehlungen, Ankündigung Briefe, Produktempfehlungen , usw ..', '423', '3120', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0', '205', '111', '40284742581d7ab401581dbe61b80011', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581dc050930014', 'US Acronis Daten Development Corporation', '2016-11-01 10:38:11', 'jdbcbdqn', 'baerawvaecaeade', 'basehe3264356', '2016-11-01-10-38-10-3810691211d164e519d87bd8547a3e47ef1354b1bcceshi.mp3', 'Unlimited', 'sbnd34egfasg4fasdg23', 'nullnull', 'Acronis ist ein Unternehmen im Jahr 2002, Software-Entwicklungsfirma gegründet, mit Sitz in Woburn, Massachusetts, hat sich das Unternehmen Software entwickelt, um Unternehmen aller Größen zu helfen, ihre Backup- und Disaster-Recovery-Prozesse zu vereinfachen und zu automatisieren, zu installieren und zu verwalten geografisch verteilten PC, Notebooks, Workstations und Servern.', '2016-11-01-10-38-11-3811977027d800e319d2954d1408ea40c1f1b78996配音稿文.docx', 'Acronis ist ein Unternehmen im Jahr 2002, Software-Entwicklungsfirma gegründet, mit Sitz in Woburn, Massachusetts, hat sich das Unternehmen Software entwickelt, um Unternehmen aller Größen zu helfen, ihre Backup- und Disaster-Recovery-Prozesse zu vereinfachen und zu automatisieren, zu installieren und zu verwalten geografisch verteilten PC, Notebooks, Workstations und Servern.', '450', '2712', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', '205', '111', '40284742581d7ab401581dc0506a0013', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581dd7d59a0017', 'FoxMovies: Twentieth Century Fox Film Company', '2016-11-01 11:03:52', 'qwer8520', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-11-03-51-3515088540548d575a3770e2570a6e06c7e099e55ceshi.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Twentieth Century Fox Film Corporation (Twentieth Century Fox Film Corporation) is a United States has a veteran film production and distribution company, founded in 1935, by the silent film company Fox and the 20th century film company merged From 30 to 40 years Hollywood 8 one of the major film companies.', '2016-11-01-11-03-51-3515670884095f625f050865cdc40037df632105配音稿文.docx', 'Twentieth Century Fox Film Corporation (Twentieth Century Fox Film Corporation) is a United States has a veteran film production and distribution company, founded in 1935, by the silent film company Fox and the 20th century film company merged From 30 to 40 years Hollywood 8 one of the major film companies.', '350', '350', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581dd7d57b0016', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581ddcaf75001d', 'PanTone: Pantone color research institutions, welcomed the bid. Thank you', '2016-11-01 11:09:10', 'qwer8520', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-11-09-10-9108605937909d2c17915f9a17c651ae5407933d8jbshiyin.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Pantone (Pantone, also known as Pantone) is the United States a study of the color of the most authoritative body, specializing in the development and research of color is known around the world; is also a color system supplier, providing many industries, including printing and other colors, such as digital technology, textile , Plastic, architectural and interior design, and other professional color choices.', '2016-11-01-11-09-10-910111026cf022230cb803b17b89e5fd34602be5d配音稿文.docx', 'Pantone (Pantone, also known as Pantone) is the United States a study of the color of the most authoritative body, specializing in the development and research of color is known around the world; is also a color system supplier, providing many industries including printing and other color, such as digital technology, textile , Plastic, architectural and interior design, and other professional color choices', '252', '585', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581ddcaf40001c', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581ddea85d001f', 'Germany HPP Architects, advertising dubbing!', '2016-11-01 11:11:18', 'qwer8520', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-11-11-16-1116602719aa286c2e888d6f6cd2b68f0e934cec01ceshi.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'HPP Architects is a well-known German architectural design firm with decades of history. In 1933, Helmut Hentrich established a small architectural design studio, which later evolved into a partner-based architectural design company that, for many years, In today, the company to undertake the business are consistently carrying out the company\'s consistent purpose and spirit.', '2016-11-01-11-11-16-1116542066cd562e7d11d6e3badf7e53360f713bcc配音稿文.docx', 'HPP Architects is a well-known German architectural design firm with decades of history. In 1933, Helmut Hentrich established a small architectural design studio, which later evolved into a partner-based architectural design company that, for many years, In today, the company to undertake the business are consistently carrying out the company\'s consistent purpose and spirit.', '520', '856', 'baefaf758eaecc', '8', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '2', null, '222', '40284742581d7ab401581ddea83c001e', '1', '12345');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581de0bc470021', 'Hengda music company advertising dubbing, and quickly participate in bidding it!', '2016-11-01 11:13:35', 'qwer8520', 'baerawvaecaeade', 'baseha4tshtsg', '2016-11-01-11-13-34-13349791434d0eff2294b9d47db256d84c1f8dfee8ceshi.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Hengda music company, in December 2010 to invest 50 million yuan was established. Hengda music now has tens of thousands of songs, recording and MV, concert copyright, is the largest music copyright company. As of the end of 2013, Hengda music has 22,000 songs copyright, original Chinese music commercial operation of the new model. At the same time, the company has a large network of portals, television channels, video carriers, radio, large outdoor, fashion magazines, and other three-dimensional media groups.', '2016-11-01-11-13-34-13346485903dfceee4dd18d7ad148ea84bcb47c726配音稿文.docx', 'Hengda music company, in December 2010 to invest 50 million yuan was established. Hengda music now has tens of thousands of songs, recording and MV, concert copyright, is the largest music copyright company. As of the end of 2013, Hengda music has 22,000 songs copyright, original Chinese music commercial operation of the new model. At the same time, the company has a large network of portals, television channels, video carriers, radio, large outdoor, fashion magazines, and other three-dimensional media groups.', '365', '888', 'baefaf758eaecc', '0', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581de0bc150020', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581de2757e0023', 'Music No. 1, movie preview dubbing, experienced quickly to participate in bidding it!', '2016-11-01 11:15:28', 'qwer8520', 'baerawvaecaeade', 'baseha4tshsegba', '2016-11-01-11-15-27-15275924303ce3e841723b4f6b8e513316f3aeb263ceshi.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Music 1 has so far the industry\'s most advanced technology, the most comprehensive content of the wireless digital music playback system. It is a set of Internet digital audio source, wireless audio player and wireless playback device management in a wireless HIFI music applications, the moment for users to create the ultimate auditory feast of digital music. Music No. 1 through the WIFI way to seamlessly push digital music to the speaker for playback, it is the digital music age to obtain music, push music, listen to music and all types of playback equipment, the best choice. Music on the 1st has a high-fidelity Internet digital music, massive HD audio books, a comprehensive online FM, it creates a perfect line of Internet audio outlet.', '2016-11-01-11-15-27-1527983036a03cb6987441977de959f3c6ac661eb1配音稿文.docx', 'Music 1 has so far the industry\'s most advanced technology, the most comprehensive content of the wireless digital music playback system. It is a set of Internet digital audio source, wireless audio player and wireless playback device management in a wireless HIFI music applications, the moment for users to create the ultimate auditory feast of digital music. Music No. 1 through the WIFI way to seamlessly push digital music to the speaker for playback, it is the digital music age to obtain music, push music, listen to music and all types of playback equipment, the best choice. Music on the 1st has a high-fidelity Internet digital music, massive HD audio books, a comprehensive online FM, it creates a perfect line of Internet audio outlet.', '555', '965', 'baefaf758eaecc', '38', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '2', null, '222', '40284742581d7ab401581de2754a0022', '1', '12345');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581deaa2760026', 'Miao net e-book design technology companies advertising voice, please bid!', '2016-11-01 11:24:24', 'zxcv1234', 'baerawvaecaeade', '523456rg3467eg', '2016-11-01-11-24-23-24233578187c151a066176d26b2cd0872ea334022djbshiyin.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Company 9 years experience in e-magazine design, the first-class technical services, you can create PC version, web version, mobile version, ipad version of e-magazines or e-books. In the rapid development of the Internet today, electronic publications, reading and transmission speed far more than paper publications, while production costs are far lower than paper publications.', '2016-11-01-11-24-23-242375948823333242587e41b714a01a5b3f6a54ca配音稿文.docx', 'Company 9 years experience in e-magazine design, the first-class technical services, you can create PC version, web version, mobile version, ipad version of e-magazines or e-books. In the rapid development of the Internet today, electronic publications, reading and transmission speed far more than paper publications, while production costs are far lower than paper publications.', '558', '856', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581deaa2530025', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581decef6e0028', 'Sea dream cartoon audio room, sincerely looking for voice cooperation. Price is lucrative!', '2016-11-01 11:26:55', 'zxcv1234', 'baerawvaecaeade', '523456rgbdsbrdg', '2016-11-01-11-26-54-2654110798a10edab1f29a9841f58fe866fa337432ceshi.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Cartoon dubbing room is developed by Tony in April 2009, a child English learning methods, by imitating the animation in the original soundtrack English, and quickly improve the child\'s language and natural English expression.', '2016-11-01-11-26-54-2654738786435eef064601baa2068c7602ae6adf50配音稿文.docx', 'Cartoon dubbing room is developed by Tony in April 2009, a child English learning methods, by imitating the animation in the original soundtrack English, and quickly improve the child\'s language and natural English expression.', '125', '450', 'baefaf758eaecc', '1', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581decef450027', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581deec2b3002a', 'Cammani Animation Studio invites co-operation. Quickly participate in the bidding.', '2016-11-01 11:28:54', 'zxcv1234', 'baerawvaecaeade', '523456rg3467eg', '2016-11-01-11-28-53-285379112598724daf6c7c972e30c3f941e7462fbjbshiyin.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'By the Liaoning People\'s Art Theater, Liaoning Children\'s Art Theater, Shenyang Military Region Repertory Theater composed of the voice. Needless to say, in the dubbing industry, the reality of the film\'s overlord is the translation and long shadow, the king of the animation is Liao Yi. Such as \"Devil Heroes\", \"a break\" ... ... Take with the Japanese original sound compared to that is no less. Although Liao Yi a few years ago because of the translation of the \"Eagle Warrior\" and \"Variety Sakura\" almost ruin, but for many 80, the \"Liao Yi\" is equivalent to \"childhood memories\"!', '2016-11-01-11-28-53-2853399389dc46c07a7540facee3a680f2bd774213配音稿文.docx', 'By the Liaoning People\'s Art Theater, Liaoning Children\'s Art Theater, Shenyang Military Region Repertory Theater composed of the voice. Needless to say, in the dubbing industry, the reality of the film\'s overlord is the translation and long shadow, the king of the animation is Liao Yi. Such as \"Devil Heroes\", \"a break\" ... ... Take with the Japanese original sound compared to that is no less. Although Liao Yi a few years ago because of the translation of the \"Eagle Warrior\" and \"Variety Sakura\" almost ruin, but for many 80, the \"Liao Yi\" is equivalent to \"childhood memories\"!', '520', '745', 'baefaf758eaecc', '5', '3g56a6sdgs65ed6v5d0004', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581deec2930029', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581df0be41002c', 'Commentary on the Story of the Three Character Classic in the Animation', '2016-11-01 11:31:04', 'zxcv1234', 'baerawvaecaeade', '523456rgbdsbrdg', '2016-11-01-11-31-03-31349227ccd47a57cc4dbc44703e28e117e9d236jbshiyin.mp3', '不限', 'sbnd34egfasg4fasdg23', '', '700 years ago in the Southern Song Dynasty, the great writer Wang Yinglin compiled into the \"Three Character Classic\", making it the earliest existing, the most far-reaching impact of children\'s enlightenment materials. Although only a mere thousand words, but it is a household name, win universal praise. The contents of all-encompassing, covering the history, astronomy, geography, ethics, morals and folklore of ancient and modern knowledge, in the seemingly simple words, contains a profound truth, known as \"eternal a strange book\" \"\" Encyclopedia of the Book of Songs \",\" Small Encyclopedia \",\" If the sentence to know the interpretation of the book through the history of a consistent \", thus known as\" the highest in China.', '2016-11-01-11-31-03-3136160546a6136550e1ccee33e08e7837941ff04配音稿文.docx', '700 years ago in the Southern Song Dynasty, the great writer Wang Yinglin compiled into the \"Three Character Classic\", making it the earliest existing, the most far-reaching impact of children\'s enlightenment materials. Although only a mere thousand words, but it is a household name, win universal praise. The contents of all-encompassing, covering the history, astronomy, geography, ethics, morals and folklore of ancient and modern knowledge, in the seemingly simple words, contains a profound truth, known as \"eternal a strange book\" \"\" Encyclopedia of the Book of Songs \",\" Small Encyclopedia \",\" If the sentence to know the interpretation of the book through the history of a consistent \", thus known as\" the highest in China.', '700', '452', 'baefaf758eaecc', '2', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581df0be1b002b', '0', '1');
INSERT INTO `b_tender` VALUES ('40284742581d7ab401581df1904e002e', 'The finance bank handles the voice - over content of the cartoon narration', '2016-11-01 11:31:58', 'zxcv1234', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-01-11-31-56-3156513911b8c7d4966ddae9eadc0160513cf766d0jbshiyin.mp3', '不限', 'sbnd34egfasg4fasdg23', '', 'Security A: \"head, have gone most of the day, and hot and thirsty, let \'s get off to eat some rice, you see, next to a Wong Nai Kong Hotel, five - star Oh. Yang Zhi: \"You know the boy to eat, well, brother also hungry belly quack. Shop two (Chao Gai posing): \"Keguan sit inside, ask what to eat?\" Yang Zhi: \"Little two, you do not have shark fin here? Shop second (Chao Gai posing): \"Yes, Keguan assured it!\" Yang Zhi: \"Then you do not have abalone?\" Shop two (Chao cover posing): Yes, you come a few pounds?', '2016-11-01-11-31-56-315690006131e3c260ef325520731cede49fdad613配音稿文.docx', 'Security A: \"head, have gone most of the day, and hot and thirsty, let \'s get off to eat some rice, you see, next to a Wong Nai Kong Hotel, five - star Oh. Yang Zhi: \"You know the boy to eat, well, brother also hungry belly quack. Shop two (Chao Gai posing): \"Keguan sit inside, ask what to eat?\" Yang Zhi: \"Little two, you do not have shark fin here? Shop second (Chao Gai posing): \"Yes, Keguan assured it!\" Yang Zhi: \"Then you do not have abalone?\" Shop two (Chao cover posing): Yes, you come a few pounds?', '865', '785', 'baefaf758eaecc', '15', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '0', null, '222', '40284742581d7ab401581df19012002d', '0', '1');
INSERT INTO `b_tender` VALUES ('4028474258238374015823b7005f0028', 'High purchase voice, welcome to participate in the bidding!', '2016-11-02 14:25:43', 'accp1234', 'baerawvaecaeade', '523456rgbdfseg', '2016-11-02-14-25-41-25414700889d2a94578afaf9d49c96a8251a313683ceshi.mp3', '男', 'sbnd34egfasg4fasdg23', '', 'High purchase, China\'s first online shopping service program, should the majority of electricity business requirements, the grand launch of Hot week promotional version of the current promotion time February 1 to February 10, the whole network the lowest! 5100 Tibet glacier mineral water, many times by the international mineral water award, absolute zero pollution, original 235 per case, price 199 yuan. Sweep the phone with a two-dimensional code on the screen, immediately orders, more concessions waiting for you to grab. High buy week hot, the more grab the more high, Zhou Zhou surprise!', '2016-11-02-14-25-41-254181287509c7e0fb91de6e6a5e78c91f0032c69配音稿文.docx', 'Requires a passionate voice.', '500', '301', 'baefaf758eaecc', '14', '3g56a6sdgs65ed6vgss008', 'as648se5br5d5s24s5dx001', '2', null, '222', '4028474258238374015823b700340027', '4', '12345');

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
INSERT INTO `inusers` VALUES ('40234742gbhe7ab401581e023273738', 'brafart4aga', '1a52276c72210290066daccaa262e982', 'V963521', '18.png', '男', '1992-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-四川', '2016-11-01 11:50:30', '', null, '0', '1', 'easheraveaeA', '普通话', '商业广告♫电子书♫教育/教学♫语音应答♫纪录片', '娓娓道来♫激昂高亢♫童音童趣♫自然亲和♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40234742gbhe7ab401581e0280c10033', 'braert4aga', '1a52276c72210290066daccaa262e982', 'V741258', '12.png', '男', '1992-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-四川', '2016-11-01 11:50:30', '', null, '0', '1', 'easheraveaeA', '普通话', '商业广告♫电子书♫教育/教学♫语音应答♫纪录片', '娓娓道来♫激昂高亢♫童音童趣♫自然亲和♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742341d7ab401581e0c7e160036', 'ewrtwert', '9a853618613fc2de066daccaa262e982', 'V778546', '9.png', '男', '1990-11-08', '', '', '', '965449898@qq.com', '13788525856', '中国-贵州', '2016-11-01 12:01:25', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '吴语♫普通话', '商业广告♫电子书♫纪录片', '娓娓道来♫激昂高亢♫浑厚大气♫自然亲和', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742341d7ab401581e0c7e888888', 'ewrtwertf', '9a853618613fc2de066daccaa262e982', 'V782587', '16.png', '男', '1990-11-08', '', '', '', '965449898@qq.com', '13788525856', '中国-贵州', '2016-11-01 12:01:25', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '吴语♫普通话', '商业广告♫电子书♫纪录片', '娓娓道来♫激昂高亢♫浑厚大气♫自然亲和', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742378378b401581anfasc90034', 'nwernaearfwa', 'f400980e04b1517c066daccaa262e982', 'V874125', '19.png', '男', '1990-11-15', '', '', '', '965449898@qq.com', '13788635258', '中国-四川', '2016-11-01 11:55:38', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '卡通♫商业广告', '激昂高亢♫娓娓道来♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401542faac8778282', 'dfghsdfaabsd', 'a4cef213b3b4da8b066daccaa262e982', 'V852852', '22.png', '男', '2016-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-海南', '2016-11-01 12:17:01', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '商业广告♫纪录片♫教育/教学♫卡通♫语音应答', '娓娓道来♫自然亲和♫童音童趣', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401542faac87b0037', 'dfghsdfasd', 'a4cef213b3b4da8b066daccaa262e982', 'V968523', '10.png', '男', '2016-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-海南', '2016-11-01 12:17:01', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '商业广告♫纪录片♫教育/教学♫卡通♫语音应答', '娓娓道来♫自然亲和♫童音童趣', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581anfasc90034', 'nwernearfwa', 'f400980e04b1517c066daccaa262e982', 'V963258', '13.png', '男', '1990-11-15', '', '', '', '965449898@qq.com', '13788635258', '中国-四川', '2016-11-01 11:55:38', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '卡通♫商业广告', '激昂高亢♫娓娓道来♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581anh35c90034', '85272722', 'f400980e04b1517c066daccaa262e982', 'V856955', '3.png', '男', '1990-11-15', '', '', '', '965449898@qq.com', '13788635258', '中国-四川', '2016-11-01 11:55:38', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '卡通♫商业广告', '激昂高亢♫娓娓道来♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581d7b7c380000', 'abcd0001', '959d0a2a9d41be3c066daccaa262e982', 'C10680', 'renwuf.png', '男', '', '', '', '', '969353498@qq.com', '15213470001', '中国-北京市', '2016-11-01 09:23:01', null, null, '0', '0', null, null, null, null, 'gseaeffasdasc', '0', null);
INSERT INTO `inusers` VALUES ('40284742581d7ab401581d98b2ad0005', 'abcd0002', '113deef5c5f3bdf6066daccaa262e982', 'C89367', 'renwuf.png', '男', '', '', '', '', '969353498@qq.com', '15213470002', '中国-重庆', '2016-11-01 09:54:56', null, null, '0', '0', null, null, null, null, 'gseaeffasdasc', '0', null);
INSERT INTO `inusers` VALUES ('40284742581d7ab401581da8f1aa0008', 'jdbcbdqn', '21fd4aceb0d86a12066daccaa262e982', 'C58699', 'renwuf.png', 'male', '', '', '', '', '965449898@qq.com', '023-22-852852', 'U.S.A-华盛顿 Washington', '2016-11-01 10:12:41', null, null, '1', '0', null, null, null, null, 'gseaeffasdasc', '0', null);
INSERT INTO `inusers` VALUES ('40284742581d7ab401581dd68e930015', 'qwer8520', '6e1a5ff22d0a9091066daccaa262e982', 'C40041', 'renwuf.png', '男', '', '', '', '', '969353498@qq.com', '15213478863', '中国-北京市', '2016-11-01 11:02:30', null, null, '2', '0', null, null, null, null, 'gseaeffasdasc', '0', null);
INSERT INTO `inusers` VALUES ('40284742581d7ab401581de795c00024', 'zxcv1234', '5265feb60f143612066daccaa262e982', 'C98570', 'renwuf.png', '男', '', '', '', '', '965449898@qq.com', '15213478863', '中国-重庆', '2016-11-01 11:21:06', null, null, '0', '0', null, null, null, null, 'gseaeffasdasc', '0', null);
INSERT INTO `inusers` VALUES ('40284742581d7ab401581df47dd3002f', 'poiu0123', '4b061c21c0cb3a91066daccaa262e982', 'V544996', '2016-11-01-11-38-23-382331868999995164b0c6e7e81a78f115aad2ac52J$RGCO[QCKLWT41SWOVUQ0X.png', '男', '1996-09-25', null, null, null, '847078739@qq.com', '15213478863', '中国-四川', '2016-11-01 11:35:12', null, null, '0', '1', 'easge4348gveaeAgse', '吴语♫普通话♫闽语♫其他', '纪录片♫电子书♫卡通', '娓娓道来♫浑厚大气♫自然亲和♫稳重磁性', 'berwartaedfeee', '0', '5-10个月');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581df47dd30f02f', 'asdfffff', '4b061c21c0cb3a91066daccaa262e982', 'V562721', '6.png', '男', '1996-09-25', '', '', '', '847078739@qq.com', '15213478863', '中国-四川', '2016-11-01 11:35:12', '', null, '0', '1', 'easge4348gveaeAgse', '吴语♫普通话♫闽语♫其他', '纪录片♫电子书♫卡通', '娓娓道来♫浑厚大气♫自然亲和♫稳重磁性', 'berwartaedfeee', '0', '5-10个月');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581e0280c10033', 'cc123456', '1a52276c72210290066daccaa262e982', 'V632651', '2016-11-01-11-54-15-5415486606f8d0904d93eb40ae15876ffffe04db88vasdv.png', '男', '1992-11-10', null, null, null, '965449898@qq.com', '15213478863', '中国-四川', '2016-11-01 11:50:30', null, null, '0', '1', 'easheraveaeA', '普通话', '商业广告♫电子书♫教育/教学♫语音应答♫纪录片', '娓娓道来♫激昂高亢♫童音童趣♫自然亲和♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581e073390034', 'qwetqrqf', 'f400980e04b1517c066daccaa262e982', 'V889654', '8.png', '男', '1990-11-15', '', '', '', '965449898@qq.com', '13788635258', '中国-四川', '2016-11-01 11:55:38', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '卡通♫商业广告', '激昂高亢♫娓娓道来♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581e0735c90034', 'yy123456', 'f400980e04b1517c066daccaa262e982', 'V706152', '2016-11-01-11-57-09-57956364f93e4ec28e86ec834bdc83e356ec2951f.png', '男', '1990-11-15', null, null, null, '965449898@qq.com', '13788635258', '中国-四川', '2016-11-01 11:55:38', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '卡通♫商业广告', '激昂高亢♫娓娓道来♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581e0c7e160036', 'asdfasdf', '9a853618613fc2de066daccaa262e982', 'V364341', '2016-11-01-12-02-37-237149391cd0d1de7040e04363e49263e8c842caefss.png', '男', '1990-11-08', null, null, null, '965449898@qq.com', '13788525856', '中国-贵州', '2016-11-01 12:01:25', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '吴语♫普通话', '商业广告♫电子书♫纪录片', '娓娓道来♫激昂高亢♫浑厚大气♫自然亲和', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab401581e1ac87b0037', 'rr123456', 'a4cef213b3b4da8b066daccaa262e982', 'V447640', 'txtub.png', '男', '2016-11-10', null, null, null, '965449898@qq.com', '15213478863', '中国-海南', '2016-11-01 12:17:01', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '商业广告♫纪录片♫教育/教学♫卡通♫语音应答', '娓娓道来♫自然亲和♫童音童趣', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7ab40158ges7dd3002f', 'poiu52587', '4b061c21c0cb3a91066daccaa262e982', 'V123520', '1.png', '男', '1996-09-25', '', '', '', '847078739@qq.com', '15213478863', '中国-四川', '2016-11-01 11:35:12', '', null, '0', '1', 'easge4348gveaeAgse', '吴语♫普通话♫闽语♫其他', '纪录片♫电子书♫卡通', '娓娓道来♫浑厚大气♫自然亲和♫稳重磁性', 'berwartaedfeee', '0', '5-10个月');
INSERT INTO `inusers` VALUES ('40284742581d7ab4015ff81df47dd3002f', 'rr123456aa', 'a4cef213b3b4da8b066daccaa262e982', 'V866963', '5.png', '男', '2016-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-海南', '2016-11-01 12:17:01', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '商业广告♫纪录片♫教育/教学♫卡通♫语音应答', '娓娓道来♫自然亲和♫童音童趣', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d7abagffff81df47dd3002f', 'hwnnwwqsfa', 'a4cef213b3b4da8b066daccaa262e982', 'V666666', '15.png', '男', '2016-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-海南', '2016-11-01 12:17:01', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '商业广告♫纪录片♫教育/教学♫卡通♫语音应答', '娓娓道来♫自然亲和♫童音童趣', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581d883agffff81df47dd3002f', '342rgh43a', 'a4cef213b3b4da8b066daccaa262e982', 'V741596', '21.png', '男', '2016-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-海南', '2016-11-01 12:17:01', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '商业广告♫纪录片♫教育/教学♫卡通♫语音应答', '娓娓道来♫自然亲和♫童音童趣', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742581e858a01581e94a3c10000', 'chenchao', 'a57cee6498dbec9a066daccaa262e982', 'V632462', '2016-11-02-11-47-09-479907364a3c124666e6125b3e7aa3995c65df7908888.png', '男', '2016-11-16', null, null, null, '969353498@qq.com', '1383838438', '中国-北京市', '2016-11-01 14:30:07', null, null, '2', '1', 'sbnd34egfasg4fasdg23', '粤语♫吴语♫赣语♫普通话', '商业广告♫纪录片♫教育/教学♫电子书', '娓娓道来♫自然亲和♫风趣俏皮♫童音童趣', 'berwartaedfeee', '0', '1-2年');
INSERT INTO `inusers` VALUES ('402847425822a2a7015822b808860000', '847078739', 'da630e28507edf347ca705c8908625d7', 'V158251', '2016-11-02-09-53-23-5323298665e0f3a9b2ec2503465edc92fe0d4e4c2blsnw.png', '男', '2016-11-17', null, null, null, '847078739@qq.com', '152134878863', '中国-重庆', '2016-11-02 09:47:15', null, null, '6', '1', 'sbnd34egfasg4fasdg23', '普通话', '电子书♫商业广告♫纪录片♫教育/教学', '娓娓道来♫自然亲和♫激昂高亢♫浑厚大气♫童音童趣♫其他风格', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('4028474258238374015823b1b05c0026', 'accp1234', '8c3393c859f91fab066daccaa262e982', 'C32330', 'renwuf.png', '男', '', '', '', '', '969353498@qq.com', '15213478863', '中国-四川', '2016-11-02 14:19:57', null, null, '1', '0', null, null, null, null, 'gseaeffasdasc', '0', null);
INSERT INTO `inusers` VALUES ('402847425823e09b015823ee99bb0000', 'chaincvf', '557e58cae488e32f066daccaa262e982', 'V298699', 'txtub.png', '男', '2009-11-07', null, null, null, '847078739@qq.com', '1383838438', '中国-四川', '2016-11-02 15:26:29', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话♫台语♫粤语', '电子书♫卡通♫教育/教学♫纪录片', '浑厚大气♫自然亲和♫激昂高亢♫娓娓道来', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('402847425823f7d2015823f9d0d20000', 'test1234', '487093d9b02b590a066daccaa262e982', 'V866388', 'txtub.png', '男', '1987-11-04', null, null, null, '847078739@qq.com', '15213478863', '中国-重庆', '2016-11-02 15:38:44', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '电子书♫纪录片', '激昂高亢♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('402847425823f7d2015823fbb7dd0001', 'test4321', '8b6d7fd00f96306d066daccaa262e982', 'V130211', 'txtub.png', '男', '1995-03-12', null, null, null, '847078739@qq.com', '15213478863', '中国-重庆', '2016-11-02 15:40:48', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话', '纪录片♫商业广告♫电子书', '激昂高亢♫自然亲和♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('402847425823f7d201582409c4840003', 'wojiaochen', '0709e63b7006a1764457f17f197a9f6c', 'V112123', 'txtub.png', '男', '1994-11-18', null, null, null, '847078739@qq.com', '15213478863', '中国-四川', '2016-11-02 15:56:09', null, null, '0', '1', 'sbnd34egfasg4fasdg23', '普通话♫吴语', '卡通♫电子书♫商业广告', '娓娓道来♫激昂高亢♫风趣俏皮', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40284742582416b901582418443a0000', 'xiaochen', 'ba4eeca1427543fc066daccaa262e982', 'V106217', 'txtub.png', '男', '1986-11-12', null, null, null, '847078739@qq.com', '15213478559', '中国-青海', '2016-11-02 16:11:59', null, null, '1', '1', 'sbnd34egfasg4fasdg23', '普通话♫吴语', '卡通♫商业广告♫纪录片♫网络', '激昂高亢♫娓娓道来♫童音童趣♫自然亲和♫故事旁白', 'berwartaedfeee', '0', '5-10个月');
INSERT INTO `inusers` VALUES ('40284742gbhe7ab401581e0280c10033', 'cc1966666', '1a52276c72210290066daccaa262e982', 'V562362', '2.png', '男', '1992-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-四川', '2016-11-01 11:50:30', '', null, '0', '1', 'easheraveaeA', '普通话', '商业广告♫电子书♫教育/教学♫语音应答♫纪录片', '娓娓道来♫激昂高亢♫童音童趣♫自然亲和♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('4028474fgaa1d7ab40158ges7d27223', 'rhewnbavvaea', '4b061c21c0cb3a91066daccaa262e982', 'V789456', '17.png', '男', '1996-09-25', '', '', '', '847078739@qq.com', '15213478863', '中国-四川', '2016-11-01 11:35:12', '', null, '0', '1', 'easge4348gveaeAgse', '吴语♫普通话♫闽语♫其他', '纪录片♫电子书♫卡通', '娓娓道来♫浑厚大气♫自然亲和♫稳重磁性', 'berwartaedfeee', '0', '5-10个月');
INSERT INTO `inusers` VALUES ('4028474fgaa1d7ab40158ges7dd3002f', 'rhewnbavvae', '4b061c21c0cb3a91066daccaa262e982', 'V285863', '11.png', '男', '1996-09-25', '', '', '', '847078739@qq.com', '15213478863', '中国-四川', '2016-11-01 11:35:12', '', null, '0', '1', 'easge4348gveaeAgse', '吴语♫普通话♫闽语♫其他', '纪录片♫电子书♫卡通', '娓娓道来♫浑厚大气♫自然亲和♫稳重磁性', 'berwartaedfeee', '0', '5-10个月');
INSERT INTO `inusers` VALUES ('402847gw581d7ab401581e0c7e160036', 'asdfasdfrg', '9a853618613fc2de066daccaa262e982', 'V088888', '4.png', '男', '1990-11-08', '', '', '', '965449898@qq.com', '13788525856', '中国-贵州', '2016-11-01 12:01:25', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '吴语♫普通话', '商业广告♫电子书♫纪录片', '娓娓道来♫激昂高亢♫浑厚大气♫自然亲和', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40fae4742581d7ab401581e0280c10033', 'hhaersfes', '1a52276c72210290066daccaa262e982', 'V874103', '7.png', '男', '1992-11-10', '', '', '', '965449898@qq.com', '15213478863', '中国-四川', '2016-11-01 11:50:30', '', null, '0', '1', 'easheraveaeA', '普通话', '商业广告♫电子书♫教育/教学♫语音应答♫纪录片', '娓娓道来♫激昂高亢♫童音童趣♫自然亲和♫浑厚大气', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40ga847gw581d7ab401581e0c7e13786', 'regyhwdsz', '9a853618613fc2de066daccaa262e982', 'V145852', '20.png', '男', '1990-11-08', '', '', '', '965449898@qq.com', '13788525856', '中国-贵州', '2016-11-01 12:01:25', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '吴语♫普通话', '商业广告♫电子书♫纪录片', '娓娓道来♫激昂高亢♫浑厚大气♫自然亲和', 'berwartaedfeee', '0', '新手');
INSERT INTO `inusers` VALUES ('40ga847gw581d7ab401581e0c7e160036', 'rew5yhwdsz', '9a853618613fc2de066daccaa262e982', 'V852025', '14.png', '男', '1990-11-08', '', '', '', '965449898@qq.com', '13788525856', '中国-贵州', '2016-11-01 12:01:25', '', null, '0', '1', 'sbnd34egfasg4fasdg23', '吴语♫普通话', '商业广告♫电子书♫纪录片', '娓娓道来♫激昂高亢♫浑厚大气♫自然亲和', 'berwartaedfeee', '0', '新手');

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
INSERT INTO `p_artpate` VALUES ('402847425822db98015822fde42d0001', '402847425822a2a7015822b808860000', 'qwer8520', '40284742581d7ab401581de2757e0023', '2016-11-02 11:03:34', '2016-11-02 11:27:47', 'brafeacasd', '1000', 'MD21780182620161102111805805185989731', '13319236295', '200', '3', '2016-11-02 11:17:08', '2016-11-02 11:21:02', '2016-11-02 11:18:05', '1000.00(RMB)==166.67(USD)', '850.00', '1000', 'MD182d4d0120161102111708708178521616', '48', '陈超', '15213487796', '2016-11-02-11-03-34-33440989282b05f60676c62ae82ba286a1f789a5cceshi.mp3', '2', '2016-11-02 11:27:47', 'vbaseacsecesa6', '2016-11-02-11-21-02-2125710829881cf876b2cd38acef4b49ec81d58a7jbshiyin.mp3', '1');
INSERT INTO `p_artpate` VALUES ('402847425822db9801582326b3e80002', '40284742581e858a01581e94a3c10000', 'qwer8520', '40284742581d7ab401581ddea85d001f', '2016-11-02 11:48:08', '2016-11-02 11:55:56', 'brafeacasd', '800', 'MD01511516720161102115207207527916737', '8585258552', '200', '3', '2016-11-02 11:50:12', '2016-11-02 11:54:19', '2016-11-02 11:52:07', '800.00(RMB)==133.33(USD)', '680.00', '800', 'MD18363802220161102115012125012667861', '144', 'tangying', '12865954555', '2016-11-02-11-48-08-488147540ddb4e889af879e1c54d454d002b11c8bceshi.mp3', '2', '2016-11-02 11:55:56', 'vbaseacsecesa6', '2016-11-02-11-54-19-541923000394953bc00f5a108965a45596f1df00eaceshi.mp3', '1');
INSERT INTO `p_artpate` VALUES ('402847425822db980158233485a60003', '40284742581e858a01581e94a3c10000', 'jdbcbdqn', '40284742581d7ab401581dafc0eb000a', '2016-11-02 12:03:14', '2016-11-02 12:14:52', 'brafeacasd', '780', 'MD01122127920161102121104104114378925', '8528525555', '200', '3', '2016-11-02 12:10:26', '2016-11-02 12:14:07', '2016-11-02 12:11:04', '780.0.00(RMB)==130.00(USD)', '663.00', '780.0', 'MD18345603220161102121026261026749266', '48', 'fgdf', '8859848946', '2016-11-02-12-03-14-3149259592fc9a4d84632e2ce6ccc81297838aad5ceshi.mp3', '2', '2016-11-02 12:14:52', 'vbaseacsecesa6', '2016-11-02-12-14-07-147311126f05d65603171d81f2053b2a3ce0c228ajbshiyin.mp3', '1');
INSERT INTO `p_artpate` VALUES ('402847425823e09b015823f238800001', '402847425823e09b015823ee99bb0000', 'accp1234', '4028474258238374015823b7005f0028', '2016-11-02 15:30:20', null, 'baseecasef', '852', null, null, null, null, null, null, null, '142.00', null, null, null, null, null, null, '2016-11-02-15-30-26-3026725427504cc2b27badf548f1421208eac5bd6cceshi.mp3', null, null, 'vbflkenlkbdklrmv2240', null, null);
INSERT INTO `p_artpate` VALUES ('402847425823f7d20158240393630002', '402847425823f7d2015823fbb7dd0001', 'accp1234', '4028474258238374015823b7005f0028', '2016-11-02 15:49:20', null, 'baseecasef', '852', null, null, null, null, null, null, null, '142.00', null, null, null, null, null, null, '2016-11-02-15-49-23-49234042915160256831bf840f1d0af550dce108cfceshi.mp3', null, null, 'vbflkenlkbdklrmv2240', null, null);
INSERT INTO `p_artpate` VALUES ('402847425823f7d20158240b99c30004', '402847425823f7d201582409c4840003', 'accp1234', '4028474258238374015823b7005f0028', '2016-11-02 15:58:08', null, 'baseecasef', '852', null, null, null, null, null, null, null, '142.00', null, null, null, null, null, null, '2016-11-02-15-58-09-5893521440b0c9c35963e464d62f298675a21fbf3ceshi.mp3', null, null, 'vbflkenlkbdklrmv2240', null, null);
INSERT INTO `p_artpate` VALUES ('40284742582416b90158241aaaf20001', '40284742582416b901582418443a0000', 'accp1234', '4028474258238374015823b7005f0028', '2016-11-02 16:14:33', '2016-11-02 16:45:21', 'brafeacasd', '1000', 'MD01455458620161102164309309439909307', '15213478863', '200', '3', '2016-11-02 16:42:53', '2016-11-02 16:44:56', '2016-11-02 16:43:09', '1000.00(RMB)==166.67(USD)', '850.00', '1000', 'MD184aa201220161102164253534253846008', '144', '陈超', '15213478863', 'IDC323302016-11-02-16-14-37-1437Audiotest.mp3', '3', '2016-11-02 16:45:21', 'vbaseacsecesa6', '2016-11-02-16-44-56-4456571006acb3a881c7ce9abcae0ce8c99c86a906ceshi.mp3', '1');

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
INSERT INTO `w_works` VALUES ('40284742581ab401581df97a290030', '建筑规划-悦达广场', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581dbssa290030', '文学教育片-唐之韵', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581df97a290030', '激情大气-地产专题', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581df97a2fb030', '获奖民生广播频宣', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581df97gsb0030', '激情大气-地产专题', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581dfa0ce50031', '浑厚大气—北部新城', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581dff95b10032', '浑厚大气—北部新城', '2016-11-01-11-47-19-47195129554300c465b89563b9e054ef4f29bf147bceshi.mp3', '2016-11-01 11:47:19', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581dgesa290030', '省血液中心献血宣传', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401581dgsevbsa290030', '地理专题-我们远去的家园', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7ab401gba1dfa0ce5003', '多媒体大同客运站', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7ab401ggagee5003', '庐山旅游解说', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7ab401gs81dfa0ce5003', '庐山旅游解说', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7ab4a581dfa0ce50031', '长丰泰大酒店欢迎辞', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7ab4ew81dbssa290030', '无线成都手机', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7abaa1581df97a2fb030', '义乌小商品直销超市全国连锁店', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7abas81dbssa290030', '无线成都手机', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284742581d7seb401581dfa0ce50031', '电视风光片-马达加斯加', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7seb401rendfa0ce50031', '浑厚大气—北部新城', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40284742581d7seb4esga1dfa0ce50031', '电视风光片-马达加斯加', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028474258esbab4a581dfa0ce50031', '长丰泰大酒店欢迎辞', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028474gsb81d7ab401581dfa0ce50031', '安溪乌龙茶茶园', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028474gsb81d7ab401a81dfa0ce50031', '风险管控（介绍类 课件类）', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028474gsb81d7bnase01581dfa0ce50031', '安溪乌龙茶茶园', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'cc123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402847g42581d7ab4ew81dbssa290030', '企业宣传英语配音', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('402847g42581d7abaseb1dbssa290030', '企业宣传英语配音', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('402847gnb81d7ab401gs81dfa0ce5003', '纪录片-再说长江', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402847gnb81d7ab401gsrfa0ce5003', '英语课件配音', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402847gnbandb401gsrfa0ce5003', '英语课件配音', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402847ha581d7ab401581dgesa290030', '海伦市城市规划', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('402847nea7abaa1581df97a2fb030', '义乌小商品直销超市全国连锁店', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284a2581d7ab401581df97a2fb030', '多媒体-化工设备', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284a2581ga81df97a2fb030', '多媒体-化工设备', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284nar2581d7ab401581df97gsb0030', '激情大气-地产专题', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284narbabd7ab401581df97gsb0030', '激情大气-地产专题', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284re581d7ab401581dgsevbsa290030', '童声小男女孩对白样-英语音', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40284re581df1dgsevbsa290030', '童声小男女孩对白样-英语音', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('4028a42581d7ab401581dbssa290030', '英语故事配音', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('4028aseb81d7seb401rendfa0ce50031', '浑厚大气—北部新城', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028asebsb81d7ab401a81dfa0ce50031', '风险管控（介绍类 课件类）', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028dn7ab401581dgesa290030', '海伦市城市规划', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('4028ragbadsbv81d7ab401gs81dfa0ce5003', '越南语故事配音', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028ragnb81d7ab401gs81dfa0ce5003', '越南语故事配音', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4028ragnb81d7ab401gsaa1dfa0ce5003', '南京飞机场语音-NanChang airport', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402rd74gsb81d7ab401581dfa0ce50031', '哈尔滨伊美尔医疗美容医院', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402rd74gsb81d7ab4ga581dfa0ce50031', '英语故事老人配音', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402rd74gsb81dadsb401581dfa0ce50031', '哈尔滨伊美尔医疗美容医院', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('402rd74gsb81dfaab4ga581dfa0ce50031', '这个是有声故事也算作专题吧', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('402rd754nsdfaab4ga581dfa0ce50031', '这个是有声故事也算作专题吧', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');
INSERT INTO `w_works` VALUES ('40dbgnb81d7ab401gsaa1dfa0ce5003', '南京飞机场语音-NanChang airport', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40nadf7gnb81d7ab401gs81dfa0ce5003', '纪录片-再说长江', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('40re34gsb81d7ab4ga581dfa0ce50031', '英语故事老人配音', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4bse4742581adf34ab40nre81dfa0ce5003', '英式英文-外籍女声', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4bse4742581d7ab401gs81dfa0ce5003', '安娜贝尔地板', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4bse4742581d7ab40nre81dfa0ce5003', '英式英文-外籍女声', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('4bse4742r34b401gs81dfa0ce5003', '安娜贝尔地板', '2016-11-01-11-41-16-4116206647bb7ff9b2a7df8f98145a84f561b0e60bceshi.mp3', '2016-11-01 11:41:16', 'poiu0123', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '还不错吧');
INSERT INTO `w_works` VALUES ('sdf34h54w5234yh435h435h253434', '英语故事配音', '2016-11-01-11-40-38-4038688063c7500f37729fac15c24cb930ffda11dfceshi.mp3', '2016-11-01 11:40:38', 'yy123456', '0', '1', 'easheraveaeA', 'baerawvaecaeade', '523456rgbdfseg', 'htrsgsrsdf', '0', '');

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
