CREATE TABLE `event_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `application` smallint(6) NOT NULL,
  `live` tinyint(1) NOT NULL,
  `instant_email` tinyint(1) NOT NULL,
  `og_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_type_og_id_7937bd0e0cad2ca3_uniq` (`og_id`),
  KEY `event_type_373c1229` (`og_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `object_metadata` longtext COLLATE utf8_unicode_ci,
  `customer_id` int(11) DEFAULT NULL,
  `logged` datetime NOT NULL,
  `sent` datetime DEFAULT NULL,
  `viewed` datetime DEFAULT NULL,
  `email_html` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `event_log_777d41c8` (`type_id`),
  KEY `event_log_edc991fc` (`customer_id`),
  KEY `event_log_13690d09` (`logged`),
  KEY `event_log_5d787ab3` (`sent`),
  KEY `event_log_4f2e53d3` (`viewed`)
) ENGINE=MyISAM AUTO_INCREMENT=41814008 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_attribute_id` int(11) DEFAULT NULL,
  `quantity` smallint(5) unsigned DEFAULT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `extra_cost` decimal(16,2) NOT NULL DEFAULT '0.00',
  `frozen` tinyint(1) NOT NULL,
  `total_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `first_placed` datetime DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `one_time` tinyint(1) NOT NULL,
  `public_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_item_public_id_5d05568ef0ae5ef1_uniq` (`public_id`),
  KEY `order_item_8337030b` (`order_id`),
  KEY `order_item_104f5ac1` (`subscription_id`),
  KEY `order_item_bb420c12` (`product_id`),
  KEY `order_item_e9ac63a7` (`product_attribute_id`),
  KEY `order_item_6edfcb9c` (`public_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11269660 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sub_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `shipping_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `payment_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `place` datetime DEFAULT NULL,
  `cancelled` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `order_merchant_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rejected_message` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_data` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '1',
  `tries` int(12) DEFAULT '0',
  `locked` tinyint(1) NOT NULL,
  `generic_error_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_id` (`public_id`),
  KEY `order_order_6b64a45c` (`merchant_id`),
  KEY `order_order_edc991fc` (`customer_id`),
  KEY `order_order_842c533d` (`payment_id`),
  KEY `order_order_20484567` (`shipping_address_id`),
  KEY `order_order_type_idx` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=9867649 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_product_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoship_enabled` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `live` tinyint(1) NOT NULL,
  `discontinued` tinyint(1) NOT NULL DEFAULT '0',
  `offer_profile_id` int(11) DEFAULT NULL,
  `extra_data` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `premier_enabled` smallint(6) NOT NULL,
  `incentive_group_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_product_merchant_id_2e0272abdc05d655_uniq` (`merchant_id`,`external_product_id`),
  KEY `product_product_6b64a45c` (`merchant_id`),
  KEY `product_product_fbce3e21` (`external_product_id`),
  KEY `live` (`live`),
  KEY `autoship_enabled` (`autoship_enabled`),
  KEY `offer_profile_id_refs_id_7e880a31` (`offer_profile_id`),
  KEY `product_product_7986cb63` (`premier_enabled`),
  KEY `product_product_f1340a09` (`incentive_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6848187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `public_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attribute_id` int(11) DEFAULT NULL,
  `quantity` int(16) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `frequency_days` smallint(6) NOT NULL,
  `reminder_days` smallint(6) NOT NULL,
  `start_date` date NOT NULL,
  `cancelled` datetime DEFAULT NULL,
  `cancel_reason` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `session_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `merchant_order_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `live` tinyint(1) NOT NULL,
  `every` int(10) unsigned DEFAULT NULL,
  `every_period` smallint(6) DEFAULT NULL,
  `customer_rep_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `iteration` smallint(6) DEFAULT NULL,
  `sequence` smallint(6) DEFAULT NULL,
  `extra_data` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `subscription_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_id` (`public_id`),
  KEY `subscription_subscription_edc991fc` (`customer_id`),
  KEY `subscription_subscription_6b64a45c` (`merchant_id`),
  KEY `subscription_subscription_bb420c12` (`product_id`),
  KEY `subscription_subscription_e9ac63a7` (`product_attribute_id`),
  KEY `subscription_subscription_842c533d` (`payment_id`),
  KEY `subscription_subscription_20484567` (`shipping_address_id`),
  KEY `subscription_subscription_87ececef` (`offer_id`),
  KEY `subscription_subscription_f62c987b` (`merchant_order_id`),
  KEY `customer_rep_id_refs_id_6a3472ac` (`customer_rep_id`),
  KEY `club_id_refs_id_7a084051` (`club_id`),
  KEY `subscription_subscription_41c24ea7` (`subscription_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1938159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOAD DATA LOCAL INFILE "event_log_nulls.csv"
INTO TABLE og.event_log
FIELDS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE "event_type_nulls.csv"
INTO TABLE og.event_types
FIELDS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE "order_item_nulls.csv"
INTO TABLE og.order_items
FIELDS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE "order_order_nulls.csv"
INTO TABLE og.orders
FIELDS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE "product_product_nulls.csv"
INTO TABLE og.products
FIELDS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE "subscription_subscription_nulls.csv"
INTO TABLE og.subscriptions
FIELDS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n';
