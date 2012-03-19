/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : deals_test

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2012-03-19 21:12:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('7', 'Department Stores');
INSERT INTO `category` VALUES ('8', 'Valentines Day');
INSERT INTO `category` VALUES ('9', '% off');
INSERT INTO `category` VALUES ('10', 'Hot');
INSERT INTO `category` VALUES ('11', 'Electronics');
INSERT INTO `category` VALUES ('12', 'Satellite TV & Radio');
INSERT INTO `category` VALUES ('13', '$ off');
INSERT INTO `category` VALUES ('14', 'House & Home');
INSERT INTO `category` VALUES ('15', 'Mothers Day');
INSERT INTO `category` VALUES ('16', 'Babies & Kids');
INSERT INTO `category` VALUES ('17', 'Camera & Photo');
INSERT INTO `category` VALUES ('18', 'Spring Break Travel');
INSERT INTO `category` VALUES ('19', 'Free Shipping');
INSERT INTO `category` VALUES ('20', 'Kitchen');
INSERT INTO `category` VALUES ('21', 'Craft Supplies');
INSERT INTO `category` VALUES ('22', 'Gifts & Flowers');
INSERT INTO `category` VALUES ('23', 'Hobby & Collectibles');
INSERT INTO `category` VALUES ('24', 'Daily Deal');
INSERT INTO `category` VALUES ('25', 'Lighting');
INSERT INTO `category` VALUES ('26', 'Computers & Software');
INSERT INTO `category` VALUES ('27', 'Phones and Wireless');
INSERT INTO `category` VALUES ('28', 'Tax Season');
INSERT INTO `category` VALUES ('29', 'Apparel');
INSERT INTO `category` VALUES ('30', 'Teens');
INSERT INTO `category` VALUES ('31', 'Women');
INSERT INTO `category` VALUES ('32', 'Clearance');
INSERT INTO `category` VALUES ('33', 'Bed & Bath');
INSERT INTO `category` VALUES ('34', 'Diet & Fitness');
INSERT INTO `category` VALUES ('35', 'Health & Beauty');
INSERT INTO `category` VALUES ('36', 'Women\'s Plus & Petite');
INSERT INTO `category` VALUES ('37', 'Home Improvement');
INSERT INTO `category` VALUES ('38', 'Yard & Gardening');
INSERT INTO `category` VALUES ('39', 'Jewelry');
INSERT INTO `category` VALUES ('40', 'Movies & Music');

