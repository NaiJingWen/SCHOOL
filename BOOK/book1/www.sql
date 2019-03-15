/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ww

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-04-25 08:23:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1594876441', '1154879465');
INSERT INTO `admin` VALUES ('1234568975', '7854164978');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookID` int(11) NOT NULL,
  `Bookname` varchar(60) NOT NULL,
  `author` varchar(35) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` varchar(20) NOT NULL,
  `count` int(11) NOT NULL,
  `publishdate` datetime NOT NULL,
  `preferprice` varchar(20) NOT NULL,
  `discountrate` varchar(4) NOT NULL,
  `yushou` varchar(2) NOT NULL,
  `upBookDate` datetime NOT NULL,
  `picture` varchar(255) NOT NULL,
  `numberserver` varchar(255) NOT NULL,
  `knowledge` varchar(255) NOT NULL,
  `dianzhishu` varchar(255) NOT NULL,
  `specialbookshop` varchar(255) NOT NULL,
  `tugoodprice` varchar(255) NOT NULL,
  `dalei` int(10) NOT NULL,
  `xiaolei` int(10) NOT NULL,
  `specialclass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('3', '货币战争', '王五', '北京出版社', '29', '10', '2018-03-15 15:35:14', '18', '9', '1', '2018-03-08 14:03:11', 'images\\money.jpg', '', '', '', '', '', '18', '19', '');
INSERT INTO `book` VALUES ('4', '自卑与超越', '驴驴', '安上出版社', '20', '20', '2018-03-07 15:35:09', '18', '9', '1', '2018-03-08 14:03:07', 'images\\zibei.jpg', '', '', '', '', '', '18', '22', '');
INSERT INTO `book` VALUES ('1', '孤独是生命的修行', '张三', '拾元出版社', '23.99', '10', '2018-03-31 15:35:21', '19.8', '9', '1', '2018-03-29 14:03:18', 'images\\LONLY.jpg', '', '', '', '', '', '18', '19', '');
INSERT INTO `book` VALUES ('5', '战略罗盘', '罗晋', '上市出版社', '30', '50', '2018-03-28 14:02:53', '26', '9', '1', '2018-03-27 15:39:05', 'images\\zhanlue.jpg', '2', '', '', '', '', '18', '22', '');
INSERT INTO `book` VALUES ('6', '哭猫日记', '杨红樱', '海南出版社', '30', '40', '2018-03-27 15:35:04', '25', '9', '', '0000-00-00 00:00:00', 'images\\cat.jpg', '2', '', '', '', '', '14', '16', '7');
INSERT INTO `book` VALUES ('7', '诗经', '张山峰', '锦州出版社', '25', '12', '0000-00-00 00:00:00', '19.9', '9', '', '0000-00-00 00:00:00', 'images\\poem.jpg', '2', '', '', '', '', '18', '22', '');
INSERT INTO `book` VALUES ('8', 'AutoCAD2014', '赵符合', '安上出版社', '29', '10', '0000-00-00 00:00:00', '19.9', '9', '', '0000-00-00 00:00:00', 'images\\autocad2014.jpg', '2', '', '', '', '', '10', '11', '');
INSERT INTO `book` VALUES ('9', 'Flash', '赵萍萍', '北京出版社', '20', '20', '0000-00-00 00:00:00', '18.9', '9', '', '0000-00-00 00:00:00', 'images\\flash.jpg', '2', '3', '', '', '', '10', '12', '');
INSERT INTO `book` VALUES ('10', '法律英语', '李珊珊', '锦州出版社', '23.99', '10', '0000-00-00 00:00:00', '15.9', '9', '', '0000-00-00 00:00:00', 'images\\FLenglish.jpg', '', '3', '', '', '', '10', '13', '');
INSERT INTO `book` VALUES ('11', '万物简史', '王莎莎', '拾元出版社', '30', '50', '0000-00-00 00:00:00', '29.9', '9', '', '0000-00-00 00:00:00', 'images\\history.jpg', '', '3', '', '', '', '18', '20', '');
INSERT INTO `book` VALUES ('12', '网络技术', '马薇薇', '上市出版社', '30', '40', '0000-00-00 00:00:00', '29.9', '9', '', '0000-00-00 00:00:00', 'images\\internet.jpg', '', '3', '', '', '', '10', '11', '');
INSERT INTO `book` VALUES ('13', '狼王梦', '贝微微', '海南出版社', '56', '12', '0000-00-00 00:00:00', '41', '9', '', '0000-00-00 00:00:00', 'images\\lang.jpg', '', '3', '4', '', '', '14', '16', '7');
INSERT INTO `book` VALUES ('14', '数学之美', '刘晓晓', '安上出版社', '26', '10', '0000-00-00 00:00:00', '15.5', '9', '', '0000-00-00 00:00:00', 'images\\match.jpg', '', '', '4', '', '', '10', '13', '7');
INSERT INTO `book` VALUES ('15', '民宿时代', '夏思思', '锦州出版社', '45', '52', '0000-00-00 00:00:00', '30', '9', '', '0000-00-00 00:00:00', 'images\\minsushidai.jpg', '', '', '4', '', '', '18', '20', '7');
INSERT INTO `book` VALUES ('2', '历史的荷尔蒙', '李四', '安上出版社', '45', '50', '0000-00-00 00:00:00', '30', '8', '1', '0000-00-00 00:00:00', 'images\\heermeng.jpg', '', '', '', '', '', '18', '22', '7');
INSERT INTO `book` VALUES ('16', '一只猫的生活与哲学观', '王念念', '星奴出版社', '19.9', '80', '0000-00-00 00:00:00', '15', '8', '', '0000-00-00 00:00:00', 'images\\img1\\acat.jpg', '', '', '4', '', '', '14', '16', '7');
INSERT INTO `book` VALUES ('17', '我相信幸福是会重生的', '刘讷讷', '粉色的出版社', '23', '60', '0000-00-00 00:00:00', '15.7', '8', '', '0000-00-00 00:00:00', 'images\\img1\\ibelieve.jpg', '', '', '4', '5', '', '14', '15', '7');
INSERT INTO `book` VALUES ('18', '绝色倾城', '王可可', '多酚出版社', '15', '0', '0000-00-00 00:00:00', '9.9', '8', '', '0000-00-00 00:00:00', 'images\\img1\\jueseqingcheng.jpg', '', '', '', '5', '', '14', '17', '7');
INSERT INTO `book` VALUES ('19', '好久不见秦先生', '王园园', '百度出版社', '20', '0', '0000-00-00 00:00:00', '15.9', '8', '', '0000-00-00 00:00:00', 'images\\img1\\longseeyou.jpg', '', '', '', '5', '', '14', '15', '7');
INSERT INTO `book` VALUES ('20', '千重殿', '王泡泡', '星奴出版社', '42', '0', '0000-00-00 00:00:00', '35.6', '9', '', '0000-00-00 00:00:00', 'images\\img1\\qiancongdian.jpg', '', '', '', '5', '', '14', '17', '7');
INSERT INTO `book` VALUES ('21', '天浴', '马东东', '多酚出版社', '45', '0', '0000-00-00 00:00:00', '38.9', '8', '', '0000-00-00 00:00:00', 'images\\img1\\tianyu.jpg', '', '', '', '5', '6', '14', '17', '7');
INSERT INTO `book` VALUES ('22', '我在未来等你', '冯程程', '星奴出版社', '56', '0', '0000-00-00 00:00:00', '43.8', '8', '', '0000-00-00 00:00:00', 'images\\img1\\waityou.jpg', '', '', '', '', '6', '14', '15', '');
INSERT INTO `book` VALUES ('23', '原谅我一生放荡不羁爱自由', '范甜甜', '星奴出版社', '47', '0', '0000-00-00 00:00:00', '39.9', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\fangdangbuji.jpg', '', '', '', '', '6', '14', '15', '');
INSERT INTO `book` VALUES ('24', '共富精神', '只谢谢', '海南出版社', '52', '0', '0000-00-00 00:00:00', '45.7', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\gongfu.jpg', '', '', '', '', '6', '18', '21', '7');
INSERT INTO `book` VALUES ('25', '哈佛百年经典', '田问问', '锦州出版社', '39', '0', '0000-00-00 00:00:00', '29.9', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\hafe.jpg', '', '', '', '', '6', '18', '19', '');
INSERT INTO `book` VALUES ('26', '瞌睡先生', '孙等等', '北京出版社', '54', '0', '0000-00-00 00:00:00', '45.7', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\keshui.jpg', '', '', '', '', '6', '14', '15', '');
INSERT INTO `book` VALUES ('27', '我一直都想嫁给你', '李积极', '星奴出版社', '83', '0', '0000-00-00 00:00:00', '68.8', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\marryyou.jpg', '', '', '', '', '', '14', '15', '');
INSERT INTO `book` VALUES ('28', '百年孤独', '周可可', '安上出版社', '86', '0', '0000-00-00 00:00:00', '48.9', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\bainiangudu.jpg', '', '', '', '', '', '18', '19', '');
INSERT INTO `book` VALUES ('29', '此间少年静待花开', '吴哦哦', '粉色的出版社', '38', '0', '0000-00-00 00:00:00', '31.4', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\cijianshaonian.jpg', '', '', '', '', '', '14', '15', '');
INSERT INTO `book` VALUES ('30', '家风', '王亲亲', '时候出版社', '83', '0', '0000-00-00 00:00:00', '79.8', '8', '', '0000-00-00 00:00:00', 'images\\picturegoodprice\\jiafeng.jpg', '', '', '', '', '', '18', '19', '');

-- ----------------------------
-- Table structure for customer message
-- ----------------------------
DROP TABLE IF EXISTS `customer message`;
CREATE TABLE `customer message` (
  `commentID` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `commentDate` datetime NOT NULL,
  `replyComment` varchar(500) NOT NULL,
  `replyDate` datetime NOT NULL,
  `status` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer message
-- ----------------------------
INSERT INTO `customer message` VALUES ('1', '快点发货', '2017-02-06 00:00:00', '好的', '2017-02-07 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `customer message` VALUES ('2', '不要破损', '2017-03-08 00:00:00', 'ok', '2017-03-08 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `customer message` VALUES ('3', '尽快发货', '2017-06-09 00:00:00', '可以', '2017-06-10 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for fenlei
-- ----------------------------
DROP TABLE IF EXISTS `fenlei`;
CREATE TABLE `fenlei` (
  `id` smallint(6) NOT NULL,
  `name` varchar(50) default NULL,
  `reid` smallint(6) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of fenlei
-- ----------------------------
INSERT INTO `fenlei` VALUES ('10', '技术', '0');
INSERT INTO `fenlei` VALUES ('11', '立体建模', '10');
INSERT INTO `fenlei` VALUES ('13', '英语', '10');
INSERT INTO `fenlei` VALUES ('12', '动画', '10');
INSERT INTO `fenlei` VALUES ('14', '小说', '0');
INSERT INTO `fenlei` VALUES ('15', '言情', '14');
INSERT INTO `fenlei` VALUES ('16', '科幻', '14');
INSERT INTO `fenlei` VALUES ('17', '武侠', '14');
INSERT INTO `fenlei` VALUES ('18', '文学', '0');
INSERT INTO `fenlei` VALUES ('19', '文化', '18');
INSERT INTO `fenlei` VALUES ('20', '自然', '18');
INSERT INTO `fenlei` VALUES ('21', '共富', '18');
INSERT INTO `fenlei` VALUES ('22', '历史', '18');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `orderID` int(11) NOT NULL,
  `orderNumber` int(20) NOT NULL,
  `orderStatus` varchar(30) NOT NULL,
  `balanceAccTime` datetime NOT NULL,
  `total` varchar(20) NOT NULL,
  `payTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '123456789', '已下单', '2018-01-02 00:00:00', '20', '2018-01-02 00:00:00', '2018-01-02 00:00:00', '尽快发货');
