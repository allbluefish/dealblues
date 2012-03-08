/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : deals_test

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2012-02-17 17:22:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for `deal`
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL COMMENT '标题',
  `link` varchar(255) default NULL COMMENT '详细信息连接',
  `pubDate` datetime default NULL COMMENT '发布时间',
  `description` text COMMENT '描述',
  `source` varchar(255) default NULL COMMENT '来源地',
  `location` varchar(255) default NULL COMMENT '来源地连接',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES ('8', 'Turn your picture into Art for FREE! Just Pay Shipping & Handling! $49.99 off an 8 x 10 Canvas at Canvas\n        People', null, null, null, null, null);
INSERT INTO `deal` VALUES ('7', 'Valentines Day Gift! 25% off at Herbergers!', null, null, null, null, null);
INSERT INTO `deal` VALUES ('9', '$6 off Fisher-Price Healthy Care Deluxe Booster Seat; on sale for $23.99 Shipped, originally $29.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('10', 'Big Steal! Hurry! $93 off Panasonic Camcorder with Night View Mode! On sale for $86.99 Shipped, originally\n        $179.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('11', '56% off 8 Piece KitchenAid Cook for the Cure Prep Set at Housewares Deals; on sale for $29, originally\n        $66', null, null, null, null, null);
INSERT INTO `deal` VALUES ('12', 'Crayola Glow Explosion Bundle at Graveyard Mall; on sale for $15.99, originally $64.96', null, null, null, null, null);
INSERT INTO `deal` VALUES ('13', '63% off Natural Daylight Desk Lamp at Joann; on sale for $29.98, originally $79.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('14', '$30 off Macally 3-in-1 Battery Pack/Data Sync/2GB Flash Drive for iPhone 4(S)  iPod 4th Gen - POWERLINK;\n        on sale for $9.99 Shipped!', null, null, null, null, null);
INSERT INTO `deal` VALUES ('15', '50% off Blizzard  Anti-Pill Fleece Solids  Prints at Joann', null, null, null, null, null);
INSERT INTO `deal` VALUES ('16', '30% off Heart Apron at Target; on sale for $6.98, originally $9.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('17', '59% off Ty Pennington Topanga Bedding Set - King at Sears; on sale for $89.99, originally $219.99 plus Free\n        Shipping', null, null, null, null, null);
INSERT INTO `deal` VALUES ('18', 'Great for dress up or a pair of jeans! $42 off Latte Sidetail Open Cardigan; on sale for $32.99, originally\n        $75', null, null, null, null, null);
INSERT INTO `deal` VALUES ('19', 'Excellent Ratings! $150 off Zenith 50 Class 720p Plasma HDTV at Sears; on sale for $499.88, originally\n        $649.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('20', '$11 off Danskin Now - Women\'s Plus Velour Hoodie and Pants at Walmart; on sale for $11 plus $0.97\n        shipping', null, null, null, null, null);
INSERT INTO `deal` VALUES ('21', '$2 off Lawn-Revitalizing Aerator Shoes at Northern Tool; on sale for $7.99, originally $9.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('22', '$37 off Chocolate Surplice Maxi Dress at Zulily; on sale for $36.99, originally $74', null, null, null, null, null);
INSERT INTO `deal` VALUES ('23', '$229 off 4.00 Carat Natural Amethyst and Diamond Bracelet in .925 Sterling Silver; on sale for $73.80\n        Shipped', null, null, null, null, null);
INSERT INTO `deal` VALUES ('24', 'Deal of the Week! $104 off Salon Tech Silicone450 Styling Iron Set; on sale for $155.99 Shipped! Iron reaches\n        450F in 20 seconds!', null, null, null, null, null);
INSERT INTO `deal` VALUES ('25', '74% off The Help DVD at Target; on sale for $9, originally $34.99', null, null, null, null, null);
INSERT INTO `deal` VALUES ('26', '55% off Gallery Single Breasted Trench at Nordstrom; on sale for $61.90, originally $138', null, null, null, null, null);

-- ----------------------------
-- Table structure for `store`
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(255) default NULL COMMENT '店名',
  `detail` text,
  `location` text,
  `image` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