-- ----------------------------
-- Table structure for `deal`
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '详细信息连接',
  `pubDate` datetime DEFAULT NULL COMMENT '发布时间',
  `description` text COMMENT '描述',
  `source` varchar(255) DEFAULT NULL COMMENT '来源地',
  `location` varchar(255) DEFAULT NULL COMMENT '来源地连接',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SID` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES ('92', 'Valentines Day Gift! 25% off at Herbergers!', null, '2012-02-15 07:39:00', '<img src=\"http://s1.dtkcdn.com/offer/original/407806-1329263139.png\" hspace=\"2\" vspace=\"2\"/>\n        <br/>\n        <b>Store:</b> Herbergers <br/>\n        <b>Expiration Date:</b> Wed, 15 Feb 2012 03:59:00 -0600 <br/>\n        <b>Categories: </b>Department Stores | Valentines Day | % off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407806/\">Get this Coupon</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/herbergers/coupon-407806/', 'http://s1.dtkcdn.com/offer/original/407806-1329263139.png', '2');
INSERT INTO `deal` VALUES ('93', 'Turn your picture into Art for FREE! Just Pay Shipping & Handling! $49.99 off an 8 x 10 Canvas at Canvas\n        People', null, '2012-02-15 03:17:00', '<img src=\"http://s3.dtkcdn.com/offer/original/407619-1329250160.jpg\" hspace=\"2\" vspace=\"2\">\n\n        <p>You will be given a link to a free 8 x10 Canvas Art to keep your memories close by!</p>\n\n        <p>Just Upload an image and you are on your way to your free 8x10!</p>\n\n        <p>You could use a portion of your $49.99 savings to really add to the picture\'s beauty by taking the options to\n            add special effects and/or frame it! Lots of options and Lots of fun getting creative!</p>\n\n        <p><em><span style=\"color: #ff0000\">Path to Item - </span></em></p>\n\n        <p><em><span style=\"color: #ff0000\">1. Click on the green \"Get This Deal\" button below to get to Canvas People\'s Homepage.</span></em>\n        </p>\n\n        <p><em><span style=\"color: #ff0000\">2. Click on the Facebook Emblem on lower right side of Homepage to get on the Facebook Page.<br></span></em>\n        </p>\n\n        <p><em><span style=\"color: #ff0000\">3. Once you are on Canvas Art\'s Facebook page - Click \"LIKE Us and Get a Deal\" on the left side of their page (option listed below \"friend activity\")</span></em>\n        </p>            <br>\n        <b>Store:</b> Canvas People <br>\n        <b>Expiration Date:</b> Sat, 18 Feb 2012 23:59:00 -0600 <br>\n        <b>Categories: </b>House  Home | Mothers Day | $ off | Hot <br>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407619/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/canvas-people/deal-407619/', 'http://s3.dtkcdn.com/offer/original/407619-1329250160.jpg', '3');
INSERT INTO `deal` VALUES ('94', '$6 off Fisher-Price Healthy Care Deluxe Booster Seat; on sale for $23.99 Shipped, originally $29.99', null, '2012-02-15 02:40:00', '<img src=\"http://s1.dtkcdn.com/offer/original/407581-1329245746.jpg\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>If you worry about what your baby may pick up from a restaurant table or what germs are still left on the\n            feeding tray after you rinse it off, check out this deluxe booster seat!&nbsp; The Feeding tray goes right\n            in the dishwasher and will be dishwasher clean for baby.. There is a cover for the feeding tray, so even if\n            you are handling the tray you are not touching the eating surface.&nbsp; Plus when you are going out to a\n            restaurant carry along this booster seat and tray so you control how clean the surface is that your child\n            touches.&nbsp; </p>\n\n        <p><span style=\"color: #ff0000\"><em><strong>Search on <span class=\"SKU\">Item # W9431</span></strong></em></span>\n        </p>            <br/>\n        <b>Store:</b> Meijer <br/>\n        <b>Expiration Date:</b> Sat, 25 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Babies &amp; Kids | $ off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407581/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/meijer/deal-407581/', 'http://s1.dtkcdn.com/offer/original/407581-1329245746.jpg', '4');
INSERT INTO `deal` VALUES ('95', 'Big Steal! Hurry! $93 off Panasonic Camcorder with Night View Mode! On sale for $86.99 Shipped, originally\n        $179.99', null, '2012-02-15 02:12:00', '<img src=\"http://s1.dtkcdn.com/offer/original/407571-1329244517.jpg\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Does your family stop living when the sun goes down? Now you can capture any moment, even moments in the dark\n            with the Night View Mode! The Camcorder also has a nice and big 3\" LCD touch panel screen, so you wont get\n            finger happy! :)</p>\n\n        <p><em>Click on the \"Big Steal\" Box on Meijer\'s Home Page to see the camcorder!</em></p>            <br/>\n        <b>Store:</b> Meijer <br/>\n        <b>Expiration Date:</b> Wed, 15 Feb 2012 11:59:00 -0600 <br/>\n        <b>Categories: </b>Camera &amp; Photo | Electronics | Spring Break Travel | $ off | Free Shipping | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407571/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/meijer/deal-407571/', 'http://s1.dtkcdn.com/offer/original/407571-1329244517.jpg', '4');
INSERT INTO `deal` VALUES ('96', '56% off 8 Piece KitchenAid Cook for the Cure Prep Set at Housewares Deals; on sale for $29, originally\n        $66', null, '2012-02-15 00:16:00', '<img src=\"http://s3.dtkcdn.com/offer/original/407505-1329236451.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Great day for this deal of the day at Housewares Deals.&nbsp; Cook for the Cure and Valetine\'s Day!! Get this\n            8 pc. set at 56% Off.&nbsp; You know you can never have too many mixing bowls and strainers.&nbsp; I like\n            having plenty of prep tools especially when I am baking for a big crowd. <br></p>            <br/>\n        <b>Store:</b> Housewares Deals <br/>\n        <b>Expiration Date:</b> Tue, 14 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>House &amp; Home | Kitchen | % off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407505/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/housewares-deals/deal-407505/', 'http://s3.dtkcdn.com/offer/original/407505-1329236451.png', '5');
INSERT INTO `deal` VALUES ('97', 'Crayola Glow Explosion Bundle at Graveyard Mall; on sale for $15.99, originally $64.96', null, '2012-02-14 23:52:00', '<img src=\"http://s2.dtkcdn.com/offer/original/407481-1329234981.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Your kids will sure have a blast with this glow explosion bundle.&nbsp; Included in this bundle you get a\n            glow stick gear pack, sand art sculptures, glow paint and scenes, and an undersea adventures color stories\n            interactive DVD - all for only $15.99 compared to $64.96.&nbsp; Great for your kids to for your kids to give\n            one of their friends as a birthday present.<br></p>            <br/>\n        <b>Store:</b> Graveyard Mall <br/>\n        <b>Expiration Date:</b> Tue, 14 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Craft Supplies | Gifts &amp; Flowers | Hobby &amp; Collectibles | Daily Deal | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407481/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/graveyard-mall/deal-407481/', 'http://s2.dtkcdn.com/offer/original/407481-1329234981.png', '6');
INSERT INTO `deal` VALUES ('98', '63% off Natural Daylight Desk Lamp at Joann; on sale for $29.98, originally $79.99', null, '2012-02-14 22:43:00', '<img src=\"http://s2.dtkcdn.com/offer/original/407435-1329232511.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Today Only!!! Get this natural daylight desk lamp for 63% Off.&nbsp; This will make your workstation when you\n            are sewing that much eaiser.&nbsp; This can be used anywhere, in your home or office.&nbsp; This will look\n            cute especially with it being pink. (wink wink)<br></p>            <br/>\n        <b>Store:</b> Joann <br/>\n        <b>Expiration Date:</b> Tue, 14 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Craft Supplies | House &amp; Home | Lighting | % off | Daily Deal | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407435/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/joann/deal-407435/', 'http://s2.dtkcdn.com/offer/original/407435-1329232511.png', '7');
INSERT INTO `deal` VALUES ('99', '$30 off Macally 3-in-1 Battery Pack/Data Sync/2GB Flash Drive for iPhone 4(S)  iPod 4th Gen - POWERLINK;\n        on sale for $9.99 Shipped!', null, '2012-02-14 22:40:00', '<img src=\"http://s1.dtkcdn.com/offer/original/407416-1329231314.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>One Flash Drive does it all for your iPhone or iPod!&nbsp; If you\'re running out of battery and just need a\n            little more time to finish your conversation, plug this onto your iPhone/iPod and you\'ve got a full 25\n            minutes left!&nbsp; Recharging is easy via any USB port.&nbsp; Lights let you know what stage you are at in\n            the recharge so no more pulling out the drive to find there is only 5 minutes of charge left!&nbsp; But wait\n            there is MORE - 2gb flash to store your docs on the go AND a synch so your phone and laptop stay in synch.&nbsp;\n            One small device with Huge Capabilities!<br></p>\n\n        <p>Take PowerLink with you for emergency power for your iPhone or iPod with 30-pin dock connector. It\'s easy to\n            use: Just connect PowerLink to your iPhone/iPod, and switch on PowerLink\'s power. PowerLink boasts a 270mAh\n            Lithium-Ion battery that provides 500mA powering current to the iPhone or iPod. That\'s equal to about 25\n            minutes of talk time on an iPhone. (Note: The PowerLink does not actually charge the iPhone or iPod; it\n            powers the devices as an external battery pack.)When it\'s time to recharge, PowerLink\'s internal battery can\n            be charged from any computer with a USB port or through a USB power adapter. During charging, each LED takes\n            approximately one hour to light up. It takes approximately three hours to fully charge the PowerLink\'s\n            battery.Use as Flash DriveSee that USB connector? PowerLink works just like any other USB flash\n            drive--simply plug it into any computer\'s USB port and use it to take your files with you. It provides 2 GB,\n            but it\'s also available in other capacities.Use as Sync Cable AdapterWhile connected to your device,\n            PowerLink works just like a regular iPhone/iPod data sync cable to transfer files and data through iTunes,\n            or to charge the iPhone/iPod through a computer. A USB extension cable is included for use with a desktop\n            computer. <br></p>            <br/>\n        <b>Store:</b> Buy.com <br/>\n        <b>Expiration Date:</b> Sat, 18 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Computers &amp; Software | Electronics | Phones and Wireless | Tax Season | $ off | Free\n        Shipping | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407416/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/buy-com/deal-407416/', 'http://s1.dtkcdn.com/offer/original/407416-1329231314.png', '8');
INSERT INTO `deal` VALUES ('100', '50% off Blizzard  Anti-Pill Fleece Solids  Prints at Joann', null, '2012-02-14 22:39:00', '<img src=\"http://s2.dtkcdn.com/offer/original/407408-1329230555.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>If you are crafty person, which I am not, but wish I was.&nbsp; Choose from many fleece solids or prints to\n            make your creative pillows, blankets and more!! This sales ends Saturday - 50% Off!! <br></p>\n        <br/>\n        <b>Store:</b> Joann <br/>\n        <b>Expiration Date:</b> Sat, 25 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Craft Supplies | % off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407408/\">Get this Sale</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/joann/sale-407408/', 'http://s2.dtkcdn.com/offer/original/407408-1329230555.png', '7');
INSERT INTO `deal` VALUES ('101', '30% off Heart Apron at Target; on sale for $6.98, originally $9.99', null, '2012-02-14 22:03:00', '<img src=\"http://s3.dtkcdn.com/offer/original/407349-1329222147.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Cook up those special treats in this cute heart apron.&nbsp; In fact you can wear this anytime when you are\n            baking some fun yummy treats for kids, family and friends.&nbsp; You can get this apron for 30% off regular\n            price.&nbsp; This is also great to give as a gift for the special baker in your life.&nbsp; This item is a\n            clearance item, so this probably won\'t last too long, so hurry and order yours.<br></p>            <br/>\n        <b>Store:</b> Target <br/>\n        <b>Expiration Date:</b> Tue, 28 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Apparel | House &amp; Home | Kitchen | Teens | Women | Valentines Day | % off | Clearance |\n        Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407349/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/target/deal-407349/', 'http://s3.dtkcdn.com/offer/original/407349-1329222147.png', '9');
INSERT INTO `deal` VALUES ('102', '59% off Ty Pennington Topanga Bedding Set - King at Sears; on sale for $89.99, originally $219.99 plus Free\n        Shipping', null, '2012-02-14 21:04:00', '<img src=\"http://s3.dtkcdn.com/offer/original/407348-1329221796.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Get rid of that bedding set you have had for over 5 years.&nbsp; It\'s time for something new. This king Ty\n            Penningtion bedding set is a great new look for your bedroom.Today only you can get any size of this bedding\n            for only $89.99.&nbsp; Discount will show in shopping cart.&nbsp; You better act fast because this is a\n            Valentine\'s Day only kinda sale.&nbsp; What even makes this deal even hotter is you get free shipping when\n            you use Coupon Code - FASHION<br></p>\n\n        <p><br></p>\n\n        <p><br></p>            <br/>\n        <b>Store:</b> Sears <br/>\n        <b>Expiration Date:</b> Tue, 14 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Bed &amp; Bath | House &amp; Home | % off | Daily Deal | Free Shipping | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407348/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/sears/deal-407348/', 'http://s3.dtkcdn.com/offer/original/407348-1329221796.png', '10');
INSERT INTO `deal` VALUES ('103', 'Great for dress up or a pair of jeans! $42 off Latte Sidetail Open Cardigan; on sale for $32.99, originally\n        $75', null, '2012-02-14 05:45:00', '<img src=\"http://s1.dtkcdn.com/offer/original/407020-1329170508.jpg\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>I hadn\'t really given the new asymetrical style of sweaters much of a look.&nbsp; I think I am getting a\n            little bit too old but this one caught my eye.&nbsp; I like the way the light and dark colors are knitted in\n            and it sure looks cozy!&nbsp; My favorite part is the price! Maybe I still have a few years left to try some\n            new things :)</p>\n\n        <p>Headed out for Spring Break? Perfect sweater to slip on for a night out in a tropical location! Great with a\n            dress or just a pair of jeans!</p>\n\n        <p><br/>Cardigan season is in full swing with plenty of chic choices to choose from. For a comfortably casual\n            look, wear this open cardigan over a tee with jeans. The handmade look gives it a vintage feel and puts a\n            bit of strut in your step as you tackle your to-do list.<br/><br/>&nbsp;<br/><br/>&nbsp;&nbsp;&nbsp; 30%\n            mohair / 30% nylon / 40% acrylic<br/>&nbsp;&nbsp;&nbsp; Hand wash; dry flat<br/>&nbsp;&nbsp;&nbsp;\n            Imported<br/><br/></p>            <br/>\n        <b>Store:</b> Zulily <br/>\n        <b>Expiration Date:</b> Thu, 16 Feb 2012 08:59:00 -0600 <br/>\n        <b>Categories: </b>Apparel | Teens | Women | Spring Break Travel | $ off | Clearance | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407020/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/zulily/deal-407020/', 'http://s1.dtkcdn.com/offer/original/407020-1329170508.jpg', '11');
INSERT INTO `deal` VALUES ('104', 'Excellent Ratings! $150 off Zenith 50 Class 720p Plasma HDTV at Sears; on sale for $499.88, originally\n        $649.99', null, '2012-02-14 05:20:00', '<img src=\"http://s3.dtkcdn.com/offer/original/407001-1329169031.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Rated 5/5 with 49 reviews! Still time to surprise your sweetheart with this 50\" TV if your local Sears has it\n            in stock for pick-up! </p>\n\n        <p>Or if you are getting a Tax Refund maybe this is a way to reward yourself for a job well done!<br></p>\n\n        <p>Zenith Z50PT320 50\" Class (50.0\" Diagonal) TV<br><br>&nbsp;&nbsp;&nbsp; 50\" Class<br>&nbsp;&nbsp;&nbsp; 1024\n            x 768 resolution<br>&nbsp;&nbsp;&nbsp; Contrast Ratio: 2,000,000:1<br>&nbsp;&nbsp;&nbsp; 600Hz<br>&nbsp;&nbsp;&nbsp;\n            100,000 Hours Life Span<br>&nbsp;&nbsp;&nbsp; Infinite Surround System<br></p>            <br/>\n        <b>Store:</b> Sears <br/>\n        <b>Expiration Date:</b> Wed, 15 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Electronics | Satellite TV &amp; Radio | $ off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/407001/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/sears/deal-407001/', 'http://s3.dtkcdn.com/offer/original/407001-1329169031.png', '10');
INSERT INTO `deal` VALUES ('105', '$11 off Danskin Now - Women\'s Plus Velour Hoodie and Pants at Walmart; on sale for $11 plus $0.97\n        shipping', null, '2012-02-14 04:46:00', '<img src=\"http://s3.dtkcdn.com/offer/original/406966-1329166504.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>50% off!! These outfits are great to wear around the house in the evening or on the weekends!&nbsp; Cozy,\n            warm, snuggly...toss the hood up on your head and take a nap!<br></p>\n\n        <p>Hoodie:<br><br>&nbsp;&nbsp;&nbsp; Soft velour fabric<br>&nbsp;&nbsp;&nbsp; Full zip front<br>&nbsp;&nbsp;&nbsp;\n            2 side pockets<br>&nbsp;&nbsp;&nbsp; Long sleeves<br>&nbsp;&nbsp;&nbsp; Attached hood with\n            drawstring<br><br><br>Pants:<br><br>&nbsp;&nbsp;&nbsp; Soft velour fabric<br>&nbsp;&nbsp;&nbsp; 2 front\n            pockets<br>&nbsp;&nbsp;&nbsp; Elastic waistband<br>&nbsp;&nbsp;&nbsp; Exterior drawstring<br></p>\n        <br/>\n        <b>Store:</b> Walmart <br/>\n        <b>Expiration Date:</b> Sat, 18 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Apparel | Diet &amp; Fitness | Health &amp; Beauty | Women\'s Plus &amp; Petite | $ off |\n        Clearance | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406966/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/walmart/deal-406966/', 'http://s3.dtkcdn.com/offer/original/406966-1329166504.png', '12');
INSERT INTO `deal` VALUES ('106', '$2 off Lawn-Revitalizing Aerator Shoes at Northern Tool; on sale for $7.99, originally $9.99', null, '2012-02-14 03:42:00', '<img src=\"http://s1.dtkcdn.com/offer/original/406923-1329162995.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Now\'s the time to strap on some Lawn-Revitalizing Aerator shoes and make some holes in your lawn!&nbsp; Or\n            you could make the teenagers walk around the yard in them instead of grounding them!&nbsp; Two Birds.....One\n            Stone!</p>\n\n        <p><br/>Deluxe Velcro&reg; straps hold these light weight Lawn Aerator Shoes to your feet. Each step presses a\n            dozen 2in. metal spikes into hard-packed soil and densely-packed turf. Thousands of holes create air,\n            fertilizer, and moisture to soak into the soil. Rugged green plastic, 11 3/8in. long. Strap easily onto any\n            adult size foot. Perfect for using when cutting the grass or raking the leaves!<br/><br/><br/><br/></p>\n        <br/>\n        <b>Store:</b> Northern Tool <br/>\n        <b>Expiration Date:</b> Sat, 18 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Home Improvement | Yard &amp; Gardening | $ off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406923/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/northern-tool/deal-406923/', 'http://s1.dtkcdn.com/offer/original/406923-1329162995.png', '13');
INSERT INTO `deal` VALUES ('107', '$37 off Chocolate Surplice Maxi Dress at Zulily; on sale for $36.99, originally $74', null, '2012-02-14 03:17:00', '<img src=\"http://s2.dtkcdn.com/offer/original/406892-1329161355.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Up to 55% off on Red Currant at Zulily through 12/16!&nbsp; </p>\n\n        <p>Lots of nice dresses, skirts and tops from Red Current on sale!&nbsp; <br></p>\n\n        <p>Whisk yourself away into the vibrant colors and sublime comfort of Red Currant designs. This Los Angeles\n            brand offers simple, flattering styles in a wide array of patterns so you\'re sure to find a piece that\n            represents your personal style. Perfect for everyday wear, they\'re pieces you\'ll turn to so often that\n            they\'ll hardly ever see your closet.</p>\n\n        <p>I like this chocolate Maxi dress - So easy for a Mommy to throw on and be ready for any type of occasion!\n            <br></p>            <br/>\n        <b>Store:</b> Zulily <br/>\n        <b>Expiration Date:</b> Thu, 16 Feb 2012 08:59:00 -0600 <br/>\n        <b>Categories: </b>Apparel | Women | Spring Break Travel | $ off | Clearance | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406892/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/zulily/deal-406892/', 'http://s2.dtkcdn.com/offer/original/406892-1329161355.png', '11');
INSERT INTO `deal` VALUES ('108', '$229 off 4.00 Carat Natural Amethyst and Diamond Bracelet in .925 Sterling Silver; on sale for $73.80\n        Shipped', null, '2012-02-14 02:40:00', '<img src=\"http://s3.dtkcdn.com/offer/original/406857-1329159066.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Amethyst is February\'s Birthstone! Perfect Birthday gift!&nbsp; Beautiful bracelet with a big discount and\n            FREE Shipping!&nbsp;</p>\n\n        <p><span style=\"color: #ff0000\"><strong>Shown on Homepage in \"New Arrivals\" or Search on\n            BRF12394AM</strong></span></p>\n\n        <p>7 deep colored all natural amethyst are prong set between waves of solid .925 sterling silver. A center\n            diamond accent gives the bracelet a pefect sparkling touch. The bracelet is crafted with top of the line\n            workmanship with the highest of finishing quality. The natural amethyst radiate a brilliant and flawless\n            deep purple tone. A one of a kind bracelet sure to be treasured forever. The bracelet measures 7 inches in\n            length and secures with a heavy duty and durable latch lock clasp.</p>            <br/>\n        <b>Store:</b> Szul <br/>\n        <b>Expiration Date:</b> Sun, 19 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Jewelry | $ off | Free Shipping | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406857/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/szul/deal-406857/', 'http://s3.dtkcdn.com/offer/original/406857-1329159066.png', '14');
INSERT INTO `deal` VALUES ('109', 'Deal of the Week! $104 off Salon Tech Silicone450 Styling Iron Set; on sale for $155.99 Shipped! Iron reaches\n        450F in 20 seconds!', null, '2012-02-14 01:04:00', '<img src=\"http://s1.dtkcdn.com/offer/original/406794-1329153175.jpg\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>If you don\'t want to wait for your styling iron to heat up, check this out! Iron reaches 450F in 20 seconds\n            and gives a sound when the temperature you want is reached! Only have a couple minutes to freshen up?&nbsp;\n            Plug this iron in and go!<br></p>\n\n        <p>Incredible deal on The Salon Tech Silicone450 Styling Set: 40% off the regular iron plus 2 free items ( a $25\n            value ) Salon Tech Silicone450 styling iron reaches 450F is 20 seconds. This styling iron has a patented 3\n            silicone bar technology smooths hair in just one stroke while maintaining sleek and smooth hair. The\n            Silicone450 has ceramic plates and auto shut-off. Iron emits a sound when desired temperature is reached.\n            Adjustable temperature assures proper heat control for your hair type. <br><br></p>            <br/>\n        <b>Store:</b> Folica <br/>\n        <b>Expiration Date:</b> Sun, 19 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Health &amp; Beauty | $ off | Free Shipping | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406794/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/folica/deal-406794/', 'http://s1.dtkcdn.com/offer/original/406794-1329153175.jpg', '15');
INSERT INTO `deal` VALUES ('110', '74% off The Help DVD at Target; on sale for $9, originally $34.99', null, '2012-02-14 00:30:00', '<img src=\"http://s3.dtkcdn.com/offer/original/406791-1329152768.png\" hspace=\"2\" vspace=\"2\"/>\n\n        <p><!--[if gte mso 9]&gt;-->\n\n            Normal\n            0\n\n\n            false\n            false\n            false\n\n            EN-US\n            X-NONE\n            X-NONE\n\n\n            MicrosoftInternetExplorer4\n\n\n            <!--[if gte mso 9]&gt;-->\n\n\n            <!--[if gte mso 10]&gt;-->\n\n            /* Style Definitions */\n            table.MsoNormalTable\n            {mso-style-name:\"Table Normal\";\n            mso-tstyle-rowband-size:0;\n            mso-tstyle-colband-size:0;\n            mso-style-noshow:yes;\n            mso-style-priority:99;\n            mso-style-qformat:yes;\n            mso-style-parent:\"\";\n            mso-padding-alt:0in 5.4pt 0in 5.4pt;\n            mso-para-margin:0in;\n            mso-para-margin-bottom:.0001pt;\n            mso-pagination:widow-orphan;\n            font-size:11.0pt;\n            font-family:\"Calibri\",\"sans-serif\";\n            mso-ascii-font-family:Calibri;\n            mso-ascii-theme-font:minor-latin;\n            mso-fareast-font-family:\"Times New Roman\";\n            mso-fareast-theme-font:minor-fareast;\n            mso-hansi-font-family:Calibri;\n            mso-hansi-theme-font:minor-latin;\n            mso-bidi-font-family:\"Times New Roman\";\n            mso-bidi-theme-font:minor-bidi;}\n\n\n        </p>\n\n        <p class=\"MsoNormal\">This movie just came out not long ago and for a limited time\n            you can get it for only $9.00 (Reg. $34.99).&nbsp; This movie will eventually\n            go up after it&rsquo;s been out for awhile, but will be $19.99.&nbsp; Why wait when\n            you can get it for $9.00 Now!!&nbsp; Awesome Movie!!</p>\n\n        <br/>\n        <b>Store:</b> Target <br/>\n        <b>Expiration Date:</b> Mon, 20 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Movies &amp; Music | % off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406791/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/target/deal-406791/', 'http://s3.dtkcdn.com/offer/original/406791-1329152768.png', '9');
INSERT INTO `deal` VALUES ('111', '55% off Gallery Single Breasted Trench at Nordstrom; on sale for $61.90, originally $138', null, '2012-02-13 22:42:00', '<img src=\"http://s1.dtkcdn.com/offer/original/406747-1329144401.jpg\" hspace=\"2\" vspace=\"2\"/>\n\n        <p>Nordstrom\'s is known for it\'s top of the line quality. Shop today for a new single breasted trench coat. Plus\n            get Free Shipping on all orders.</p>\n\n        <p>Search for item: <span>#373185</span></p>            <br/>\n        <b>Store:</b> Nordstrom <br/>\n        <b>Expiration Date:</b> Sat, 18 Feb 2012 23:59:00 -0600 <br/>\n        <b>Categories: </b>Apparel | Women | % off | Hot <br/>\n        <a href=\"http://www.dealtaker.com/goshop/deal/406747/\">Get this Deal</a>', 'dealtaker.com', 'http://www.dealtaker.com/store/nordstrom/deal-406747/', 'http://s1.dtkcdn.com/offer/original/406747-1329144401.jpg', '16');

-- ----------------------------
-- Table structure for `deal_categoryship`
-- ----------------------------
DROP TABLE IF EXISTS `deal_categoryship`;
CREATE TABLE `deal_categoryship` (
  `deal_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`deal_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_categoryship
-- ----------------------------
INSERT INTO `deal_categoryship` VALUES ('92', '7');
INSERT INTO `deal_categoryship` VALUES ('92', '8');
INSERT INTO `deal_categoryship` VALUES ('92', '9');
INSERT INTO `deal_categoryship` VALUES ('92', '10');
INSERT INTO `deal_categoryship` VALUES ('93', '10');
INSERT INTO `deal_categoryship` VALUES ('93', '13');
INSERT INTO `deal_categoryship` VALUES ('93', '14');
INSERT INTO `deal_categoryship` VALUES ('93', '15');
INSERT INTO `deal_categoryship` VALUES ('94', '10');
INSERT INTO `deal_categoryship` VALUES ('94', '13');
INSERT INTO `deal_categoryship` VALUES ('94', '16');
INSERT INTO `deal_categoryship` VALUES ('95', '10');
INSERT INTO `deal_categoryship` VALUES ('95', '11');
INSERT INTO `deal_categoryship` VALUES ('95', '13');
INSERT INTO `deal_categoryship` VALUES ('95', '17');
INSERT INTO `deal_categoryship` VALUES ('95', '18');
INSERT INTO `deal_categoryship` VALUES ('95', '19');
INSERT INTO `deal_categoryship` VALUES ('96', '9');
INSERT INTO `deal_categoryship` VALUES ('96', '10');
INSERT INTO `deal_categoryship` VALUES ('96', '14');
INSERT INTO `deal_categoryship` VALUES ('96', '20');
INSERT INTO `deal_categoryship` VALUES ('97', '10');
INSERT INTO `deal_categoryship` VALUES ('97', '21');
INSERT INTO `deal_categoryship` VALUES ('97', '22');
INSERT INTO `deal_categoryship` VALUES ('97', '23');
INSERT INTO `deal_categoryship` VALUES ('97', '24');
INSERT INTO `deal_categoryship` VALUES ('98', '9');
INSERT INTO `deal_categoryship` VALUES ('98', '10');
INSERT INTO `deal_categoryship` VALUES ('98', '14');
INSERT INTO `deal_categoryship` VALUES ('98', '21');
INSERT INTO `deal_categoryship` VALUES ('98', '24');
INSERT INTO `deal_categoryship` VALUES ('98', '25');
INSERT INTO `deal_categoryship` VALUES ('99', '10');
INSERT INTO `deal_categoryship` VALUES ('99', '11');
INSERT INTO `deal_categoryship` VALUES ('99', '13');
INSERT INTO `deal_categoryship` VALUES ('99', '19');
INSERT INTO `deal_categoryship` VALUES ('99', '26');
INSERT INTO `deal_categoryship` VALUES ('99', '27');
INSERT INTO `deal_categoryship` VALUES ('99', '28');
INSERT INTO `deal_categoryship` VALUES ('100', '9');
INSERT INTO `deal_categoryship` VALUES ('100', '10');
INSERT INTO `deal_categoryship` VALUES ('100', '21');
INSERT INTO `deal_categoryship` VALUES ('101', '8');
INSERT INTO `deal_categoryship` VALUES ('101', '9');
INSERT INTO `deal_categoryship` VALUES ('101', '10');
INSERT INTO `deal_categoryship` VALUES ('101', '14');
INSERT INTO `deal_categoryship` VALUES ('101', '20');
INSERT INTO `deal_categoryship` VALUES ('101', '29');
INSERT INTO `deal_categoryship` VALUES ('101', '30');
INSERT INTO `deal_categoryship` VALUES ('101', '31');
INSERT INTO `deal_categoryship` VALUES ('101', '32');
INSERT INTO `deal_categoryship` VALUES ('102', '9');
INSERT INTO `deal_categoryship` VALUES ('102', '10');
INSERT INTO `deal_categoryship` VALUES ('102', '14');
INSERT INTO `deal_categoryship` VALUES ('102', '19');
INSERT INTO `deal_categoryship` VALUES ('102', '24');
INSERT INTO `deal_categoryship` VALUES ('102', '33');
INSERT INTO `deal_categoryship` VALUES ('103', '10');
INSERT INTO `deal_categoryship` VALUES ('103', '13');
INSERT INTO `deal_categoryship` VALUES ('103', '18');
INSERT INTO `deal_categoryship` VALUES ('103', '29');
INSERT INTO `deal_categoryship` VALUES ('103', '30');
INSERT INTO `deal_categoryship` VALUES ('103', '31');
INSERT INTO `deal_categoryship` VALUES ('103', '32');
INSERT INTO `deal_categoryship` VALUES ('104', '10');
INSERT INTO `deal_categoryship` VALUES ('104', '11');
INSERT INTO `deal_categoryship` VALUES ('104', '12');
INSERT INTO `deal_categoryship` VALUES ('104', '13');
INSERT INTO `deal_categoryship` VALUES ('105', '10');
INSERT INTO `deal_categoryship` VALUES ('105', '13');
INSERT INTO `deal_categoryship` VALUES ('105', '29');
INSERT INTO `deal_categoryship` VALUES ('105', '32');
INSERT INTO `deal_categoryship` VALUES ('105', '34');
INSERT INTO `deal_categoryship` VALUES ('105', '35');
INSERT INTO `deal_categoryship` VALUES ('105', '36');
INSERT INTO `deal_categoryship` VALUES ('106', '10');
INSERT INTO `deal_categoryship` VALUES ('106', '13');
INSERT INTO `deal_categoryship` VALUES ('106', '37');
INSERT INTO `deal_categoryship` VALUES ('106', '38');
INSERT INTO `deal_categoryship` VALUES ('107', '10');
INSERT INTO `deal_categoryship` VALUES ('107', '13');
INSERT INTO `deal_categoryship` VALUES ('107', '18');
INSERT INTO `deal_categoryship` VALUES ('107', '29');
INSERT INTO `deal_categoryship` VALUES ('107', '31');
INSERT INTO `deal_categoryship` VALUES ('107', '32');
INSERT INTO `deal_categoryship` VALUES ('108', '10');
INSERT INTO `deal_categoryship` VALUES ('108', '13');
INSERT INTO `deal_categoryship` VALUES ('108', '19');
INSERT INTO `deal_categoryship` VALUES ('108', '39');
INSERT INTO `deal_categoryship` VALUES ('109', '10');
INSERT INTO `deal_categoryship` VALUES ('109', '13');
INSERT INTO `deal_categoryship` VALUES ('109', '19');
INSERT INTO `deal_categoryship` VALUES ('109', '35');
INSERT INTO `deal_categoryship` VALUES ('110', '9');
INSERT INTO `deal_categoryship` VALUES ('110', '10');
INSERT INTO `deal_categoryship` VALUES ('110', '40');
INSERT INTO `deal_categoryship` VALUES ('111', '9');
INSERT INTO `deal_categoryship` VALUES ('111', '10');
INSERT INTO `deal_categoryship` VALUES ('111', '29');
INSERT INTO `deal_categoryship` VALUES ('111', '31');

-- ----------------------------
-- Table structure for `store`
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '店名',
  `detail` text,
  `location` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('2', 'Herbergers', null, null, null);
INSERT INTO `store` VALUES ('3', 'Canvas People', null, null, null);
INSERT INTO `store` VALUES ('4', 'Meijer', null, null, null);
INSERT INTO `store` VALUES ('5', 'Housewares Deals', null, null, null);
INSERT INTO `store` VALUES ('6', 'Graveyard Mall', null, null, null);
INSERT INTO `store` VALUES ('7', 'Joann', null, null, null);
INSERT INTO `store` VALUES ('8', 'Buy.com', null, null, null);
INSERT INTO `store` VALUES ('9', 'Target', null, null, null);
INSERT INTO `store` VALUES ('10', 'Sears', null, null, null);
INSERT INTO `store` VALUES ('11', 'Zulily', null, null, null);
INSERT INTO `store` VALUES ('12', 'Walmart', null, null, null);
INSERT INTO `store` VALUES ('13', 'Northern Tool', null, null, null);
INSERT INTO `store` VALUES ('14', 'Szul', null, null, null);
INSERT INTO `store` VALUES ('15', 'Folica', null, null, null);
INSERT INTO `store` VALUES ('16', 'Nordstrom', null, null, null);
