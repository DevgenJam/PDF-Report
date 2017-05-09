/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50130
Source Host           : localhost:3306
Source Database       : cao

Target Server Type    : MYSQL
Target Server Version : 50130
File Encoding         : 65001

Date: 2017-05-08 13:08:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `backup`
-- ----------------------------
DROP TABLE IF EXISTS `backup`;
CREATE TABLE `backup` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `timein` varchar(20) NOT NULL,
  `timeout` varchar(20) NOT NULL,
  `tag` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of backup
-- ----------------------------

-- ----------------------------
-- Table structure for `campaign`
-- ----------------------------
DROP TABLE IF EXISTS `campaign`;
CREATE TABLE `campaign` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `deduction` int(11) DEFAULT NULL,
  `per` int(1) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of campaign
-- ----------------------------
INSERT INTO `campaign` VALUES ('1', 'BRIAN FARMING', '0', '0');
INSERT INTO `campaign` VALUES ('2', 'BACK BRACE', '50', '0');
INSERT INTO `campaign` VALUES ('3', 'VIRTUAL ASSISTANT', '10', '1');
INSERT INTO `campaign` VALUES ('4', 'IT', '10', '1');
INSERT INTO `campaign` VALUES ('5', 'MIRACLE NOODLE', '0', '0');
INSERT INTO `campaign` VALUES ('6', 'NONE', '0', '0');
INSERT INTO `campaign` VALUES ('7', 'ENS', '50', '0');

