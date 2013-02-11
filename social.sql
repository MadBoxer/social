/*
Navicat MySQL Data Transfer

Source Server         : first
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : social

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2013-02-03 00:02:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `albums`
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `announce` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of albums
-- ----------------------------
INSERT INTO `albums` VALUES ('1', 'qweqwe', 'qweqwe', '', '', '3', null, '2013-01-13 16:38:50', '2013-01-13 16:38:50');
INSERT INTO `albums` VALUES ('2', 'ОЛОЛО', 'OLOLO', 'ololo announce', 'ololo description', '3', null, '2013-01-13 16:39:12', '2013-01-13 16:39:12');
INSERT INTO `albums` VALUES ('3', 'Тестовый', 'Testovyy', 'Тестовый анонс', 'Тестовое описание', '3', null, '2013-01-14 19:51:40', '2013-01-14 19:51:40');

-- ----------------------------
-- Table structure for `cities`
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('3', 'Москва', 'moscow', '20', 'gerb_moskvy.png', '2013-01-04 08:58:41', '2013-01-04 13:59:09');
INSERT INTO `cities` VALUES ('4', 'Санкт-Петербург', 'leningrad', '20', 'spetersbur_g.png', '2013-01-04 09:00:27', '2013-01-04 13:59:40');
INSERT INTO `cities` VALUES ('5', 'Владивосток', 'vladivostok', '20', 'gerb_Vladivostoka_1883.png', '2013-01-04 13:48:53', '2013-01-04 14:00:01');
INSERT INTO `cities` VALUES ('7', 'sadasd', '', '20', 'P3110336.JPG', '2013-02-02 15:48:03', '2013-02-02 15:48:03');

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('11', 'Россия');
INSERT INTO `countries` VALUES ('12', 'Белоруссия');

-- ----------------------------
-- Table structure for `faculties`
-- ----------------------------
DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faculties
-- ----------------------------
INSERT INTO `faculties` VALUES ('1', 'Математико-механический', '1', '2013-01-05 10:18:01', '2013-01-05 10:18:01');
INSERT INTO `faculties` VALUES ('2', 'Физико-технический', '1', '2013-01-05 10:19:45', '2013-01-05 10:19:45');

-- ----------------------------
-- Table structure for `material_types`
-- ----------------------------
DROP TABLE IF EXISTS `material_types`;
CREATE TABLE `material_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of material_types
-- ----------------------------

-- ----------------------------
-- Table structure for `materials`
-- ----------------------------
DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of materials
-- ----------------------------
INSERT INTO `materials` VALUES ('3', null, null, null, '2013-01-04 15:35:33', '2013-01-04 15:35:33');

-- ----------------------------
-- Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('1');
INSERT INTO `schema_migrations` VALUES ('10');
INSERT INTO `schema_migrations` VALUES ('12');
INSERT INTO `schema_migrations` VALUES ('13');
INSERT INTO `schema_migrations` VALUES ('14');
INSERT INTO `schema_migrations` VALUES ('15');
INSERT INTO `schema_migrations` VALUES ('16');
INSERT INTO `schema_migrations` VALUES ('17');
INSERT INTO `schema_migrations` VALUES ('18');
INSERT INTO `schema_migrations` VALUES ('19');
INSERT INTO `schema_migrations` VALUES ('2');
INSERT INTO `schema_migrations` VALUES ('20');
INSERT INTO `schema_migrations` VALUES ('20121230215442');
INSERT INTO `schema_migrations` VALUES ('20130105135235');
INSERT INTO `schema_migrations` VALUES ('3');
INSERT INTO `schema_migrations` VALUES ('4');
INSERT INTO `schema_migrations` VALUES ('5');
INSERT INTO `schema_migrations` VALUES ('6');
INSERT INTO `schema_migrations` VALUES ('7');
INSERT INTO `schema_migrations` VALUES ('8');
INSERT INTO `schema_migrations` VALUES ('9');

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('1', 'f22a62ee6381cde77c5b2e82c310b161', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7BiIQX2NzcmZfdG9rZW4iMXlSOHp5YlFhT2RUR1puVkV1ekFwak5CT3Za\nbXFmNXJMT0IvS1Z0aVF6UUU9\n', '2013-01-06 08:42:27', '2013-01-06 08:58:03');
INSERT INTO `sessions` VALUES ('2', '7aaab5fabff46320aab4de672d109c93', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7BiIQX2NzcmZfdG9rZW4iMXBOK3lDc2tJdUdLUERoaUlESDdCd1dJZVFM\ncitCeUlsUlhUcXNzcEUyQ3M9\n', '2013-01-06 09:10:51', '2013-01-06 09:21:42');
INSERT INTO `sessions` VALUES ('3', '0fa72bf9519371140d2f1b4f4a7940b8', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7BiIQX2NzcmZfdG9rZW4iMTdBaXY5VFBTQWdUN1owbFkzaVFUREtRTjJW\nNk1oU0FiTzdlVTFlR09vSnM9\n', '2013-01-06 09:26:55', '2013-01-06 09:42:37');
INSERT INTO `sessions` VALUES ('4', '17913bf8384d933004accbab079f32fa', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIQX2NzcmZfdG9rZW4iMU9NZ1lGZFlraFJ1NW9Kbk1mV1g1aWNsaFJv\nL1VYR3BCOFgxR29DdWJSYTA9Igx1c2VyX2lkaQg=\n', '2013-01-07 17:14:35', '2013-01-07 19:46:21');
INSERT INTO `sessions` VALUES ('5', '980ffbb95649210d8156c270c75d18db', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7CCIQX2NzcmZfdG9rZW4iMUhjT0k5SDIwcCtwWjdOc0NzTWNpQkJlTkI5\naGc1eTAwaFRlbzVMRXdGcVE9Igx1c2VyX2lkaQgiCmZsYXNobzolQWN0aW9u\nRGlzcGF0Y2g6OkZsYXNoOjpGbGFzaEhhc2gJOglAbm93MDoNQGZsYXNoZXN7\nBjoLbm90aWNlIi5zdHVkZW50c3RhdHVzZXMgd2FzIHN1Y2Nlc3NmdWxseSBj\ncmVhdGVkLjoKQHVzZWRvOghTZXQGOgpAaGFzaHsGOwhUOgxAY2xvc2VkRg==\n', '2013-01-08 10:24:27', '2013-01-08 11:28:22');
INSERT INTO `sessions` VALUES ('6', '253c482437079c1aab334d640c0d190d', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIQX2NzcmZfdG9rZW4iMWd4azVIQUVRYmRqSDBxZm1PNDNXa21nK0JH\ndXpiY2oyVzdyWURFZjNMU289Igx1c2VyX2lkaQg=\n', '2013-01-08 11:42:35', '2013-01-08 11:42:40');
INSERT INTO `sessions` VALUES ('7', 'c3ee6731a2022de346f3837dfe4c082a', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIMdXNlcl9pZGkIIhBfY3NyZl90b2tlbiIxYTMzbmJ5SHZYOXk5VmlV\ncTRIUkd0VllMVzJKNHM5TGhUR3NHUEpNQ3ptWT0=\n', '2013-01-08 18:54:31', '2013-01-08 19:40:39');
INSERT INTO `sessions` VALUES ('8', '9e8b9376198cdf00b580201962b3ffa2', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIQX2NzcmZfdG9rZW4iMWk4NnJDV0JiMGVaSXlCWVZqQklzQ01RYTVM\na09uYWRUVGU1aTMvMGJ2alk9Igx1c2VyX2lkaQg=\n', '2013-01-12 15:28:34', '2013-01-12 15:28:39');
INSERT INTO `sessions` VALUES ('9', '916b4b3b4b993bffa68433586aa7cac1', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIQX2NzcmZfdG9rZW4iMVRraUtCVE9BaWErdHdENzBWWUlkeThpN2Vu\nRWRoRlByeko3ZWx3aEVabVE9Igx1c2VyX2lkaQg=\n', '2013-01-13 15:48:53', '2013-01-13 15:49:33');
INSERT INTO `sessions` VALUES ('10', 'aaa90809b3a23612af31739137dfe3ce', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIMdXNlcl9pZGkIIhBfY3NyZl90b2tlbiIxdnB4VVF2YzhSeFNkVTh0\nVWswVW9raGNNMWFzamdkdlY5enozSEx0QWNUQT0=\n', '2013-01-14 19:51:06', '2013-01-14 19:51:10');
INSERT INTO `sessions` VALUES ('11', 'e0b34f92aadae173a63dadd0b6a4350c', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIQX2NzcmZfdG9rZW4iMUtwOWcreE5SaU5Td0FGaithcElodGE3MVpr\nVmUvZlZyTDRGT3Fzbkdzdmc9Igx1c2VyX2lkaQg=\n', '2013-01-15 18:51:57', '2013-01-15 18:52:02');
INSERT INTO `sessions` VALUES ('12', 'd1f15d0afa57eb15bab9c2d3dd9d218b', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIQX2NzcmZfdG9rZW4iMWVSbjBPUnFYTmk0emgwOVlLYUJsMUtXMmVT\nSnpqV3ZDcU4xN3ljWi93R2s9Igx1c2VyX2lkaQg=\n', '2013-01-19 08:57:39', '2013-01-19 08:57:44');
INSERT INTO `sessions` VALUES ('13', 'c69290d0941f3e59a338080335438e5c', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIMdXNlcl9pZGkIIhBfY3NyZl90b2tlbiIxYjF5bjNIckx5VHQwcHpL\neWlsakIvUjdvZEV2QXE2Ym4zV2JGVUJZV09FZz0=\n', '2013-01-19 12:22:30', '2013-01-19 19:47:25');
INSERT INTO `sessions` VALUES ('14', '2c65566a21b7a5422dd2389b23507945', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIMdXNlcl9pZGkIIhBfY3NyZl90b2tlbiIxbk9YMmtnYmpmTlk3dWtH\ndGFoZ0lNRCttOVptWjRvTjVUUTU0OTlTVmkwND0=\n', '2013-01-19 19:51:26', '2013-01-19 19:51:31');
INSERT INTO `sessions` VALUES ('15', 'd75912ddd4bcf004e5d6eff0ea166cd0', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7ByIMdXNlcl9pZGkIIhBfY3NyZl90b2tlbiIxdTU0N0xlbUNaRXI2SThG\nVXdDMUlRT1JJcWIxWndXWEdrOGFIZkgrdjZ1az0=\n', '2013-01-26 10:00:06', '2013-01-26 10:00:12');
INSERT INTO `sessions` VALUES ('16', 'b14783601413c19864361f01d225f492', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjFUdzBhOExJNG80QnQyRWJNeE9w\nWURHR2E5YVdTQk5OWUJwdklESHJKcTFnPQY7AEZJIgx1c2VyX2lkBjsARmkI\n', '2013-01-27 13:11:32', '2013-01-27 13:11:39');
INSERT INTO `sessions` VALUES ('17', 'a1c16c91af5848bb9801f0aae5f7c410', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjFieXZUSWF0N0I1MnBJUFVFWDJs\nbmR2T1hNYjF0bXJZVlg4VWhaWmREVDU0PQY7AEZJIgx1c2VyX2lkBjsARmkI\n', '2013-01-30 18:36:09', '2013-01-30 18:36:14');
INSERT INTO `sessions` VALUES ('18', '1f458afd243f332407ab33adaa7688a8', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjF5SkF4MVowZ1hhdm96WUVpZko4\nSzh3djNvekc0Q1p4cE5UQmlVNHdwbXIwPQY7AEZJIgx1c2VyX2lkBjsARmkI\n', '2013-01-30 19:48:36', '2013-01-30 19:48:46');
INSERT INTO `sessions` VALUES ('20', '46729e79ad109233a2ba9ecedbfd3304', '92804b2c3a4d369b3a1b1328967236b2', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjFsUCt4VTZnTWRlNGovVU41VWpS\nWTYzQ2EybC9yQ0pkbHZTbExDejFESG13PQY7AEZJIgx1c2VyX2lkBjsARmkI\n', '2013-02-02 10:40:45', '2013-02-02 10:40:48');
INSERT INTO `sessions` VALUES ('59', '432a81ab35063a38b319f77290161aa5', null, 'BAh7BjoQX2NzcmZfdG9rZW5JIjF3V25EWW9pTTU5QUczQVVNRGlWQkxQK3ZM\nTzNDR3dkQ3F3KzVaQkxsVzVNPQY6BkVG\n', '2013-02-02 16:58:49', '2013-02-02 16:58:49');

-- ----------------------------
-- Table structure for `setting_images`
-- ----------------------------
DROP TABLE IF EXISTS `setting_images`;
CREATE TABLE `setting_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of setting_images
-- ----------------------------
INSERT INTO `setting_images` VALUES ('1', '23', 'm.gif', '2013-01-04 10:10:54', '2013-01-04 11:02:41');
INSERT INTO `setting_images` VALUES ('3', '24', 'w.gif', '2013-01-04 11:05:46', '2013-01-04 11:05:46');
INSERT INTO `setting_images` VALUES ('4', '20', 'Flag_of_Russia.svg.png', '2013-01-04 11:13:05', '2013-01-04 13:00:09');
INSERT INTO `setting_images` VALUES ('5', '21', 'ukrain_flag.jpg', '2013-01-04 13:00:41', '2013-01-04 13:00:41');
INSERT INTO `setting_images` VALUES ('6', '22', 'by.png', '2013-01-04 13:01:06', '2013-01-04 13:01:06');

-- ----------------------------
-- Table structure for `setting_types`
-- ----------------------------
DROP TABLE IF EXISTS `setting_types`;
CREATE TABLE `setting_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of setting_types
-- ----------------------------
INSERT INTO `setting_types` VALUES ('1', 'Политческие взгляды', 'politics');
INSERT INTO `setting_types` VALUES ('2', 'Религиозные взгляды', 'religions');
INSERT INTO `setting_types` VALUES ('3', 'Страны', 'countries');
INSERT INTO `setting_types` VALUES ('5', 'Семейное положение', 'maritalstatuses');
INSERT INTO `setting_types` VALUES ('6', 'Пол', 'sexes');
INSERT INTO `setting_types` VALUES ('7', 'Статус для ВУЗов', 'studentstatuses');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_type_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(3) unsigned DEFAULT NULL,
  `alias` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('2', '2', 'Православие', null, 'orthodox');
INSERT INTO `settings` VALUES ('6', '1', 'Умеренные', null, 'temperate');
INSERT INTO `settings` VALUES ('7', '1', 'Индифферентные', null, 'indifferent');
INSERT INTO `settings` VALUES ('8', '1', 'Социалистические', null, 'social');
INSERT INTO `settings` VALUES ('11', '1', 'Коммунистические', null, 'communist');
INSERT INTO `settings` VALUES ('12', '5', 'Не женат', null, 'm_not_married');
INSERT INTO `settings` VALUES ('13', '5', 'Женат', null, 'm_married');
INSERT INTO `settings` VALUES ('14', '5', 'В активном поиске', null, 'in_active_search');
INSERT INTO `settings` VALUES ('15', '5', 'Есть подруга', null, 'm_has_friend');
INSERT INTO `settings` VALUES ('16', '5', 'Встречаюсь', null, 'meeting');
INSERT INTO `settings` VALUES ('17', '5', 'Замужем', null, 'w_married');
INSERT INTO `settings` VALUES ('18', '5', 'Не замужем', null, 'w_not_married');
INSERT INTO `settings` VALUES ('19', '5', 'Есть друг', null, 'w_has_friend');
INSERT INTO `settings` VALUES ('20', '3', 'Россия', null, 'russia');
INSERT INTO `settings` VALUES ('21', '3', 'Украина', null, 'ukraine');
INSERT INTO `settings` VALUES ('22', '3', 'Белоруссия', null, 'belorussia');
INSERT INTO `settings` VALUES ('23', '6', 'Мужской', null, 'male');
INSERT INTO `settings` VALUES ('24', '6', 'Женский', null, 'female');
INSERT INTO `settings` VALUES ('25', '1', 'Либеральные', null, 'liberal');
INSERT INTO `settings` VALUES ('26', '1', 'Революционные', null, 'revolution');
INSERT INTO `settings` VALUES ('27', '2', 'Католицизм', null, 'catolic');
INSERT INTO `settings` VALUES ('28', '2', 'Протестантизм', null, 'protestantism');
INSERT INTO `settings` VALUES ('31', '2', 'Буддизм', null, 'buddizm');
INSERT INTO `settings` VALUES ('32', '2', 'Атеизм', null, 'ateizm');
INSERT INTO `settings` VALUES ('35', '7', 'Абитуриент', null, 'abiturient');
INSERT INTO `settings` VALUES ('36', '7', 'Студент(специалист)', null, 'student-spetsialist');
INSERT INTO `settings` VALUES ('37', '7', 'Студент(бакалавр)', null, 'student-bakalavr');
INSERT INTO `settings` VALUES ('38', '7', 'Сутдент(магистр)', null, 'sutdent-magistr');
INSERT INTO `settings` VALUES ('39', '7', 'Аспирант', null, 'aspirant');
INSERT INTO `settings` VALUES ('40', '7', 'Кандидат наук', null, 'kandidat-nauk');
INSERT INTO `settings` VALUES ('41', '7', 'Доктор наук', null, 'doktor-nauk');
INSERT INTO `settings` VALUES ('42', '2', 'Ислам', null, 'islam');

-- ----------------------------
-- Table structure for `universities`
-- ----------------------------
DROP TABLE IF EXISTS `universities`;
CREATE TABLE `universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of universities
-- ----------------------------
INSERT INTO `universities` VALUES ('1', 'Санкт-Петербургский университет', 'СПбГУ', '4', '2013-01-05 09:35:39', '2013-01-05 09:38:39');
INSERT INTO `universities` VALUES ('2', 'Московский государственный университет', 'МГУ', '3', '2013-01-05 10:22:40', '2013-01-05 10:22:40');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `politic_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `activities` text COLLATE utf8_unicode_ci,
  `favourite_films` text COLLATE utf8_unicode_ci,
  `favourite_books` text COLLATE utf8_unicode_ci,
  `favourite_tv_shows` text COLLATE utf8_unicode_ci,
  `favourite_games` text COLLATE utf8_unicode_ci,
  `favourite_phrases` text COLLATE utf8_unicode_ci,
  `about_myself` text COLLATE utf8_unicode_ci,
  `material_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sex` int(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  `native_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`) USING BTREE,
  KEY `surname_index` (`surname`),
  KEY `email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'Петя', 'Иванов', 'ivanov@mail.ru', 'test', '13', '4', '888', 'skp', 'ivanov.py', '6', '2', '<p>Деятельность</p>', '<p>Любимые фильмы</p>', '', '', '', '', '', '3', '2013-01-04 15:35:33', '2013-01-07 20:05:16', '23', '1955-01-01', '1', '0', 'Ленинград', '92804b2c3a4d369b3a1b1328967236b2', '0_STATIC946f4_f62de7f9_L.jpg');
INSERT INTO `users` VALUES ('32', 'qqq', 'www', 'aleksey.shkadov@mail.ru', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2013-01-19 19:40:40', '2013-01-19 19:40:40', null, null, '1', '0', null, '50b3d6037de3714c9ff42a74295f51a7', null);

-- ----------------------------
-- Table structure for `users_universities`
-- ----------------------------
DROP TABLE IF EXISTS `users_universities`;
CREATE TABLE `users_universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `studentstatus_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_universities
-- ----------------------------
INSERT INTO `users_universities` VALUES ('2', '3', '1', '1', '37', '2013-01-08 19:18:38', '2013-01-12 17:14:46');
INSERT INTO `users_universities` VALUES ('4', '3', '1', '1', '35', '2013-01-12 18:06:56', '2013-01-12 18:06:56');
INSERT INTO `users_universities` VALUES ('7', '3', '1', '0', null, '2013-01-12 18:11:46', '2013-01-12 18:11:46');
