-- ----------------------------
-- Table structure for typecho_order
-- ----------------------------
DROP TABLE IF EXISTS `typecho_order`;
CREATE TABLE `typecho_order` (
  `id` INTEGER PRIMARY KEY  AUTOINCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` varchar(255) DEFAULT '1',
  `unique_id` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
);

-- ----------------------------
-- Table structure for typecho_order_alipay
-- ----------------------------
DROP TABLE IF EXISTS `typecho_order_alipay`;
CREATE TABLE `typecho_order_alipay` (
  `id` INTEGER PRIMARY KEY  AUTOINCREMENT,
  `out_trade_no` varchar(255) DEFAULT NULL,
  `buyer_logon_id` varchar(255) DEFAULT NULL,
  `trade_status` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `receipt_amount` varchar(255) DEFAULT NULL,
  `buyer_pay_amount` varchar(255) DEFAULT NULL,
  `notify_time` datetime DEFAULT NULL,
  `notify_id` varchar(255) DEFAULT NULL,
  `json_file` text
);

-- ----------------------------
-- Table structure for typecho_order_wxpay
-- ----------------------------
DROP TABLE IF EXISTS `typecho_order_wxpay`;
CREATE TABLE `typecho_order_wxpay` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `time_end` datetime DEFAULT NULL,
  `return_code` int(255) DEFAULT NULL,
  `total_fee` int(255) DEFAULT NULL,
  `out_trade_no` varchar(255) DEFAULT NULL,
  `payjs_order_id` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT '',
  `transaction_id` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `mchid` varchar(255) DEFAULT '',
  `sign` varchar(255) DEFAULT NULL,
  `json_file` text
);