-- ----------------------------
-- Table structure for `information`
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `emp_id` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` int(1) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `campaign` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `sched_in` varchar(30) NOT NULL,
  `sched_out` varchar(30) NOT NULL,
  `late_time` varchar(20) DEFAULT NULL,
  `advance_time` varchar(20) DEFAULT NULL,
  `must_out` varchar(20) DEFAULT NULL,
  `rate` varchar(20) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 login, 0 log out',
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('174425', 'CAESAR IAN', 'U', 'LUCEÑO', '0', '09099588705', 'VIRTUAL ASSISTANT', 'VA', '05:00', '13:00', '', '', '', '25.00', '1');
INSERT INTO `information` VALUES ('174534', 'CHRISTIAN JAY', 'A', 'SANDOY', '0', '09128507881', 'BRIAN FARMING', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '18.75', '0');
INSERT INTO `information` VALUES ('174636', 'DEXTER JAY', 'M', 'LARA', '0', '09104708587', 'BRIAN FARMING', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '25.00', '0');
INSERT INTO `information` VALUES ('174728', 'CARMELITO', 'O', 'CAITOM JR.', '0', '0930252343', 'BRIAN FARMING', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '25.00', '0');
INSERT INTO `information` VALUES ('170135', 'JASON', 'B', 'WAMILDA', '0', '', 'BRIAN FARMING', 'SUPERVISOR', '23:00', '07:00', '23:30', '22:00', '08:00', '42.5', '0');
INSERT INTO `information` VALUES ('203128', 'DENNIS', '', 'TABACON', '0', '9123518030', 'BACK BRACE', 'VOICE', '22:00', '07:00', '', '', '', '42.5', '0');
INSERT INTO `information` VALUES ('174341', 'JEFFREY', 'R', 'GUMBOC', '0', '09330151241', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '', '', '', '25.00', '1');
INSERT INTO `information` VALUES ('174458', 'KEVIN', '', 'BITO', '0', '09128388123', 'BRIAN FARMING', 'VA', '08:00', '16:00', '', '', '', '18.75', '0');
INSERT INTO `information` VALUES ('203241', 'RALPH JERIC', 'P', 'JUDIS', '0', '09461591287', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '42.5', '0');
INSERT INTO `information` VALUES ('203344', 'GEOFEL MARK ', '', 'TARADEL', '0', '09482311076', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '18.75', '0');
INSERT INTO `information` VALUES ('203443', 'JERICHO JOHN', 'O', 'AQUINO', '0', '9959950872', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '35.00', '0');
INSERT INTO `information` VALUES ('203535', 'KARL FARIZ', '', 'LATIF', '0', '9425857401', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '42.5', '0');
INSERT INTO `information` VALUES ('203645', 'KENT REYNALD', 'D', 'COSADIO', '0', '9058702954', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '42.5', '0');
INSERT INTO `information` VALUES ('203746', 'ALDRIN', '', 'GAYTA', '0', '9989520784', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '18.75', '0');
INSERT INTO `information` VALUES ('203902', 'LOVELYN', '', 'BUISON', '1', '9552931434', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '18.75', '0');
INSERT INTO `information` VALUES ('203944', 'GEMWARD', '', 'VARGAS', '0', '9997488361', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '35.00', '0');
INSERT INTO `information` VALUES ('204038', 'NORHANAH', '', 'SARIP', '1', '9066941299', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '18.75', '0');
INSERT INTO `information` VALUES ('204114', 'JEMMABEL', 'C', 'SUMALINAB', '1', '9486050709', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '35.00', '0');
INSERT INTO `information` VALUES ('204231', 'JOSELLE MAE', 'S', 'ZAMORA', '1', '9426269927', 'BACK BRACE', 'VOICE', '22:00', '07:00', '22:30', '21:00', '08:00', '18.75', '0');
INSERT INTO `information` VALUES ('261810', 'DARIO', '', 'OCHIA', '0', '09099791697', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '45', '1');
INSERT INTO `information` VALUES ('262109', 'CHRISTIAN JAY', '', 'ABSIN', '0', '09289358368', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '45', '1');
INSERT INTO `information` VALUES ('262201', 'PRINCESS SHEILA ', '', 'GETURBOS', '1', '9083907142', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '45', '0');
INSERT INTO `information` VALUES ('262419', 'NORDINA ', '', 'ABDULAH', '1', '9461520107', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '45', '0');
INSERT INTO `information` VALUES ('261058', 'LOUISE KENNETH ', '', 'SUBAAN', '0', '9073065742', 'VIRTUAL ASSISTANT', 'OPERATION MANAGER', '00:00', '08:00', '00:30', '23:00', '09:00', '66.25', '0');
INSERT INTO `information` VALUES ('264604', 'JAMYDE', 'V', 'HONREJAS', '0', '09099507939', 'IT', 'ADMIN', '21:00', '05:00', '', '', '', '18.75', '1');
INSERT INTO `information` VALUES ('270917', 'ROGELIO', 'V', 'LARA', '0', '9300305801', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '45', '1');
INSERT INTO `information` VALUES ('271137', 'KARENE ', '', 'MEMBRADO', '1', '9109128028', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '23:00', '07:00', '23:30', '22:00', '08:00', '52.5', '0');
INSERT INTO `information` VALUES ('271152', 'JEFFREY ', 'P', 'CAINGLET', '0', '9073660339', 'VIRTUAL ASSISTANT', 'MANAGER', '08:00', '16:00', '08:30', '07:00', '17:00', '57.5', '0');
INSERT INTO `information` VALUES ('271119', 'JAMES CARL ', '', 'CALITINA', '0', '9307761752', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '23:00', '07:00', '23:30', '22:00', '08:00', '52.5', '0');
INSERT INTO `information` VALUES ('271145', 'KATHLENE ', '', 'QUINTAYO', '1', '9487499524', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '23:00', '07:00', '23:30', '22:00', '08:00', '52.5', '0');
INSERT INTO `information` VALUES ('271235', 'DAPHNY ', '', 'GUCOR', '0', '9101098325', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '23:00', '07:00', '23:30', '22:00', '08:00', '52.5', '0');
INSERT INTO `information` VALUES ('271238', 'CHRISTIANNE ', 'F', 'MORALES', '1', '9360944983', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '02:00', '10:00', '02:30', '01:00', '11:00', '52.5', '0');
INSERT INTO `information` VALUES ('271204', 'EDMARK', 'O', 'SONSONA', '0', '9091711979', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '02:00', '10:00', '02:30', '01:00', '11:00', '52.5', '0');
INSERT INTO `information` VALUES ('271221', 'ANA MARIS ', '', 'SIMBAJON', '1', '9307221027', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '02:00', '10:00', '02:30', '01:00', '11:00', '52.5', '1');
INSERT INTO `information` VALUES ('271203', 'NAQUEEB ', '', 'BAHANG', '0', '9090041524', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '02:00', '10:00', '02:30', '01:00', '11:00', '52.5', '0');
INSERT INTO `information` VALUES ('271245', 'DESIRIE ', '', 'GUCOR', '1', '9073224629', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '08:00', '16:00', '08:30', '07:00', '17:00', '52.5', '0');
INSERT INTO `information` VALUES ('271240', 'JEZFRED', 'T', 'CADERAO', '0', '9306376721', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '00:00', '08:00', '00:30', '23:00', '09:00', '52.5', '0');
INSERT INTO `information` VALUES ('271259', 'KARL JEFFREY ', '', 'MAJADUCON', '0', '9095971910', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '14:00', '22:00', '14:30', '13:00', '23:00', '52.5', '1');
INSERT INTO `information` VALUES ('271237', 'RUSSEL DAVE ', '', 'BERNARDO', '0', '9307826409', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '08:00', '16:00', '08:30', '07:00', '17:00', '45', '0');
INSERT INTO `information` VALUES ('271251', 'ALDRIN JOHN ', 'M', 'PANTO', '0', '9101675845', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '00:00', '08:00', '00:30', '23:00', '09:00', '45', '0');
INSERT INTO `information` VALUES ('271208', 'JASON JAY ', 'B', 'LOPEZ', '0', '9494411423', 'VIRTUAL ASSISTANT', 'VA', '00:00', '08:00', '00:30', '23:00', '09:00', '45', '0');
INSERT INTO `information` VALUES ('271206', 'NEIL ', 'M', 'SALADO', '0', '9997809256', 'VIRTUAL ASSISTANT', 'VA', '00:00', '08:00', '00:30', '23:00', '09:00', '45', '0');
INSERT INTO `information` VALUES ('271223', 'RALPH EDGAR', 'G', ' FLORES', '0', '9109346236', 'VIRTUAL ASSISTANT', 'VA', '00:00', '08:00', '00:30', '23:00', '09:00', '45', '0');
INSERT INTO `information` VALUES ('271232', 'ELVIN BERT ', '', 'CORVERA', '0', '9307897969', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '45', '0');
INSERT INTO `information` VALUES ('271228', 'JOHN LOWELL ', '', 'SANTOS', '0', '9073060076', 'VIRTUAL ASSISTANT', 'VA', '05:00', '13:00', '05:30', '04:00', '14:00', '42.5', '1');
INSERT INTO `information` VALUES ('271233', 'REX ', '', 'BAYON-ON', '0', '9123597954', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '08:00', '16:00', '08:30', '07:00', '17:00', '36.875', '1');
INSERT INTO `information` VALUES ('271256', 'ERIC ', '', 'GARDOSE', '0', '9109264256', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '14:00', '22:00', '14:30', '13:00', '23:00', '36.875', '1');
INSERT INTO `information` VALUES ('271227', 'RICHIE', '', ' SITON', '0', '9090756441', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '14:00', '22:00', '14:30', '13:00', '23:00', '36.875', '1');
INSERT INTO `information` VALUES ('271218', 'VINCE RYAN ', 'GUJILDE ', 'BANLAT', '0', '9090755009', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '02:00', '10:00', '02:30', '01:00', '11:00', '36.875', '0');
INSERT INTO `information` VALUES ('271219', 'HENDRIX ', '', 'DATO', '0', '9108756360', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '', '', '', '36.875', '0');
INSERT INTO `information` VALUES ('271210', 'IVIEN THEA ', '', 'JANEO', '1', '', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '23:00', '07:00', '23:30', '22:00', '08:00', '36.875', '1');
INSERT INTO `information` VALUES ('271314', 'KIM CLARK', 'S', ' DELA CRUZ', '0', '9123657607', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '05:00', '13:00', '05:30', '04:00', '14:00', '36.875', '0');
INSERT INTO `information` VALUES ('271311', 'WIERSBIE DAVE ', 'D', 'RODRIGUEZ', '0', '9481260439', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '02:00', '10:00', '02:30', '01:00', '11:00', '36.875', '0');
INSERT INTO `information` VALUES ('271356', 'KAREN', '', 'LANDAR', '1', '9463800894', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '23:00', '07:00', '23:30', '22:00', '08:00', '36.875', '0');
INSERT INTO `information` VALUES ('271344', 'TERENCE JAN', 'A', 'RAFOLS', '0', '9461262425', 'VIRTUAL ASSISTANT', 'TEAM LEADER', '08:00', '16:00', '08:30', '07:00', '17:00', '36.875', '0');
INSERT INTO `information` VALUES ('271355', 'GRACE ', '', 'ELIAGA', '1', '9082131833', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '36.875', '1');
INSERT INTO `information` VALUES ('271339', 'ARVELLE', 'S', 'BARRETE', '0', '9554813428', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '0');
INSERT INTO `information` VALUES ('271341', 'FYNNA ', '', 'EVEDIENTES', '1', '9095921969', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271321', 'JAMES CARLO ', '', 'CANARIA', '0', '9095538985', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271327', 'KRISTIAN FEL ', '', 'CATINGGAN', '0', '9127318443', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '0');
INSERT INTO `information` VALUES ('271441', 'NICOLE ', '', 'JANEO', '1', '9956242727', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271433', 'CRISTINE ', '', 'GARAY', '1', '9980927171', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271411', 'MARK ANTHONY ', '', 'DAROY', '0', '9481438632', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271502', 'ORLY ', '', 'DINOPOL', '0', '9488183510', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271518', 'SHELLA MAE ', '', 'MAYNOSON', '1', '9123664601', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271558', 'BRYAN JAY ', 'N', 'RABINO', '0', '9123626599', 'VIRTUAL ASSISTANT', 'VA', '05:00', '13:00', '05:30', '04:00', '14:00', '35', '0');
INSERT INTO `information` VALUES ('271545', 'JOHN CLIFF ', 'P', 'ORTEGA', '0', '9091912023', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '0');
INSERT INTO `information` VALUES ('271549', 'RAYMOND LLOYD', 'M', 'PANILA', '0', '9983694953', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '0');
INSERT INTO `information` VALUES ('271519', 'ROHELL ', 'T', 'ARMOLA', '0', '9260111207', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '0');
INSERT INTO `information` VALUES ('271521', 'FERDIE ', '', 'BELTRAN', '0', '9553484398', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271556', 'RENATO ', '', 'IMPOC JR.', '0', '9565229342', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271528', 'JIA JOY ', '', 'MIER', '1', '9099066992', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '35', '0');
INSERT INTO `information` VALUES ('271506', 'LYNYRD ', '', 'ROMBLON', '0', '9074790258', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '0');
INSERT INTO `information` VALUES ('271543', 'AVINEZER ', '', 'BAHANG', '0', '9105462090', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '0');
INSERT INTO `information` VALUES ('271534', 'JOHNREY ', '', 'ESGANA', '0', '9365400865', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '0');
INSERT INTO `information` VALUES ('271508', 'CARL DEXTER  ', '', 'ASENTISTA', '0', '9326296869', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '35', '1');
INSERT INTO `information` VALUES ('271514', 'HENRY JAMES ', '', 'MONTAÑO', '0', '9094222994', 'VIRTUAL ASSISTANT', 'VA', '05:00', '13:00', '05:30', '04:00', '14:00', '35', '1');
INSERT INTO `information` VALUES ('271544', 'RASID ', '', 'SALIMULA', '0', '9363702867', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '1');
INSERT INTO `information` VALUES ('271538', 'CRESENCIO ', 'L', 'DANCEL III', '0', '9363879250', 'VIRTUAL ASSISTANT', 'VA', '05:00', '13:00', '', '', '', '35', '1');
INSERT INTO `information` VALUES ('271533', 'HITLER', 'M', 'GAMPAL', '0', '9264981297', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '0');
INSERT INTO `information` VALUES ('271546', 'JEROME', 'Q', 'ROBLES', '0', '9481437467', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '0');
INSERT INTO `information` VALUES ('271525', 'GERARD MARK ', 'I', 'MORENO', '0', '9073065984', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '1');
INSERT INTO `information` VALUES ('271559', 'WELVIN ', '', 'SARCIA', '0', '9109845539', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '0');
INSERT INTO `information` VALUES ('271535', 'TWINKLE RUE ', '', 'MAGAWAY', '1', '9365882669', 'VIRTUAL ASSISTANT', 'VA', '08:00', '16:00', '08:30', '07:00', '17:00', '35', '1');
INSERT INTO `information` VALUES ('271515', 'MELANIE ', '', 'GARDONIA', '1', '9368800990', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '35', '1');
INSERT INTO `information` VALUES ('271542', 'RICHELLE ', '', 'SIMBAJON', '1', '9301506886', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '35', '1');
INSERT INTO `information` VALUES ('271523', 'REYMARK ', '', 'LUMAHAN', '0', '9073590732', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '35', '1');
INSERT INTO `information` VALUES ('271511', 'ARRON ', '', 'JAYAWON', '0', '9126006596', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '35', '1');
INSERT INTO `information` VALUES ('271530', 'SHERRY GRACE ', '', 'SATURION', '1', '9092337832', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '35', '1');
INSERT INTO `information` VALUES ('271527', 'PRENEL HEROLD BOC ', '', 'ABAD', '0', '9301637809', 'VIRTUAL ASSISTANT', 'VA', '14:00', '22:00', '14:30', '13:00', '23:00', '35', '1');
INSERT INTO `information` VALUES ('271531', 'AHMEL LOYD ', '', 'AMORAN', '0', '9103995787', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '25', '1');
INSERT INTO `information` VALUES ('271501', 'GLADYS GWYN ', '', 'CASIDA', '1', '9994833444', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '25', '1');
INSERT INTO `information` VALUES ('271532', 'EDEN GRACE ', '', 'RALLA', '1', '9092567243', 'VIRTUAL ASSISTANT', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '25', '1');
INSERT INTO `information` VALUES ('271555', 'FRANCIS ', '', 'DE LEON', '0', '9099073934', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '25', '0');
INSERT INTO `information` VALUES ('271526', 'EMEE LYDIE', 'A', 'OBENZA', '1', '9277785119', 'VIRTUAL ASSISTANT', 'VA', '02:00', '10:00', '02:30', '01:00', '11:00', '25', '0');
INSERT INTO `information` VALUES ('271541', 'ROLANDO ', '', 'OLASO', '0', '9056829902', 'VIRTUAL ASSISTANT', 'VA', '05:00', '13:00', '05:30', '04:00', '14:00', '25', '0');
INSERT INTO `information` VALUES ('271505', 'JENNY', 'B', 'SOMBLINGO', '1', '9074509636', 'VIRTUAL ASSISTANT', 'VA', '00:00', '08:00', '00:30', '23:00', '09:00', '25', '0');
INSERT INTO `information` VALUES ('012245', 'TEFANIE', 'MAGAYON', 'LARIBA', '1', '09101678545', 'BRIAN FARMING', 'VA', '23:00', '07:00', '23:30', '22:00', '08:00', '25', '0');
INSERT INTO `information` VALUES ('011959', 'IAN PAUL', 'S', 'PEÑAFIEL', '0', '9124719873', 'VIRTUAL ASSISTANT', 'ACCOUNT MANAGER', '00:00', '08:00', '00:30', '23:00', '09:00', '60', '0');
INSERT INTO `information` VALUES ('011917', 'JEAN MAE ROSE', 'MARTIZANO', 'MIER', '1', '09095971907', 'VIRTUAL ASSISTANT', 'SUPERVISOR', '14:00', '22:00', '', '', '', '52.5', '1');
INSERT INTO `information` VALUES ('012056', 'AVELINO ', '', 'GODINES JR.', '0', '09462476910', 'IT', 'ADMIN', '19:00', '04:00', '19:30', '18:00', '05:00', '0', '1');
INSERT INTO `information` VALUES ('020815', 'JOHN GABRIEL', 'VILLARAN', 'FRANCISCO', '0', '09469289990', 'VIRTUAL ASSISTANT', 'MANAGER', '08:00', '16:00', '08:30', '07:00', '17:00', '57.5', '0');
INSERT INTO `information` VALUES ('012209', 'LUCH', 'SAZON', 'MATABANG', '0', '09226410557', 'MIRACLE NOODLE', 'COSTUMER SERVICE', '23:00', '07:00', '23:30', '22:00', '08:00', '56.25', '0');
INSERT INTO `information` VALUES ('1127', 'CARLSON', 'A', 'LUMAGBAS', '0', '', 'NONE', 'SECURITY', '21:00', '06:00', '21:30', '20:00', '07:00', '31.25', '0');
INSERT INTO `information` VALUES ('012314', 'RAYMART LOUIE', 'MARCO', 'PANILA', '0', '09062953313', 'ENS', 'ENS AGENTS', '00:00', '20:00', '00:30', '23:00', '21:00', '25', '0');
INSERT INTO `information` VALUES ('012338', 'GEORGIE', 'MACABENTA', 'VELOSO', '0', '09104677516', 'ENS', 'ENS AGENTS', '00:00', '08:00', '', '', '', '42.5', '0');
INSERT INTO `information` VALUES ('020045', 'IRENE CLEO', '', 'CARIÑO', '1', '09056284524', 'ENS', 'ENS AGENTS', '00:00', '08:00', '00:30', '23:00', '09:00', '47.5', '0');
INSERT INTO `information` VALUES ('021338', 'REGINE JOY', '', 'CAMILLO', '1', '09079044705', 'MIRACLE NOODLE', 'COSTUMER SERVICE', '14:00', '23:00', '14:30', '13:00', '00:00', '42.5', '0');

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) NOT NULL,
  `dt` varchar(20) NOT NULL,
  `time_in` varchar(20) NOT NULL,
  `time_out` varchar(20) NOT NULL,
  `minlate` int(5) NOT NULL,
  `deduction` int(5) NOT NULL,
  `other_time` int(5) NOT NULL,
  `total_work` int(5) NOT NULL,
  `salaryaday` varchar(10) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `statuss` varchar(50) NOT NULL,
  `stat1` int(1) NOT NULL,
  `sup` text NOT NULL,
  `reason` text NOT NULL,
  `tag` int(1) NOT NULL COMMENT '1 login, 0 logout, 2 pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=601 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('1', '271523', '2017-05-01', '13:27', '22:13', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('2', '271527', '2017-05-01', '13:28', '22:17', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('3', '271227', '2017-05-01', '13:31', '22:17', '0', '0', '0', '8', '295', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('4', '271256', '2017-05-01', '13:37', '22:08', '0', '0', '0', '8', '295', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('5', '271515', '2017-05-01', '14:03', '22:12', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('6', '270917', '2017-05-01', '14:00', '22:24', '0', '0', '0', '8', '360', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('7', '271259', '2017-05-01', '14:03', '22:12', '0', '0', '0', '8', '420', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('8', '271530', '2017-05-01', '14:03', '22:18', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('9', '271232', '2017-05-01', '14:03', '22:19', '0', '0', '0', '8', '360', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('10', '264604', '2017-05-01', '20:11', '05:18', '0', '0', '0', '8', '150', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('11', '204231', '2017-05-01', '21:08', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('12', '204038', '2017-05-01', '21:10', '07:08', '0', '0', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('13', '203241', '2017-05-01', '21:12', '07:07', '0', '0', '0', '4', '170', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('14', '203944', '2017-05-01', '21:24', '07:07', '0', '0', '0', '4', '140', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('15', '203443', '2017-05-01', '21:40', '07:00', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('16', '203344', '2017-05-01', '21:40', '07:02', '0', '0', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('17', '203535', '2017-05-01', '21:41', '07:01', '0', '0', '0', '4', '170', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('18', '203128', '2017-05-01', '21:48', '', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('19', '203645', '2017-05-01', '21:57', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('20', '271501', '2017-05-01', '22:02', '07:09', '0', '0', '0', '8', '200', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('21', '271528', '2017-05-01', '22:03', '07:08', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('22', '271210', '2017-05-01', '22:03', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('23', '271556', '2017-05-01', '22:04', '07:43', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('24', '271521', '2017-05-01', '22:05', '07:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('25', '271502', '2017-05-01', '22:05', '07:31', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('26', '271219', '2017-05-01', '22:06', '07:09', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('27', '203746', '2017-05-01', '22:06', '07:09', '1', '50', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('28', '203902', '2017-05-01', '22:07', '07:09', '2', '50', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('29', '271441', '2017-05-01', '22:10', '07:19', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('30', '262109', '2017-05-01', '22:11', '07:17', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('31', '271518', '2017-05-01', '22:12', '07:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('32', '271356', '2017-05-01', '22:13', '07:04', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('33', '170135', '2017-05-01', '22:16', '07:49', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('34', '174636', '2017-05-01', '22:21', '07:11', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('35', '271542', '2017-05-01', '01:41', '22:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('36', '174728', '2017-05-01', '22:27', '07:12', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('37', '271341', '2017-05-01', '22:31', '07:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('38', '271235', '2017-05-01', '22:31', '07:11', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('39', '012245', '2017-05-01', '22:33', '07:10', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('40', '271119', '2017-05-01', '22:39', '07:01', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('41', '271531', '2017-05-01', '22:44', '07:03', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('42', '271411', '2017-05-01', '22:45', '08:00', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('43', '271532', '2017-05-01', '22:49', '07:06', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('44', '012209', '2017-05-01', '22:52', '07:17', '0', '0', '0', '8', '450', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('45', '174534', '2017-05-01', '22:53', '07:12', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('46', '271505', '2017-05-01', '23:04', '08:08', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('47', '261058', '2017-05-01', '23:05', '08:55', '0', '0', '0', '8', '530', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('48', '271208', '2017-05-01', '23:05', '08:07', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('49', '271240', '2017-05-01', '23:05', '11:09', '0', '0', '3', '8', '577.5', 'LOG OUT', 'OVERTIME', '2', 'JEZFRED', 'train new task.', '0');
INSERT INTO `logs` VALUES ('50', '011959', '2017-05-01', '23:05', '08:06', '0', '0', '0', '8', '480', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('51', '271223', '2017-05-01', '23:14', '08:19', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('52', '271206', '2017-05-01', '23:17', '08:05', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('53', '1127', '2017-05-01', '21:00', '06:16', '0', '0', '0', '8', '250', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('54', '271511', '2017-05-01', '14:00', '22:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('55', '012314', '2017-05-01', '23:54', '08:04', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('56', '012338', '2017-05-01', '23:56', '10:05', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('58', '011917', '2017-05-01', '14:00', '22:02', '0', '0', '0', '8', '380', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('59', '020045', '2017-05-02', '00:03', '08:03', '0', '0', '0', '8', '380', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('60', '271203', '2017-05-02', '01:02', '10:12', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('61', '271204', '2017-05-02', '01:03', '10:06', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('62', '271555', '2017-05-02', '01:03', '10:08', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('63', '271526', '2017-05-02', '01:04', '10:10', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('64', '271218', '2017-05-02', '01:09', '10:15', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('65', '271238', '2017-05-02', '01:09', '10:07', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('66', '271545', '2017-05-02', '01:10', '10:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('67', '262419', '2017-05-02', '01:10', '10:11', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('68', '271519', '2017-05-02', '01:11', '10:11', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('69', '271508', '2017-05-02', '01:12', '10:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('70', '271311', '2017-05-02', '01:12', '10:23', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('71', '271221', '2017-05-02', '01:16', '10:15', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('72', '271327', '2017-05-02', '01:54', '10:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('73', '271339', '2017-05-02', '01:56', '10:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('74', '271549', '2017-05-02', '02:02', '10:20', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('75', '271514', '2017-05-02', '04:04', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('76', '271538', '2017-05-02', '04:45', '13:22', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('77', '271228', '2017-05-02', '04:48', '13:20', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('78', '271314', '2017-05-02', '04:48', '13:01', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('79', '174425', '2017-05-02', '04:58', '13:51', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('80', '271541', '2017-05-02', '04:59', '13:24', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('81', '271558', '2017-05-02', '05:02', '14:23', '0', '0', '0', '4', '140', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('82', '271233', '2017-05-02', '07:45', '16:03', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('83', '271559', '2017-05-02', '07:48', '16:03', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('84', '271533', '2017-05-02', '07:51', '16:10', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('85', '174341', '2017-05-02', '07:51', '16:04', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('86', '271534', '2017-05-02', '07:52', '16:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('87', '271544', '2017-05-02', '07:53', '16:13', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('88', '261810', '2017-05-02', '07:54', '16:09', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('89', '174458', '2017-05-02', '07:54', '16:06', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('90', '271152', '2017-05-02', '07:55', '16:11', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('91', '271237', '2017-05-02', '07:59', '17:34', '0', '0', '0', '4', '180', 'LATE LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('92', '271344', '2017-05-02', '08:00', '16:02', '0', '0', '0', '8', '295', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('93', '271543', '2017-05-02', '08:00', '16:09', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('94', '271245', '2017-05-02', '08:11', '16:17', '6', '60', '0', '8', '420', 'LATE', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('95', '271546', '2017-05-02', '08:18', '16:05', '13', '130', '0', '8', '280', 'LATE', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('96', '271527', '2017-05-02', '13:06', '22:13', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('97', '271523', '2017-05-02', '13:18', '22:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('98', '021338', '2017-05-02', '13:35', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('99', '271530', '2017-05-02', '13:35', '22:35', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('100', '271259', '2017-05-02', '13:37', '22:11', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('101', '271542', '2017-05-02', '13:41', '22:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('102', '271227', '2017-05-02', '13:43', '22:08', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('103', '011917', '2017-05-02', '13:47', '22:10', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('104', '270917', '2017-05-02', '13:49', '22:13', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('105', '271256', '2017-05-02', '13:53', '22:17', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('106', '271515', '2017-05-02', '13:53', '22:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('107', '264604', '2017-05-02', '14:00', '20:27', '0', '0', '0', '4', '75', 'LATE LOG-OUT', 'DOUBLE SHIFT', '0', 'JASON', 'offline dtr deployment', '0');
INSERT INTO `logs` VALUES ('108', '271232', '2017-05-02', '14:03', '22:14', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('109', '174341', '2017-05-01', '08:00', '16:05', '0', '0', '0', '8', '200', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('110', '271525', '2017-05-01', '08:00', '16:05', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('111', '271525', '2017-05-02', '08:00', '16:05', '0', '0', '0', '8', '280', 'LOG IN', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('112', '203241', '2017-05-02', '21:09', '08:06', '0', '0', '0', '4', '170', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('113', '1127', '2017-05-02', '21:11', '06:16', '6', '0', '0', '4', '125', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('114', '203344', '2017-05-02', '21:32', '07:39', '0', '0', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('115', '203443', '2017-05-02', '21:33', '04:04', '0', '0', '0', '4', '140', 'LOG IN', 'EARLY OUT', '2', 'JEFFREY ', 'Not feeling well', '0');
INSERT INTO `logs` VALUES ('116', '203944', '2017-05-02', '21:34', '07:41', '0', '0', '0', '4', '140', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('117', '203535', '2017-05-02', '21:37', '07:40', '0', '0', '0', '4', '170', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('118', '203128', '2017-05-02', '21:38', '07:40', '0', '0', '0', '4', '169', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('119', '204231', '2017-05-02', '21:39', '07:41', '0', '0', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('120', '203645', '2017-05-02', '22:00', '07:41', '0', '0', '0', '4', '170', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('121', '271210', '2017-05-02', '22:00', '07:35', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('122', '271235', '2017-05-02', '22:01', '07:18', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('123', '271341', '2017-05-02', '22:01', '07:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('124', '271145', '2017-05-02', '22:01', '07:20', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('125', '271502', '2017-05-02', '22:02', '07:32', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('126', '203902', '2017-05-02', '22:03', '07:39', '0', '0', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('127', '203746', '2017-05-02', '22:03', '07:39', '0', '0', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('128', '271501', '2017-05-02', '22:03', '07:12', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('129', '271528', '2017-05-02', '22:03', '07:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('130', '271521', '2017-05-02', '22:03', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('131', '271356', '2017-05-02', '22:04', '07:05', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('132', '271441', '2017-05-02', '22:04', '07:35', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('133', '262109', '2017-05-02', '22:04', '07:34', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('134', '271355', '2017-05-02', '22:05', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('135', '271556', '2017-05-02', '22:05', '07:31', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('136', '012245', '2017-05-02', '22:07', '07:02', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('137', '170135', '2017-05-02', '22:07', '07:03', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('138', '271119', '2017-05-02', '22:07', '07:37', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('139', '271219', '2017-05-02', '22:08', '07:02', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('140', '204038', '2017-05-02', '22:08', '08:05', '3', '50', '0', '4', '75', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('141', '174636', '2017-05-02', '22:10', '07:03', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('142', '174534', '2017-05-02', '22:14', '07:05', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('143', '262201', '2017-05-02', '22:16', '07:04', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('144', '174728', '2017-05-02', '22:19', '07:02', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('145', '271518', '2017-05-02', '22:20', '07:33', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('146', '012209', '2017-05-02', '22:46', '07:17', '0', '0', '0', '8', '450', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('147', '271531', '2017-05-02', '22:48', '07:28', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('148', '271411', '2017-05-02', '22:53', '08:21', '0', '0', '0', '4', '140', 'LATE LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('149', '271532', '2017-05-02', '22:55', '07:08', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('150', '271321', '2017-05-02', '23:01', '07:27', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('151', '271240', '2017-05-02', '23:03', '08:12', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('152', '011959', '2017-05-02', '23:05', '10:46', '0', '0', '10', '8', '1080', 'LOG IN', 'OVERTIME', '2', 'IAN PAUL', 'Training Google adverts', '0');
INSERT INTO `logs` VALUES ('153', '012338', '2017-05-02', '23:15', '08:23', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('154', '271208', '2017-05-02', '23:17', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('155', '271206', '2017-05-02', '23:30', '08:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('156', '261058', '2017-05-02', '23:37', '10:08', '0', '0', '2', '8', '662.5', 'LOG IN', 'OVERTIME', '2', 'JASON', 'Finishing late task.', '0');
INSERT INTO `logs` VALUES ('157', '271223', '2017-05-02', '23:43', '08:23', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('158', '271505', '2017-05-02', '23:52', '08:07', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('159', '020045', '2017-05-02', '23:58', '08:20', '0', '0', '0', '8', '380', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('160', '012314', '2017-05-02', '23:58', '08:20', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('161', '271218', '2017-05-03', '01:01', '10:02', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('162', '271221', '2017-05-03', '01:01', '10:02', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('163', '262419', '2017-05-03', '01:02', '10:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('164', '271526', '2017-05-03', '01:03', '10:12', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('165', '271311', '2017-05-03', '01:03', '10:06', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('166', '271519', '2017-05-03', '01:04', '10:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('167', '271203', '2017-05-03', '01:05', '10:01', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('168', '271204', '2017-05-03', '01:06', '10:06', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('169', '271545', '2017-05-03', '01:06', '10:36', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('170', '271555', '2017-05-03', '01:07', '10:01', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('171', '271508', '2017-05-03', '01:21', '10:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('172', '271327', '2017-05-03', '01:32', '10:22', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('173', '271339', '2017-05-03', '01:33', '10:15', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('174', '271549', '2017-05-03', '02:00', '10:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('175', '271314', '2017-05-03', '04:36', '13:33', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('176', '271228', '2017-05-03', '04:36', '13:05', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('177', '271541', '2017-05-03', '04:39', '13:18', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('178', '271538', '2017-05-03', '04:48', '13:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('179', '271514', '2017-05-03', '04:53', '13:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('180', '174425', '2017-05-03', '04:58', '13:11', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('181', '271558', '2017-05-03', '05:03', '13:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('182', '271533', '2017-05-03', '07:41', '16:03', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('183', '020815', '2017-05-03', '07:44', '16:11', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('184', '271544', '2017-05-03', '07:46', '16:19', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('185', '271543', '2017-05-03', '07:48', '16:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('186', '271559', '2017-05-03', '07:49', '16:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('187', '271546', '2017-05-03', '07:49', '16:25', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('188', '271233', '2017-05-03', '07:50', '16:07', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('189', '271535', '2017-05-03', '07:53', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('190', '271344', '2017-05-03', '07:54', '16:09', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('191', '271534', '2017-05-03', '07:56', '16:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('192', '271237', '2017-05-03', '08:04', '16:17', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('193', '271525', '2017-05-03', '08:07', '16:07', '2', '20', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('194', '271245', '2017-05-03', '08:10', '16:13', '5', '50', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('195', '261810', '2017-05-03', '08:13', '16:04', '8', '80', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('196', '264604', '2017-05-03', '12:38', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('197', '271530', '2017-05-03', '13:12', '22:17', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('198', '271527', '2017-05-03', '13:16', '22:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('199', '271523', '2017-05-03', '13:16', '22:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('200', '011917', '2017-05-03', '13:35', '22:11', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('201', '271259', '2017-05-03', '13:35', '22:12', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('202', '021338', '2017-05-03', '13:47', '23:09', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('203', '271227', '2017-05-03', '13:50', '22:14', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('204', '271542', '2017-05-03', '13:51', '22:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('205', '271232', '2017-05-03', '13:54', '22:13', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('206', '271256', '2017-05-03', '13:55', '22:19', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('207', '271515', '2017-05-03', '13:56', '22:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('208', '270917', '2017-05-03', '13:58', '22:18', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('209', '271511', '2017-05-03', '13:59', '22:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('210', '1127', '2017-05-03', '20:51', '06:00', '0', '0', '0', '8', '250', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('211', '204038', '2017-05-03', '21:19', '03:11', '0', '0', '0', '4', '75', 'LOG IN', 'EARLY OUT', '0', 'JASON', 'technical issues', '0');
INSERT INTO `logs` VALUES ('212', '204114', '2017-05-03', '21:20', '03:11', '0', '0', '0', '4', '140', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'technical issues', '0');
INSERT INTO `logs` VALUES ('213', '203241', '2017-05-03', '21:26', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('214', '203944', '2017-05-03', '21:36', '03:10', '0', '0', '0', '4', '140', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'technical issue', '0');
INSERT INTO `logs` VALUES ('215', '203535', '2017-05-03', '21:36', '03:09', '0', '0', '0', '4', '170', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'TECHNICAL ISSUE', '0');
INSERT INTO `logs` VALUES ('216', '203443', '2017-05-03', '21:38', '03:08', '0', '0', '0', '4', '140', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'Technical Problem', '0');
INSERT INTO `logs` VALUES ('217', '203344', '2017-05-03', '21:38', '03:17', '0', '0', '0', '4', '75', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'technical problem', '0');
INSERT INTO `logs` VALUES ('218', '203645', '2017-05-03', '21:39', '03:09', '0', '0', '0', '4', '170', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'Technical Issue', '0');
INSERT INTO `logs` VALUES ('219', '203128', '2017-05-03', '21:42', '03:06', '0', '0', '0', '4', '170', 'LOG IN', 'EARLY OUT', '2', 'DAPHNY ', 'technical issue', '0');
INSERT INTO `logs` VALUES ('220', '203902', '2017-05-03', '21:52', '03:08', '0', '0', '0', '4', '75', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'technical issue', '0');
INSERT INTO `logs` VALUES ('221', '203746', '2017-05-03', '21:53', '03:07', '0', '0', '0', '4', '75', 'LOG IN', 'EARLY OUT', '2', 'JASON', 'technical issue', '0');
INSERT INTO `logs` VALUES ('222', '271528', '2017-05-03', '22:00', '07:54', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('223', '271501', '2017-05-03', '22:00', '07:55', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('224', '271341', '2017-05-03', '22:00', '07:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('225', '271145', '2017-05-03', '22:01', '07:28', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('226', '271210', '2017-05-03', '22:01', '07:27', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('227', '262109', '2017-05-03', '22:01', '07:51', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('228', '271441', '2017-05-03', '22:02', '07:53', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('229', '271556', '2017-05-03', '22:02', '07:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('230', '271219', '2017-05-03', '22:03', '07:06', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('231', '271356', '2017-05-03', '22:04', '07:04', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('232', '271521', '2017-05-03', '22:04', '07:04', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('233', '271119', '2017-05-03', '22:10', '07:26', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('234', '262201', '2017-05-03', '22:11', '07:06', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('235', '204231', '2017-05-03', '22:19', '03:09', '14', '50', '0', '4', '75', 'LATE', 'EARLY OUT', '2', 'JASON', 'Technical Isuue', '0');
INSERT INTO `logs` VALUES ('236', '271355', '2017-05-03', '22:20', '07:13', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('237', '012245', '2017-05-03', '22:22', '07:18', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('238', '174636', '2017-05-03', '22:25', '07:17', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('239', '174728', '2017-05-03', '22:25', '07:11', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('240', '174534', '2017-05-03', '22:28', '07:06', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('241', '170135', '2017-05-03', '22:30', '07:13', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('242', '271235', '2017-05-03', '22:33', '07:14', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('243', '271502', '2017-05-03', '22:35', '07:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('244', '271531', '2017-05-03', '22:36', '07:10', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('245', '271411', '2017-05-03', '22:36', '07:42', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('246', '271518', '2017-05-03', '22:38', '07:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('247', '012209', '2017-05-03', '22:55', '07:24', '0', '0', '0', '8', '450', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('248', '271321', '2017-05-03', '22:56', '07:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('249', '271532', '2017-05-03', '22:56', '07:12', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('250', '011959', '2017-05-03', '23:01', '08:37', '0', '0', '0', '8', '480', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('251', '261058', '2017-05-03', '23:09', '09:27', '0', '0', '1', '8', '596.25', 'LOG IN', 'OVERTIME', '2', 'JASON', 'Training new task.', '0');
INSERT INTO `logs` VALUES ('252', '271208', '2017-05-03', '23:10', '08:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('253', '271251', '2017-05-03', '23:10', '08:01', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('254', '271206', '2017-05-03', '23:13', '08:07', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('255', '271505', '2017-05-03', '23:18', '08:16', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('256', '012338', '2017-05-03', '23:37', '08:59', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('257', '020045', '2017-05-03', '23:52', '08:17', '0', '0', '0', '8', '380', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('258', '012314', '2017-05-03', '23:55', '08:31', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('259', '271555', '2017-05-04', '01:02', '10:25', '0', '0', '2', '8', '200', 'LOG OUT', 'OVERTIME', '2', 'LOUISE', 'Special task', '0');
INSERT INTO `logs` VALUES ('260', '271203', '2017-05-04', '01:02', '10:02', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('261', '271526', '2017-05-04', '01:03', '10:06', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('262', '262419', '2017-05-04', '01:03', '10:10', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('263', '271545', '2017-05-04', '01:03', '10:11', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('264', '271519', '2017-05-04', '01:03', '10:19', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('265', '271204', '2017-05-04', '01:04', '10:05', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('266', '271508', '2017-05-04', '01:04', '10:25', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('267', '271238', '2017-05-04', '01:04', '10:14', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('268', '271311', '2017-05-04', '01:14', '10:04', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('269', '271339', '2017-05-04', '01:25', '10:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('270', '271327', '2017-05-04', '01:25', '10:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('271', '271506', '2017-05-04', '01:43', '10:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('272', '271549', '2017-05-04', '01:56', '10:23', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('273', '271228', '2017-05-04', '04:34', '13:14', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('274', '271538', '2017-05-04', '04:37', '13:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('275', '271314', '2017-05-04', '04:42', '13:12', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('276', '271514', '2017-05-04', '04:48', '13:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('277', '271541', '2017-05-04', '04:51', '13:07', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('278', '271558', '2017-05-04', '05:00', '13:45', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('279', '174425', '2017-05-04', '05:01', '13:03', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('280', '174341', '2017-05-04', '07:22', '16:06', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('281', '271535', '2017-05-04', '07:43', '16:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('282', '271546', '2017-05-04', '07:43', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('283', '261810', '2017-05-04', '07:44', '16:27', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('284', '020815', '2017-05-04', '07:50', '16:46', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('285', '174458', '2017-05-04', '07:52', '16:01', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('286', '271544', '2017-05-04', '07:53', '16:04', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('287', '271533', '2017-05-04', '07:54', '16:03', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('288', '271152', '2017-05-04', '07:56', '', '0', '0', '0', '4', '', 'HALF DAY', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('289', '271344', '2017-05-04', '07:57', '16:06', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('290', '271525', '2017-05-04', '07:58', '16:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('291', '271233', '2017-05-04', '07:59', '16:43', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('292', '271534', '2017-05-04', '08:02', '16:10', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('293', '271543', '2017-05-04', '08:05', '16:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('294', '271237', '2017-05-04', '08:07', '16:02', '2', '20', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('295', '271245', '2017-05-04', '08:13', '16:47', '8', '80', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('296', '271523', '2017-05-04', '13:12', '22:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('297', '271527', '2017-05-04', '13:30', '22:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('298', '271259', '2017-05-04', '13:38', '22:13', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('299', '011917', '2017-05-04', '13:40', '22:12', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('300', '270917', '2017-05-04', '13:46', '22:24', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('301', '271530', '2017-05-04', '13:47', '22:18', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('302', '271542', '2017-05-04', '13:51', '22:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('303', '271227', '2017-05-04', '13:52', '22:17', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('304', '271256', '2017-05-04', '13:54', '22:24', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('305', '271232', '2017-05-04', '13:54', '22:21', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('306', '271515', '2017-05-04', '13:59', '22:17', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('307', '271511', '2017-05-04', '14:00', '22:18', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('308', '021338', '2017-05-04', '14:04', '23:07', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('309', '012056', '2017-05-04', '18:31', '04:15', '0', '0', '0', '8', '0', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('310', '1127', '2017-05-04', '21:14', '06:21', '9', '0', '0', '8', '250', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('311', '203128', '2017-05-04', '21:18', '07:17', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('312', '204114', '2017-05-04', '21:35', '07:12', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('313', '204038', '2017-05-04', '21:35', '07:12', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('314', '203443', '2017-05-04', '21:40', '07:07', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('315', '203344', '2017-05-04', '21:40', '07:05', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('316', '203944', '2017-05-04', '21:42', '07:15', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('317', '203241', '2017-05-04', '21:44', '07:12', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('318', '204231', '2017-05-04', '21:51', '07:13', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('319', '271528', '2017-05-04', '22:01', '07:13', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('320', '271501', '2017-05-04', '22:01', '07:13', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('321', '271341', '2017-05-04', '22:02', '08:26', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('322', '271521', '2017-05-04', '22:03', '07:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('323', '271356', '2017-05-04', '22:03', '07:06', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('324', '174728', '2017-05-04', '22:04', '07:17', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('325', '203645', '2017-05-04', '22:04', '07:14', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('326', '271210', '2017-05-04', '22:05', '07:24', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('327', '271441', '2017-05-04', '22:05', '07:24', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('328', '262109', '2017-05-04', '22:05', '07:23', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('329', '271502', '2017-05-04', '22:06', '07:11', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('330', '012245', '2017-05-04', '22:07', '07:27', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('331', '271219', '2017-05-04', '22:07', '07:05', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('332', '271518', '2017-05-04', '22:07', '07:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('333', '174534', '2017-05-04', '22:10', '07:16', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('334', '271235', '2017-05-04', '22:20', '07:20', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('335', '174636', '2017-05-04', '22:21', '07:18', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('336', '170135', '2017-05-04', '22:24', '07:38', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('337', '271556', '2017-05-04', '22:27', '07:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('338', '271532', '2017-05-04', '22:39', '07:10', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('339', '271119', '2017-05-04', '22:43', '08:44', '0', '0', '0', '8', '420', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('340', '271531', '2017-05-04', '22:48', '07:19', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('341', '271411', '2017-05-04', '22:48', '07:46', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('342', '271145', '2017-05-04', '22:49', '07:42', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('343', '262201', '2017-05-04', '22:51', '07:14', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('344', '271321', '2017-05-04', '22:58', '07:03', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('345', '271240', '2017-05-04', '23:01', '08:05', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('346', '012209', '2017-05-04', '23:05', '07:19', '0', '0', '0', '8', '450', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('347', '271208', '2017-05-04', '23:10', '08:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('348', '271223', '2017-05-04', '23:10', '08:04', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('349', '271206', '2017-05-04', '23:10', '08:25', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('350', '271251', '2017-05-04', '23:11', '08:26', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('351', '271355', '2017-05-04', '23:11', '07:10', '6', '60', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('352', '261058', '2017-05-04', '23:11', '08:42', '0', '0', '0', '8', '530', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('353', '011959', '2017-05-04', '23:11', '09:04', '0', '0', '9', '8', '1020', 'LOG IN', 'OVERTIME', '2', 'IAN PAUL', 'James Wilson Task', '0');
INSERT INTO `logs` VALUES ('354', '020045', '2017-05-04', '23:40', '10:34', '0', '0', '0', '8', '380', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('355', '012338', '2017-05-04', '23:43', '10:34', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('356', '012314', '2017-05-04', '23:57', '08:10', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('357', '271505', '2017-05-05', '00:02', '08:11', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('358', '271204', '2017-05-05', '01:00', '10:01', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('359', '271555', '2017-05-05', '01:01', '10:33', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('360', '271506', '2017-05-05', '01:01', '10:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('361', '271218', '2017-05-05', '01:01', '10:07', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('362', '271221', '2017-05-05', '01:02', '10:07', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('363', '271526', '2017-05-05', '01:02', '10:03', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('364', '262419', '2017-05-05', '01:02', '10:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('365', '271519', '2017-05-05', '01:02', '10:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('366', '271545', '2017-05-05', '01:02', '10:03', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('367', '271238', '2017-05-05', '01:03', '10:04', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('368', '271203', '2017-05-05', '01:05', '10:01', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('369', '271311', '2017-05-05', '01:07', '10:04', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('370', '271508', '2017-05-05', '01:13', '10:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('371', '271327', '2017-05-05', '01:35', '10:04', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('372', '271339', '2017-05-05', '01:35', '10:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('373', '271549', '2017-05-05', '01:59', '10:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('374', '271514', '2017-05-05', '04:40', '13:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('375', '271538', '2017-05-05', '04:46', '13:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('376', '271314', '2017-05-05', '04:47', '13:19', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('377', '271228', '2017-05-05', '04:48', '13:40', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('378', '271541', '2017-05-05', '04:52', '13:08', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('379', '271558', '2017-05-05', '04:56', '13:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('380', '174425', '2017-05-05', '05:05', '13:19', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('381', '174341', '2017-05-05', '07:36', '16:17', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('382', '020815', '2017-05-05', '07:43', '16:42', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('383', '271543', '2017-05-05', '07:48', '16:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('384', '271544', '2017-05-05', '07:52', '16:04', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('385', '271533', '2017-05-05', '07:53', '16:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('386', '271559', '2017-05-05', '07:54', '16:11', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('387', '271534', '2017-05-05', '07:56', '16:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('388', '271535', '2017-05-05', '07:57', '16:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('389', '271233', '2017-05-05', '07:59', '16:23', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('390', '271344', '2017-05-05', '08:02', '16:06', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('391', '261810', '2017-05-05', '08:05', '16:04', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('392', '271152', '2017-05-05', '08:05', '16:02', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('393', '271245', '2017-05-05', '08:06', '16:55', '1', '10', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('394', '271237', '2017-05-05', '08:09', '16:11', '4', '40', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('395', '271525', '2017-05-05', '08:14', '16:14', '9', '90', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('396', '271530', '2017-05-05', '13:02', '22:23', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('397', '271523', '2017-05-05', '13:03', '22:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('398', '271259', '2017-05-05', '13:27', '22:05', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('399', '270917', '2017-05-05', '13:36', '22:22', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('400', '011917', '2017-05-05', '13:45', '22:05', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('401', '271256', '2017-05-05', '13:46', '22:14', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('402', '271227', '2017-05-05', '13:46', '22:17', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('403', '271527', '2017-05-05', '13:49', '22:07', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('404', '271515', '2017-05-05', '13:56', '22:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('405', '271511', '2017-05-05', '13:57', '22:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('406', '021338', '2017-05-05', '14:00', '23:11', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('407', '012056', '2017-05-05', '18:55', '08:03', '0', '0', '4', '8', '0', 'LOG IN', 'OVERTIME', '2', 'JASON', 'BackBrace Support and other Stuff', '0');
INSERT INTO `logs` VALUES ('408', '203128', '2017-05-05', '21:28', '07:10', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('409', '203535', '2017-05-05', '21:28', '07:07', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('410', '204114', '2017-05-05', '21:28', '07:05', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('411', '204038', '2017-05-05', '21:28', '07:05', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('412', '203443', '2017-05-05', '21:32', '07:16', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('413', '203344', '2017-05-05', '21:32', '07:03', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('414', '204231', '2017-05-05', '21:43', '07:10', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('415', '203902', '2017-05-05', '21:43', '07:05', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('416', '203746', '2017-05-05', '21:43', '07:05', '0', '0', '0', '8', '150', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('417', '203944', '2017-05-05', '21:46', '07:09', '0', '0', '0', '8', '280', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('418', '203241', '2017-05-05', '21:47', '07:09', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('419', '203645', '2017-05-05', '21:54', '07:14', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('420', '271355', '2017-05-05', '22:00', '07:08', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('421', '271528', '2017-05-05', '22:01', '07:33', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('422', '271521', '2017-05-05', '22:01', '07:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('423', '271356', '2017-05-05', '22:01', '07:16', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('424', '271532', '2017-05-05', '22:01', '07:08', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('425', '271145', '2017-05-05', '22:03', '07:15', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('426', '271441', '2017-05-05', '22:03', '07:52', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('427', '262109', '2017-05-05', '22:03', '07:52', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('428', '271502', '2017-05-05', '22:04', '07:34', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('429', '271518', '2017-05-05', '22:05', '07:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('430', '012245', '2017-05-05', '22:08', '07:17', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('431', '271556', '2017-05-05', '22:08', '07:19', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('432', '271501', '2017-05-05', '22:12', '07:33', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('433', '174534', '2017-05-05', '22:13', '07:04', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('434', '271219', '2017-05-05', '22:16', '07:05', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('435', '262201', '2017-05-05', '22:19', '07:06', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('436', '271235', '2017-05-05', '22:23', '07:15', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('437', '271341', '2017-05-05', '22:24', '07:41', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('438', '271411', '2017-05-05', '22:25', '07:29', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('439', '174636', '2017-05-05', '22:31', '07:29', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('440', '271210', '2017-05-05', '22:35', '07:52', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('441', '271531', '2017-05-05', '22:37', '07:14', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('442', '170135', '2017-05-05', '22:43', '07:06', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('443', '174728', '2017-05-05', '22:45', '07:25', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('444', '271119', '2017-05-05', '22:47', '07:18', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('445', '012209', '2017-05-05', '22:54', '07:23', '0', '0', '0', '8', '450', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('446', '271321', '2017-05-05', '22:57', '07:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('447', '271223', '2017-05-05', '23:05', '08:15', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('448', '011959', '2017-05-05', '23:10', '08:45', '0', '0', '0', '8', '480', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('449', '261058', '2017-05-05', '23:11', '11:07', '0', '0', '3', '8', '728.75', 'LOG IN', 'OVERTIME', '2', 'JASON', 'Training', '0');
INSERT INTO `logs` VALUES ('450', '271240', '2017-05-05', '23:22', '08:06', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('451', '271206', '2017-05-05', '23:46', '08:04', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('452', '012338', '2017-05-05', '23:56', '09:09', '0', '0', '0', '8', '340', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('453', '012314', '2017-05-05', '23:56', '09:09', '0', '0', '0', '8', '200', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('454', '020045', '2017-05-05', '23:57', '09:08', '0', '0', '0', '8', '380', 'LOG-OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('455', '271505', '2017-05-05', '23:58', '08:07', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('456', '271526', '2017-05-06', '01:01', '10:11', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('457', '262419', '2017-05-06', '01:04', '10:04', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('458', '271218', '2017-05-06', '01:04', '10:10', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('459', '271221', '2017-05-06', '01:04', '10:10', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('460', '271203', '2017-05-06', '01:06', '10:06', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('461', '271204', '2017-05-06', '01:06', '10:05', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('462', '271519', '2017-05-06', '01:07', '10:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('463', '271508', '2017-05-06', '01:10', '10:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('464', '271555', '2017-05-06', '01:14', '10:16', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('465', '271506', '2017-05-06', '01:14', '10:17', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('466', '271311', '2017-05-06', '01:18', '10:03', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('467', '271327', '2017-05-06', '01:52', '10:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('468', '271228', '2017-05-06', '04:32', '13:03', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('469', '271314', '2017-05-06', '04:40', '13:42', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('470', '271541', '2017-05-06', '04:54', '13:44', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('471', '271558', '2017-05-06', '05:01', '13:30', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('472', '271514', '2017-05-06', '05:29', '13:16', '24', '240', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('473', '271233', '2017-05-06', '07:24', '16:21', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('474', '174341', '2017-05-06', '07:38', '16:13', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('475', '020815', '2017-05-06', '07:44', '16:28', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('476', '271546', '2017-05-06', '07:44', '16:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('477', '271543', '2017-05-06', '07:49', '16:15', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('478', '174458', '2017-05-06', '07:54', '16:01', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('479', '271533', '2017-05-06', '07:54', '16:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('480', '271559', '2017-05-06', '07:55', '16:16', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('481', '271344', '2017-05-06', '07:56', '16:23', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('482', '271535', '2017-05-06', '07:57', '16:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('483', '271544', '2017-05-06', '07:58', '16:10', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('484', '271534', '2017-05-06', '08:04', '16:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('485', '261810', '2017-05-06', '08:06', '16:17', '1', '10', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('486', '271152', '2017-05-06', '08:07', '16:35', '2', '20', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('487', '271245', '2017-05-06', '08:08', '17:10', '3', '30', '1', '8', '472.5', 'LATE', 'OVERTIME', '2', 'DESIRIE ', 'Safe Page', '0');
INSERT INTO `logs` VALUES ('488', '271237', '2017-05-06', '08:10', '16:23', '5', '50', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('489', '271259', '2017-05-06', '13:01', '22:10', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('490', '011917', '2017-05-06', '13:02', '22:10', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('491', '271523', '2017-05-06', '13:12', '22:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('492', '271527', '2017-05-06', '13:27', '22:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('493', '271256', '2017-05-06', '13:30', '22:13', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('494', '271538', '2017-05-06', '', '13:33', '0', '0', '0', '4', '140', '', 'HALF DAY', '2', '', 'naa lng giadtoan importante', '0');
INSERT INTO `logs` VALUES ('495', '271227', '2017-05-06', '13:47', '22:22', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('496', '270917', '2017-05-06', '13:47', '22:10', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('497', '271542', '2017-05-06', '13:51', '22:18', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('498', '271530', '2017-05-06', '14:04', '22:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('499', '271511', '2017-05-06', '14:04', '22:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('500', '012056', '2017-05-06', '17:08', '', '0', '0', '4', '0', '', '', 'EARLY IN', '2', 'JASON', 'Early Login', '1');
INSERT INTO `logs` VALUES ('501', '271501', '2017-05-06', '22:00', '07:14', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('502', '271528', '2017-05-06', '22:00', '07:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('503', '271532', '2017-05-06', '22:00', '07:12', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('504', '271219', '2017-05-06', '22:01', '07:05', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('505', '271355', '2017-05-06', '22:01', '07:12', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('506', '271556', '2017-05-06', '22:02', '07:15', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('507', '271521', '2017-05-06', '22:04', '07:20', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('508', '271356', '2017-05-06', '22:04', '07:20', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('509', '271441', '2017-05-06', '22:17', '07:22', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('510', '262109', '2017-05-06', '22:17', '07:22', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('511', '271502', '2017-05-06', '22:20', '07:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('512', '174534', '2017-05-06', '22:21', '07:15', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('513', '174636', '2017-05-06', '22:21', '07:15', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('514', '170135', '2017-05-06', '22:21', '07:16', '0', '0', '0', '8', '340', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('515', '271531', '2017-05-06', '22:31', '07:11', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('516', '262201', '2017-05-06', '22:31', '07:07', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('517', '271518', '2017-05-06', '22:34', '07:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('518', '271411', '2017-05-06', '22:38', '07:57', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('519', '012245', '2017-05-06', '22:39', '07:08', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('520', '271119', '2017-05-06', '22:50', '07:44', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('521', '271321', '2017-05-06', '22:55', '07:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('522', '261058', '2017-05-06', '23:01', '08:25', '0', '0', '0', '8', '530', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('523', '011959', '2017-05-06', '23:10', '09:13', '0', '0', '9', '8', '1020', 'LOG IN', 'OVERTIME', '2', 'IAN PAUL', 'James Wilson task', '0');
INSERT INTO `logs` VALUES ('524', '271251', '2017-05-06', '23:15', '08:11', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('525', '271208', '2017-05-06', '23:15', '08:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('526', '271223', '2017-05-06', '23:15', '07:19', '0', '0', '0', '4', '180', 'LOG IN', 'EARLY OUT', '2', 'IAN PAUL', 'adto pa ko cementeryo.\r\n\r\napproved by Ian.', '0');
INSERT INTO `logs` VALUES ('527', '271505', '2017-05-07', '00:04', '08:07', '0', '0', '0', '8', '200', 'LOG OUT', 'REST DAY DUTY', '2', 'IAN PAUL S PEÑAFIEL', 'MONDAY 12mn ang day off ku po', '0');
INSERT INTO `logs` VALUES ('528', '271545', '2017-05-07', '01:06', '10:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('529', '271311', '2017-05-07', '01:11', '09:48', '0', '0', '0', '4', '147.5', 'LOG IN', 'EARLY OUT', '2', 'JOHN GABRIEL', 'Chruch', '0');
INSERT INTO `logs` VALUES ('530', '271218', '2017-05-07', '01:24', '10:11', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('531', '271221', '2017-05-07', '01:24', '10:11', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('532', '262419', '2017-05-07', '01:26', '10:05', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('533', '271203', '2017-05-07', '01:30', '10:08', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('534', '271508', '2017-05-07', '01:30', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('535', '271339', '2017-05-07', '01:37', '10:30', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('536', '271327', '2017-05-07', '01:37', '10:09', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('537', '271204', '2017-05-07', '01:39', '10:09', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('538', '271519', '2017-05-07', '01:53', '10:30', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('539', '271549', '2017-05-07', '02:00', '10:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('540', '271538', '2017-05-07', '04:02', '13:08', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('541', '271514', '2017-05-07', '04:14', '13:01', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('542', '174425', '2017-05-07', '04:41', '13:04', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('543', '271541', '2017-05-07', '04:56', '13:20', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('544', '271535', '2017-05-07', '07:21', '16:12', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('545', '174341', '2017-05-07', '07:25', '16:16', '0', '0', '0', '8', '200', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('546', '271344', '2017-05-07', '07:39', '16:07', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('547', '271559', '2017-05-07', '07:40', '16:10', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('548', '271543', '2017-05-07', '07:43', '16:05', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('549', '271544', '2017-05-07', '07:51', '16:03', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('550', '020815', '2017-05-07', '07:51', '16:01', '0', '0', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('551', '271546', '2017-05-07', '07:52', '16:15', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('552', '271233', '2017-05-07', '07:54', '16:04', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('553', '271533', '2017-05-07', '07:56', '16:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('554', '271525', '2017-05-07', '08:00', '16:06', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('555', '271534', '2017-05-07', '08:01', '16:15', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('556', '271245', '2017-05-07', '08:08', '19:49', '3', '30', '1', '8', '472.5', 'LATE', 'OVERTIME', '2', 'DESIRIE ', 'Warming', '0');
INSERT INTO `logs` VALUES ('557', '271152', '2017-05-07', '08:11', '16:07', '6', '60', '0', '8', '460', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('558', '011917', '2017-05-07', '13:22', '22:05', '0', '0', '0', '8', '420', 'LOG OUT', 'REST DAY DUTY', '0', 'JEAN MAE ROSE MARTIZANO MIER', 'It\'s my duty. ', '0');
INSERT INTO `logs` VALUES ('559', '271515', '2017-05-07', '13:23', '22:14', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('560', '271530', '2017-05-07', '13:34', '22:17', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('561', '271259', '2017-05-07', '13:36', '22:05', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('562', '271527', '2017-05-07', '13:53', '22:18', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('563', '271511', '2017-05-07', '13:53', '22:17', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('564', '271227', '2017-05-07', '14:04', '22:15', '0', '0', '0', '8', '295', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('565', '012209', '2017-05-07', '15:04', '02:24', '0', '0', '3', '8', '618.75', '', 'OVERTIME', '0', 'JASON', 'overtime', '0');
INSERT INTO `logs` VALUES ('566', '011959', '2017-05-07', '23:04', '08:49', '0', '0', '0', '8', '480', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('567', '271251', '2017-05-07', '23:04', '08:08', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('568', '271223', '2017-05-07', '23:05', '08:07', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('569', '271206', '2017-05-07', '23:44', '08:19', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('570', '271240', '2017-05-07', '23:50', '08:09', '0', '0', '0', '8', '420', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('571', '271538', '2017-05-08', '01:05', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('572', '271228', '2017-05-08', '04:44', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('573', '174425', '2017-05-08', '04:58', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('574', '271559', '2017-05-08', '07:45', '16:04', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('575', '271525', '2017-05-08', '07:46', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('576', '174341', '2017-05-08', '07:48', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('577', '271535', '2017-05-08', '07:55', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('578', '271546', '2017-05-08', '08:04', '16:02', '0', '0', '0', '8', '280', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('579', '271237', '2017-05-08', '08:05', '16:03', '0', '0', '0', '8', '360', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('590', '270917', '2017-05-08', '13:04', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('591', '271530', '2017-05-08', '13:04', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('592', '271511', '2017-05-08', '13:04', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('589', '174458', '2017-05-08', '07:53', '16:17', '0', '0', '0', '8', '150', 'LOG OUT', '', '0', '', '', '0');
INSERT INTO `logs` VALUES ('598', '271542', '2017-05-08', '13:06', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('597', '271527', '2017-05-08', '13:05', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('596', '271515', '2017-05-08', '13:05', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('593', '271259', '2017-05-08', '13:05', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('594', '271523', '2017-05-08', '13:05', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('595', '011917', '2017-05-08', '13:05', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('599', '271256', '2017-05-08', '13:06', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');
INSERT INTO `logs` VALUES ('600', '271227', '2017-05-08', '13:06', '', '0', '0', '0', '0', '', 'LOG IN', '', '0', '', '', '1');

-- ----------------------------
-- Table structure for `other`
-- ----------------------------
DROP TABLE IF EXISTS `other`;
CREATE TABLE `other` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) NOT NULL,
  `remarks` varchar(40) NOT NULL,
  `sup_empid` varchar(40) NOT NULL,
  `reason` text,
  `status` int(1) NOT NULL COMMENT '0 not approved, 1 approved',
  `tag` int(1) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of other
-- ----------------------------
INSERT INTO `other` VALUES ('1', '174534', 'DOUBLE SHIFT', 'JASON', 'Train', '1', '1');
INSERT INTO `other` VALUES ('2', '170135', 'OVERTIME', 'JASON', 'Brian\'s Special Task', '1', '0');
INSERT INTO `other` VALUES ('3', '170135', 'OVERTIME', 'JASON', 'Brian,s Special Task Virtualization\r\n', '0', '0');
INSERT INTO `other` VALUES ('4', '204231', 'LATE LOG OUT', '', '', '0', '0');
INSERT INTO `other` VALUES ('5', '204231', 'LATE LOG OUT', '', '', '0', '0');
INSERT INTO `other` VALUES ('6', '204114', 'LATE LOG OUT', '', '', '0', '0');

-- ----------------------------
-- Table structure for `others`
-- ----------------------------
DROP TABLE IF EXISTS `others`;
CREATE TABLE `others` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) DEFAULT NULL,
  `rate` int(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time_in` varchar(20) DEFAULT NULL,
  `time_out` varchar(20) DEFAULT NULL,
  `noofhour` int(10) DEFAULT NULL,
  `deduction` int(20) DEFAULT NULL,
  `total_work` varchar(30) DEFAULT NULL,
  `salaryaday` varchar(20) DEFAULT NULL,
  `remarks` varchar(30) DEFAULT NULL,
  `reason` text,
  `status` int(1) DEFAULT NULL COMMENT '2 pending, 0 approved,1 is login',
  `supervisor` text,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of others