INSERT INTO `orderdetail` VALUES ('2', '123478965', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `orderdetail` VALUES ('3', '158486982', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `listID` int(11) NOT NULL,
  `count` int(20) NOT NULL,
  `price` decimal(30,0) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', '1', '10', '20');
INSERT INTO `orderlist` VALUES ('2', '1', '12', '22');
INSERT INTO `orderlist` VALUES ('3', '1', '15', '15');
INSERT INTO `orderlist` VALUES ('4', '1', '18', '24');

-- ----------------------------
-- Table structure for press information sheet
-- ----------------------------
DROP TABLE IF EXISTS `press information sheet`;
CREATE TABLE `press information sheet` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Admin_name` varchar(20) NOT NULL,
  `Admin_password` varchar(50) NOT NULL,
  `Admin_emal` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of press information sheet
-- ----------------------------
INSERT INTO `press information sheet` VALUES ('1635128335', '张三', '本兮出版社', '1323654798', '13');
INSERT INTO `press information sheet` VALUES ('1324498792', '李四', '锦州火车站', '1596148747', '16');
INSERT INTO `press information sheet` VALUES ('1947943451', '王小二', '抚顺火车站', '1594879848', '15');
INSERT INTO `press information sheet` VALUES ('1598418262', '王小六', '锦州火车站', '1336486555', '28');

-- ----------------------------
-- Table structure for shopping cart record
-- ----------------------------
DROP TABLE IF EXISTS `shopping cart record`;
CREATE TABLE `shopping cart record` (
  `listID` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `total` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping cart record
-- ----------------------------
INSERT INTO `shopping cart record` VALUES ('1', '1', '12', '24', '正在路上');
INSERT INTO `shopping cart record` VALUES ('2', '2', '13', '12', '正在路上');
INSERT INTO `shopping cart record` VALUES ('3', '1', '18', '15', '正在路上');
INSERT INTO `shopping cart record` VALUES ('4', '5', '24', '34', '正在路上');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `name` varchar(25) default NULL,
  `Pwd` varchar(20) default NULL,
  `dongjie` int(4) default NULL,
  `email` varchar(25) default NULL,
  `sfzh` varchar(25) default NULL,
  `tel` varchar(25) default NULL,
  `qq` varchar(25) default NULL,
  `dizhi` varchar(100) default NULL,
  `youbian` varchar(25) default NULL,
  `truename` varchar(25) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'AA', '111111', '0', '111@qq.com', '111111', '11', '123', '辽宁省本溪市', '111', '张三');
INSERT INTO `user` VALUES ('2', 'BB', '222222', '0', '1234@qq.com', '123456', '223344', '456', '辽宁省锦州市', '222', '李四');
INSERT INTO `user` VALUES ('3', 'CC', '333333', '0', '12345@qq.com', '222222', '556677', '789', '辽宁省沈阳市', '333', '刘二豆');
INSERT INTO `user` VALUES ('4', 'DD', '444444', '0', '123456@qq.com', '333333', '778899', '321', '辽宁省海城市', '444', '球球');
INSERT INTO `user` VALUES ('0', '文文', '1111111', '0', '123456@qq.com', '2015458787895894548', '15841409745', '123456@qq.com', '辽宁省本溪市', '127000', '奈静文');
