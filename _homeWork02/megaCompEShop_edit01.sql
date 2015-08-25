/*
Navicat MySQL Data Transfer

Source Server         : Support
Source Server Version : 50541
Source Host           : localhost:3306
Source Database       : megaCompEShop

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-08-25 15:41:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Categories
-- ----------------------------
DROP TABLE IF EXISTS `Categories`;
CREATE TABLE `Categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title_group` varchar(255) NOT NULL,
  `title_product` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Categories
-- ----------------------------
INSERT INTO `Categories` VALUES ('1', 'Материнские платы', 'Материнская плата');
INSERT INTO `Categories` VALUES ('2', 'Процессоры', 'Процессор');
INSERT INTO `Categories` VALUES ('3', 'Модули памяти', 'Модуль памяти');
INSERT INTO `Categories` VALUES ('4', 'Карты памяти', 'Карта памяти');
INSERT INTO `Categories` VALUES ('5', 'Флеш-память USB', 'Флеш-память USB');
INSERT INTO `Categories` VALUES ('6', 'Дисководы FDD', 'Дисковод FDD');
INSERT INTO `Categories` VALUES ('7', 'Накопители SSD', 'Накопитель SSD');
INSERT INTO `Categories` VALUES ('8', 'Накопители HDD внутренние', 'Накопитель HDD внутренний');
INSERT INTO `Categories` VALUES ('9', 'Накопители HDD внешние', 'Накопитель HDD внешний');
INSERT INTO `Categories` VALUES ('10', 'Оптические приводы дисков', 'ОПД');
INSERT INTO `Categories` VALUES ('11', 'Контроллеры', 'Контроллер');
INSERT INTO `Categories` VALUES ('12', 'Видеокарты', 'Видеокарта');
INSERT INTO `Categories` VALUES ('13', 'Вэбкамеры', 'Вэбкамера');
INSERT INTO `Categories` VALUES ('14', 'Аккустические системы', 'Аккустическая система');
INSERT INTO `Categories` VALUES ('15', 'Корпуса', 'Корпус');
INSERT INTO `Categories` VALUES ('16', 'Блоки питания', 'Блок питания');
INSERT INTO `Categories` VALUES ('17', 'Мониторы', 'Монитор');
INSERT INTO `Categories` VALUES ('18', 'Мыши', 'Мышь');
INSERT INTO `Categories` VALUES ('19', 'Клавиатуры', 'Клавиатура');
INSERT INTO `Categories` VALUES ('20', 'Програмное обеспечение ', 'Програмное обеспечение ');

-- ----------------------------
-- Table structure for Descriptions
-- ----------------------------
DROP TABLE IF EXISTS `Descriptions`;
CREATE TABLE `Descriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `path_img01` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `descriptions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Products` (`id_description`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Descriptions
-- ----------------------------
INSERT INTO `Descriptions` VALUES ('1', 'LGA1150 (iZ97) ATX 3xPCIe3.0/2.0x16, 3xPCIex1, 4DDR3, 8SATA III, 1xM.2 Socket 3, RAID(0,1,5,10), 6 USB 3.0, 8ch AC97, SVGA (with DVI/HDMI* if CPU with Grafic Core), LAN 1Gb, ', '');
INSERT INTO `Descriptions` VALUES ('2', 'LGA1150 (iZ97) ATX 3xPCIe3.0/2.0x16, 3xPCIex1, 4DDR3, 6SATA III, 1xM.2 Socket 3, RAID(0,1,5,10), 6 USB 3.0, 8ch AC97, SVGA (with DVI/HDMI* if CPU with Grafic Core), LAN 1Gb', '');
INSERT INTO `Descriptions` VALUES ('3', 'LGA1150 (iZ97) mATX 2xPCIe3.0/2.0x16, 3xPCIex1, 4DDR3, 6SATA III, 1xM.2 Socket 3, RAID(0,1,5,10), 6 USB 3.0, 8ch AC97, SVGA (with DVI/HDMI* if CPU with Grafic Core), LAN 1Gb', '');
INSERT INTO `Descriptions` VALUES ('4', 'LGA1150 (iZ97) mATX 3xPCIe3.0/2.0x16, 1xPCIex4, 1xmini-PCIe, 4DDR3, 8SATA III,  1xM.2 Socket 3,  RAID(0,1,5,10), 6 USB 3.0, 8ch AC97, SVGA (with DVI/HDMI/DP* if CPU with Grafic Core), LAN 1Gb ', '');
INSERT INTO `Descriptions` VALUES ('5', 'LGA1150 (iZ97) ATX 3xPCIe3.0/2.0x16, 2xPCIex1, 2xPCI, 4DDR3, 6SATA III,1xSATA Express port, 1xM.2 Socket 3, 4xRAID(0,1,5,10), 6 USB 3.0, 8ch AC97, SVGA (with DVI/HDMI/DP* if CPU with Grafic Core) LAN 1Gb', '');
INSERT INTO `Descriptions` VALUES ('6', 'LGA1150 (iZ97) ATX 2xPCIe3.0/2.0x16, 2xPCIex1, 2xPCI, 4DDR3, 6SATA III,1xM.2 Socket 3, RAID(0,1,5,10), 6 USB 3.0, 8ch AC97, SVGA (with DVI/HDMI* if CPU with Grafic Core) LAN 1Gb', '');
INSERT INTO `Descriptions` VALUES ('7', '(LGA1150, Haswell Refresh, 4-Core, HT, 4.0-4.4ГГц (Turbo Bust), Unblock mult., 8MБ L3 кеш, Grafic Core HD4600 up to 1250Mhz, 22нм, TDP=88Wt, box)', '');
INSERT INTO `Descriptions` VALUES ('8', '(LGA1150, Haswell Refresh, 4-Core, HT, 3.6-4.0ГГц (Turbo Bust), 8MБ L3 кеш, Grafic Core HD4600 up to 1200Mhz, 22нм, TDP=84Wt, box)', '');
INSERT INTO `Descriptions` VALUES ('9', '(LGA1150, Haswell Refresh, 4-Core, 3.3-3.7ГГц (Turbo Bust), 6MБ L3 кеш, Grafic Core HD4600 up to 1150Mhz, 22нм, TDP=84Wt, box)', '');
INSERT INTO `Descriptions` VALUES ('10', 'S-FM2+ BOX AD770KXBJABOX(AD770KXBI44JA, 4 Core, 4MB-L2, 3.4/3.8Ghz, R7 Radeon (512sp/720Mhz), DD3-2133Mhz DC, Kaveri, 95W, 28nm)', '');
INSERT INTO `Descriptions` VALUES ('11', 'S-FM2 BOX AD680KWOHLBOX (AD680KWOA44HL, 4 Core, 4MB-L2, 4.1/4.4Ghz, HD8670D (256sp/844Mhz), DD3-2133Mhz DC, Richland, 100W, 32nm)', '');
INSERT INTO `Descriptions` VALUES ('12', 'S-FM2 BOX AD540KOKHJBOX (AD540KOKA23HJ, 2 Core, 1MB-L2, 3.6/3.8Ghz, Unlocked, HD7540D (192sp/760Mhz), DD3-1866Mhz DC, Trinity, 65W, 32nm)', '');
INSERT INTO `Descriptions` VALUES ('13', 'DDR3 8GB (2x4GB) 2400MHz <PC3-12800>', '');
INSERT INTO `Descriptions` VALUES ('14', 'DDR3 8GB 1600MHz <PC3-12800> ', '');
INSERT INTO `Descriptions` VALUES ('15', 'DDR3 8GB 1600MHz <PC3-12800>', '');
INSERT INTO `Descriptions` VALUES ('16', 'DDR3 8GB 1333MHz <PC3-10600>', '');
INSERT INTO `Descriptions` VALUES ('17', '8GB (PD8GH2GRALKR9) USB2.0 ', '');
INSERT INTO `Descriptions` VALUES ('18', '16GB (PD16GH2GRCOMXR9) USB2.0 ', '');
INSERT INTO `Descriptions` VALUES ('19', '16GB (PD16GH2GRCOKWR9) USB2.0 ', '');
INSERT INTO `Descriptions` VALUES ('20', '2.5\" 120GB  SATA 3 V300 read 450MB/s, write 450MB/s', '');
INSERT INTO `Descriptions` VALUES ('21', '2.5\" 120GB  SATA 3 HyperX read 555MB/s, write 510MB/s', '');
INSERT INTO `Descriptions` VALUES ('22', '2.5\" 120GB  SATA 3 HyperX FURY read 420MB/s, write 420MB/s (7mm)', '');
INSERT INTO `Descriptions` VALUES ('23', '1TB 7200 rpm 64MB Serial ATA 3', '');
INSERT INTO `Descriptions` VALUES ('24', '1TB 7200 rpm 64MB Serial ATA 3                                       ', '');
INSERT INTO `Descriptions` VALUES ('25', '2TB 64M 7200RPM Hard Drive for NAS SATA 3', '');
INSERT INTO `Descriptions` VALUES ('26', '2TB 64M 7200RPM Optimal Storage for NAS and Scale-Out Architectures', '');
INSERT INTO `Descriptions` VALUES ('27', '2TB 64M 7200RPM SATA 3', '');
INSERT INTO `Descriptions` VALUES ('28', '2,5\" 500GB  USB 2.0 Black RTL', '');
INSERT INTO `Descriptions` VALUES ('29', '2,5\" 500GB USB 2.0/eSATA White RTL', '');
INSERT INTO `Descriptions` VALUES ('30', '2,5\" 500GB USB 2.0/eSATA Brown RTL', '');
INSERT INTO `Descriptions` VALUES ('31', 'DVD+/-RW Drive Dual Layer DL+8x/-6x, +8x8x/-8x6x, RAM 5x, CD 24x16x24x EXT, USB, RTL', '');
INSERT INTO `Descriptions` VALUES ('32', 'DVD+/-RW Drive Dual Layer DL+8x/-6x, +8x8x/-8x6x, RAM 5x, CD 24x16x24x EXT, USB, RTL', '');
INSERT INTO `Descriptions` VALUES ('33', 'DVD+/-RW Drive External Dual Layer DL+8x/-8x, +8x8x/-8x8x, RAM 5x, CD 24x16x24x EXT, USB, M-DISC Support, RTL', '');
INSERT INTO `Descriptions` VALUES ('34', 'USB Mini Bluetooth Class 2 ST-Lab 20m, USB 2.0, black', '');
INSERT INTO `Descriptions` VALUES ('35', 'USB Mini Bluetooth Class 2 ST-Lab 10m, USB 1.1, antracite', '');
INSERT INTO `Descriptions` VALUES ('36', 'PCI-E x16 3.0 8GB (512bit) GDDR5 AMD R9 390 (1000/6000Mhz) 2DVI +1HDM+1DP                            new!!!', '');
INSERT INTO `Descriptions` VALUES ('37', 'PCI-E x16 3.0 2GB (256bit) GDDR5 AMD R9 380 (1010/990/5500Mhz) 2DVI +1HDM+1DP                            new!!!', '');
INSERT INTO `Descriptions` VALUES ('38', 'PCI-E x16 3.0 4GB (256bit) DDR5 GTX980 (1178-1279/7010Mhz)  2DVI + 1HDMI + 3DP(RTL)', '');
INSERT INTO `Descriptions` VALUES ('39', 'PCI-E x16 3.0 4GB (256bit) DDR5 GTX970 (1088-1228/7010Mhz)  2DVI + 1HDMI + 1DP(RTL)', '');
INSERT INTO `Descriptions` VALUES ('40', 'High-end webcam streams superb quality video over much less bandwidth. HD cutting-edge technology - H.264 - delivers video faster, clearer and with far less lag time than you\'ve experienced before.', '');
INSERT INTO `Descriptions` VALUES ('41', '300K Pixels, Built in microphone, Front sliding cover, White LED lighting, 360 Degree Rotation', '');
INSERT INTO `Descriptions` VALUES ('42', '350K Pixels, White Balance, Focus Range 10cm to Infinity, Net Meeting, Non-directional Design, Snap Shot Button, Lens Cover', '');
INSERT INTO `Descriptions` VALUES ('43', '2.0 5Вт (RMS), черные, разьем для наушников, питание USB', '');
INSERT INTO `Descriptions` VALUES ('44', '2.1 USB-картридер и MP3-плеер, сабвуфер: 260х200х200мм, сателлиты: 100х160х109мм', '');
INSERT INTO `Descriptions` VALUES ('45', '2.1 configuration • 2x9,5+21W RMS, 48Hz-20kHz (980-000367)', '');
INSERT INTO `Descriptions` VALUES ('46', 'ATX Mini Tower Black (без БП, 3.5*3(HIDDEN), 2xUSB2.0&Audio, Tool-Free, Dust air filter ) ', '');
INSERT INTO `Descriptions` VALUES ('47', 'ATX Mini Tower Black (500W PPFC CM Elite, 5.25*1, 3.5*1, 3.5*3(HIDDEN), 2xUSB3.0&Audio, Tool-Free, Dust air filter ) ', '');
INSERT INTO `Descriptions` VALUES ('48', 'ATX Mini Tower Black (500W APFC Thunder, 5.25*1, 3.5*1, 3.5*3(HIDDEN), 2xUSB2.0&Audio, Tool-Free, Dust air filter ) ', '');
INSERT INTO `Descriptions` VALUES ('49', 'Midi-Tower ATX 400W (24pin, SATA Power, 4x5,25\', 1x3.5\", 5x3,5\' (hidden), USB 3.0/Audio (www.logicfox.ua/catalog?id=441)', '');
INSERT INTO `Descriptions` VALUES ('50', 'Midi-Tower ATX 400W (24pin, SATA Power, 3x5,25\', 1x3.5\", 5x3,5\' (hidden), USB 2.0/Audio (www.logicfox.ua/catalog?id=1202)', '');
INSERT INTO `Descriptions` VALUES ('51', 'Midi-Tower ATX 400W (24pin, SATA Power, 3x5,25\', 1x3.5\", 5x3,5\' (hidden), USB 2.0/Audio (www.logicfox.ua/catalog?id=1203)', '');
INSERT INTO `Descriptions` VALUES ('52', 'ATX 400WT PSU (ATX12V2.3, active PFС, >85% effic.,20/24+4pin MB, 1x6+2PIN PCIe, 3xSATA, 3xMolex Power Connectors, 1x8PIN EPS (4+4), 120mm smart-FAN)', '');
INSERT INTO `Descriptions` VALUES ('53', 'ATX 400WT PSU (ATX12V2.3, 20/24pin MB, active PFС, 1x6-pin PCI-E, 2x2 SATA Power Connectors, 120mm smart-FAN)', '');
INSERT INTO `Descriptions` VALUES ('54', 'ATX 450WT PSU (ATX12V2.3, active PFС, 80+ effic.,20/24+4pin MB, 1x6+2PIN PCIe, 3xSATA, 2xMolex Power Connectors, 120mm smart-FAN)', '');
INSERT INTO `Descriptions` VALUES ('55', 'ATX 450WT PSU (ATX12V2.3, active PFС, >85% effic.,20/24+4pin MB, 1x6+2PIN PCIe, 3xSATA, 3xMolex Power Connectors, 1x8PIN EPS (4+4), 120mm smart-FAN)', '');
INSERT INTO `Descriptions` VALUES ('56', 'LCD 27\" Wide, 0.311mm, 300cd/m2, LED, 80000000:1(ASCR), 170/160, 1ms(Gray to Gray), 1920x1080 , 2xHDMI, DP,speakers TCO\'03 черный', '');
INSERT INTO `Descriptions` VALUES ('57', 'LCD 27\" Wide, 0.311mm, 300cd/m2, LED, 80000000:1(ASCR), 170/160, 1ms(Gray to Gray), 1920x1080 , 2xHDMI, speakers) TCO\'03 черный', '');
INSERT INTO `Descriptions` VALUES ('58', 'LCD 27\" Wide, 0.311mm, 300cd/m2, 100000:1(ASCR), 170/160, 2ms(Gray to Gray), 1920x1080 , Webcam (2Mp), DVI-D, HDMI, DP, speakers) TCO\'03 черный', '');
INSERT INTO `Descriptions` VALUES ('59', 'LCD 29\" Ultra-wide 21:9,  AH-IPS, Cinematic Monitor, 0.262mm, 300cd/m2,  80000000:1(ASCR), 178/178, 5ms(Gray to Gray), 2560x1080 , DVI-D, HDMI, DP, speakers, pivot, 6 x usb hub черный', '');
INSERT INTO `Descriptions` VALUES ('60', 'LCD 21.5\" 16:9, 200cd/m2, LED, 10000000:1(SmartContrast), 90/65, 5ms, 1920x1080 Black', '');
INSERT INTO `Descriptions` VALUES ('61', 'LCD 21,5\" 16:9, IPS, 250cd/m2, LED, 20000000:1(SmartContrast), 178/178, 14ms, 1920x1080 , DVI-D Glossy Black cherry', '');
INSERT INTO `Descriptions` VALUES ('62', 'LCD 23.8\" Wide, LED, AH-IPS, 250cd/m2, 5000000:1(DFC), 178/178, 5mc, 1920x1080, HDMI черный ', '');
INSERT INTO `Descriptions` VALUES ('63', 'LCD 23.8\" Wide, LED, AH-IPS, 250cd/m2, 5000000:1 (DFC), 178/178, 5mc, 1920x1080, 2HDMI, speakers фабричная калибровка цвета, черный ', '');
INSERT INTO `Descriptions` VALUES ('64', 'LCD 27\" Wide LED, AH-IPS, 250cd/m2, 5000000:1(DFC), 178/178, 5mc, 1920x1080, HDMI черный глянцевый ', '');
INSERT INTO `Descriptions` VALUES ('65', 'PS/2 Black , standard, UA layout, waterproof', '');
INSERT INTO `Descriptions` VALUES ('66', 'USB Black , standard, UA layout, waterproof', '');
INSERT INTO `Descriptions` VALUES ('67', 'USB, LED подсветка букв синим цветом, ступенчатая регулировка яркости (0-30-60-100%), мультимедия', '');
INSERT INTO `Descriptions` VALUES ('68', 'USB, LED подсветка букв белым цветом, ступенчатая регулировка яркости (0-30-60-100%), мультимедия', '');
INSERT INTO `Descriptions` VALUES ('69', 'USB, Red/White Оптическая Мини, 3 buttons, wheel 2x, 800dpi', '');
INSERT INTO `Descriptions` VALUES ('70', 'USB, оптическая, 1000dpi, 2x кнопка, mini', '');
INSERT INTO `Descriptions` VALUES ('71', 'USB, LED, black, BOX', '');
INSERT INTO `Descriptions` VALUES ('72', 'USB, Optical 1000/1500/3000DPI, черная, LED подсветка, игровая', '');
INSERT INTO `Descriptions` VALUES ('73', 'USB (http://www.goldenfield.com.ua/V710.htm)', '');
INSERT INTO `Descriptions` VALUES ('74', 'USB (http://www.goldenfield.com.ua/V720.htm)', '');
INSERT INTO `Descriptions` VALUES ('75', 'USB 1200dpi, Stick-N-Go, 2.4GHz, 5 кнопок', '');
INSERT INTO `Descriptions` VALUES ('76', 'USB, Skype телефон, 1200dpi', '');
INSERT INTO `Descriptions` VALUES ('77', 'USB', '');
INSERT INTO `Descriptions` VALUES ('78', 'USB', '');
INSERT INTO `Descriptions` VALUES ('79', 'Professional 64-bit English (Multilanguage) OEM DVD (FQC-06949)', '');
INSERT INTO `Descriptions` VALUES ('80', '1 year Base (на 2 компьютера)', '');
INSERT INTO `Descriptions` VALUES ('81', 'обновление на год на 2 компьютера', '');

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Orders
-- ----------------------------
INSERT INTO `Orders` VALUES ('1', '5', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('2', '5', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('3', '5', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('4', '31', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('5', '31', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('6', '28', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('7', '15', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('8', '14', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('9', '34', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('10', '1', '2', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('11', '5', '2', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('12', '5', '2', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('13', '26', '2', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('14', '11', '2', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('15', '11', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('16', '5', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('17', '2', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('18', '3', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('19', '4', '0', '2015-08-20 14:26:52', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('20', '9', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('21', '8', '3', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('22', '7', '3', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('23', '6', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('24', '5', '1', '2015-08-20 14:20:12', '2015-08-20 14:20:12');
INSERT INTO `Orders` VALUES ('25', '4', '3', '2015-08-20 14:27:07', '2015-08-20 14:20:12');

-- ----------------------------
-- Table structure for PartOrder
-- ----------------------------
DROP TABLE IF EXISTS `PartOrder`;
CREATE TABLE `PartOrder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `count` int(11) unsigned NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_order` (`id_order`),
  CONSTRAINT `partorder_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `Orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `partorder_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `Products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PartOrder
-- ----------------------------
INSERT INTO `PartOrder` VALUES ('1', '1', '1', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('2', '1', '7', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('3', '1', '13', '2', '325.56');
INSERT INTO `PartOrder` VALUES ('4', '1', '27', '2', '325.56');
INSERT INTO `PartOrder` VALUES ('5', '1', '48', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('6', '2', '75', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('7', '2', '67', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('8', '3', '39', '2', '325.56');
INSERT INTO `PartOrder` VALUES ('9', '4', '9', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('10', '4', '14', '2', '325.56');
INSERT INTO `PartOrder` VALUES ('11', '5', '31', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('12', '6', '78', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('13', '6', '79', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('14', '7', '12', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('15', '7', '6', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('16', '7', '16', '4', '325.56');
INSERT INTO `PartOrder` VALUES ('17', '7', '27', '2', '325.56');
INSERT INTO `PartOrder` VALUES ('18', '7', '38', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('19', '7', '48', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('20', '7', '69', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('21', '7', '68', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('22', '8', '81', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('23', '9', '29', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('24', '9', '31', '1', '325.56');
INSERT INTO `PartOrder` VALUES ('25', '10', '26', '1', '325.56');

-- ----------------------------
-- Table structure for Products
-- ----------------------------
DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title_model` varchar(255) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `count` decimal(10,2) NOT NULL DEFAULT '0.00',
  `id_categorie` int(11) unsigned NOT NULL,
  `id_vendor` int(11) unsigned NOT NULL,
  `id_description` int(11) unsigned NOT NULL,
  `guarantee` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_description` (`id_description`),
  KEY `id_vendor` (`id_vendor`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Products
-- ----------------------------
INSERT INTO `Products` VALUES ('1', 'MAXIMUS VII HERO', '6656.00', '10.00', '1', '1', '1', '33');
INSERT INTO `Products` VALUES ('2', 'MAXIMUS VII RANGER', '5044.00', '10.00', '1', '1', '2', '33');
INSERT INTO `Products` VALUES ('3', 'MAXIMUS VII GENE', '6578.00', '10.00', '1', '1', '3', '33');
INSERT INTO `Products` VALUES ('4', 'GRYPHON Z97 ARMOR EDITION', '5694.00', '10.00', '1', '1', '4', '33');
INSERT INTO `Products` VALUES ('5', 'Z97-PRO GAMER', '4550.00', '10.00', '1', '1', '5', '33');
INSERT INTO `Products` VALUES ('6', 'Z97-K', '3484.00', '10.00', '1', '1', '6', '33');
INSERT INTO `Products` VALUES ('7', 'i7-4790K', '10504.00', '10.00', '2', '2', '7', '36');
INSERT INTO `Products` VALUES ('8', 'i7-4790', '9802.00', '10.00', '2', '2', '8', '36');
INSERT INTO `Products` VALUES ('9', 'i5-4590', '6864.00', '10.00', '2', '2', '9', '36');
INSERT INTO `Products` VALUES ('10', 'A-Series A10-7700K Black Edition ', '3172.00', '10.00', '2', '3', '10', '36');
INSERT INTO `Products` VALUES ('11', 'A-Series A10-6800K Black Edition ', '3406.00', '10.00', '2', '3', '11', '36');
INSERT INTO `Products` VALUES ('12', 'A-Series A6-5400K Black Edition ', '1287.00', '10.00', '2', '3', '12', '36');
INSERT INTO `Products` VALUES ('13', 'HyperX Savage HX324C11SRK2/8', '2262.00', '10.00', '3', '4', '13', '12');
INSERT INTO `Products` VALUES ('14', 'HyperX Fury Black KHX316C10FB/8', '1742.00', '10.00', '3', '4', '14', '12');
INSERT INTO `Products` VALUES ('15', 'KVR16N11/8', '1508.00', '10.00', '3', '4', '15', '12');
INSERT INTO `Products` VALUES ('16', 'HyperX Fury Red HX313C9FR/8', '1456.00', '10.00', '3', '4', '16', '12');
INSERT INTO `Products` VALUES ('17', 'Art Leather ', '207.68', '10.00', '5', '5', '17', '36');
INSERT INTO `Products` VALUES ('18', 'Colour Mix ', '239.07', '20.00', '5', '5', '18', '36');
INSERT INTO `Products` VALUES ('19', 'Colour Black&White ', '239.07', '20.00', '5', '5', '19', '36');
INSERT INTO `Products` VALUES ('20', 'SV300S37A/120G', '1742.00', '20.00', '7', '4', '20', '12');
INSERT INTO `Products` VALUES ('21', 'SH103S3/120G ', '2288.00', '20.00', '7', '4', '21', '12');
INSERT INTO `Products` VALUES ('22', 'SHFS37A/120G ', '1898.00', '20.00', '7', '4', '22', '12');
INSERT INTO `Products` VALUES ('23', 'Desktop 7200.14 ST1000DM003', '1638.00', '20.00', '8', '6', '23', '24');
INSERT INTO `Products` VALUES ('24', 'Surveillance ST1000VX001', '1846.00', '20.00', '8', '6', '24', '36');
INSERT INTO `Products` VALUES ('25', 'Red Pro WD2001FFSX', '4004.00', '20.00', '8', '7', '25', '60');
INSERT INTO `Products` VALUES ('26', 'SE WD2000F9YZ', '3770.00', '20.00', '8', '7', '26', '60');
INSERT INTO `Products` VALUES ('27', 'Black WD2003FZEX', '4212.00', '20.00', '8', '7', '27', '60');
INSERT INTO `Products` VALUES ('28', 'Glaze Shiny Hairline 3QHDD-U245H-HB500', '1404.00', '20.00', '9', '8', '28', '12');
INSERT INTO `Products` VALUES ('29', 'Fast Cayman 3QHDD-E225-EW500', '1534.00', '20.00', '9', '8', '29', '12');
INSERT INTO `Products` VALUES ('30', 'Fast Cayman 3QHDD-E225-EN500', '1560.00', '20.00', '9', '8', '30', '12');
INSERT INTO `Products` VALUES ('31', 'SDRW-08D2S-U Lite Slim Black', '1209.00', '22.00', '10', '1', '31', '6');
INSERT INTO `Products` VALUES ('32', 'SDRW-08D2S-U Lite Slim White ', '1027.00', '22.00', '10', '1', '32', '6');
INSERT INTO `Products` VALUES ('33', 'GP50NB40 Slim Black ', '1079.00', '22.00', '10', '9', '33', '6');
INSERT INTO `Products` VALUES ('34', 'B-122', '114.40', '22.00', '11', '10', '34', '6');
INSERT INTO `Products` VALUES ('35', 'B-235', '114.40', '22.00', '11', '10', '35', '6');
INSERT INTO `Products` VALUES ('36', 'R9390-DC2-8GD5', '11674.00', '22.00', '12', '1', '36', '33');
INSERT INTO `Products` VALUES ('37', 'STRIX-R9380-DC2OC-2GD5-GAMING', '7202.00', '22.00', '12', '1', '37', '33');
INSERT INTO `Products` VALUES ('38', 'STRIX-GTX980-DC2OC-4GD5', '17368.00', '22.00', '12', '1', '38', '33');
INSERT INTO `Products` VALUES ('39', 'GTX970-DCMOC-4GD5', '11414.00', '22.00', '12', '1', '39', '33');
INSERT INTO `Products` VALUES ('40', 'HD 5210 LR374AA', '1924.00', '22.00', '13', '11', '40', '12');
INSERT INTO `Products` VALUES ('41', 'PK-7MA FlixeCam', '468.00', '22.00', '13', '12', '41', '12');
INSERT INTO `Products` VALUES ('42', 'PK-635', '390.00', '22.00', '13', '12', '42', '12');
INSERT INTO `Products` VALUES ('43', 'VC-S191A', '231.77', '22.00', '14', '13', '43', '12');
INSERT INTO `Products` VALUES ('44', ' Q5-U Black', '859.69', '5.00', '14', '14', '44', '12');
INSERT INTO `Products` VALUES ('45', 'Z523 White', '2106.00', '5.00', '14', '15', '45', '12');
INSERT INTO `Products` VALUES ('46', 'Elite 240 RC-240-KKN4', '1118.00', '5.00', '15', '16', '46', '12');
INSERT INTO `Products` VALUES ('47', 'Elite 241 RC-241-KKP500-EL', '1924.00', '5.00', '15', '16', '47', '12');
INSERT INTO `Products` VALUES ('48', 'Elite 241 RC-241-KKA500-N1', '1924.00', '5.00', '15', '16', '48', '12');
INSERT INTO `Products` VALUES ('49', '0050 Black body', '754.00', '5.00', '15', '17', '49', '12');
INSERT INTO `Products` VALUES ('50', '0080 Black body', '728.00', '5.00', '15', '17', '50', '12');
INSERT INTO `Products` VALUES ('51', '0081 Black body', '728.00', '5.00', '15', '17', '51', '12');
INSERT INTO `Products` VALUES ('52', 'GPA-400B8 iARENA Series', '962.00', '5.00', '16', '18', '52', '36');
INSERT INTO `Products` VALUES ('53', 'CTG-400-80P ', '1118.00', '5.00', '16', '18', '53', '36');
INSERT INTO `Products` VALUES ('54', 'GPA-450S8 iARENA Series ', '962.00', '5.00', '16', '18', '54', '36');
INSERT INTO `Products` VALUES ('55', 'GPA-450B8 iARENA Series ', '1040.00', '5.00', '16', '18', '55', '36');
INSERT INTO `Products` VALUES ('56', 'VS278Q', '8866.00', '5.00', '17', '1', '56', '36');
INSERT INTO `Products` VALUES ('57', 'VS278H', '8450.00', '5.00', '17', '1', '57', '36');
INSERT INTO `Products` VALUES ('58', 'VK278Q', '10712.00', '5.00', '17', '1', '58', '36');
INSERT INTO `Products` VALUES ('59', 'PB298Q', '17212.00', '5.00', '17', '1', '59', '36');
INSERT INTO `Products` VALUES ('60', 'V-Line 223V5LSB2/10 ', '2938.00', '2.00', '17', '19', '60', '36');
INSERT INTO `Products` VALUES ('61', 'E-Line 227E4QSD/01', '3406.00', '2.00', '17', '19', '61', '36');
INSERT INTO `Products` VALUES ('62', '24MP57HQ-P', '5226.00', '2.00', '17', '9', '62', '36');
INSERT INTO `Products` VALUES ('63', '24MP77HM-P ', '6370.00', '2.00', '17', '9', '63', '36');
INSERT INTO `Products` VALUES ('64', '27MP57HQ-P ', '7306.00', '2.00', '17', '9', '64', '36');
INSERT INTO `Products` VALUES ('65', 'DLK-8021P ', '166.40', '2.00', '19', '20', '65', null);
INSERT INTO `Products` VALUES ('66', 'DLK-8021U ', '180.70', '2.00', '19', '20', '66', null);
INSERT INTO `Products` VALUES ('67', 'KB-307F Blue', '442.00', '12.00', '19', '21', '67', null);
INSERT INTO `Products` VALUES ('68', 'KB-307F White', '468.00', '12.00', '19', '21', '68', null);
INSERT INTO `Products` VALUES ('69', 'G-CUBE GOT-60B (Berry-Tini) ', '260.00', '12.00', '18', '12', '69', null);
INSERT INTO `Products` VALUES ('70', 'K4-59MD-2 Grey', '195.00', '12.00', '18', '12', '70', null);
INSERT INTO `Products` VALUES ('71', 'HQ-M1', '65.00', '12.00', '18', '21', '71', null);
INSERT INTO `Products` VALUES ('72', 'HQ-GMW703 Black', '273.00', '12.00', '18', '21', '72', null);
INSERT INTO `Products` VALUES ('73', 'V710 Aresze', '266.50', '12.00', '18', '14', '73', null);
INSERT INTO `Products` VALUES ('74', 'V720 Aresze', '257.92', '12.00', '18', '14', '74', null);
INSERT INTO `Products` VALUES ('75', 'ERGO 7000 Black (31030052103)', '377.00', '12.00', '18', '22', '75', null);
INSERT INTO `Products` VALUES ('76', 'Navigator 380 Green (31011339100)', '767.00', '12.00', '18', '22', '76', null);
INSERT INTO `Products` VALUES ('77', 'M105 Blue Optical (910-003105)', '273.00', '3.00', '18', '23', '77', null);
INSERT INTO `Products` VALUES ('78', 'M105 Black Optical (910-002940) ', '273.00', '3.00', '18', '23', '78', null);
INSERT INTO `Products` VALUES ('79', 'Windows 8.1', '4108.00', '3.00', '20', '24', '79', null);
INSERT INTO `Products` VALUES ('80', '2015 Desktop BOX', '754.00', '3.00', '20', '25', '80', null);
INSERT INTO `Products` VALUES ('81', '2015 Desktop Renewal', '520.00', '3.00', '20', '25', '81', null);

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO `Users` VALUES ('1', 'ЕЛЕНА', 'ВОВК', '1962-03-31', 'elena@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('2', 'ВИКТОР', 'ГИНКУЛ', '1957-01-20', 'victor@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('3', 'ТАТЬЯНА', 'ЗЕНТИК', '1956-04-13', 'tatyana.z@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('4', 'ФЕДОРА', 'ДЕЛИ', '1979-11-11', 'fedora@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('5', 'АЛЕКСЕЙ', 'БУЗУНОВ', '1962-11-10', 'lesha@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('6', 'МИХАИЛ', 'МЕЛЕНЬ', '1952-03-08', 'mishanya@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('7', 'ЕВГЕНИЙ', 'ЛУДКОВ', '1977-06-09', 'zheka@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('8', 'ЛЮБОВЬ', 'СИЧКАРЕНКО', '1981-04-15', 'love@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('9', 'ЕЛЕНА', 'РАВНИШИНА', '1978-07-31', 'elena.r@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('10', 'КОНСТАНТИН', 'ДОБРОВОЛЬСЬКИЙ', '1966-04-29', 'kostyan@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('11', 'ТАТЬЯНА', 'КОРИЦЬКА', '1967-10-02', 'k.tanyuha@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('12', 'ЕЛЕНА', 'ЯКОВЕНКО', '1965-06-26', 'lenchikpenchik@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('13', 'ЕЛЕНА', 'ГРУСЕВИЧ', '1979-06-01', 'elena2@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('14', 'СЕРГЕЙ', 'МОЙСА', '1978-08-02', 'seryunya@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('15', 'ФЕОДОРА', 'ПАСКАЛОВА', '1956-02-14', 'feodora@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('16', 'ЕЛЕНА', 'МАМАЛЫЖЕНКО', '1959-11-30', 'elena3@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('17', 'ГЕОРГИЙ', 'НАЦВАЛАДЗЕ', '1973-04-27', 'jora@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('18', 'ЛЮДМИЛА', 'ОВСЯННИКОВА', '1979-05-31', 'lyusya@gmail.com', 'qwertyXXX', '0', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('19', 'ИВАН', 'МЕРЕТ', '1981-06-26', 'vano@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('20', 'РОБЕРТ', 'ГУЛИЕВ', '1981-07-14', 'robert@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('21', 'ЕЛЕНА', 'ШАХРАЙ', '1950-09-22', 'elenapokolena@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('22', 'РУСЛАН', 'РОПАЙ', '1959-03-06', 'rulyapulya@gmail.com', 'qwertyXXX', '0', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('23', 'ЕКАТЕРИНА', 'ГАВРИЛЕНКО', '1972-03-01', 'katyuha@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('24', 'ЕЛЕНА', 'ПЛАКУЩЕНКО', '1977-03-29', 'elenaskolkovas@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('25', 'СВЕТЛАНА', 'БАБИЕНКО', '1953-11-16', 'svet@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('26', 'ИВАН', 'ЦАПЕНКО', '1967-07-21', 'ivano@gmail.com', 'qwertyXXX', '0', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('27', 'ТАТЬЯНА', 'ГУЛИЕВА', '1979-02-11', 'tanchela@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('28', 'ЕЛЕНА', 'ЧАВА', '1985-06-20', 'shoopyat@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('29', 'ЛИЛИЯ', 'НИКИТЕНКО', '1983-01-21', 'liludallas@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('30', 'АННА', 'ПОЛТОРАК', '1976-12-30', 'annushka@gmail.com', 'qwertyXXX', '0', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('31', 'МАРИНА', 'ГУЛИЕВА', '1974-02-05', 'marinad@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('32', 'ИННА', 'БЕКЛЕР', '1959-08-22', 'prostoinna@gmail.com', 'qwertyXXX', '1', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('33', 'НАТЕЛА', 'ШЕВАРДЕНАДЗЕ', '1949-01-02', 'nuttela@gmail.com', 'qwertyXXX', '0', '2015-08-20 14:11:06', '2015-08-20 14:11:06');
INSERT INTO `Users` VALUES ('34', 'МАРИЯ', 'БРОНОВИЦКАЯ', '1980-08-20', 'mashunya@gmail.com', 'qwerty', '1', '2015-08-20 14:27:24', '2015-08-20 14:11:06');

-- ----------------------------
-- Table structure for Vendors
-- ----------------------------
DROP TABLE IF EXISTS `Vendors`;
CREATE TABLE `Vendors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title_vendor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Products` (`id_vendor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Vendors
-- ----------------------------
INSERT INTO `Vendors` VALUES ('1', 'ASUS');
INSERT INTO `Vendors` VALUES ('2', 'Intel Core™');
INSERT INTO `Vendors` VALUES ('3', 'AMD');
INSERT INTO `Vendors` VALUES ('4', 'Kingston ');
INSERT INTO `Vendors` VALUES ('5', 'GOODRAM');
INSERT INTO `Vendors` VALUES ('6', 'Seagate');
INSERT INTO `Vendors` VALUES ('7', ' Western Digital');
INSERT INTO `Vendors` VALUES ('8', '3Q');
INSERT INTO `Vendors` VALUES ('9', 'LG');
INSERT INTO `Vendors` VALUES ('10', 'Dongle ');
INSERT INTO `Vendors` VALUES ('11', 'HP');
INSERT INTO `Vendors` VALUES ('12', 'A4-Tech');
INSERT INTO `Vendors` VALUES ('13', 'Casecom');
INSERT INTO `Vendors` VALUES ('14', 'GoldenField');
INSERT INTO `Vendors` VALUES ('15', 'Logitech');
INSERT INTO `Vendors` VALUES ('16', 'Coolermaster');
INSERT INTO `Vendors` VALUES ('17', 'LogicPower');
INSERT INTO `Vendors` VALUES ('18', 'Chieftec');
INSERT INTO `Vendors` VALUES ('19', 'Philips');
INSERT INTO `Vendors` VALUES ('20', 'Delux');
INSERT INTO `Vendors` VALUES ('21', 'HQ-Tech');
INSERT INTO `Vendors` VALUES ('22', 'Genius');
INSERT INTO `Vendors` VALUES ('23', 'Logitech  ');
INSERT INTO `Vendors` VALUES ('24', 'Microsoft');
INSERT INTO `Vendors` VALUES ('25', 'Kaspersky Anti-virus');