-- ----------------------------

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', 'VA');
INSERT INTO `position` VALUES ('2', 'SUPERVISOR');
INSERT INTO `position` VALUES ('3', 'VOICE');
INSERT INTO `position` VALUES ('4', 'OPERATION MANGER');
INSERT INTO `position` VALUES ('5', 'ACCOUNT MANAGER');
INSERT INTO `position` VALUES ('6', 'MANAGER');
INSERT INTO `position` VALUES ('7', 'TEAM LEADER');
INSERT INTO `position` VALUES ('8', 'ADMIN');
INSERT INTO `position` VALUES ('9', 'COSTUMER SERVICE');
INSERT INTO `position` VALUES ('10', 'SECURITY');
INSERT INTO `position` VALUES ('11', 'ENS AGENTS');

-- ----------------------------
-- Table structure for `restday`
-- ----------------------------
DROP TABLE IF EXISTS `restday`;
CREATE TABLE `restday` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) NOT NULL,
  `dayname` varchar(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of restday
-- ----------------------------
INSERT INTO `restday` VALUES ('1', '174425', 'Saturday');
INSERT INTO `restday` VALUES ('2', '174534', 'Sunday');
INSERT INTO `restday` VALUES ('3', '174636', 'Sunday');
INSERT INTO `restday` VALUES ('4', '174728', 'Sunday');
INSERT INTO `restday` VALUES ('5', '170135', 'Sunday');
INSERT INTO `restday` VALUES ('6', '174341', 'WEDNESDAY');
INSERT INTO `restday` VALUES ('7', '174458', 'SUNDAY');
INSERT INTO `restday` VALUES ('8', '203128', 'Saturday');
INSERT INTO `restday` VALUES ('9', '203128', 'Sunday');
INSERT INTO `restday` VALUES ('10', '203241', 'Saturday');
INSERT INTO `restday` VALUES ('11', '203344', 'Saturday');
INSERT INTO `restday` VALUES ('12', '203443', 'Saturday');
INSERT INTO `restday` VALUES ('13', '203535', 'Saturday');
INSERT INTO `restday` VALUES ('14', '203645', 'Saturday');
INSERT INTO `restday` VALUES ('15', '203746', 'Saturday');
INSERT INTO `restday` VALUES ('16', '203902', 'Saturday');
INSERT INTO `restday` VALUES ('17', '203944', 'Saturday');
INSERT INTO `restday` VALUES ('18', '204038', 'Saturday');
INSERT INTO `restday` VALUES ('19', '204114', 'Saturday');
INSERT INTO `restday` VALUES ('20', '204231', 'Saturday');
INSERT INTO `restday` VALUES ('21', '204231', 'Sunday');
INSERT INTO `restday` VALUES ('22', '204114', 'Sunday');
INSERT INTO `restday` VALUES ('23', '204038', 'Sunday');
INSERT INTO `restday` VALUES ('24', '203902', 'Sunday');
INSERT INTO `restday` VALUES ('25', '203746', 'Sunday');
INSERT INTO `restday` VALUES ('26', '203645', 'Sunday');
INSERT INTO `restday` VALUES ('27', '203344', 'Sunday');
INSERT INTO `restday` VALUES ('28', '203443', 'Sunday');
INSERT INTO `restday` VALUES ('29', '203535', 'Sunday');
INSERT INTO `restday` VALUES ('30', '203241', 'Sunday');
INSERT INTO `restday` VALUES ('31', '261810', 'MONDAY');
INSERT INTO `restday` VALUES ('32', '262109', '');
INSERT INTO `restday` VALUES ('33', '262201', '');
INSERT INTO `restday` VALUES ('34', '262419', '');
INSERT INTO `restday` VALUES ('35', '261058', '');
INSERT INTO `restday` VALUES ('36', '264604', 'Sunday');
INSERT INTO `restday` VALUES ('37', '264604', 'Saturday');
INSERT INTO `restday` VALUES ('38', '271000', '');
INSERT INTO `restday` VALUES ('39', '271028', '');
INSERT INTO `restday` VALUES ('40', '271007', 'Tuesday');
INSERT INTO `restday` VALUES ('41', '271007', '');
INSERT INTO `restday` VALUES ('42', '271017', 'Monday');
INSERT INTO `restday` VALUES ('43', '271029', 'Monday');
INSERT INTO `restday` VALUES ('44', '271040', '');
INSERT INTO `restday` VALUES ('45', '271009', '');
INSERT INTO `restday` VALUES ('46', '271148', '');
INSERT INTO `restday` VALUES ('47', '271115', '');
INSERT INTO `restday` VALUES ('48', '271110', 'Tuesday');
INSERT INTO `restday` VALUES ('49', '271152', '');
INSERT INTO `restday` VALUES ('50', '271100', '');
INSERT INTO `restday` VALUES ('51', '271159', '');
INSERT INTO `restday` VALUES ('52', '271119', 'SUNDAY');
INSERT INTO `restday` VALUES ('53', '271145', '');
INSERT INTO `restday` VALUES ('54', '271137', '');
INSERT INTO `restday` VALUES ('55', '271235', 'MONDAY');
INSERT INTO `restday` VALUES ('56', '271238', '');
INSERT INTO `restday` VALUES ('57', '271204', '');
INSERT INTO `restday` VALUES ('58', '271221', '');
INSERT INTO `restday` VALUES ('59', '271203', 'MONDAY');
INSERT INTO `restday` VALUES ('60', '271245', 'MONDAY');
INSERT INTO `restday` VALUES ('61', '271240', '');
INSERT INTO `restday` VALUES ('62', '271259', '');
INSERT INTO `restday` VALUES ('63', '271237', 'SUNDAY');
INSERT INTO `restday` VALUES ('64', '271251', '');
INSERT INTO `restday` VALUES ('65', '271208', '');
INSERT INTO `restday` VALUES ('66', '271206', '');
INSERT INTO `restday` VALUES ('67', '271223', '');
INSERT INTO `restday` VALUES ('68', '271232', '');
INSERT INTO `restday` VALUES ('69', '271228', '');
INSERT INTO `restday` VALUES ('70', '271233', '');
INSERT INTO `restday` VALUES ('71', '271256', 'SUNDAY');
INSERT INTO `restday` VALUES ('72', '271227', '');
INSERT INTO `restday` VALUES ('73', '271218', '');
INSERT INTO `restday` VALUES ('74', '271219', '');
INSERT INTO `restday` VALUES ('75', '271210', '');
INSERT INTO `restday` VALUES ('76', '271314', '');
INSERT INTO `restday` VALUES ('77', '271311', '');
INSERT INTO `restday` VALUES ('78', '271356', '');
INSERT INTO `restday` VALUES ('79', '271344', 'MONDAY');
INSERT INTO `restday` VALUES ('80', '271355', '');
INSERT INTO `restday` VALUES ('81', '271339', '');
INSERT INTO `restday` VALUES ('82', '271341', '');
INSERT INTO `restday` VALUES ('83', '271321', '');
INSERT INTO `restday` VALUES ('84', '271327', '');
INSERT INTO `restday` VALUES ('85', '271441', '');
INSERT INTO `restday` VALUES ('86', '271433', '');
INSERT INTO `restday` VALUES ('87', '271411', '');
INSERT INTO `restday` VALUES ('88', '271502', '');
INSERT INTO `restday` VALUES ('89', '271518', '');
INSERT INTO `restday` VALUES ('90', '271558', '');
INSERT INTO `restday` VALUES ('91', '271545', '');
INSERT INTO `restday` VALUES ('92', '271549', '');
INSERT INTO `restday` VALUES ('93', '271519', '');
INSERT INTO `restday` VALUES ('94', '271521', 'Sunday');
INSERT INTO `restday` VALUES ('95', '271556', 'Sunday');
INSERT INTO `restday` VALUES ('96', '271528', 'Sunday');
INSERT INTO `restday` VALUES ('97', '271506', '');
INSERT INTO `restday` VALUES ('98', '271543', 'MONDAY');
INSERT INTO `restday` VALUES ('99', '271534', 'MONDAY');
INSERT INTO `restday` VALUES ('100', '271508', 'MONDAY');
INSERT INTO `restday` VALUES ('101', '271514', 'MONDAY');
INSERT INTO `restday` VALUES ('102', '271544', 'MONDAY');
INSERT INTO `restday` VALUES ('103', '271538', 'MONDAY');
INSERT INTO `restday` VALUES ('104', '271533', '');
INSERT INTO `restday` VALUES ('105', '271546', 'FRIDAY');
INSERT INTO `restday` VALUES ('106', '271525', 'SATURDAY');
INSERT INTO `restday` VALUES ('107', '271559', 'THURSDAY');
INSERT INTO `restday` VALUES ('108', '271535', 'TUESDAY');
INSERT INTO `restday` VALUES ('109', '271515', 'SATURDAY');
INSERT INTO `restday` VALUES ('110', '271542', 'Sunday');
INSERT INTO `restday` VALUES ('111', '271523', 'Sunday');
INSERT INTO `restday` VALUES ('112', '271511', '');
INSERT INTO `restday` VALUES ('113', '271530', '');
INSERT INTO `restday` VALUES ('114', '271527', '');
INSERT INTO `restday` VALUES ('115', '271531', '');
INSERT INTO `restday` VALUES ('116', '271501', '');
INSERT INTO `restday` VALUES ('117', '271532', '');
INSERT INTO `restday` VALUES ('118', '271555', '');
INSERT INTO `restday` VALUES ('119', '271526', 'MONDAY');
INSERT INTO `restday` VALUES ('120', '271541', 'MONDAY');
INSERT INTO `restday` VALUES ('121', '271505', 'Sunday');
INSERT INTO `restday` VALUES ('122', '270917', 'Sunday');
INSERT INTO `restday` VALUES ('123', '011959', '');
INSERT INTO `restday` VALUES ('124', '011917', 'Sunday');
INSERT INTO `restday` VALUES ('125', '012056', 'Sunday');
INSERT INTO `restday` VALUES ('126', '012245', 'Sunday');
INSERT INTO `restday` VALUES ('127', '012209', 'Saturday');
INSERT INTO `restday` VALUES ('128', '012209', 'Sunday');
INSERT INTO `restday` VALUES ('129', '012335', 'SUNDAY');
INSERT INTO `restday` VALUES ('130', '012314', 'Sunday');
INSERT INTO `restday` VALUES ('131', '012338', 'Saturday');
INSERT INTO `restday` VALUES ('132', '012338', 'Sunday');
INSERT INTO `restday` VALUES ('133', '012314', 'Saturday');
INSERT INTO `restday` VALUES ('134', '020045', 'Saturday');
INSERT INTO `restday` VALUES ('135', '020815', 'Monday');
INSERT INTO `restday` VALUES ('136', '021338', 'Saturday');
INSERT INTO `restday` VALUES ('137', '271235', 'Saturday');

-- ----------------------------
-- Table structure for `security`
-- ----------------------------
DROP TABLE IF EXISTS `security`;
CREATE TABLE `security` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of security
-- ----------------------------
INSERT INTO `security` VALUES ('1', '1', 'jam', 'jam', '0');

-- ----------------------------
-- Table structure for `specialform`
-- ----------------------------
DROP TABLE IF EXISTS `specialform`;
CREATE TABLE `specialform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) NOT NULL,
  `dt` varchar(20) NOT NULL,
  `time_in` varchar(20) NOT NULL,
  `time_out` varchar(20) NOT NULL,
  `total_work` int(5) NOT NULL,
  `salaryaday` varchar(10) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `statuss` varchar(50) DEFAULT NULL,
  `sup` text NOT NULL,
  `reason` text NOT NULL,
  `tag` int(1) NOT NULL COMMENT '1 login, 0 logout, 2 pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of specialform
-- ----------------------------
INSERT INTO `specialform` VALUES ('1', '271119', '2017-05-08', '01:39', '10:08', '8', '', 'LOG OUT', 'SPECIAL SHIFT', 'IAN PAUL S PEÑAFIEL', 'TEAM SCHED', '0');
INSERT INTO `specialform` VALUES ('2', '271501', '2017-05-08', '01:44', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('3', '271221', '2017-05-08', '01:44', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('4', '271210', '2017-05-08', '01:45', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('5', '271218', '2017-05-08', '01:46', '10:08', '8', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('6', '271355', '2017-05-08', '01:46', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('7', '271538', '2017-05-08', '01:47', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('8', '271233', '2017-05-08', '01:48', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('9', '271514', '2017-05-08', '01:49', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('10', '261810', '2017-05-08', '01:49', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('11', '271531', '2017-05-08', '01:50', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched ', '0');
INSERT INTO `specialform` VALUES ('12', '271532', '2017-05-08', '01:50', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('13', '262109', '2017-05-08', '01:50', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('14', '271544', '2017-05-08', '01:51', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('15', '271245', '2017-05-08', '01:51', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('16', '271235', '2017-05-08', '01:51', '10:08', '0', '', 'LOG OUT', 'SPECIAL SHIFT', 'DESIRIE   GUCOR', 'team sched', '0');
INSERT INTO `specialform` VALUES ('17', '021338', '2017-05-08', '11:01', '11:01', '8', '', 'LOG OUT', 'SPECIAL SHIFT', 'JASON B WAMILDA', 'change sched', '0');

-- ----------------------------
-- Table structure for `sup`
-- ----------------------------
DROP TABLE IF EXISTS `sup`;
CREATE TABLE `sup` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `campaign` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sup
-- ----------------------------

-- ----------------------------
-- Table structure for `try`
-- ----------------------------
DROP TABLE IF EXISTS `try`;
CREATE TABLE `try` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) DEFAULT NULL,
  `timein` time NOT NULL DEFAULT '00:00:00',
  `timeout` varchar(255) NOT NULL,
  `tag` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of try
-- ----------------------------
INSERT INTO `try` VALUES ('1', '1', '00:00:00', '', '0');
INSERT INTO `try` VALUES ('2', '1', '00:00:00', '', '0');
INSERT INTO `try` VALUES ('3', '1', '00:00:00', '', '0');
INSERT INTO `try` VALUES ('4', '2', '00:00:00', '', '0');
INSERT INTO `try` VALUES ('5', '2', '11:00:00', '', '0');
