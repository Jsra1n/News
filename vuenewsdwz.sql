/*
 Navicat Premium Data Transfer

 Source Server         : Mysql8
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : vuenewsdwz

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 19/04/2024 14:59:12
*/

DROP DATABASE IF EXISTS vuenewsdwz ;
CREATE DATABASE vuenewsdwz CHARACTER SET utf8;
use vuenewsdwz ;



SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帐号',
  `pwd` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'dwz', 'admin', '2024-04-10 16:53:57');

-- ----------------------------
-- Table structure for difangmeishi
-- ----------------------------
DROP TABLE IF EXISTS `difangmeishi`;
CREATE TABLE `difangmeishi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meishibianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '美食编号',
  `mingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `fujinjingdian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '附近景点',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `tupian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `meishijianjie` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '美食简介',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `difangmeishi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地方美食' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of difangmeishi
-- ----------------------------
INSERT INTO `difangmeishi` VALUES (1, '2104231633490', '特色美食', '城隍庙', 1, 'upload/ecdbe61eb19bda4fdc0a9cd5480b7ba5.jpg,upload/c5b97b78b7c72016a662e5256a2fbf43.jpg', 30.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2024-04-10 19:13:02');
INSERT INTO `difangmeishi` VALUES (2, '2104231635533', '特色美食222', '颐和园', 1, 'upload/1a96cc46fc36e0574dd4d58e5ff0e49f.jpg,upload/a713441c33216cb674023d50a3522912.jpg', 60.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2024-04-10 19:03:48');
INSERT INTO `difangmeishi` VALUES (3, '2104231636571', '红烧系列', '颐和园', 4, 'upload/41520be8ca77f734cd480b45c4a34156.jpg,upload/9b68e8c49f68e2bfeb3e32770ca993b6.jpg', 60.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2024-04-10 18:54:04');
INSERT INTO `difangmeishi` VALUES (4, '2104231637402', '美味中餐', '颐和园', 4, 'upload/87604a91f88d948d0cf72bc7a0e891b1.jpg,upload/4817bbb9e832bc9de797cf383f7530d5.jpg,upload/9df4be4fa5027745f22192f1561d794a.jpg', 100.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2024-04-10 18:42:26');
INSERT INTO `difangmeishi` VALUES (5, '042318042749', '东坡肉', '世界之窗', 4, 'upload/20210423/acca1f80-f9b2-48c5-b670-ce70a362654b.jpg,upload/20210423/9c1f4921-f4ce-4877-a63b-85c0dbab600d.jpg', 120.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2024-04-10 18:05:26');

-- ----------------------------
-- Table structure for diqu
-- ----------------------------
DROP TABLE IF EXISTS `diqu`;
CREATE TABLE `diqu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `diqumingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地区名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地区' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of diqu
-- ----------------------------
INSERT INTO `diqu` VALUES (1, '本地', '2024-04-10 18:24:34');
INSERT INTO `diqu` VALUES (2, '境内', '2024-04-10 18:33:52');
INSERT INTO `diqu` VALUES (6, '境外', '2024-04-10 18:12:25');

-- ----------------------------
-- Table structure for jingdianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jingdianxinxi`;
CREATE TABLE `jingdianxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `jingdianbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '景点编号',
  `jingdianmingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '景点名称',
  `suoshudiqu` int UNSIGNED NOT NULL COMMENT '所属地区',
  `tupian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `kaifangshijian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '开放时间',
  `fujinmeishi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '附近美食',
  `dizhi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `piaojia` decimal(18, 2) NOT NULL COMMENT '票价',
  `liulanliang` int NOT NULL COMMENT '浏览量',
  `miaoshu` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '描述',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jingdianxinxi_suoshudiqu_index`(`suoshudiqu` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '景点信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jingdianxinxi
-- ----------------------------
INSERT INTO `jingdianxinxi` VALUES (1, '2101091137481', '漓江山水', 1, 'upload/e8882dc0dcd1eff6b1bf4b8198c944fc.png,upload/d506cc960ccd3d9aaf88146ed10d5f53.png,upload/c46cc0ff88af3292cc864dc46df1fa61.png', '全天开放', '红烧系列,美味中餐', '广西桂林', 100.00, 8, '<p>桂林漓江风景区游览胜地繁多，在短期内只能bai择其主要景点进行游览，其中一江（漓江）、两洞（芦笛岩、七星岩）、三山（独秀峰、伏波山、叠彩山）具有代表性，它们基本上是桂林山水的精华所在。旅行社组织的桂林两日游，一般是第一天游独秀峰、叠彩山、伏波山、七星岩和芦笛岩；第二天起由漓江去阳朔。 [编辑本段]独秀峰 　　在桂林市区王城内。它平地拔起,孤峰独秀，人们常用&ldquo;南天一柱&rdquo;来形容它的挺拔。由于它在朝霞和夕阳辉，犹如巨人披上紫袍，腰系金带，故又名紫金山。从西麓拾级而上，登306级石阶即可到达峰顶，在此俯瞰，桂林数十里奇山秀水一览无余。故游览桂林的游客，一般先游览独秀峰，鸟瞰一下桂林全貌。独秀峰山麓还有读书岩（岩即洞）、月牙池等景点。读书岩相传为南北朝文学家颜延之读书处。 [编辑本段]叠彩山 　　 叠彩山 在桂林市北部，面临漓江，远望如匹匹彩缎相叠，故名。相传过去山上多桂树，所以亦名桂山。又因山麓有奇特的风洞，人们称它为风洞山。叠彩山是市内风景荟萃之地，包括越山，四望山、明月峰和仙鹤峰。上山，一路古木参天，山色秀丽、与园林建筑叠彩亭、于越亭、秀山书院、仰止堂等相融成趣。顶峰拿云亭是观景的好去处，古人赞美这里是&ldquo;江山会景处&rdquo;。山上石刻很多，太极阁的摩崖造像和石刻，艺术价值很高。 [编辑本段]伏波山 　　 伏波山 在桂林东北伏波门外，东枕漓江，孤峰挺秀，风景迷人，有&ldquo;伏波胜景&rdquo;之称，由遇阻回澜之势。伏波山主要名胜有唐代摩崖石刻、还珠洞、试剑石等。东麓的还珠洞分上下两层，互相连通，上洞曲折高朗，壁上多唐代造像。下洞临水伏波，明朗开阔，洞中有试剑石。试剑石乃是天然的钟乳石，它与地面间有一间隙，仿佛被剑砍过一样,故名之。试剑石旁有石凳，石桌，石前有伏波潭，潭水如镜，游人在此欣赏景别有一番乐趣。</p>', '2024-04-10 17:50:49');
INSERT INTO `jingdianxinxi` VALUES (2, '2101091142120', '西双版纳', 2, 'upload/053a867d9fc255ccc192844987aee542.png,upload/50a521e09e3009741329113dd9c765f7.png,upload/73c46ea394ac0184a3181f77851e4b65.png', '全天开放', '特色美食,红烧系列', '云南xx路', 100.00, 19, '<p>西双版纳傣族自治州，是云南省<span class=\"smnwth2cmuo\">下辖</span>的一个自治州、地级行政区，位于中华人民共和国云南省最南端，地处北纬约21&deg;10&rsquo;，东经99&deg;55&rsquo;至101&deg;50&rsquo;之间，属北回归线以南的热带湿润区，东西面与江城县、普洱市相连；西北面与澜沧县为邻，东南部、南部和西南部分别与老挝、缅甸山水相连，邻近泰国和越南，边界线长达966.3公里，约等于云南省边境线总长的1/4，面积19582.45平方公里。</p>\n<p>西双版纳有中国唯一的热带雨林自然保护区，是国家级生态示范区、国家级风景名胜区、联合国生物多样性保护圈成员，植物种类占全国的1/6，动物种类占全国的1/4，森林覆盖率80.8%，是中国第二大天然橡胶生产基地，大叶种茶的原生地、普洱茶的故乡，建有1个5A级景区，9个4A级景区，西双版纳以神奇的热带雨林自然景观和少数民族风情而闻名于世，是中国的热点旅游城市之一。</p>\n<p><a class=\"ikqb_img_alink\" title=\"点击查看大图\" href=\"https://iknow-pic.cdn.bcebos.com/bd3eb13533fa828bbce220c7f31f4134960a5ad4\" target=\"_blank\" rel=\"noopener\"><img class=\"ikqb_img\" src=\"./upload/1619170054083.png\" /></a></p>', '2024-04-10 18:02:30');
INSERT INTO `jingdianxinxi` VALUES (3, '2101091147333', '世界之窗', 2, 'upload/af939873e6383d3ac5263a56338dd746.png,upload/57677818acbfddc07ed2483713cac2f7.png,upload/7526b5302d5410b9b992b61a1b6cfe55.png', '全天开发', '美味中餐,红烧系列', '广东深圳', 100.00, 2, '<p>世界之窗位于深圳湾畔，以弘扬世界文化为宗旨，把世zhi界奇观、历史遗迹、古今zhuan名胜、民间歌舞表演汇集一园，营造了一个精彩美妙的世界。世界之窗景区按五大洲划分，与世界广场、世界雕塑园、巴黎之春购物街、侏罗纪天地共同构成千姿万态、美妙绝仑、让人惊叹的人造主题公园。公园中的各个景点，都按不同比例自由仿建，精巧别致，维妙维肖。世界之窗的一个个景点都是一首首凝固的交响诗，那些异彩纷呈的民俗表演则是一幅幅活泼生动的风情画。<br />景区按世界地域结构和游览活动shu容分为世界广场、亚洲区、大洋州区、欧洲区、非洲区、美洲区、现代科技娱乐区、世界雕塑园、国际街九大景区，内建有118个景点。</p>', '2024-04-10 17:42:17');
INSERT INTO `jingdianxinxi` VALUES (4, '2101091151440', '颐和园', 2, 'upload/1357db17a09de5c07a218a036ac28345.png,upload/508325a5f7c0c4a4ddb91048647752a2.png,upload/5f33344eef6ef2a23ddeb22689b46e1f.png', '全天开放', '美味中餐,红烧系列', '北京', 100.00, 15, '<p>颐和园是我国清朝时期修建的皇家bai园林，在北京西郊修建，以杭州西湖为借鉴，修建的一座具有江南风范的皇家行宫。在我国古代，皇室是最高权力的象征，所有的能人巧匠都为他们服务着，所以皇家修建的园林建筑可以作为古代建筑的代表之作，颐和园就是一个很好地例子。<br />颐和园的修筑和破坏历史：&ldquo;乾隆十五年，乾隆皇帝为孝敬其母崇庆皇太后动用448万两白银在这里改建为清漪园，形成了从现清华园到香山长达二十公里的皇家园林区。咸丰十年，清漪园被英法联军焚毁。光绪十四年重建，改称颐和园，作消夏游乐地。光绪二十六年，颐和园又遭&ldquo;八国联军&rdquo;的破坏，珍宝被劫掠一空。清朝灭亡后，颐和园在军阀混战和国民党统治时期，又遭破坏。&rdquo;&mdash;&mdash;引自百度百科。所以，颐和园经历了风风雨雨，不断地破坏和修筑，最终保存下来，才是我们今天看到的样子。<br />颐和园是现世保存最完整的皇家行宫，被人们比喻为&ldquo;皇家园林博物馆。&rdquo;颐和园的面积很大，景点也相当丰富，为了让皇室的人们体会到购物的乐趣，修建了苏州街，由宫里的太监宫女们假扮商人卖货。为了庆祝，万寿山就是皇帝皇后举行庆典的地方；排云殿，长廊，宝云阁。等等，大小景点数十个之多。<br />颐和园是我国的5A级景区，重点文物保护对象，其历史意义，文化价值都不能以金钱衡量。</p>', '2024-04-10 17:22:58');
INSERT INTO `jingdianxinxi` VALUES (5, '2101091420274', '城隍庙', 2, 'upload/20240410/2f8ce2f3-8304-470e-bf4b-fd41fd965f03.jpg,upload/20210423/14f9ad4b-c4ac-45a7-a55a-0a26498b7288.jpg', '全天开放', '红烧系列,特色美食222', '上海浦东', 100.00, 2, '<p>上海城隍庙位于上海市黄浦区方浜中路，为&ldquo;长江三大庙&rdquo;之一。城隍，又称城隍神、城隍爷。是中国宗bai教文化中普遍崇祀的重要神祇之一，由有功于地方民众的名臣英雄充当，是中国民间和道教信奉守护城池之神。</p>\n<p>上海城隍庙传说系三国时吴主孙皓所建，明永乐年间，改建为城隍庙。前殿祭祀金山神汉大将军博陆侯霍光神主，正殿供诰封四品显佑伯城隍神明待制秦裕伯御史，后殿乃寝宫。现门前存有1535年所建的牌坊，戏台为1865年建。</p>\n<p>上海城隍庙殿堂建筑属南方大式建筑，红墙泥瓦，现在庙内主体建筑由庙前广场、大殿、元辰殿，财神殿、慈航殿、城隍殿、娘娘殿组成。</p>\n<p><img src=\"./upload/1619169229736.png\" /></p>', '2024-04-10 17:31:38');
INSERT INTO `jingdianxinxi` VALUES (6, '042318034459', 'XXXXXX景点', 6, 'upload/20240410/62fb70e7-1771-4d26-952d-066707151779.jpeg,upload/20210423/20da14c3-c0c1-46b2-9c74-7659ab6774ea.jpg,upload/20210423/b3128706-3423-4be4-a92c-52a9f9109b4d.jpg', '8.00-18.00', '美味中餐,红烧系列', 'Xx\'x\'x\'x\'x\'xxxxxxx 地址', 120.00, 5, '<p>描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述</p>', '2024-04-10 18:04:11');

-- ----------------------------
-- Table structure for liuyanban
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系电话',
  `liuyanneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `liuyanren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言人',
  `huifuneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '回复内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES (1, '大大', '13245678910', '留言内容', '111', '收到', '2024-04-10 17:58:45');
INSERT INTO `liuyanban` VALUES (2, 'xx小小', '12345678910', '留言内容', '333', 'sd收到', '2024-04-10 18:10:36');
INSERT INTO `liuyanban` VALUES (3, 'nh', 'hhhhhhhnhn', 'nnnnnnnn', 'admin', '', '2024-04-14 16:29:27');
INSERT INTO `liuyanban` VALUES (4, '11', '1111111', '11111111', 'dwz', '', '2024-04-14 17:34:01');
INSERT INTO `liuyanban` VALUES (5, 'test', 'awwwd', 'wdaa', 'test', '', '2024-04-14 17:36:00');
INSERT INTO `liuyanban` VALUES (6, 'dwz', '15994403076', 'test', 'dwz', '', '2024-04-14 23:22:36');

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES (1, '1', 'upload/20240415/bd82af10-5ae2-4a35-92c6-5771bacf3d09.png', '#', '2024-04-10 17:10:22');
INSERT INTO `lunbotu` VALUES (2, '2', 'upload/20240410/a95822bb-0997-4d37-99a3-6aaaa04d1efb.jpg', '#', '2024-04-10 17:10:32');

-- ----------------------------
-- Table structure for lvyouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `lvyouxianlu`;
CREATE TABLE `lvyouxianlu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xianlubianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路编号',
  `xianlumingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路名称',
  `tupian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `chufadi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出发地',
  `tujingdi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '途经地',
  `zhongdian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '终点',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `liulanliang` int NOT NULL COMMENT '浏览量',
  `xianlutese` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路特色',
  `xianlujianjie` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路简介',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '旅游线路' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lvyouxianlu
-- ----------------------------
INSERT INTO `lvyouxianlu` VALUES (1, '042317345975', '北京-上海', 'upload/20240410/4806562b-ee1d-4713-bd62-c5d0aa23547e.jpg,upload/20210423/547cf65a-9a31-4d1a-8b02-376fa7a2e1d1.jpg', '北京', '安徽', '上海', 1200.00, 3, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介</p>', '2024-04-10 17:37:51');
INSERT INTO `lvyouxianlu` VALUES (2, '042317383995', '广东-北京', 'upload/20240410/47556825-36b6-4bd0-866e-66643f4c37d7.jpg,upload/20210423/afe0acf7-e78a-4350-8ecd-bfc258d63309.jpg', '广东', '安徽', '北京', 1200.00, 6, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介</p>', '2024-04-10 17:39:19');
INSERT INTO `lvyouxianlu` VALUES (3, '042317396310', '云南-海南', 'upload/20240410/eaf23ac1-260e-4d15-bf84-f5044ef2dc49.jpg,upload/20210423/3aa28ed5-31ed-4fbc-a9f5-28080da37841.jpg', '云南', '广西', '海南', 1200.00, 1, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介</p>', '2024-04-10 17:40:35');
INSERT INTO `lvyouxianlu` VALUES (4, '042317404470', '广东-新疆', 'upload/20240410/6487cbd4-633c-4989-8e24-7ea0e12e55fc.jpg,upload/20210423/535def89-8d21-4305-88cd-2fd3aa8ecae4.jpg,upload/20210423/79fc129b-9668-48a5-8ade-eb8ce5927f9d.jpg', '广东', '湖南', '新疆', 3000.00, 12, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介</p>', '2024-04-10 17:41:38');
INSERT INTO `lvyouxianlu` VALUES (5, '042318054243', 'XXXXX线路', 'upload/20240410/4a5f9464-fda0-44bb-aacc-9ff85796fcbf.jpg,upload/20210423/d6f35748-1019-4639-8516-a36e89158bb1.jpg', '安徽', '湖南，广西，', '广西', 1200.00, 12, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介线路简介</p>', '2024-04-10 18:06:31');

-- ----------------------------
-- Table structure for meishifenlei
-- ----------------------------
DROP TABLE IF EXISTS `meishifenlei`;
CREATE TABLE `meishifenlei`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '美食分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meishifenlei
-- ----------------------------
INSERT INTO `meishifenlei` VALUES (1, '川菜', '2024-04-10 19:54:22');
INSERT INTO `meishifenlei` VALUES (2, '粤菜', '2024-04-10 19:45:53');
INSERT INTO `meishifenlei` VALUES (3, '西餐', '2024-04-10 19:37:14');
INSERT INTO `meishifenlei` VALUES (4, '中餐', '2024-04-10 19:24:08');

-- ----------------------------
-- Table structure for shoucangjilu
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏用户',
  `xwid` int UNSIGNED NOT NULL COMMENT '对应模块id',
  `biao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏得模块',
  `biaoti` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '显示的标题',
  `url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏URL',
  `ziduan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '对应模块字段',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES (1, 'admin', 4, 'jingdianxinxi', '颐和园', 'http://192.168.0.38:8080/', 'jingdianmingcheng', '2024-04-10 17:43:13');
INSERT INTO `shoucangjilu` VALUES (2, '111', 2, 'lvyouxianlu', '广东-北京', 'http://192.168.0.38:8080/', 'xianlumingcheng', '2024-04-10 17:53:05');
INSERT INTO `shoucangjilu` VALUES (3, '333', 4, 'lvyouxianlu', '广东-新疆', 'http://192.168.0.38:8080/', 'xianlumingcheng', '2024-04-10 18:10:47');
INSERT INTO `shoucangjilu` VALUES (4, 'dwz', 6, 'jingdianxinxi', 'XXXXXX景点', 'http://127.0.0.1:8080/', 'jingdianmingcheng', '2024-04-14 18:13:47');
INSERT INTO `shoucangjilu` VALUES (5, 'dwz', 4, 'jingdianxinxi', '颐和园', 'http://localhost:8080/', 'jingdianmingcheng', '2024-04-18 15:11:14');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `token` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '唯一值',
  `session` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '保存得数据',
  `cx` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录权限',
  `login` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录模块',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录用户',
  `valueid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户id',
  `token_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '前端登录凭证' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('4E0HOVF7OEXH0BAD2B0AIXXOES26UMRL', '{\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-25 16:17:12');
INSERT INTO `token` VALUES ('5773QVDB11NDS1PY70WVOD95PWD1TY0U', '{\"addtime\":\"2024-04-14 17:34:56\",\"id\":3,\"mima\":\"123456\",\"shenfenzheng\":\"455542434343434\",\"shouji\":\"13456767346\",\"touxiang\":\"upload/20240414/34210784-0811-47b2-afa2-33f2dd71a7ea.jpg\",\"xingbie\":\"男\",\"xingming\":\"test\",\"yonghuming\":\"test\",\"youxiang\":\"524524@qq.com\"}', '用户', '用户', 'test', '3', '2024-04-24 17:36:55');
INSERT INTO `token` VALUES ('5GV00GUS3V90G1XH8C814GHY3NKWQTDF', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-24 17:27:37');
INSERT INTO `token` VALUES ('DSAIM7CP8VY8MG7IWVGYGD17VCK8CGD0', '{\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-28 21:29:22');
INSERT INTO `token` VALUES ('G2Y558F3BMKL50KA2C19KEXAEFYXHGWD', '{\"cx\":\"管理员\",\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-25 15:48:31');
INSERT INTO `token` VALUES ('GL6Q0F7UWL3OX5W3K0DBVGWHCW3ZVD13', '{\"addtime\":\"2024-04-14 17:34:56\",\"id\":3,\"mima\":\"123456\",\"shenfenzheng\":\"455542434343434\",\"shouji\":\"13456767346\",\"touxiang\":\"upload/20240414/34210784-0811-47b2-afa2-33f2dd71a7ea.jpg\",\"xingbie\":\"男\",\"xingming\":\"test\",\"yonghuming\":\"test\",\"youxiang\":\"524524@qq.com\"}', '用户', '用户', 'test', '3', '2024-04-25 17:27:38');
INSERT INTO `token` VALUES ('LA36GDYP88S2T3V08QZ85WKAA8XMGFF0', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2024-04-24 16:35:47');
INSERT INTO `token` VALUES ('MKOMTOV3P3RRMRDSIBD2MI6G74D7G2YX', '{\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-28 00:23:59');
INSERT INTO `token` VALUES ('ONZKWAV8GLG5E335CARGK742Y2V8WOGK', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2024-04-24 16:27:21');
INSERT INTO `token` VALUES ('R91YKOL0WOP5LSRYZSGD774UAV7PGG92', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2024-04-24 16:26:52');
INSERT INTO `token` VALUES ('RHH23EGKUMIGEDSEUMMPDIS2EK8LQQ2K', '{\"cx\":\"管理员\",\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-25 15:43:03');
INSERT INTO `token` VALUES ('V00O56LI5Q7MG6GCCEUUG85GNEG5S1N3', '{\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-25 15:19:26');
INSERT INTO `token` VALUES ('XX1FW3C3NRMR5RWQ85UPHRFLHBZC78GX', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2024-04-24 16:30:11');
INSERT INTO `token` VALUES ('YPY7YSO1W5ZLCVAA7A7RFNZPK46QTWYG', '{\"touxiang\":\"upload/20240414/34210784-0811-47b2-afa2-33f2dd71a7ea.jpg\",\"mima\":\"123456\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"test\",\"yonghuming\":\"test\",\"shouji\":\"13456767346\",\"cx\":\"用户\",\"addtime\":\"2024-04-14 17:34:56\",\"id\":3,\"shenfenzheng\":\"455542434343434\",\"youxiang\":\"524524@qq.com\",\"username\":\"test\"}', '用户', '用户', 'test', '3', '2024-04-24 17:35:34');
INSERT INTO `token` VALUES ('ZRUB42PVG129GK3LPYPQ3BFXXZZNVOLW', '{\"addtime\":\"2024-04-10 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"dwz\"}', '管理员', '管理员', 'dwz', '1', '2024-04-28 21:29:31');

-- ----------------------------
-- Table structure for xinwenfenlei
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '新闻分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES (1, '站内新闻', '2021-04-23 17:05:48');
INSERT INTO `xinwenfenlei` VALUES (2, '旅游新闻', '2021-04-23 17:14:37');
INSERT INTO `xinwenfenlei` VALUES (3, '国内新闻', '2024-04-15 16:17:00');
INSERT INTO `xinwenfenlei` VALUES (4, '国际新闻', '2024-04-15 16:17:05');

-- ----------------------------
-- Table structure for xinwenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE `xinwenxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `tupian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `tianjiaren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '添加人',
  `dianjilv` int NOT NULL COMMENT '点击率',
  `neirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xinwenxinxi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '新闻信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xinwenxinxi
-- ----------------------------
INSERT INTO `xinwenxinxi` VALUES (1, '2024年4月7日 渭南文化旅游资讯微报（组图）', 2, 'upload/20240410/46be35bf-c2e3-4ff6-b146-4a2697d69bfa.png', 'dwz', 10, '<p data-mpa-powered-by=\"yiban.io\"><img class=\"rich_pages wxw-img\" src=\"./upload/1713095644423.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"411\" data-imgfileid=\"100074657\" data-ratio=\"0.6425925925925926\" data-src=\"./upload/1713095644796.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"2\" data-fail=\"0\" /></p>\n<p data-track=\"1\">蒲城文旅景区人气爆棚、热闹非凡。</p>\n<p data-track=\"2\"><strong>陕西网讯（记者 郝豆）</strong>清明假日，渭南繁花似锦，文旅市场繁华有序。一起来看看今天的文旅资讯吧。</p>\n<p data-track=\"3\"><strong>文旅市场活跃 景区人气爆棚</strong></p>\n<p data-track=\"4\">【文旅市场活跃】清明假日，渭南繁花似锦，文旅市场繁华有序，人们走进各个景区、公园踏青赏花，小长假迎来旅游小高峰，渭南文旅市场活力蓬勃。假日期间，各地也相继推出系列文化旅游活动，满足游客需求，全市线上线下共举办各类文化活动765场，服务群众约8万人次。此外，渭南市文旅局于假期前期推出&ldquo;乡村有节气&rdquo;主题特色旅游线路，充分满足群众多层次、多样化、个性化的精神需求，进一步促进文旅消费提质升级。</p>\n<p data-track=\"5\">【景区人气爆棚】清明假期，蒲城文旅景区以丰富的文化活动、独特的历史文化、美味的特色美食、淳朴的人文风情，成为八方游客小长假出游首选之地。节日期间，蒲城旅游市场安全有序，无旅游安全事故和旅游投诉事件发生，有力地推动了假日蒲城旅游景区服务品质的提升。</p>\n<p data-track=\"6\">【文旅活力满满】风清气爽，暖风拂面。清明假期，临渭区文旅市场安全繁荣有序，共接待游客38.8万人次。节前，临渭区推出&ldquo;临渭好去处&rdquo;系列活动，&ldquo;春日经济&rdquo;激发文旅消费新活力。</p>\n<p data-track=\"7\">【旅游秩序井然】清明假日期间，华山景区共接待游客65295人次，同比2023年分别增长295%、282%。旅游秩序井然，度节工作顺利圆满，受到广大游客点赞和好评。</p>\n<p data-track=\"8\">【文旅市场火热】清明假期，潼关县共接待游客7.82万人次，较往年同期分别增长5.3%、3.2%，假日文化旅游市场运行平稳。下一步，潼关县将继续发挥文旅资源优势，提升旅游服务水平，丰富旅游产品供给，加强旅游基础设施建设，推动文旅与相关产业的深度融合，实现潼关文旅事业高质量发展。</p>\n<p data-track=\"9\">【景区游人如织】春和景明，万物复苏，清明小长假期间，洽川景区熙熙攘攘、游人如织，一派欢乐祥和的热闹氛围。</p>\n<p data-track=\"10\"><strong>华服节携春而来 文化惠民演出</strong></p>\n<p data-track=\"11\">【华服节携春而来】清明假期，少华山鲜花盛开，万物复苏，游人熙熙攘攘。共赴春日盛会，共赏春日烂漫。即日起至4月30日，少华山第三届华服节携春而来，凡在此期间身着华服的游客，均可凭本人身份证件领取门票，享受免费入园的特别优惠。</p>\n<p data-track=\"12\">【文化惠民演出】近日，由蒲城县文化和旅游局、中共尧山镇委员会、尧山镇人民政府主办的文化惠民演出尧山镇第十届&ldquo;六合大饼&rdquo;民俗文化艺术节拉开帷幕。欢快的歌曲、轻盈的舞姿、动人的旋律给现场的观众献上了一场精彩的文化视听盛宴。</p>\n<p data-track=\"13\">【敬献匾额致敬】1992年清明，白水县北塬镇杨武村（阳武）村民为纪念仓颉金身重塑落成，为仓颉庙敬献了一块&ldquo;文字初祖&rdquo;的匾额，以表达对先祖仓颉造字的崇敬与感激。时光荏苒，32年后的清明，4月4日，杨武村的村民代表再次聚集在仓颉庙，重新敬献了一块&ldquo;文字初祖&rdquo;匾额。</p>\n<p data-track=\"14\">【读书分享会】近日，由澄城县文化和旅游局主办，县图书馆承办的&ldquo;大地欢歌 醉美梨乡&rdquo;2024年陕西省春季春晚示范展示暨&ldquo;梨花朵朵开&rdquo;第四届梨花节读书分享活动在交道镇樊家川村举办。活动让干部职工们在阅读中体会快乐、治愈心灵。</p>\n<p data-track=\"15\">【环境整治活动】近日，澄城县文管所组织全所人员到耿直陵园开展环境卫生专项清理整治，及时防范化解文物安全风险，充分展示文物古迹良好历史风貌。</p>\n<p data-track=\"16\"><strong>古城春日花开 景区门票免费</strong></p>\n<p data-track=\"17\">【古城春日花开】芳菲四月，满城花香，韩城古城迎来了最美的花期。花是春中散客，景是人间绝色，在这个春日，走进史记文化街区，沿途花团锦簇，如云似霞，点缀着安静的小路，让人陶醉，古城的建筑与色彩斑斓的花朵，形成了一幅美妙的画卷。</p>\n<p data-track=\"18\">【景区门票免费】为回馈广大游客，即日起，夏阳瀵景区将对所有游客实施门票免费政策，免票时间到4月26日截止。</p>\n<p data-track=\"19\">【来华山看春天】华山的春天，山花烂漫，绿意盎然，行走在山间，清风阵阵，鸟鸣声声，身心沐浴在这一片天然&ldquo;氧吧&rdquo;中，惬意十足。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095541855.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"640\" data-imgfileid=\"100074645\" data-ratio=\"1.3333333333333333\" data-src=\"./upload/1713095542255.png\" data-type=\"jpeg\" data-w=\"960\" data-width=\"480\" data-original-style=\"null\" data-index=\"3\" data-fail=\"0\" /></p>\n<p data-track=\"20\">清明假期，华山景区共接待游客65295人次。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095542563.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"480\" data-imgfileid=\"100074648\" data-ratio=\"0.75\" data-src=\"./upload/1713095542835.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"4\" data-fail=\"0\" /></p>\n<p data-track=\"21\">潼关县假日文化旅游市场运行平稳。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095543053.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"392\" data-imgfileid=\"100074649\" data-ratio=\"0.6129629629629629\" data-src=\"./upload/1713095543308.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"5\" data-fail=\"0\" /></p>\n<p data-track=\"22\">清明小长假期间，洽川景区游人如织。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095543565.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"480\" data-imgfileid=\"100074646\" data-ratio=\"0.75\" data-src=\"./upload/1713095543870.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"null\" data-index=\"6\" data-fail=\"0\" /></p>\n<p data-track=\"23\">节日期间少华山景区人流。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095544102.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"480\" data-imgfileid=\"100074650\" data-ratio=\"0.75\" data-src=\"./upload/1713095544322.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"7\" data-fail=\"0\" /></p>\n<p data-track=\"24\">时隔32年，仓颉后裔杨武村村民再为仓颉庙敬献匾额。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095544605.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"480\" data-imgfileid=\"100074651\" data-ratio=\"0.75\" data-src=\"./upload/1713095544815.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"8\" data-fail=\"0\" /></p>\n<p data-track=\"25\">韩城古城迎来了最美的花期。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095545077.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"359\" data-imgfileid=\"100074652\" data-ratio=\"0.5611111111111111\" data-src=\"./upload/1713095545285.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"9\" data-fail=\"0\" /></p>\n<p data-track=\"26\">华山的春天，山花烂漫，绿意盎然。</p>\n<p><img class=\"\" src=\"./upload/1713095545534.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"360\" data-imgfileid=\"100074653\" data-ratio=\"0.562962962962963\" data-src=\"./upload/1713095545742.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"10\" data-fail=\"0\" /></p>\n<p data-track=\"27\">华山的春天，山花烂漫，绿意盎然。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095545934.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"640\" data-imgfileid=\"100074647\" data-ratio=\"1.1592592592592592\" data-src=\"./upload/1713095546233.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"552\" data-original-style=\"null\" data-index=\"11\" data-fail=\"0\" /></p>\n<p data-track=\"28\">华山的春天，山花烂漫，绿意盎然。</p>\n<p><img class=\"rich_pages wxw-img\" src=\"./upload/1713095546551.png\" alt=\"图片\" crossorigin=\"anonymous\" data-height=\"394\" data-imgfileid=\"100074654\" data-ratio=\"0.6157407407407407\" data-src=\"./upload/1713095546782.png\" data-type=\"jpeg\" data-w=\"1080\" data-width=\"640\" data-original-style=\"display: inline;\" data-index=\"12\" data-fail=\"0\" /></p>\n<p data-track=\"29\"><strong>渭南每日文化旅游资讯微报，由渭南市文化和旅游局，陕西网渭南站，渭南网每日综合发布。</strong></p>', '2021-04-23 17:44:31');
INSERT INTO `xinwenxinxi` VALUES (2, '五一假期旅游市场前瞻 让期待已久的出游“不虚此行”', 2, 'upload/20240410/2c122937-c82e-44fa-85b0-7ece54234e5d.png', 'dwz', 24, '<p class=\"one-p\">2021年春天，大众对于&ldquo;诗和远方&rdquo;有着格外的向往和期待。随着疫情防控形势持续向好以及疫苗的普及，大众远游的愿望重燃。&ldquo;五一假期火车票秒光&rdquo;冲上热搜，热门线路机票价格大涨、&ldquo;史上最热五一&rdquo;成为舆论热点，反映出大众高昂的出游热情。对于旅游业界来说，五一假期也是一次大考，如何让大众期待已久的远游&ldquo;不虚此行&rdquo;，成为业界关注的焦点。</p>\n<p class=\"one-p\"><strong>数据攀升 反映市场热度</strong></p>\n<p class=\"one-p\">旅游研究机构、在线旅行商以及民航、铁路部门的统计数据近期频频曝光，一幅&ldquo;浩浩荡荡&rdquo;的五一假期出行图已经逐渐显现。</p>\n<p class=\"one-p\">中国旅游研究院近期发布的相关统计报告显示，第二季度是传统的出游旺季，包含了清明、五一、端午三个公众假期，很可能会成为旅游抗疫的战略转折点。从清明节假期三天的数据来看，全国国内旅游出游1.02亿人次，恢复至疫前同期的94.5%。第二季度的居民出游意愿为83.19%，城乡居民的旅游消费心理开始从谨慎转向积极，近郊旅游和跨省旅游意愿分别为43.48%、34.04%。</p>\n<p class=\"one-p\">&ldquo;伴随着国内疫情的有效管控，政府部门持续放开出行限制、鼓励和推动旅游业发展，即将到来的五一假期有望迎来&lsquo;爆发式出游&rsquo;。23%、43%、114%、126%，从携程当前五一假期机票、酒店、门票、租车订单量对比2019年的显著增长来看，今年五一假期旅游人次有望突破2019年同期水平，达到2亿人次新高。&rdquo;携程研究院行业分析师方泽茜分析。</p>\n<p class=\"one-p\">各地在线旅行商发布的数据也十分可观。飞猪旅游与五一出游相关的度假和酒店预订量同比涨超11倍，超过3小时的跨省长线游预订量同比涨超150%。马蜂窝大数据显示，五一假期机票平均价格为1050元，比2019年同期上涨超1倍。</p>\n<p class=\"one-p\">记者从海航方面了解到，5月1日至5日，海航境内航司计划执行航班1万余班，运送旅客量超过150万人次。旅客出行热门目的地集中在三亚、海口、成都、重庆等城市。其中，执行海南进出港航班约2300班，运送旅客量将达30余万人次，航班量、旅客量较2019年同期分别增长22%、30%。</p>\n<p class=\"one-p\">同程研究院首席研究员程超功表示，综合国内疫情防控形势及居民出游需求，预计4月30日至5月5日，全国铁路、民航及道路客运的客流量将达到2.5亿人次左右，局部地区的大交通（不含市内交通）客流量有望超过2019年同期水平。建议各地提前做好谋划，尤其是一些热门地区应做好应对大客流的准备。</p>', '2021-04-23 17:45:21');
INSERT INTO `xinwenxinxi` VALUES (3, '三亚旅游推广局推荐重庆市民“错峰出行” 暑假去三亚', 2, 'upload/20240410/51cf9bf9-9fca-4b01-b3d9-e47a4fe3f175.png', 'dwz', 19, '<p>华龙网-新重庆客户端4月23日10时35分讯（记者 舒婷） &ldquo;三亚有多欢迎重庆人？三亚市旅游推广局副局长就是土生土长重庆人。&rdquo;4月22日下午，在重庆举行的&ldquo;2021年&lsquo;三亚新青年奇趣岛&rsquo;海南航空旅游主题航班及落地营销推介活动&rdquo;上，三亚市旅游推广局副局长俞婷婷用正宗重庆话介绍自己和三亚，瞬间拉近与大家的距离。据悉，此次推介活动户外展示于4月23&mdash;25日，在解放碑举行3天，届时，市民可到现场与了解三亚游购优惠信息、与美人鱼合影、观看三亚风情表演。</p>\n<figure class=\"imgComment_figure\"><img title=\"三亚市旅游推广局副局长俞婷婷致辞\" src=\"./upload/1619171167716.png\" alt=\"图一：三亚市旅游推广局副局长俞婷婷致辞\" data-target=\"835102651443318784\" data-origin=\"./upload/1619171167848.png\" />\n<figcaption class=\"imgComment_content\">三亚市旅游推广局副局长俞婷婷致辞。受访者供图 华龙网发</figcaption>\n</figure>\n<p><strong>&ldquo;错峰旅游，淡季不淡&rdquo;</strong></p>\n<p>据三亚市旅游推广局介绍，三亚正在持续不断的塑造全新品牌形象，打破固有旅游淡旺季概念，比如目前正在持续进行中的2021海南国际潜水节、五一期间即将举行的和热门游戏联合举办大型赛事，以及全新的水上运动项目，向目标客源地传达&ldquo;错峰旅游，淡季不淡&rdquo;的目的地认知。</p>\n<figure class=\"imgComment_figure\"><img title=\"重庆日报报业集团总裁向泽映。\" src=\"./upload/1619171168163.png\" alt=\"图二：重庆日报报业集团总裁向泽映\" data-target=\"835102789310091264\" data-origin=\"./upload/1619171168197.png\" />\n<figcaption class=\"imgComment_content\">重庆日报报业集团总裁向泽映。受访者供图 华龙网发</figcaption>\n</figure>\n<p>据介绍，三亚传统淡季是每年4月到9月，也就是暑期期间，这段时间，不仅酒店房费只有旺季几分之一，与旺季相比，旅游体验还会更好。</p>\n<figure class=\"imgComment_figure\"><img title=\"&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。\" src=\"./upload/1619171168392.png\" alt=\"图三：&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场 \" data-target=\"835102915302789120\" data-origin=\"./upload/1619171168410.png\" />\n<figcaption class=\"imgComment_content\">&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。受访者供图 华龙网发</figcaption>\n</figure>\n<p>三亚夏天最高温度35度，三亚人民没有享受过高温假。三亚的夜生活也非常丰富，这得益于三亚人的生活习惯，晚上11点出门，坐在海边吹着凉快的海风，吃着夜宵，是很舒服的事情。三亚旅游推广局介绍，近几年，三亚打造了不夜城，晚上夜景、美食都非常不错。</p>\n<figure class=\"imgComment_figure\"><img title=\"&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场\" src=\"./upload/1619171168766.png\" alt=\"图四：&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场\" data-target=\"835103110526668800\" data-origin=\"./upload/1619171168800.png\" />\n<figcaption class=\"imgComment_content\">&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。受访者供图 华龙网发</figcaption>\n</figure>\n<p><strong>重庆妹子去三亚比男生多</strong></p>\n<p>根据航旅数据显示，去三亚的重庆女生比男生多，重庆妹子特别爱美，很多去三亚免税店购物。目前，三亚有四家免税店，免税店之间的竞争，消费者成了最大获益者。</p>\n<figure class=\"imgComment_figure\"><img title=\"&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场   \" src=\"./upload/1619171168956.png\" alt=\"图五：&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场   \" data-target=\"835103224385245184\" data-origin=\"./upload/1619171168984.png\" />\n<figcaption class=\"imgComment_content\">&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。受访者供图 华龙网发</figcaption>\n</figure>\n<p>怎么购物更划算，购物体验更好呢？三亚旅游推广局建议，不想排队，可以在免税店APP上下单，下单后可享积分，先买高单价的商品，积分后，用积分去换取低单价的商品，比如化妆品之类的。三亚免税店购物，目前比香港更加便宜，而且还兼顾了海岛游。</p>\n<figure class=\"imgComment_figure\"><img title=\"涉旅企业代表合影 \" src=\"./upload/1619171169242.png\" alt=\"图六：涉旅企业代表合影 \" data-target=\"835103296640520192\" data-origin=\"./upload/1619171169273.png\" />\n<figcaption class=\"imgComment_content\">涉旅企业代表合影 。受访者供图 华龙网发</figcaption>\n</figure>\n<p><strong>数十商家争相洽谈 三亚热门线路成抢手资源</strong></p>\n<p>三亚旅游推广局此次带来了众多三亚旅游资源，如海南航空、中出服免税店、三亚海棠湾天房洲际酒店、海南鸿洲海洋旅游公司+蜈支洲岛、红色娘子军演艺主题公园，这些在国内炙手可热的旅游资源。</p>\n<p>通过推广局的详细介绍，与会人士了解了三亚打造的新经典、新线路、新玩儿法。在接下来的&ldquo;圆桌会&rdquo;中，受邀的数十家旅游相关单位，与三亚涉旅商家进行了热烈的谈论和洽谈。</p>\n<figure class=\"imgComment_figure\"><img title=\"涉旅企业代表合影\" src=\"./upload/1619171169516.png\" alt=\"图七：涉旅企业代表合影\" data-target=\"835103353397841920\" data-origin=\"./upload/1619171169569.png\" />\n<figcaption class=\"imgComment_content\">涉旅企业代表合影。受访者供图 华龙网发</figcaption>\n</figure>\n<p>&ldquo;旅游推广局的领导直接来推介洽谈，我们公司抓住这个好机会，直接和三亚涉旅企业对接上。马上就是五一节了，三亚旅游推广局这样的推荐，让我们打开了思路，了解了产品，还对接上了三亚的企业，五一节和今年暑假我们要在三亚专线上大做文章了。&rdquo;浪漫假期扬子江国旅总经理罗女士说。参会的重庆旅行社负责人纷纷表示，这样的旅游推介会办得生动活泼，有趣精彩，让人印象深刻，特别是三亚市旅游推广局带领众多三亚涉旅企业和大家面对面聊，大家对做好三亚旅游线路更有信心和底气了。</p>', '2021-04-23 17:46:09');
INSERT INTO `xinwenxinxi` VALUES (5, 'xwxwxxw', 1, 'upload/20240414/2c058118-8911-46e8-ae9a-3a753039c6aa.jpg', 'dwz', 670, '<p>eafssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssf</p>', '2024-04-14 16:42:37');
INSERT INTO `xinwenxinxi` VALUES (6, '测试', 1, 'upload/20240414/19a9150b-4a8a-424e-a8dc-e3330554644c.jpg', 'dwz', 11, '<p>测试测试</p>\n<p>&nbsp;</p>\n<p><img src=\"/upload/20240414/93aa51df-af6b-4c4d-9a26-e2503c6ef9aa.jpg\" alt=\"\" width=\"536\" height=\"609\" /></p>', '2024-04-14 16:54:01');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '性别',
  `shouji` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机',
  `youxiang` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '111', '111', '大大', '男', '13245678910', '15641@qq.com', '123456789123456', 'upload/20240414/ba0dcb8b-5afb-4e21-9d13-7129725eab1f.jpg', '2024-04-10 17:52:05');
INSERT INTO `yonghu` VALUES (2, '333', '333', '小小', '女', '13245679810', '15641@qq.com', '132456789415610', 'upload/20240414/c6992e68-3519-415b-bb2d-312dca5c5c15.jpg', '2024-04-10 18:10:07');
INSERT INTO `yonghu` VALUES (3, 'test', '123456', 'test', '男', '13456767346', '524524@qq.com', '455542434343434', 'upload/20240414/34210784-0811-47b2-afa2-33f2dd71a7ea.jpg', '2024-04-14 17:34:56');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '网站名称',
  `wangzhi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '网址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (1, '百度', 'http://www.baidu.com', '2024-04-10 16:43:58');
INSERT INTO `youqinglianjie` VALUES (2, '谷歌', 'http://www.google.cn', '2024-04-10 16:43:58');
INSERT INTO `youqinglianjie` VALUES (3, '新浪', 'http://www.sina.com', '2024-04-10 16:43:58');
INSERT INTO `youqinglianjie` VALUES (4, 'QQ', 'http://www.qq.com', '2024-04-10 16:43:58');
INSERT INTO `youqinglianjie` VALUES (5, '网易', 'http://www.163.com', '2024-04-10 16:43:58');

-- ----------------------------
-- Table structure for yuding
-- ----------------------------
DROP TABLE IF EXISTS `yuding`;
CREATE TABLE `yuding`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `lvyouxianluid` int UNSIGNED NOT NULL COMMENT '旅游线路id',
  `xianlubianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路编号',
  `xianlumingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路名称',
  `chufadi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出发地',
  `tujingdi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '途经地',
  `zhongdian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '终点',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `dingdanhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单号',
  `yudingshijian` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '预订时间',
  `yudingrenxingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '预订人姓名',
  `lianxifangshi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系方式',
  `zhuangtai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  `beizhu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '备注',
  `yudingren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '预订人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `iszf` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '否' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `yuding_lvyouxianluid_index`(`lvyouxianluid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '预定' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yuding
-- ----------------------------
INSERT INTO `yuding` VALUES (1, 2, '042317383995', '广东-北京', '广东', '安徽', '北京', 1200.00, '042317536352', '2024-04-10 17:53:14', '小小', '13245678910', '预定成功', '备注备注', '111', '2024-04-10 17:53:26', '是');
INSERT INTO `yuding` VALUES (2, 4, '042317404470', '广东-新疆', '广东', '湖南', '新疆', 3000.00, '042318101743', '2024-04-10 18:10:53', '小小', '12345679810', '预定成功', '备注备注备注备注', '333', '2024-04-10 18:11:01', '是');
INSERT INTO `yuding` VALUES (3, 5, '042318054243', 'XXXXX线路', '安徽', '湖南，广西，', '广西', 1200.00, '041417363166', '2024-04-02 00:00:00', 'eeeeeeeeee', 'esssssss', '预定成功', 'tsss', 'test', '2024-04-14 17:37:07', '是');
INSERT INTO `yuding` VALUES (4, 4, '042317404470', '广东-新疆', '广东', '湖南', '新疆', 3000.00, '041815101481', '2024-04-19 00:00:00', 'dwx', 'afwffff', '待支付', 'fffffafaf', 'dwz', '2024-04-18 15:10:56', '否');

SET FOREIGN_KEY_CHECKS = 1;
