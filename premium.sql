-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for premium
CREATE DATABASE IF NOT EXISTS `premium` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `premium`;

-- Dumping structure for table premium.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.addon_account: ~11 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
	(2, 'society_police', 'Police', 1),
	(3, 'society_taxi', 'Taxi', 1),
	(4, 'society_realestateagent', 'Agent immobilier', 1),
	(9, 'society_cardealer', 'Cardealer', 1),
	(10, 'society_ambulance', 'EMS', 1),
	(11, 'property_black_money', 'Money Sale Property', 0),
	(13, 'bank_savings', 'Bank Savings', 0),
	(15, 'society_ambulance', 'EMS', 1),
	(24, 'society_mafia', 'Mafia', 1),
	(26, 'caution', 'caution', 0),
	(27, 'society_mechanic', 'Mechanic', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table premium.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.addon_account_data: ~16 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'society_police', 0, NULL),
	(2, 'society_taxi', 0, NULL),
	(3, 'society_realestateagent', 0, NULL),
	(6, 'society_cardealer', 50000, NULL),
	(7, 'society_ambulance', 49660, NULL),
	(321, 'society_mafia', 0, NULL),
	(322, 'property_black_money', 0, 'steam:11000013d4486db'),
	(323, 'bank_savings', 0, 'steam:11000013d4486db'),
	(324, 'caution', 0, 'steam:11000013d4486db'),
	(325, 'society_mechanic', 0, NULL),
	(328, 'property_black_money', 0, 'steam:110000142bdf425'),
	(329, 'caution', 0, 'steam:110000142bdf425'),
	(330, 'bank_savings', 0, 'steam:110000142bdf425'),
	(331, 'property_black_money', 0, 'steam:1100001468829f9'),
	(332, 'bank_savings', 0, 'steam:1100001468829f9'),
	(333, 'caution', 0, 'steam:1100001468829f9');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table premium.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.addon_inventory: ~9 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
	(1, 'society_police', 'Police', 1),
	(2, 'society_taxi', 'Taxi', 1),
	(3, 'society_weazel', 'Weazel News', 1),
	(4, 'property', 'Property', 0),
	(5, 'society_cardealer', 'Cardealer', 1),
	(6, 'society_ambulance', 'EMS', 1),
	(17, 'society_mafia', 'Mafia', 1),
	(18, 'society_weazelnews', 'Weazel News', 1),
	(19, 'society_mechanic', 'Mechanic', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table premium.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.addon_inventory_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(15, 'society_mechanic', 'bread', 0, NULL);
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table premium.allhousing
CREATE TABLE IF NOT EXISTS `allhousing` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `owned` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `resalepercent` int(11) NOT NULL,
  `resalejob` varchar(50) NOT NULL,
  `entry` longtext DEFAULT NULL,
  `garage` longtext DEFAULT NULL,
  `furniture` longtext DEFAULT NULL,
  `shell` varchar(50) NOT NULL,
  `interior` varchar(50) NOT NULL,
  `shells` longtext DEFAULT NULL,
  `doors` longtext DEFAULT NULL,
  `housekeys` longtext DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `inventorylocation` longtext DEFAULT NULL,
  `mortgage_owed` int(11) NOT NULL DEFAULT 0,
  `last_repayment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.allhousing: ~0 rows (approximately)
/*!40000 ALTER TABLE `allhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `allhousing` ENABLE KEYS */;

-- Dumping structure for table premium.arrests_list
CREATE TABLE IF NOT EXISTS `arrests_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.arrests_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `arrests_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrests_list` ENABLE KEYS */;

-- Dumping structure for table premium.baninfo
CREATE TABLE IF NOT EXISTS `baninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.baninfo: ~3 rows (approximately)
/*!40000 ALTER TABLE `baninfo` DISABLE KEYS */;
INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
	(1, 'license:3425d5ce2164c011a6e02f86284b8b3a0f203841', 'steam:11000013d4486db', NULL, NULL, 'discord:580257498196344833', 'ip:154.85.76.226', 'Ahsan Qureshi'),
	(2, 'license:6f4147c7a60c893c6d467b55dd54cc98be4c5ee7', 'steam:110000142bdf425', 'live:1899947230901117', NULL, 'discord:581563125241741320', 'ip:27.6.242.88', 'Walter White'),
	(3, 'license:8a5b23ff06c424d19219403c140537d4f94b55c0', 'steam:1100001468829f9', 'live:914797971471288', 'xbl:2535439412443356', NULL, 'ip:39.34.187.224', 'Baasha Bhai');
/*!40000 ALTER TABLE `baninfo` ENABLE KEYS */;

-- Dumping structure for table premium.banlist
CREATE TABLE IF NOT EXISTS `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.banlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlist` ENABLE KEYS */;

-- Dumping structure for table premium.banlisthistory
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.banlisthistory: ~0 rows (approximately)
/*!40000 ALTER TABLE `banlisthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlisthistory` ENABLE KEYS */;

-- Dumping structure for table premium.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.billing: ~0 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table premium.bolos_list
CREATE TABLE IF NOT EXISTS `bolos_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.bolos_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `bolos_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolos_list` ENABLE KEYS */;

-- Dumping structure for table premium.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table premium.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table premium.communityservice
CREATE TABLE IF NOT EXISTS `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.communityservice: ~0 rows (approximately)
/*!40000 ALTER TABLE `communityservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `communityservice` ENABLE KEYS */;

-- Dumping structure for table premium.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.datastore: ~16 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
	(1, 'user_ears', 'Ears', 0),
	(2, 'user_glasses', 'Glasses', 0),
	(3, 'user_helmet', 'Helmet', 0),
	(4, 'user_mask', 'Mask', 0),
	(7, 'society_police', 'Police', 1),
	(9, 'vault', 'Vault', 0),
	(10, 'property', 'Property', 0),
	(11, 'society_ambulance', 'EMS', 1),
	(13, 'property', 'Property', 0),
	(16, 'user_ears', 'Ears', 0),
	(17, 'user_glasses', 'Glasses', 0),
	(18, 'user_helmet', 'Helmet', 0),
	(19, 'user_mask', 'Mask', 0),
	(20, 'society_cardealer', 'Cardealer', 0),
	(26, 'society_mafia', 'Mafia', 1),
	(27, 'property', 'Property', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table premium.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=753 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.datastore_data: ~24 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(728, 'society_police', NULL, '{}'),
	(730, 'society_ambulance', NULL, '{}'),
	(731, 'society_mafia', NULL, '{}'),
	(732, 'user_ears', 'steam:11000013d4486db', '{}'),
	(733, 'user_helmet', 'steam:11000013d4486db', '{}'),
	(734, 'user_mask', 'steam:11000013d4486db', '{}'),
	(735, 'user_glasses', 'steam:11000013d4486db', '{}'),
	(736, 'vault', 'steam:11000013d4486db', '{}'),
	(737, 'society_cardealer', 'steam:11000013d4486db', '{}'),
	(738, 'property', 'steam:11000013d4486db', '{}'),
	(739, 'user_ears', 'steam:110000142bdf425', '{}'),
	(740, 'user_glasses', 'steam:110000142bdf425', '{}'),
	(741, 'society_cardealer', 'steam:110000142bdf425', '{}'),
	(742, 'user_helmet', 'steam:110000142bdf425', '{}'),
	(743, 'vault', 'steam:110000142bdf425', '{}'),
	(744, 'property', 'steam:110000142bdf425', '{}'),
	(745, 'user_mask', 'steam:110000142bdf425', '{}'),
	(746, 'user_ears', 'steam:1100001468829f9', '{}'),
	(747, 'user_glasses', 'steam:1100001468829f9', '{}'),
	(748, 'user_helmet', 'steam:1100001468829f9', '{}'),
	(749, 'user_mask', 'steam:1100001468829f9', '{}'),
	(750, 'vault', 'steam:1100001468829f9', '{}'),
	(751, 'property', 'steam:1100001468829f9', '{}'),
	(752, 'society_cardealer', 'steam:1100001468829f9', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table premium.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.fine_types: ~52 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Abuse of the horn', 30, 0),
	(2, 'Cross a continuous line', 40, 0),
	(3, 'Circulation contrary to', 250, 0),
	(4, 'Unauthorized U-turn', 250, 0),
	(5, 'Off-road traffic', 170, 0),
	(6, 'Failure to respect safety distances', 30, 0),
	(7, 'Dangerous / forbidden stop', 150, 0),
	(8, 'Parking awkward / forbidden', 70, 0),
	(9, 'Not respecting the priority on the right', 70, 0),
	(10, 'Non-compliance with a priority vehicle', 90, 0),
	(11, 'Failure to stop', 105, 0),
	(12, 'Failure to comply with a red light', 130, 0),
	(13, 'Dangerous overtaking', 100, 0),
	(14, 'Vehicle not in safe state', 100, 0),
	(15, 'Driving without a license', 1500, 0),
	(16, 'Hit and run', 800, 0),
	(19, 'Driving under speedlimit', 180, 0),
	(20, 'Speeding', 300, 0),
	(21, 'Obstruction of traffic', 110, 1),
	(22, 'Degradation of the public road', 90, 1),
	(23, 'Trouble with public order', 90, 1),
	(24, 'Obstructing police operation', 130, 1),
	(25, 'Insulte envers / entre civils', 75, 1),
	(26, 'Outrage to police officer', 110, 1),
	(27, 'Verbal threat or intimidation towards civil', 90, 1),
	(28, 'Verbal threat or intimidation of a police officer', 150, 1),
	(29, 'Illegal protest', 250, 1),
	(30, 'Attempted corruption', 1500, 1),
	(31, 'Legal Weapon Out in Town', 120, 2),
	(32, 'Lethal Weapon Out in Town', 300, 2),
	(33, 'Weapon Not Allowed (License Failure)', 600, 2),
	(34, 'illegal weapon', 1000, 2),
	(35, 'Illegal items', 500, 2),
	(36, 'Vehicle Theft', 1800, 2),
	(37, 'Sale of drugs', 1500, 2),
	(38, 'Drug manufacture', 1500, 2),
	(39, '\r\nPossession of drugs', 650, 2),
	(40, 'Civil dispute', 1500, 2),
	(41, 'Takeover agent of the state', 2000, 2),
	(42, 'Special deflection', 650, 2),
	(43, 'Store robbing', 1500, 2),
	(44, 'Bank robbery', 2500, 2),
	(45, 'Civilian shooting', 2000, 3),
	(46, 'Shooting on police officer', 2500, 3),
	(47, 'Attempted murder on civil', 3000, 3),
	(48, 'Attempted murder on officer', 5000, 3),
	(49, 'Murder on civil', 10000, 3),
	(50, 'Murder on state agent', 30000, 3),
	(51, 'Manslaughter', 1800, 3),
	(52, 'Business scam', 2000, 2),
	(53, 'House Robbery', 2500, 2),
	(54, 'Wearing Officers cloth', 50000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table premium.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table premium.items: ~108 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('acetone', 'Acetone', 5, 0, 1),
	('alive_chicken', 'living chicken', 20, 0, 1),
	('armor', 'Armour', 1, 0, 1),
	('bandage', 'Bandage', 5, 0, 1),
	('bankcard', 'Bank Card', 1, 0, 1),
	('beer', 'beer', -1, 0, 1),
	('bread', 'bread', -1, 0, 1),
	('cajadecamarones', 'Shrimp Box', 5, 0, 1),
	('cajadecangrejos', 'Crab Box', 5, 0, 1),
	('camarones', 'Shrimp', 20, 0, 1),
	('camera', 'Camera', -1, 0, 1),
	('cangrejos', 'Crabs', 20, 0, 1),
	('cannabinoid', 'chemicals', 50, 0, 1),
	('cannabis', 'Cannabis', 40, 0, 1),
	('carokit', 'Kit carosserie', 3, 0, 1),
	('carotool', 'outils carosserie', 4, 0, 1),
	('cigarette', 'cigarette', 10, 0, 1),
	('clip', 'Weapon Clip', -1, 0, 1),
	('clothe', 'clothes', 250, 0, 1),
	('cocaine_cut', 'Cut Cocaine', -1, 0, 1),
	('cocaine_packaged', 'Packaged Cocaine', -1, 0, 1),
	('cocaine_uncut', 'Uncut Cocaine', -1, 0, 1),
	('coke', 'Cocaine', 50, 0, 1),
	('coke_pooch', 'Bag of coke (28G)', 28, 0, 1),
	('copper', 'copper', 56, 0, 1),
	('crack', 'Crack Cocaine', 30, 0, 1),
	('croquettes', 'Croquettes', 20, 0, 1),
	('cut_money', 'Counterfeit Cash - Cut', -1, 0, 1),
	('cutted_wood', 'cut wood', 20, 0, 1),
	('diamond', 'diamond', 50, 0, 1),
	('drill', 'Drill', -1, 0, 1),
	('emerald', 'Emerald', 5, 0, 1),
	('essence', 'gas', 24, 0, 1),
	('fabric', 'fabric', 80, 0, 1),
	('fish', 'Fish', 100, 0, 1),
	('fishbait', 'Fish Bait', 30, 0, 1),
	('fishingrod', 'Fishing Rod', 2, 0, 1),
	('fixkit', 'Repairkit', 5, 0, 1),
	('fixtool', 'outils réparation', 6, 0, 1),
	('gold', 'gold', 21, 0, 1),
	('goldNecklace', 'Gold Necklace', -1, 0, 1),
	('goldbar', 'Gold Bar', 500, 0, 1),
	('goldwatch', 'Gold Watch', 5000, 0, 1),
	('handcuffs', 'handcuffs', -1, 0, 1),
	('headbag', 'Head Bag', -1, 0, 1),
	('id_card_f', 'Malicious Access Card', 2, 3, 1),
	('iphonex', 'IphoneX', -1, 0, 1),
	('iron', 'iron', 42, 0, 1),
	('jewels', 'Jewels', -1, 0, 1),
	('jewlery', 'Jewlery', -1, 0, 1),
	('journal', 'Journal', 50, 0, 1),
	('journaux', 'Paquet de Journaux', 25, 0, 1),
	('key', 'key', -1, 0, 1),
	('keycard', 'Keycard', 2, 0, 1),
	('laptop', 'Laptop', -1, 0, 1),
	('leather', 'Leather', -1, 0, 1),
	('licenseplate', 'License plate', -1, 0, 1),
	('lithium', 'Lithium Batteries', 10, 0, 1),
	('lockpick', 'lockpick', -1, 0, 1),
	('lowradio', 'Stock Radio', 5, 0, 1),
	('lsd', 'Lsd', -1, 0, 1),
	('lsd_pooch', 'Pochon de LSD', -1, 0, 1),
	('marijuana', 'Bag of Weed', 100, 0, 1),
	('meat', 'Meat', -1, 0, 1),
	('medikit', 'Medikit', 50, 0, 1),
	('meth', 'Meth', 30, 0, 1),
	('meth_packaged', 'Packaged Meth', -1, 0, 1),
	('meth_pooch', 'Bag of meth (28G)', 28, 0, 1),
	('meth_raw', 'Raw Meth', -1, 0, 1),
	('methlab', 'Portable Methlab', 1, 0, 1),
	('milk_engine', 'Milk Engine', 1, 0, 1),
	('milk_package', 'Milk Package', 20, 0, 1),
	('net_cracker', 'Net Cracker', 2, 0, 1),
	('nitro', 'Car Nitro', 2, 0, 1),
	('opium', 'Opium (1G)', 1, 0, 1),
	('opium_pooch', 'Bag of opium (28G)', 28, 0, 1),
	('oxygen_mask', 'Oxygen Mask', -1, 0, 1),
	('packaged_chicken', 'chicken fillet', 100, 0, 1),
	('packaged_plank', 'packaged wood', 100, 0, 1),
	('pendrive', 'Pendrive\r\n', -1, 0, 1),
	('petrol', 'oil', 24, 0, 1),
	('petrol_raffin', 'processed oil', 24, 0, 1),
	('phone', 'Phone', 1, 0, 1),
	('playersafe', 'Safe', -1, 0, 1),
	('rice', 'Rice', 100, 0, 1),
	('rice_pro', 'Rice Pro', 100, 0, 1),
	('ring', 'Gold Ring', -1, 0, 1),
	('rolex', 'Rolex', -1, 0, 1),
	('rope', 'Rope', 5, 0, 1),
	('secure_card', 'Secure ID Card', 2, 3, 1),
	('shark', 'Shark', -1, 0, 1),
	('sickle', 'Sickle', 1, 0, 1),
	('slaughtered_chicken', 'slaughtered chicken', 20, 0, 1),
	('sorted_money', 'Counterfeit Cash - Sorted', -1, 0, 1),
	('spice', 'Bag of spice', 50, 0, 1),
	('steel', 'Steel', 25, 0, 1),
	('stone', 'stone', 7, 0, 1),
	('turtle', 'Sea Turtle', 3, 0, 1),
	('turtlebait', 'Turtle Bait', 10, 0, 1),
	('vodka', 'vodka', -1, 0, 1),
	('washed_stone', 'washed stone', 7, 0, 1),
	('water', 'water', -1, 0, 1),
	('weed', 'Weed (1G)', 1, 0, 1),
	('weed_packaged', 'Packaged Weed', -1, 0, 1),
	('weed_pooch', 'Bag of weed (28G)', 28, 0, 1),
	('weed_untrimmed', 'Untrimmed Weed', -1, 0, 1),
	('wood', 'wood', 20, 0, 1),
	('wool', 'wool', 40, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table premium.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `handyservice` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `hasapp` int(2) NOT NULL DEFAULT 0,
  `onlyboss` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table premium.jobs: ~10 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `handyservice`, `hasapp`, `onlyboss`) VALUES
	('ambulance', 'EMS', 1, '0', 0, 0),
	('cardealer', 'Cardealer', 1, '0', 0, 0),
	('fueler', 'Fueler', 0, '0', 0, 0),
	('lumberjack', 'Lumberjack', 0, '0', 0, 0),
	('mafia', 'Mafia', 1, '0', 0, 0),
	('mechanic', 'Mechanic', 1, '0', 0, 0),
	('police', 'LSPD', 1, '0', 0, 0),
	('slaughterer', 'Butcher', 0, '0', 0, 0),
	('tailor', 'Tailor', 0, '0', 0, 0),
	('unemployed', 'Unemployed', 0, '0', 0, 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table premium.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8_bin NOT NULL,
  `skin_female` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table premium.job_grades: ~31 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(32, 'unemployed', 0, 'unemployed', 'unemployed', 1000, '{}', '{}'),
	(33, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(34, 'cardealer', 1, 'novice', 'Novice', 200, '{}', '{}'),
	(35, 'cardealer', 2, 'experienced', 'Experienced', 450, '{}', '{}'),
	(36, 'cardealer', 3, 'boss', 'Boss', 1500, '{}', '{}'),
	(37, 'ambulance', 0, 'ambulance', 'Technician', 3000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(38, 'ambulance', 1, 'doctor', 'Student', 4000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(39, 'ambulance', 2, 'chief_doctor', 'Doctor', 5000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(40, 'ambulance', 3, 'boss', 'Surgeon', 6000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(357, 'mafia', 0, 'rank1', 'New Guy', 1500, '{}', '{}'),
	(358, 'mafia', 1, 'rank2', 'Trusted', 1800, '{}', '{}'),
	(359, 'mafia', 2, 'rank3', 'Family', 2100, '{}', '{}'),
	(360, 'mafia', 3, 'boss', 'Boss', 2700, '{}', '{}'),
	(363, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(365, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(367, 'tailor', 0, 'employee', 'Employee', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(369, 'slaughterer', 0, 'employee', 'Employee', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(370, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
	(371, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
	(372, 'mechanic', 2, 'experimente', 'Experienced', 36, '{}', '{}'),
	(373, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}'),
	(374, 'mechanic', 4, 'boss', 'Boss', 50, '{}', '{}'),
	(375, 'ambulance', 0, 'ambulance', 'Jr. EMT', 20, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(376, 'ambulance', 1, 'doctor', 'EMT', 40, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(377, 'ambulance', 2, 'chief_doctor', 'Sr. EMT', 60, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(378, 'ambulance', 3, 'boss', 'EMT Supervisor', 80, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(379, 'police', 0, 'recruit', 'Recruit', 50, '{}', '{}'),
	(380, 'police', 1, 'officer', 'Officer', 40, '{}', '{}'),
	(381, 'police', 2, 'sergeant', 'Sergeant', 60, '{}', '{}'),
	(382, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
	(383, 'police', 4, 'boss', 'Chief', 100, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table premium.kicks
CREATE TABLE IF NOT EXISTS `kicks` (
  `id` int(10) unsigned NOT NULL,
  `steamid` varchar(250) NOT NULL DEFAULT '0',
  `kicked` int(10) NOT NULL,
  `reason` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table premium.kicks: ~0 rows (approximately)
/*!40000 ALTER TABLE `kicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `kicks` ENABLE KEYS */;

-- Dumping structure for table premium.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.licenses: ~6 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'driving School'),
	('drive', 'car license'),
	('drive_bike', 'bike license'),
	('drive_truck', 'truck license'),
	('weapon', 'Weapon License'),
	('weed_processing', 'Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table premium.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.owned_properties: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumping structure for table premium.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT '',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `garage` varchar(200) DEFAULT 'A',
  `carseller` int(11) DEFAULT 0,
  `damages` varchar(255) NOT NULL DEFAULT '{}',
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `storedhouse` int(11) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.owned_vehicles: ~2 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage`, `carseller`, `damages`, `state`, `storedhouse`) VALUES
	('steam:11000013d4486db', 'FFN 238', '{"modTrunk":-1,"modAerials":-1,"modAPlate":-1,"modFrontWheels":-1,"modExhaust":-1,"modShifterLeavers":-1,"dirtLevel":6.0,"modHydrolic":-1,"modSteeringWheel":-1,"modPlateHolder":-1,"color2":0,"modDoorSpeaker":-1,"modTank":-1,"modRearBumper":-1,"plateIndex":4,"modFrontBumper":-1,"modTurbo":false,"color1":132,"plate":"FFN 238","modSpeakers":-1,"health":1000,"modDashboard":-1,"modFrame":-1,"modSuspension":-1,"modRoof":-1,"modBrakes":-1,"modDial":-1,"wheelColor":156,"modSmokeEnabled":false,"modSpoilers":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"modStruts":-1,"modOrnaments":-1,"modHorns":-1,"pearlescentColor":0,"modWindows":-1,"modRightFender":-1,"modSeats":-1,"modLivery":-1,"modTransmission":-1,"tyreSmokeColor":[255,255,255],"modTrimA":-1,"modAirFilter":-1,"modBackWheels":-1,"modArmor":-1,"modXenon":false,"modGrille":-1,"modEngine":-1,"model":-1205689942,"modVanityPlate":-1,"modFender":-1,"modArchCover":-1,"modSideSkirt":-1,"extras":{"1":true},"windowTint":-1,"modHood":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"wheels":0}', 'car', 'police', 0, 'A', 0, '{}', 1, 0),
	('steam:11000013d4486db', 'QTM 108', '{"modXenon":false,"modLivery":-1,"modFrame":-1,"modHood":-1,"modAerials":-1,"modSeats":-1,"color2":0,"modHorns":-1,"modEngine":-1,"modExhaust":-1,"modGrille":-1,"modRoof":-1,"model":-344943009,"modFrontWheels":-1,"modSteeringWheel":-1,"modTrunk":-1,"modSmokeEnabled":false,"dirtLevel":8.00000381469726,"modAPlate":-1,"modSpeakers":-1,"wheels":0,"modPlateHolder":-1,"modWindows":-1,"modRightFender":-1,"modTrimB":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"modTransmission":-1,"plate":"QTM 108","windowTint":-1,"pearlescentColor":111,"modArchCover":-1,"modSpoilers":-1,"modArmor":-1,"modOrnaments":-1,"health":1000,"modStruts":-1,"modFrontBumper":-1,"modTurbo":false,"modBackWheels":-1,"modRearBumper":-1,"modAirFilter":-1,"modBrakes":-1,"modDial":-1,"neonEnabled":[false,false,false,false],"wheelColor":156,"tyreSmokeColor":[255,255,255],"color1":6,"modDashboard":-1,"modTank":-1,"extras":{"12":false,"10":false},"modVanityPlate":-1,"modDoorSpeaker":-1,"plateIndex":0,"modFender":-1,"modSideSkirt":-1,"modHydrolic":-1,"modSuspension":-1,"modShifterLeavers":-1,"modTrimA":-1}', 'car', '', 0, 'A', 0, '{}', 1, 0),
	('steam:1100001468829f9', 'VDL 384', '{"modFrontBumper":-1,"modHydrolic":-1,"plateIndex":0,"modAPlate":-1,"modTrunk":-1,"wheels":7,"extras":[],"color1":7,"modHood":-1,"modShifterLeavers":-1,"modFrontWheels":-1,"plate":"VDL 384","modFender":-1,"tyreSmokeColor":[255,255,255],"modTurbo":false,"neonEnabled":[false,false,false,false],"modGrille":-1,"modRightFender":-1,"modRoof":-1,"modTank":-1,"modExhaust":-1,"modArchCover":-1,"modDashboard":-1,"model":1663218586,"modSeats":-1,"modHorns":-1,"modSpoilers":-1,"modOrnaments":-1,"modSpeakers":-1,"modDial":-1,"modAerials":-1,"neonColor":[255,0,255],"modSteeringWheel":-1,"modBrakes":-1,"windowTint":-1,"modAirFilter":-1,"modStruts":-1,"modSmokeEnabled":false,"modEngineBlock":-1,"pearlescentColor":3,"modSideSkirt":-1,"modArmor":-1,"health":1000,"color2":7,"modTrimB":-1,"modVanityPlate":-1,"dirtLevel":3.0,"modTransmission":-1,"modLivery":-1,"modBackWheels":-1,"modPlateHolder":-1,"modRearBumper":-1,"modWindows":-1,"modEngine":-1,"modXenon":false,"modSuspension":-1,"modDoorSpeaker":-1,"wheelColor":0,"modFrame":-1,"modTrimA":-1}', 'car', '', 1, 'A', 0, '{}', 1, 0);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table premium.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table premium.phone_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumping structure for table premium.phone_business
CREATE TABLE IF NOT EXISTS `phone_business` (
  `job` varchar(50) NOT NULL,
  `motd` varchar(255) NOT NULL,
  `motdchanged` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.phone_business: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_business` ENABLE KEYS */;

-- Dumping structure for table premium.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `time` varchar(50) NOT NULL,
  `accepts` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Dumping data for table premium.phone_calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table premium.phone_contacts
CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL,
  `favourite` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.phone_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_contacts` ENABLE KEYS */;

-- Dumping structure for table premium.phone_information
CREATE TABLE IF NOT EXISTS `phone_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `wallpaper` varchar(255) NOT NULL DEFAULT 'https://cdn.discordapp.com/attachments/717040110641741894/802176415269257236/bright.png',
  `darkmode` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.phone_information: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_information` ENABLE KEYS */;

-- Dumping structure for table premium.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT 'current_timestamp()',
  `isgps` varchar(500) NOT NULL DEFAULT '0',
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `isService` varchar(50) NOT NULL DEFAULT '0',
  `isAnonym` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

-- Dumping data for table premium.phone_messages: 0 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table premium.phone_twitter_accounts
CREATE TABLE IF NOT EXISTS `phone_twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `avatar` varchar(2555) NOT NULL DEFAULT 'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.phone_twitter_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table premium.phone_twitter_likes
CREATE TABLE IF NOT EXISTS `phone_twitter_likes` (
  `identifier` varchar(50) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.phone_twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_likes` ENABLE KEYS */;

-- Dumping structure for table premium.phone_twitter_messages
CREATE TABLE IF NOT EXISTS `phone_twitter_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `avatar` varchar(2555) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `message` varchar(50) NOT NULL DEFAULT '0',
  `imageurl` varchar(266) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.phone_twitter_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_twitter_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_messages` ENABLE KEYS */;

-- Dumping structure for table premium.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table premium.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table premium.playersafes
CREATE TABLE IF NOT EXISTS `playersafes` (
  `owner` varchar(50) NOT NULL,
  `location` longtext NOT NULL,
  `instance` varchar(50) NOT NULL,
  `inventory` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL,
  `weapons` longtext NOT NULL,
  `safeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.playersafes: ~0 rows (approximately)
/*!40000 ALTER TABLE `playersafes` DISABLE KEYS */;
/*!40000 ALTER TABLE `playersafes` ENABLE KEYS */;

-- Dumping structure for table premium.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.playerstattoos: ~1 rows (approximately)
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
INSERT INTO `playerstattoos` (`id`, `identifier`, `tattoos`) VALUES
	(0, 'steam:11000013d4486db', '[]');
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

-- Dumping structure for table premium.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.properties: ~42 rows (approximately)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table premium.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table premium.saving_accounts
CREATE TABLE IF NOT EXISTS `saving_accounts` (
  `id` varchar(40) CHARACTER SET utf8mb4 DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.saving_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `saving_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `saving_accounts` ENABLE KEYS */;

-- Dumping structure for table premium.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table premium.territories
CREATE TABLE IF NOT EXISTS `territories` (
  `zone` varchar(50) NOT NULL DEFAULT '',
  `control` varchar(50) NOT NULL DEFAULT '',
  `influence` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.territories: ~0 rows (approximately)
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;

-- Dumping structure for table premium.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.trunk_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- Dumping structure for table premium.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `firstname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `last_house` int(11) DEFAULT 0,
  `pet` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `loaf_furniture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `is_dead`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `phone_number`, `jail`, `last_house`, `pet`, `loaf_furniture`, `pin`, `tattoos`, `weight`, `last_property`) VALUES
	(1, 'steam:110000142bdf425', 'license:6f4147c7a60c893c6d467b55dd54cc98be4c5ee7', 0, 'Walter White', '{"watches_1":-1,"eyebrows_4":0,"pants_2":0,"moles_2":0,"beard_1":0,"watches_2":-1,"chain_2":0,"beard_3":61,"sun_1":0,"jaw_1":0,"sun_2":0,"makeup_1":0,"lipstick_3":32,"torso_2":0,"torso_1":0,"age_2":0,"chin_1":0,"nose_4":0,"tshirt_2":0,"hair_color_1":0,"glasses_1":-1,"hair_2":0,"cheeks_1":0,"eye_color":0,"cheeks_2":0,"cheeks_3":0,"shoes_1":0,"eye_squint":0,"nose_3":0,"neck_thickness":0,"chin_2":0,"chin_3":0,"helmet_1":-1,"shoes_2":0,"nose_6":0,"ears_2":-1,"makeup_2":0,"chin_4":0,"jaw_2":0,"eyebrows_2":10,"skin_md_weight":50,"ears_1":-1,"blush_1":0,"chain_1":0,"eyebrows_6":0,"hair_1":0,"makeup_3":0,"complexion_1":0,"hair_color_2":0,"eyebrows_3":0,"tshirt_1":0,"lipstick_2":0,"helmet_2":-1,"lip_thickness":0,"arms":0,"nose_1":0,"makeup_4":0,"beard_2":0,"age_1":0,"arms_2":0,"nose_5":0,"lipstick_1":0,"moles_1":0,"blush_3":"2","complexion_2":0,"face_md_weight":50,"eyebrows_5":0,"sex":0,"eyebrows_1":0,"nose_2":0,"blush_2":0,"pants_1":0,"glasses_2":-1}', 'unemployed', 0, '[]', '{"z":31.1,"y":-891.3,"x":184.0}', 1000, 0, 'superadmin', 0, 'Walter', 'White', '2000/01/01', 'm', '200', '[{"percent":91.12,"name":"hunger","val":911200},{"percent":93.34,"name":"thirst","val":933400}]', NULL, 0, 0, '', NULL, '', NULL, 1, NULL),
	(2, 'steam:1100001468829f9', 'license:8a5b23ff06c424d19219403c140537d4f94b55c0', 0, 'Baasha Bhai', '{"watches_1":-1,"makeup_3":0,"pants_2":0,"moles_2":0,"beard_1":0,"eyebrows_6":0,"chain_2":0,"beard_3":61,"complexion_2":0,"jaw_1":0,"arms_2":0,"makeup_1":0,"lipstick_3":32,"torso_2":0,"torso_1":0,"age_2":0,"chin_1":0,"nose_4":0,"tshirt_2":0,"hair_color_1":0,"glasses_1":-1,"hair_2":0,"cheeks_1":0,"nose_2":0,"cheeks_2":0,"pants_1":0,"shoes_1":0,"eye_squint":0,"blush_2":0,"neck_thickness":0,"chin_2":0,"chin_3":0,"helmet_1":-1,"shoes_2":0,"nose_6":0,"ears_2":-1,"makeup_2":0,"chin_4":0,"jaw_2":0,"eyebrows_2":10,"skin_md_weight":50,"ears_1":-1,"blush_1":0,"chain_1":0,"sun_1":0,"hair_1":0,"sex":0,"complexion_1":0,"hair_color_2":0,"eyebrows_3":0,"tshirt_1":0,"beard_2":0,"helmet_2":-1,"sun_2":0,"arms":0,"eyebrows_4":0,"lipstick_1":0,"age_1":0,"cheeks_3":0,"makeup_4":0,"nose_5":0,"face_md_weight":50,"moles_1":0,"watches_2":-1,"blush_3":"2","nose_1":0,"eyebrows_5":0,"eye_color":0,"eyebrows_1":0,"nose_3":0,"lipstick_2":0,"lip_thickness":0,"glasses_2":-1}', 'unemployed', 0, '[]', '{"z":137.8,"y":784.2,"x":-1817.6}', 500900, 0, 'superadmin', 0, 'Baasha', 'Bhai', '1991/04/09', 'm', '200', '[{"percent":90.24,"name":"hunger","val":902400},{"percent":92.67999999999999,"name":"thirst","val":926800}]', NULL, 0, 0, '', NULL, '', NULL, 1, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table premium.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table premium.user_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(1, 'steam:110000142bdf425', 'black_money', 0),
	(2, 'steam:1100001468829f9', 'black_money', 0);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table premium.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `item` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_inventory_ident_item` (`identifier`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table premium.user_inventory: ~216 rows (approximately)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(1, 'steam:110000142bdf425', 'cut_money', 0),
	(2, 'steam:110000142bdf425', 'cocaine_uncut', 0),
	(3, 'steam:110000142bdf425', 'cajadecamarones', 0),
	(4, 'steam:110000142bdf425', 'cutted_wood', 0),
	(5, 'steam:110000142bdf425', 'bankcard', 0),
	(6, 'steam:110000142bdf425', 'weed_packaged', 0),
	(7, 'steam:110000142bdf425', 'lsd', 0),
	(8, 'steam:110000142bdf425', 'handcuffs', 0),
	(9, 'steam:110000142bdf425', 'cannabis', 0),
	(10, 'steam:110000142bdf425', 'stone', 0),
	(11, 'steam:110000142bdf425', 'fishbait', 0),
	(12, 'steam:110000142bdf425', 'goldbar', 0),
	(13, 'steam:110000142bdf425', 'weed', 0),
	(14, 'steam:110000142bdf425', 'clip', 0),
	(15, 'steam:110000142bdf425', 'methlab', 0),
	(16, 'steam:110000142bdf425', 'fixtool', 0),
	(17, 'steam:110000142bdf425', 'lithium', 0),
	(18, 'steam:110000142bdf425', 'nitro', 0),
	(19, 'steam:110000142bdf425', 'coke_pooch', 0),
	(20, 'steam:110000142bdf425', 'croquettes', 0),
	(21, 'steam:110000142bdf425', 'meth', 0),
	(22, 'steam:110000142bdf425', 'rice', 0),
	(23, 'steam:110000142bdf425', 'key', 0),
	(24, 'steam:110000142bdf425', 'net_cracker', 0),
	(25, 'steam:110000142bdf425', 'fixkit', 0),
	(26, 'steam:110000142bdf425', 'meth_pooch', 0),
	(27, 'steam:110000142bdf425', 'clothe', 0),
	(28, 'steam:110000142bdf425', 'rolex', 0),
	(29, 'steam:110000142bdf425', 'fabric', 0),
	(30, 'steam:110000142bdf425', 'acetone', 0),
	(31, 'steam:110000142bdf425', 'diamond', 0),
	(32, 'steam:110000142bdf425', 'wool', 0),
	(33, 'steam:110000142bdf425', 'beer', 0),
	(34, 'steam:110000142bdf425', 'ring', 0),
	(35, 'steam:110000142bdf425', 'wood', 0),
	(36, 'steam:110000142bdf425', 'laptop', 0),
	(37, 'steam:110000142bdf425', 'weed_untrimmed', 0),
	(38, 'steam:110000142bdf425', 'sorted_money', 0),
	(39, 'steam:110000142bdf425', 'phone', 1),
	(40, 'steam:110000142bdf425', 'water', 0),
	(41, 'steam:110000142bdf425', 'armor', 0),
	(42, 'steam:110000142bdf425', 'turtlebait', 0),
	(43, 'steam:110000142bdf425', 'vodka', 0),
	(44, 'steam:110000142bdf425', 'rice_pro', 0),
	(45, 'steam:110000142bdf425', 'jewlery', 0),
	(46, 'steam:110000142bdf425', 'essence', 0),
	(47, 'steam:110000142bdf425', 'meth_raw', 0),
	(48, 'steam:110000142bdf425', 'washed_stone', 0),
	(49, 'steam:110000142bdf425', 'meat', 0),
	(50, 'steam:110000142bdf425', 'steel', 0),
	(51, 'steam:110000142bdf425', 'spice', 0),
	(52, 'steam:110000142bdf425', 'packaged_plank', 0),
	(53, 'steam:110000142bdf425', 'iphonex', 0),
	(54, 'steam:110000142bdf425', 'weed_pooch', 0),
	(55, 'steam:110000142bdf425', 'drill', 0),
	(56, 'steam:110000142bdf425', 'goldNecklace', 0),
	(57, 'steam:110000142bdf425', 'slaughtered_chicken', 0),
	(58, 'steam:110000142bdf425', 'sickle', 0),
	(59, 'steam:110000142bdf425', 'shark', 0),
	(60, 'steam:110000142bdf425', 'iron', 0),
	(61, 'steam:110000142bdf425', 'secure_card', 0),
	(62, 'steam:110000142bdf425', 'rope', 0),
	(63, 'steam:110000142bdf425', 'cangrejos', 0),
	(64, 'steam:110000142bdf425', 'playersafe', 0),
	(65, 'steam:110000142bdf425', 'milk_engine', 0),
	(66, 'steam:110000142bdf425', 'petrol_raffin', 0),
	(67, 'steam:110000142bdf425', 'opium_pooch', 0),
	(68, 'steam:110000142bdf425', 'pendrive', 0),
	(69, 'steam:110000142bdf425', 'petrol', 0),
	(70, 'steam:110000142bdf425', 'headbag', 0),
	(71, 'steam:110000142bdf425', 'oxygen_mask', 0),
	(72, 'steam:110000142bdf425', 'bread', 0),
	(73, 'steam:110000142bdf425', 'packaged_chicken', 0),
	(74, 'steam:110000142bdf425', 'lsd_pooch', 0),
	(75, 'steam:110000142bdf425', 'keycard', 0),
	(76, 'steam:110000142bdf425', 'cannabinoid', 0),
	(77, 'steam:110000142bdf425', 'cigarette', 0),
	(78, 'steam:110000142bdf425', 'opium', 0),
	(79, 'steam:110000142bdf425', 'jewels', 0),
	(80, 'steam:110000142bdf425', 'camarones', 0),
	(81, 'steam:110000142bdf425', 'milk_package', 0),
	(82, 'steam:110000142bdf425', 'cocaine_cut', 0),
	(83, 'steam:110000142bdf425', 'medikit', 0),
	(84, 'steam:110000142bdf425', 'crack', 0),
	(85, 'steam:110000142bdf425', 'id_card_f', 0),
	(86, 'steam:110000142bdf425', 'turtle', 0),
	(87, 'steam:110000142bdf425', 'cajadecangrejos', 0),
	(88, 'steam:110000142bdf425', 'marijuana', 0),
	(89, 'steam:110000142bdf425', 'coke', 0),
	(90, 'steam:110000142bdf425', 'fishingrod', 0),
	(91, 'steam:110000142bdf425', 'cocaine_packaged', 0),
	(92, 'steam:110000142bdf425', 'goldwatch', 0),
	(93, 'steam:110000142bdf425', 'lowradio', 0),
	(94, 'steam:110000142bdf425', 'lockpick', 0),
	(95, 'steam:110000142bdf425', 'carokit', 0),
	(96, 'steam:110000142bdf425', 'licenseplate', 0),
	(97, 'steam:110000142bdf425', 'emerald', 0),
	(98, 'steam:110000142bdf425', 'leather', 0),
	(99, 'steam:110000142bdf425', 'fish', 0),
	(100, 'steam:110000142bdf425', 'bandage', 0),
	(101, 'steam:110000142bdf425', 'journaux', 0),
	(102, 'steam:110000142bdf425', 'meth_packaged', 0),
	(103, 'steam:110000142bdf425', 'camera', 0),
	(104, 'steam:110000142bdf425', 'copper', 0),
	(105, 'steam:110000142bdf425', 'journal', 0),
	(106, 'steam:110000142bdf425', 'alive_chicken', 0),
	(107, 'steam:110000142bdf425', 'gold', 0),
	(108, 'steam:110000142bdf425', 'carotool', 0),
	(109, 'steam:1100001468829f9', 'cut_money', 0),
	(110, 'steam:1100001468829f9', 'cutted_wood', 0),
	(111, 'steam:1100001468829f9', 'cocaine_uncut', 0),
	(112, 'steam:1100001468829f9', 'bankcard', 0),
	(113, 'steam:1100001468829f9', 'cajadecamarones', 0),
	(114, 'steam:1100001468829f9', 'weed_packaged', 0),
	(115, 'steam:1100001468829f9', 'lsd', 0),
	(116, 'steam:1100001468829f9', 'handcuffs', 0),
	(117, 'steam:1100001468829f9', 'cannabis', 0),
	(118, 'steam:1100001468829f9', 'stone', 0),
	(119, 'steam:1100001468829f9', 'fishbait', 0),
	(120, 'steam:1100001468829f9', 'goldbar', 0),
	(121, 'steam:1100001468829f9', 'weed', 0),
	(122, 'steam:1100001468829f9', 'clip', 0),
	(123, 'steam:1100001468829f9', 'methlab', 0),
	(124, 'steam:1100001468829f9', 'fixtool', 0),
	(125, 'steam:1100001468829f9', 'lithium', 0),
	(126, 'steam:1100001468829f9', 'nitro', 0),
	(127, 'steam:1100001468829f9', 'coke_pooch', 0),
	(128, 'steam:1100001468829f9', 'croquettes', 0),
	(129, 'steam:1100001468829f9', 'meth', 0),
	(130, 'steam:1100001468829f9', 'rice', 0),
	(131, 'steam:1100001468829f9', 'key', 0),
	(132, 'steam:1100001468829f9', 'net_cracker', 0),
	(133, 'steam:1100001468829f9', 'fixkit', 0),
	(134, 'steam:1100001468829f9', 'meth_pooch', 0),
	(135, 'steam:1100001468829f9', 'clothe', 0),
	(136, 'steam:1100001468829f9', 'rolex', 0),
	(137, 'steam:1100001468829f9', 'fabric', 0),
	(138, 'steam:1100001468829f9', 'acetone', 0),
	(139, 'steam:1100001468829f9', 'diamond', 0),
	(140, 'steam:1100001468829f9', 'wool', 0),
	(141, 'steam:1100001468829f9', 'beer', 0),
	(142, 'steam:1100001468829f9', 'ring', 0),
	(143, 'steam:1100001468829f9', 'wood', 0),
	(144, 'steam:1100001468829f9', 'laptop', 0),
	(145, 'steam:1100001468829f9', 'weed_untrimmed', 0),
	(146, 'steam:1100001468829f9', 'sorted_money', 0),
	(147, 'steam:1100001468829f9', 'phone', 1),
	(148, 'steam:1100001468829f9', 'water', 0),
	(149, 'steam:1100001468829f9', 'armor', 0),
	(150, 'steam:1100001468829f9', 'turtlebait', 0),
	(151, 'steam:1100001468829f9', 'vodka', 0),
	(152, 'steam:1100001468829f9', 'rice_pro', 0),
	(153, 'steam:1100001468829f9', 'jewlery', 0),
	(154, 'steam:1100001468829f9', 'essence', 0),
	(155, 'steam:1100001468829f9', 'meth_raw', 0),
	(156, 'steam:1100001468829f9', 'washed_stone', 0),
	(157, 'steam:1100001468829f9', 'meat', 0),
	(158, 'steam:1100001468829f9', 'steel', 0),
	(159, 'steam:1100001468829f9', 'spice', 0),
	(160, 'steam:1100001468829f9', 'packaged_plank', 0),
	(161, 'steam:1100001468829f9', 'iphonex', 0),
	(162, 'steam:1100001468829f9', 'weed_pooch', 0),
	(163, 'steam:1100001468829f9', 'drill', 0),
	(164, 'steam:1100001468829f9', 'goldNecklace', 0),
	(165, 'steam:1100001468829f9', 'slaughtered_chicken', 0),
	(166, 'steam:1100001468829f9', 'sickle', 0),
	(167, 'steam:1100001468829f9', 'shark', 0),
	(168, 'steam:1100001468829f9', 'iron', 0),
	(169, 'steam:1100001468829f9', 'secure_card', 0),
	(170, 'steam:1100001468829f9', 'rope', 0),
	(171, 'steam:1100001468829f9', 'cangrejos', 0),
	(172, 'steam:1100001468829f9', 'playersafe', 0),
	(173, 'steam:1100001468829f9', 'milk_engine', 0),
	(174, 'steam:1100001468829f9', 'petrol_raffin', 0),
	(175, 'steam:1100001468829f9', 'opium_pooch', 0),
	(176, 'steam:1100001468829f9', 'pendrive', 0),
	(177, 'steam:1100001468829f9', 'petrol', 0),
	(178, 'steam:1100001468829f9', 'headbag', 0),
	(179, 'steam:1100001468829f9', 'oxygen_mask', 0),
	(180, 'steam:1100001468829f9', 'bread', 0),
	(181, 'steam:1100001468829f9', 'packaged_chicken', 0),
	(182, 'steam:1100001468829f9', 'lsd_pooch', 0),
	(183, 'steam:1100001468829f9', 'keycard', 0),
	(184, 'steam:1100001468829f9', 'cannabinoid', 0),
	(185, 'steam:1100001468829f9', 'cigarette', 0),
	(186, 'steam:1100001468829f9', 'opium', 0),
	(187, 'steam:1100001468829f9', 'jewels', 0),
	(188, 'steam:1100001468829f9', 'camarones', 0),
	(189, 'steam:1100001468829f9', 'milk_package', 0),
	(190, 'steam:1100001468829f9', 'cocaine_cut', 0),
	(191, 'steam:1100001468829f9', 'medikit', 0),
	(192, 'steam:1100001468829f9', 'crack', 0),
	(193, 'steam:1100001468829f9', 'id_card_f', 0),
	(194, 'steam:1100001468829f9', 'turtle', 0),
	(195, 'steam:1100001468829f9', 'cajadecangrejos', 0),
	(196, 'steam:1100001468829f9', 'marijuana', 0),
	(197, 'steam:1100001468829f9', 'coke', 0),
	(198, 'steam:1100001468829f9', 'fishingrod', 0),
	(199, 'steam:1100001468829f9', 'cocaine_packaged', 0),
	(200, 'steam:1100001468829f9', 'goldwatch', 0),
	(201, 'steam:1100001468829f9', 'lowradio', 0),
	(202, 'steam:1100001468829f9', 'lockpick', 0),
	(203, 'steam:1100001468829f9', 'carokit', 0),
	(204, 'steam:1100001468829f9', 'licenseplate', 0),
	(205, 'steam:1100001468829f9', 'emerald', 0),
	(206, 'steam:1100001468829f9', 'leather', 0),
	(207, 'steam:1100001468829f9', 'fish', 0),
	(208, 'steam:1100001468829f9', 'bandage', 0),
	(209, 'steam:1100001468829f9', 'journaux', 0),
	(210, 'steam:1100001468829f9', 'meth_packaged', 0),
	(211, 'steam:1100001468829f9', 'camera', 0),
	(212, 'steam:1100001468829f9', 'copper', 0),
	(213, 'steam:1100001468829f9', 'journal', 0),
	(214, 'steam:1100001468829f9', 'alive_chicken', 0),
	(215, 'steam:1100001468829f9', 'gold', 0),
	(216, 'steam:1100001468829f9', 'carotool', 0);
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Dumping structure for table premium.user_lastcharacter
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.user_lastcharacter: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- Dumping structure for table premium.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table premium.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.vehicles: ~240 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'super'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voltic 2', 'voltic2', 3830400, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table premium.vehicles_for_sale
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.vehicles_for_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- Dumping structure for table premium.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.vehicle_categories: ~11 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupes'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table premium.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table premium.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table premium.warrants_list
CREATE TABLE IF NOT EXISTS `warrants_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.warrants_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `warrants_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `warrants_list` ENABLE KEYS */;

-- Dumping structure for table premium.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table premium.weashops: ~7 rows (approximately)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 2000),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 2000),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 1000),
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 1000),
	(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 20000),
	(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 20000),
	(41, 'GunShop', 'WEAPON_KNIFE', 1500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_app_chat
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_app_chat` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_bank_transfer
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `price` longtext NOT NULL,
  `name` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_bank_transfer: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_bank_transfer` DISABLE KEYS */;
INSERT INTO `ybnv3phone8x_bank_transfer` (`id`, `type`, `identifier`, `price`, `name`, `time`) VALUES
	(1, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-04-14 07:17:15');
/*!40000 ALTER TABLE `ybnv3phone8x_bank_transfer` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_blockednumber
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_blockednumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `hex` longtext NOT NULL,
  `number` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_blockednumber: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_blockednumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_blockednumber` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_calls
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL COMMENT 'Num tel proprio',
  `num` longtext NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_calls` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_gallery
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_gallery` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_gotur
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_gotur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext NOT NULL,
  `price` int(11) DEFAULT 0,
  `count` int(11) NOT NULL,
  `item` longtext NOT NULL,
  `kapat` varchar(50) DEFAULT 'false',
  `adet` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_gotur: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_gotur` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_gotur` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_gps
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext NOT NULL,
  `nott` longtext DEFAULT NULL,
  `gps` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_gps: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_gps` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_group_message
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_group_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `owner` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  CONSTRAINT `FK_phonegroupmessage` FOREIGN KEY (`groupid`) REFERENCES `ybnv3phone8x_messages_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table premium.ybnv3phone8x_group_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_group_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_group_message` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_insto_accounts
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` longtext COLLATE utf8mb4_bin NOT NULL,
  `surname` longtext COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 NOT NULL,
  `password` longtext COLLATE utf8mb4_bin NOT NULL,
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `takip` longtext COLLATE utf8mb4_bin DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.ybnv3phone8x_insto_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_insto_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_insto_accounts` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_insto_instas
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_ybnv3phone8x_insto_instas_ybnv3phone8x_insto_accounts` (`authorId`),
  CONSTRAINT `FK_ybnv3phone8x_insto_instas_ybnv3phone8x_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table premium.ybnv3phone8x_insto_instas: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_insto_instas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_insto_instas` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_insto_likes
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_insto_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_accounts` (`authorId`),
  KEY `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_instas` (`inapId`),
  CONSTRAINT `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_insto_accounts` (`id`),
  CONSTRAINT `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `ybnv3phone8x_insto_instas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.ybnv3phone8x_insto_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_insto_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_insto_likes` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_insto_story
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_insto_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_ybnv3phone8x_insto_story_ybnv3phone8x_insto_accounts` (`authorId`) USING BTREE,
  CONSTRAINT `FK_ybnv3phone8x_insto_story_ybnv3phone8x_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table premium.ybnv3phone8x_insto_story: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_insto_story` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_insto_story` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_job_message
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_job_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `photo` longtext DEFAULT NULL,
  `gps` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `jobm` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_job_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_job_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_job_message` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_mails
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '0',
  `image` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_mails: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_mails` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_messages
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_messages: 0 rows
/*!40000 ALTER TABLE `ybnv3phone8x_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_messages` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_messages_group
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_messages_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gimage` longtext NOT NULL,
  `contacts` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_messages_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_messages_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_messages_group` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_news
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext DEFAULT NULL,
  `haber` longtext DEFAULT NULL,
  `baslik` longtext DEFAULT NULL,
  `resim` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `zaman` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_news: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_news` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_settings
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{}',
  `phone_number` varchar(50) DEFAULT NULL,
  `avatar_url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table premium.ybnv3phone8x_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_settings` DISABLE KEYS */;
INSERT INTO `ybnv3phone8x_settings` (`id`, `identifier`, `crypto`, `phone_number`, `avatar_url`) VALUES
	(1, 'steam:11000013d4486db', '{}', '1223297', NULL),
	(2, 'steam:1100001468829f9', '{}', '5820251', NULL),
	(3, 'steam:110000142bdf425', '{}', '9238098', NULL);
/*!40000 ALTER TABLE `ybnv3phone8x_settings` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_tinderacc
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_tinderacc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passaword` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_tinderacc: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_tinderacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_tinderacc` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_tindermatch
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_tindermatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0,
  `is_match` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_tindermatch: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_tindermatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_tindermatch` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_tindermessage
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_tindermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `tinderes` text NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_tindermessage: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_tindermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_tindermessage` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_twitter_accounts
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilavatar` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.ybnv3phone8x_twitter_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_twitter_likes
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_accounts` (`authorId`),
  KEY `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_twitter_accounts` (`id`),
  CONSTRAINT `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `ybnv3phone8x_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table premium.ybnv3phone8x_twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_twitter_likes` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_twitter_tweets
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_ybnv3phone8x_twitter_tweets_ybnv3phone8x_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_ybnv3phone8x_twitter_tweets_ybnv3phone8x_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table premium.ybnv3phone8x_twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_users_contacts
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` longtext CHARACTER SET utf8mb4 DEFAULT '-1',
  `avatar` longtext NOT NULL DEFAULT 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_users_contacts: 0 rows
/*!40000 ALTER TABLE `ybnv3phone8x_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_users_contacts` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_vehicle_sales
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_vehicle_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table premium.ybnv3phone8x_vehicle_sales: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_vehicle_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_vehicle_sales` ENABLE KEYS */;

-- Dumping structure for table premium.ybnv3phone8x_yellow
CREATE TABLE IF NOT EXISTS `ybnv3phone8x_yellow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table premium.ybnv3phone8x_yellow: ~0 rows (approximately)
/*!40000 ALTER TABLE `ybnv3phone8x_yellow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybnv3phone8x_yellow` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
