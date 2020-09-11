-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.5.3-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- shx_rpv için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `shx_rpv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shx_rpv`;

-- tablo yapısı dökülüyor shx_rpv.character_current
CREATE TABLE IF NOT EXISTS `character_current` (
  `cid` varchar(255) NOT NULL,
  `model` longtext NOT NULL DEFAULT '',
  `drawables` longtext NOT NULL DEFAULT '',
  `props` longtext NOT NULL DEFAULT '',
  `drawtextures` longtext NOT NULL DEFAULT '',
  `proptextures` longtext NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- shx_rpv.character_current: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `character_current` DISABLE KEYS */;
INSERT INTO `character_current` (`cid`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`) VALUES
	('Char1steam:1100001359ad80f', '1461287021', '{"4":["legs",0],"3":["torsos",0],"2":["hair",0],"1":["masks",0],"0":["face",0],"11":["jackets",0],"10":["decals",0],"9":["vest",0],"8":["undershirts",0],"7":["neck",0],"6":["shoes",0],"5":["bags",0]}', '{"4":["lhand",-1],"3":["mouth",-1],"2":["earrings",-1],"1":["glasses",-1],"0":["hats",-1],"7":["braclets",-1],"6":["watches",-1],"5":["rhand",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]');
/*!40000 ALTER TABLE `character_current` ENABLE KEYS */;

-- tablo yapısı dökülüyor shx_rpv.character_face
CREATE TABLE IF NOT EXISTS `character_face` (
  `cid` varchar(255) NOT NULL,
  `hairColor` varchar(255) NOT NULL DEFAULT '',
  `headBlend` varchar(255) NOT NULL DEFAULT '',
  `headStructure` varchar(255) NOT NULL DEFAULT '',
  `headOverlay` varchar(255) NOT NULL DEFAULT '',
  `shapeSecond` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- shx_rpv.character_face: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `character_face` DISABLE KEYS */;
INSERT INTO `character_face` (`cid`, `hairColor`, `headBlend`, `headStructure`, `headOverlay`) VALUES
	('Char1steam:1100001359ad80f', '[-1,-1]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[]');
/*!40000 ALTER TABLE `character_face` ENABLE KEYS */;

-- tablo yapısı dökülüyor shx_rpv.character_outfits
CREATE TABLE IF NOT EXISTS `character_outfits` (
  `cid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slot` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawables` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawtextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proptextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hairColor` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- shx_rpv.character_outfits: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `character_outfits` DISABLE KEYS */;
INSERT INTO `character_outfits` (`cid`, `name`, `slot`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`, `hairColor`) VALUES
	('steam:1100001359ad80f', 'sa', '1', '1461287021', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]'),
	('steam:1100001359ad80f', 'deneme', '3', '1885233650', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[1,1]'),
	('steam:1100001359ad80f', 'deneme', '5', '1885233650', '{"1":["masks",0],"2":["hair",4],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",3]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[1,1]'),
	('steam:1100001359ad80f', 'saa', '7', '1885233650', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",4]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[1,1]'),
	('steam:1100001359ad80f', 'deneme', '8', '225514697', '{"1":["masks",0],"2":["hair",2],"3":["torsos",14],"4":["legs",13],"5":["bags",4],"6":["shoes",18],"7":["neck",0],"8":["undershirts",0],"9":["vest",8],"10":["decals",7],"11":["jackets",5],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",3],["masks",0],["hair",0],["torsos",5],["legs",3],["bags",0],["shoes",15],["neck",0],["undershirts",0],["vest",0],["decals",1],["jackets",6]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]');
/*!40000 ALTER TABLE `character_outfits` ENABLE KEYS */;

-- tablo yapısı dökülüyor shx_rpv.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- shx_rpv.playerstattoos: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
INSERT INTO `playerstattoos` (`id`, `identifier`, `tattoos`) VALUES
	(1, 'Char1steam:1100001359ad80f', '[[-1719270477,-1082736975],[1529191571,-1529401172]]');
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
