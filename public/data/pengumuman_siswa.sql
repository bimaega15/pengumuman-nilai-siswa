/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : pengumuman_siswa

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 19/03/2024 14:10:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_statis
-- ----------------------------
DROP TABLE IF EXISTS `data_statis`;
CREATE TABLE `data_statis`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_datastatis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_datastatis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisreferensi_datastatis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid_datastatis` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 421 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_statis
-- ----------------------------
INSERT INTO `data_statis` VALUES (1, 'ZN001', 'Africa/Abidjan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (2, 'ZN002', 'Africa/Accra', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (3, 'ZN003', 'Africa/Addis_Ababa', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (4, 'ZN004', 'Africa/Algiers', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (5, 'ZN005', 'Africa/Asmara', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (6, 'ZN006', 'Africa/Bamako', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (7, 'ZN007', 'Africa/Bangui', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (8, 'ZN008', 'Africa/Banjul', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (9, 'ZN009', 'Africa/Bissau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (10, 'ZN010', 'Africa/Blantyre', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (11, 'ZN011', 'Africa/Brazzaville', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (12, 'ZN012', 'Africa/Bujumbura', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (13, 'ZN013', 'Africa/Cairo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (14, 'ZN014', 'Africa/Casablanca', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (15, 'ZN015', 'Africa/Ceuta', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (16, 'ZN016', 'Africa/Conakry', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (17, 'ZN017', 'Africa/Dakar', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (18, 'ZN018', 'Africa/Dar_es_Salaam', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (19, 'ZN019', 'Africa/Djibouti', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (20, 'ZN020', 'Africa/Douala', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (21, 'ZN021', 'Africa/El_Aaiun', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (22, 'ZN022', 'Africa/Freetown', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (23, 'ZN023', 'Africa/Gaborone', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (24, 'ZN024', 'Africa/Harare', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (25, 'ZN025', 'Africa/Johannesburg', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (26, 'ZN026', 'Africa/Juba', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (27, 'ZN027', 'Africa/Kampala', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (28, 'ZN028', 'Africa/Khartoum', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (29, 'ZN029', 'Africa/Kigali', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (30, 'ZN030', 'Africa/Kinshasa', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (31, 'ZN031', 'Africa/Lagos', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (32, 'ZN032', 'Africa/Libreville', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (33, 'ZN033', 'Africa/Lome', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (34, 'ZN034', 'Africa/Luanda', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (35, 'ZN035', 'Africa/Lubumbashi', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (36, 'ZN036', 'Africa/Lusaka', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (37, 'ZN037', 'Africa/Malabo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (38, 'ZN038', 'Africa/Maputo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (39, 'ZN039', 'Africa/Maseru', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (40, 'ZN040', 'Africa/Mbabane', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (41, 'ZN041', 'Africa/Mogadishu', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (42, 'ZN042', 'Africa/Monrovia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (43, 'ZN043', 'Africa/Nairobi', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (44, 'ZN044', 'Africa/Ndjamena', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (45, 'ZN045', 'Africa/Niamey', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (46, 'ZN046', 'Africa/Nouakchott', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (47, 'ZN047', 'Africa/Ouagadougou', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (48, 'ZN048', 'Africa/Porto-Novo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (49, 'ZN049', 'Africa/Sao_Tome', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (50, 'ZN050', 'Africa/Tripoli', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (51, 'ZN051', 'Africa/Tunis', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (52, 'ZN052', 'Africa/Windhoek', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (53, 'ZN053', 'America/Adak', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (54, 'ZN054', 'America/Anchorage', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (55, 'ZN055', 'America/Anguilla', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (56, 'ZN056', 'America/Antigua', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (57, 'ZN057', 'America/Araguaina', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (58, 'ZN058', 'America/Argentina/Buenos_Aires', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (59, 'ZN059', 'America/Argentina/Catamarca', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (60, 'ZN060', 'America/Argentina/Cordoba', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (61, 'ZN061', 'America/Argentina/Jujuy', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (62, 'ZN062', 'America/Argentina/La_Rioja', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (63, 'ZN063', 'America/Argentina/Mendoza', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (64, 'ZN064', 'America/Argentina/Rio_Gallegos', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (65, 'ZN065', 'America/Argentina/Salta', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (66, 'ZN066', 'America/Argentina/San_Juan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (67, 'ZN067', 'America/Argentina/San_Luis', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (68, 'ZN068', 'America/Argentina/Tucuman', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (69, 'ZN069', 'America/Argentina/Ushuaia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (70, 'ZN070', 'America/Aruba', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (71, 'ZN071', 'America/Asuncion', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (72, 'ZN072', 'America/Atikokan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (73, 'ZN073', 'America/Bahia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (74, 'ZN074', 'America/Bahia_Banderas', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (75, 'ZN075', 'America/Barbados', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (76, 'ZN076', 'America/Belem', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (77, 'ZN077', 'America/Belize', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (78, 'ZN078', 'America/Blanc-Sablon', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (79, 'ZN079', 'America/Boa_Vista', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (80, 'ZN080', 'America/Bogota', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (81, 'ZN081', 'America/Boise', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (82, 'ZN082', 'America/Cambridge_Bay', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (83, 'ZN083', 'America/Campo_Grande', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (84, 'ZN084', 'America/Cancun', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (85, 'ZN085', 'America/Caracas', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (86, 'ZN086', 'America/Cayenne', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (87, 'ZN087', 'America/Cayman', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (88, 'ZN088', 'America/Chicago', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (89, 'ZN089', 'America/Chihuahua', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (90, 'ZN090', 'America/Ciudad_Juarez', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (91, 'ZN091', 'America/Costa_Rica', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (92, 'ZN092', 'America/Creston', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (93, 'ZN093', 'America/Cuiaba', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (94, 'ZN094', 'America/Curacao', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (95, 'ZN095', 'America/Danmarkshavn', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (96, 'ZN096', 'America/Dawson', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (97, 'ZN097', 'America/Dawson_Creek', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (98, 'ZN098', 'America/Denver', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (99, 'ZN099', 'America/Detroit', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (100, 'ZN100', 'America/Dominica', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (101, 'ZN101', 'America/Edmonton', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (102, 'ZN102', 'America/Eirunepe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (103, 'ZN103', 'America/El_Salvador', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (104, 'ZN104', 'America/Fort_Nelson', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (105, 'ZN105', 'America/Fortaleza', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (106, 'ZN106', 'America/Glace_Bay', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (107, 'ZN107', 'America/Goose_Bay', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (108, 'ZN108', 'America/Grand_Turk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (109, 'ZN109', 'America/Grenada', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (110, 'ZN110', 'America/Guadeloupe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (111, 'ZN111', 'America/Guatemala', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (112, 'ZN112', 'America/Guayaquil', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (113, 'ZN113', 'America/Guyana', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (114, 'ZN114', 'America/Halifax', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (115, 'ZN115', 'America/Havana', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (116, 'ZN116', 'America/Hermosillo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (117, 'ZN117', 'America/Indiana/Indianapolis', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (118, 'ZN118', 'America/Indiana/Knox', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (119, 'ZN119', 'America/Indiana/Marengo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (120, 'ZN120', 'America/Indiana/Petersburg', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (121, 'ZN121', 'America/Indiana/Tell_City', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (122, 'ZN122', 'America/Indiana/Vevay', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (123, 'ZN123', 'America/Indiana/Vincennes', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (124, 'ZN124', 'America/Indiana/Winamac', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (125, 'ZN125', 'America/Inuvik', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (126, 'ZN126', 'America/Iqaluit', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (127, 'ZN127', 'America/Jamaica', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (128, 'ZN128', 'America/Juneau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (129, 'ZN129', 'America/Kentucky/Louisville', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (130, 'ZN130', 'America/Kentucky/Monticello', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (131, 'ZN131', 'America/Kralendijk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (132, 'ZN132', 'America/La_Paz', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (133, 'ZN133', 'America/Lima', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (134, 'ZN134', 'America/Los_Angeles', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (135, 'ZN135', 'America/Lower_Princes', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (136, 'ZN136', 'America/Maceio', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (137, 'ZN137', 'America/Managua', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (138, 'ZN138', 'America/Manaus', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (139, 'ZN139', 'America/Marigot', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (140, 'ZN140', 'America/Martinique', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (141, 'ZN141', 'America/Matamoros', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (142, 'ZN142', 'America/Mazatlan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (143, 'ZN143', 'America/Menominee', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (144, 'ZN144', 'America/Merida', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (145, 'ZN145', 'America/Metlakatla', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (146, 'ZN146', 'America/Mexico_City', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (147, 'ZN147', 'America/Miquelon', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (148, 'ZN148', 'America/Moncton', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (149, 'ZN149', 'America/Monterrey', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (150, 'ZN150', 'America/Montevideo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (151, 'ZN151', 'America/Montserrat', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (152, 'ZN152', 'America/Nassau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (153, 'ZN153', 'America/New_York', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (154, 'ZN154', 'America/Nome', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (155, 'ZN155', 'America/Noronha', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (156, 'ZN156', 'America/North_Dakota/Beulah', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (157, 'ZN157', 'America/North_Dakota/Center', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (158, 'ZN158', 'America/North_Dakota/New_Salem', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (159, 'ZN159', 'America/Nuuk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (160, 'ZN160', 'America/Ojinaga', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (161, 'ZN161', 'America/Panama', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (162, 'ZN162', 'America/Paramaribo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (163, 'ZN163', 'America/Phoenix', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (164, 'ZN164', 'America/Port-au-Prince', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (165, 'ZN165', 'America/Port_of_Spain', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (166, 'ZN166', 'America/Porto_Velho', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (167, 'ZN167', 'America/Puerto_Rico', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (168, 'ZN168', 'America/Punta_Arenas', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (169, 'ZN169', 'America/Rankin_Inlet', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (170, 'ZN170', 'America/Recife', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (171, 'ZN171', 'America/Regina', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (172, 'ZN172', 'America/Resolute', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (173, 'ZN173', 'America/Rio_Branco', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (174, 'ZN174', 'America/Santarem', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (175, 'ZN175', 'America/Santiago', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (176, 'ZN176', 'America/Santo_Domingo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (177, 'ZN177', 'America/Sao_Paulo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (178, 'ZN178', 'America/Scoresbysund', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (179, 'ZN179', 'America/Sitka', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (180, 'ZN180', 'America/St_Barthelemy', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (181, 'ZN181', 'America/St_Johns', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (182, 'ZN182', 'America/St_Kitts', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (183, 'ZN183', 'America/St_Lucia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (184, 'ZN184', 'America/St_Thomas', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (185, 'ZN185', 'America/St_Vincent', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (186, 'ZN186', 'America/Swift_Current', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (187, 'ZN187', 'America/Tegucigalpa', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (188, 'ZN188', 'America/Thule', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (189, 'ZN189', 'America/Tijuana', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (190, 'ZN190', 'America/Toronto', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (191, 'ZN191', 'America/Tortola', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (192, 'ZN192', 'America/Vancouver', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (193, 'ZN193', 'America/Whitehorse', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (194, 'ZN194', 'America/Winnipeg', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (195, 'ZN195', 'America/Yakutat', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (196, 'ZN196', 'Antarctica/Casey', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (197, 'ZN197', 'Antarctica/Davis', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (198, 'ZN198', 'Antarctica/DumontDUrville', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (199, 'ZN199', 'Antarctica/Macquarie', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (200, 'ZN200', 'Antarctica/Mawson', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (201, 'ZN201', 'Antarctica/McMurdo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (202, 'ZN202', 'Antarctica/Palmer', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (203, 'ZN203', 'Antarctica/Rothera', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (204, 'ZN204', 'Antarctica/Syowa', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (205, 'ZN205', 'Antarctica/Troll', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (206, 'ZN206', 'Antarctica/Vostok', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (207, 'ZN207', 'Arctic/Longyearbyen', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (208, 'ZN208', 'Asia/Aden', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (209, 'ZN209', 'Asia/Almaty', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (210, 'ZN210', 'Asia/Amman', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (211, 'ZN211', 'Asia/Anadyr', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (212, 'ZN212', 'Asia/Aqtau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (213, 'ZN213', 'Asia/Aqtobe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (214, 'ZN214', 'Asia/Ashgabat', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (215, 'ZN215', 'Asia/Atyrau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (216, 'ZN216', 'Asia/Baghdad', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (217, 'ZN217', 'Asia/Bahrain', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (218, 'ZN218', 'Asia/Baku', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (219, 'ZN219', 'Asia/Bangkok', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (220, 'ZN220', 'Asia/Barnaul', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (221, 'ZN221', 'Asia/Beirut', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (222, 'ZN222', 'Asia/Bishkek', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (223, 'ZN223', 'Asia/Brunei', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (224, 'ZN224', 'Asia/Chita', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (225, 'ZN225', 'Asia/Choibalsan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (226, 'ZN226', 'Asia/Colombo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (227, 'ZN227', 'Asia/Damascus', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (228, 'ZN228', 'Asia/Dhaka', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (229, 'ZN229', 'Asia/Dili', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (230, 'ZN230', 'Asia/Dubai', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (231, 'ZN231', 'Asia/Dushanbe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (232, 'ZN232', 'Asia/Famagusta', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (233, 'ZN233', 'Asia/Gaza', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (234, 'ZN234', 'Asia/Hebron', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (235, 'ZN235', 'Asia/Ho_Chi_Minh', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (236, 'ZN236', 'Asia/Hong_Kong', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (237, 'ZN237', 'Asia/Hovd', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (238, 'ZN238', 'Asia/Irkutsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (239, 'ZN239', 'Asia/Jakarta', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (240, 'ZN240', 'Asia/Jayapura', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (241, 'ZN241', 'Asia/Jerusalem', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (242, 'ZN242', 'Asia/Kabul', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (243, 'ZN243', 'Asia/Kamchatka', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (244, 'ZN244', 'Asia/Karachi', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (245, 'ZN245', 'Asia/Kathmandu', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (246, 'ZN246', 'Asia/Khandyga', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (247, 'ZN247', 'Asia/Kolkata', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (248, 'ZN248', 'Asia/Krasnoyarsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (249, 'ZN249', 'Asia/Kuala_Lumpur', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (250, 'ZN250', 'Asia/Kuching', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (251, 'ZN251', 'Asia/Kuwait', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (252, 'ZN252', 'Asia/Macau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (253, 'ZN253', 'Asia/Magadan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (254, 'ZN254', 'Asia/Makassar', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (255, 'ZN255', 'Asia/Manila', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (256, 'ZN256', 'Asia/Muscat', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (257, 'ZN257', 'Asia/Nicosia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (258, 'ZN258', 'Asia/Novokuznetsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (259, 'ZN259', 'Asia/Novosibirsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (260, 'ZN260', 'Asia/Omsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (261, 'ZN261', 'Asia/Oral', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (262, 'ZN262', 'Asia/Phnom_Penh', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (263, 'ZN263', 'Asia/Pontianak', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (264, 'ZN264', 'Asia/Pyongyang', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (265, 'ZN265', 'Asia/Qatar', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (266, 'ZN266', 'Asia/Qostanay', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (267, 'ZN267', 'Asia/Qyzylorda', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (268, 'ZN268', 'Asia/Riyadh', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (269, 'ZN269', 'Asia/Sakhalin', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (270, 'ZN270', 'Asia/Samarkand', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (271, 'ZN271', 'Asia/Seoul', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (272, 'ZN272', 'Asia/Shanghai', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (273, 'ZN273', 'Asia/Singapore', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (274, 'ZN274', 'Asia/Srednekolymsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (275, 'ZN275', 'Asia/Taipei', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (276, 'ZN276', 'Asia/Tashkent', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (277, 'ZN277', 'Asia/Tbilisi', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (278, 'ZN278', 'Asia/Tehran', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (279, 'ZN279', 'Asia/Thimphu', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (280, 'ZN280', 'Asia/Tokyo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (281, 'ZN281', 'Asia/Tomsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (282, 'ZN282', 'Asia/Ulaanbaatar', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (283, 'ZN283', 'Asia/Urumqi', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (284, 'ZN284', 'Asia/Ust-Nera', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (285, 'ZN285', 'Asia/Vientiane', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (286, 'ZN286', 'Asia/Vladivostok', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (287, 'ZN287', 'Asia/Yakutsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (288, 'ZN288', 'Asia/Yangon', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (289, 'ZN289', 'Asia/Yekaterinburg', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (290, 'ZN290', 'Asia/Yerevan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (291, 'ZN291', 'Atlantic/Azores', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (292, 'ZN292', 'Atlantic/Bermuda', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (293, 'ZN293', 'Atlantic/Canary', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (294, 'ZN294', 'Atlantic/Cape_Verde', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (295, 'ZN295', 'Atlantic/Faroe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (296, 'ZN296', 'Atlantic/Madeira', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (297, 'ZN297', 'Atlantic/Reykjavik', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (298, 'ZN298', 'Atlantic/South_Georgia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (299, 'ZN299', 'Atlantic/St_Helena', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (300, 'ZN300', 'Atlantic/Stanley', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (301, 'ZN301', 'Australia/Adelaide', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (302, 'ZN302', 'Australia/Brisbane', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (303, 'ZN303', 'Australia/Broken_Hill', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (304, 'ZN304', 'Australia/Darwin', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (305, 'ZN305', 'Australia/Eucla', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (306, 'ZN306', 'Australia/Hobart', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (307, 'ZN307', 'Australia/Lindeman', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (308, 'ZN308', 'Australia/Lord_Howe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (309, 'ZN309', 'Australia/Melbourne', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (310, 'ZN310', 'Australia/Perth', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (311, 'ZN311', 'Australia/Sydney', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (312, 'ZN312', 'Europe/Amsterdam', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (313, 'ZN313', 'Europe/Andorra', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (314, 'ZN314', 'Europe/Astrakhan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (315, 'ZN315', 'Europe/Athens', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (316, 'ZN316', 'Europe/Belgrade', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (317, 'ZN317', 'Europe/Berlin', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (318, 'ZN318', 'Europe/Bratislava', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (319, 'ZN319', 'Europe/Brussels', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (320, 'ZN320', 'Europe/Bucharest', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (321, 'ZN321', 'Europe/Budapest', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (322, 'ZN322', 'Europe/Busingen', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (323, 'ZN323', 'Europe/Chisinau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (324, 'ZN324', 'Europe/Copenhagen', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (325, 'ZN325', 'Europe/Dublin', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (326, 'ZN326', 'Europe/Gibraltar', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (327, 'ZN327', 'Europe/Guernsey', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (328, 'ZN328', 'Europe/Helsinki', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (329, 'ZN329', 'Europe/Isle_of_Man', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (330, 'ZN330', 'Europe/Istanbul', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (331, 'ZN331', 'Europe/Jersey', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (332, 'ZN332', 'Europe/Kaliningrad', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (333, 'ZN333', 'Europe/Kirov', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (334, 'ZN334', 'Europe/Kyiv', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (335, 'ZN335', 'Europe/Lisbon', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (336, 'ZN336', 'Europe/Ljubljana', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (337, 'ZN337', 'Europe/London', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (338, 'ZN338', 'Europe/Luxembourg', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (339, 'ZN339', 'Europe/Madrid', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (340, 'ZN340', 'Europe/Malta', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (341, 'ZN341', 'Europe/Mariehamn', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (342, 'ZN342', 'Europe/Minsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (343, 'ZN343', 'Europe/Monaco', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (344, 'ZN344', 'Europe/Moscow', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (345, 'ZN345', 'Europe/Oslo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (346, 'ZN346', 'Europe/Paris', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (347, 'ZN347', 'Europe/Podgorica', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (348, 'ZN348', 'Europe/Prague', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (349, 'ZN349', 'Europe/Riga', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (350, 'ZN350', 'Europe/Rome', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (351, 'ZN351', 'Europe/Samara', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (352, 'ZN352', 'Europe/San_Marino', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (353, 'ZN353', 'Europe/Sarajevo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (354, 'ZN354', 'Europe/Saratov', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (355, 'ZN355', 'Europe/Simferopol', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (356, 'ZN356', 'Europe/Skopje', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (357, 'ZN357', 'Europe/Sofia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (358, 'ZN358', 'Europe/Stockholm', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (359, 'ZN359', 'Europe/Tallinn', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (360, 'ZN360', 'Europe/Tirane', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (361, 'ZN361', 'Europe/Ulyanovsk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (362, 'ZN362', 'Europe/Vaduz', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (363, 'ZN363', 'Europe/Vatican', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (364, 'ZN364', 'Europe/Vienna', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (365, 'ZN365', 'Europe/Vilnius', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (366, 'ZN366', 'Europe/Volgograd', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (367, 'ZN367', 'Europe/Warsaw', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (368, 'ZN368', 'Europe/Zagreb', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (369, 'ZN369', 'Europe/Zurich', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (370, 'ZN370', 'Indian/Antananarivo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (371, 'ZN371', 'Indian/Chagos', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (372, 'ZN372', 'Indian/Christmas', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (373, 'ZN373', 'Indian/Cocos', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (374, 'ZN374', 'Indian/Comoro', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (375, 'ZN375', 'Indian/Kerguelen', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (376, 'ZN376', 'Indian/Mahe', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (377, 'ZN377', 'Indian/Maldives', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (378, 'ZN378', 'Indian/Mauritius', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (379, 'ZN379', 'Indian/Mayotte', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (380, 'ZN380', 'Indian/Reunion', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (381, 'ZN381', 'Pacific/Apia', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (382, 'ZN382', 'Pacific/Auckland', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (383, 'ZN383', 'Pacific/Bougainville', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (384, 'ZN384', 'Pacific/Chatham', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (385, 'ZN385', 'Pacific/Chuuk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (386, 'ZN386', 'Pacific/Easter', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (387, 'ZN387', 'Pacific/Efate', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (388, 'ZN388', 'Pacific/Fakaofo', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (389, 'ZN389', 'Pacific/Fiji', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (390, 'ZN390', 'Pacific/Funafuti', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (391, 'ZN391', 'Pacific/Galapagos', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (392, 'ZN392', 'Pacific/Gambier', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (393, 'ZN393', 'Pacific/Guadalcanal', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (394, 'ZN394', 'Pacific/Guam', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (395, 'ZN395', 'Pacific/Honolulu', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (396, 'ZN396', 'Pacific/Kanton', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (397, 'ZN397', 'Pacific/Kiritimati', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (398, 'ZN398', 'Pacific/Kosrae', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (399, 'ZN399', 'Pacific/Kwajalein', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (400, 'ZN400', 'Pacific/Majuro', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (401, 'ZN401', 'Pacific/Marquesas', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (402, 'ZN402', 'Pacific/Midway', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (403, 'ZN403', 'Pacific/Nauru', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (404, 'ZN404', 'Pacific/Niue', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (405, 'ZN405', 'Pacific/Norfolk', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (406, 'ZN406', 'Pacific/Noumea', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (407, 'ZN407', 'Pacific/Pago_Pago', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (408, 'ZN408', 'Pacific/Palau', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (409, 'ZN409', 'Pacific/Pitcairn', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (410, 'ZN410', 'Pacific/Pohnpei', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (411, 'ZN411', 'Pacific/Port_Moresby', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (412, 'ZN412', 'Pacific/Rarotonga', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (413, 'ZN413', 'Pacific/Saipan', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (414, 'ZN414', 'Pacific/Tahiti', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (415, 'ZN415', 'Pacific/Tarawa', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (416, 'ZN416', 'Pacific/Tongatapu', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (417, 'ZN417', 'Pacific/Wake', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (418, 'ZN418', 'Pacific/Wallis', 'zona_waktu', NULL, NULL, NULL);
INSERT INTO `data_statis` VALUES (419, 'BHS001', 'Bahasa Indonesia', 'bahasa', NULL, '2024-03-17 17:01:04', '2024-03-17 17:01:04');
INSERT INTO `data_statis` VALUES (420, 'BHS002', 'Bahasa Inggris', 'bahasa', NULL, '2024-03-17 17:01:18', '2024-03-17 17:01:18');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kapasitas_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tajaran_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wali_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, '7A', 'VII', NULL, NULL, NULL, '2024-03-17 16:55:48', '2024-03-17 16:55:48');
INSERT INTO `kelas` VALUES (2, '7B', 'VII', NULL, NULL, NULL, '2024-03-17 16:56:11', '2024-03-17 16:56:11');
INSERT INTO `kelas` VALUES (3, '7C', 'VII', NULL, NULL, NULL, '2024-03-17 16:56:31', '2024-03-17 16:56:31');
INSERT INTO `kelas` VALUES (4, '7D', 'VII', NULL, NULL, NULL, '2024-03-17 16:56:43', '2024-03-17 16:56:43');
INSERT INTO `kelas` VALUES (5, '7E', 'VII', NULL, NULL, NULL, '2024-03-17 16:56:58', '2024-03-17 16:56:58');
INSERT INTO `kelas` VALUES (6, '8A', 'VIII', NULL, NULL, NULL, '2024-03-17 16:57:20', '2024-03-17 16:57:20');
INSERT INTO `kelas` VALUES (7, '8B', 'VIII', NULL, NULL, NULL, '2024-03-17 16:57:32', '2024-03-17 16:57:32');
INSERT INTO `kelas` VALUES (8, '8C', 'VIII', NULL, NULL, NULL, '2024-03-17 16:57:33', '2024-03-17 16:57:45');
INSERT INTO `kelas` VALUES (9, '8D', 'VIII', NULL, NULL, NULL, '2024-03-17 16:57:57', '2024-03-17 16:57:57');
INSERT INTO `kelas` VALUES (10, '8E', 'VIII', NULL, NULL, NULL, '2024-03-17 16:58:12', '2024-03-17 16:58:12');
INSERT INTO `kelas` VALUES (11, '9A', 'IX', NULL, NULL, NULL, '2024-03-17 16:58:36', '2024-03-17 16:58:36');
INSERT INTO `kelas` VALUES (12, '9B', 'IX', NULL, NULL, NULL, '2024-03-17 16:58:46', '2024-03-17 16:58:46');
INSERT INTO `kelas` VALUES (13, '9C', 'IX', NULL, NULL, NULL, '2024-03-17 16:58:56', '2024-03-17 16:58:56');
INSERT INTO `kelas` VALUES (14, '9D', 'IX', NULL, NULL, NULL, '2024-03-17 16:59:08', '2024-03-17 16:59:08');
INSERT INTO `kelas` VALUES (15, '9E', 'IX', NULL, NULL, NULL, '2024-03-17 16:59:17', '2024-03-17 16:59:17');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `no_menu` int NULL DEFAULT NULL,
  `nama_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_node` tinyint(1) NOT NULL DEFAULT 0,
  `is_children` tinyint(1) NOT NULL DEFAULT 0,
  `children_menu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, NULL, 'Dashboard', '<i class=\"fa-solid fa-house\"></i>', 'dashboard', 0, 1, '[]', '2024-03-17 16:39:13', '2024-03-17 16:39:13');
INSERT INTO `menu` VALUES (2, NULL, 'My Profile', '<i class=\"fa-solid fa-user\"></i>', 'myProfile', 0, 1, '[]', '2024-03-17 16:40:09', '2024-03-17 16:40:09');
INSERT INTO `menu` VALUES (3, NULL, 'Siswa', '<i class=\"fa-solid fa-user-tie\"></i>', 'master/siswa', 0, 1, '[]', '2024-03-17 16:40:54', '2024-03-17 16:40:54');
INSERT INTO `menu` VALUES (4, NULL, 'Data master', '<i class=\"fa-solid fa-folder\"></i>', '#', 1, 0, '[\"5\",\"6\",\"7\"]', '2024-03-17 16:41:20', '2024-03-17 16:42:46');
INSERT INTO `menu` VALUES (5, NULL, 'Data Statis', '<i class=\"fa-regular fa-circle\"></i>', 'master/dataStatis', 0, 1, '[]', '2024-03-17 16:42:05', '2024-03-17 16:42:05');
INSERT INTO `menu` VALUES (6, NULL, 'Kelas', '<i class=\"fa-regular fa-circle\"></i>', 'master/kelas', 0, 1, '[]', '2024-03-17 16:42:24', '2024-03-17 16:42:24');
INSERT INTO `menu` VALUES (7, NULL, 'Menu', '<i class=\"fa-regular fa-circle\"></i>', 'master/menu', 0, 1, '[]', '2024-03-17 16:42:46', '2024-03-17 16:42:46');
INSERT INTO `menu` VALUES (8, NULL, 'Data Setting', '<i class=\"fa-solid fa-gear\"></i>', '#', 1, 0, '[\"9\",\"10\",\"11\",\"12\"]', '2024-03-17 16:43:44', '2024-03-17 16:45:55');
INSERT INTO `menu` VALUES (9, NULL, 'Akses', '<i class=\"fa-regular fa-circle\"></i>', 'setting/permissions', 0, 1, '[]', '2024-03-17 16:44:29', '2024-03-17 16:44:29');
INSERT INTO `menu` VALUES (10, NULL, 'Role', '<i class=\"fa-regular fa-circle\"></i>', 'setting/roles', 0, 1, '[]', '2024-03-17 16:44:59', '2024-03-17 16:44:59');
INSERT INTO `menu` VALUES (11, NULL, 'Konfigurasi', '<i class=\"fa-regular fa-circle\"></i>', 'setting/settings', 0, 1, '[]', '2024-03-17 16:45:25', '2024-03-17 16:45:25');
INSERT INTO `menu` VALUES (12, NULL, 'Users', '<i class=\"fa-regular fa-circle\"></i>', 'setting/users', 0, 1, '[]', '2024-03-17 16:45:55', '2024-03-17 16:45:55');
INSERT INTO `menu` VALUES (13, NULL, 'Logout', '<i class=\"fa-solid fa-right-from-bracket\"></i>', 'logout', 0, 1, '[]', '2024-03-17 21:40:52', '2024-03-17 21:40:52');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_10_04_124424_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (6, '2023_10_08_022007_create_settings_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_10_08_042934_create_data_statis_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_10_08_043531_add_foreign_key_to_settings', 1);
INSERT INTO `migrations` VALUES (9, '2023_10_11_154727_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (10, '2023_10_12_004419_create_menus_table', 1);
INSERT INTO `migrations` VALUES (11, '2023_11_19_221524_add_column_to_settings_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_03_17_072807_create_kelas_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_03_17_072940_create_siswas_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_03_17_154023_create_nilai_siswas_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_03_17_155656_change_column_to_kelas', 1);
INSERT INTO `migrations` VALUES (16, '2024_03_17_155826_change_column_to_siswa', 1);
INSERT INTO `migrations` VALUES (17, '2024_03_17_171359_add_column_to_nilai_siswa', 2);
INSERT INTO `migrations` VALUES (18, '2024_03_17_182325_change_column_to_nilai_siswa', 3);
INSERT INTO `migrations` VALUES (19, '2024_03_17_185215_change_column_to_nilai_siswa', 4);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);

-- ----------------------------
-- Table structure for nilai_siswa
-- ----------------------------
DROP TABLE IF EXISTS `nilai_siswa`;
CREATE TABLE `nilai_siswa`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` int UNSIGNED NOT NULL,
  `judul_nsiswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deskripsi_nsiswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nilai_nsiswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_nsiswa` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nilai_siswa_siswa_id_foreign`(`siswa_id` ASC) USING BTREE,
  CONSTRAINT `nilai_siswa_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nilai_siswa
-- ----------------------------
INSERT INTO `nilai_siswa` VALUES (10, 1, NULL, NULL, 'https://wa.me/6282277506232', NULL, NULL, 1);
INSERT INTO `nilai_siswa` VALUES (11, 2, NULL, NULL, 'https://wa.me/6282277506232', NULL, NULL, 1);
INSERT INTO `nilai_siswa` VALUES (12, 3, NULL, NULL, 'https://wa.me/6282277506232', NULL, NULL, 1);
INSERT INTO `nilai_siswa` VALUES (13, 4, NULL, NULL, 'https://wa.me/6282277506232', NULL, NULL, 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'register', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (2, 'login', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (3, 'password.request', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (4, 'password.email', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (5, 'password.reset', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (6, 'password.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (7, 'verification.notice', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (8, 'verification.verify', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (9, 'verification.send', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (10, 'password.confirm', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (11, 'password.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (12, 'logout', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (13, 'myProfile.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (14, 'myProfile.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (15, 'myProfile.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (16, 'dashboard.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (17, 'dashboard.expired', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (18, 'master.dataStatis.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (19, 'master.dataStatis.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (20, 'master.dataStatis.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (21, 'master.dataStatis.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (22, 'master.dataStatis.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (23, 'master.dataStatis.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (24, 'master.dataStatis.parentStatis', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (25, 'master.dataStatis.migrasi', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (26, 'master.menu.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (27, 'master.menu.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (28, 'master.menu.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (29, 'master.menu.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (30, 'master.menu.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (31, 'master.menu.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (32, 'master.menu.renderTree', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (33, 'master.menu.dataTable', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (34, 'master.menu.sortAndNested', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (35, 'kelas.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (36, 'kelas.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (37, 'kelas.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (38, 'kelas.show', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (39, 'kelas.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (40, 'kelas.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (41, 'kelas.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (42, 'siswa.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (43, 'siswa.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (44, 'siswa.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (45, 'siswa.show', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (46, 'siswa.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (47, 'siswa.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (48, 'siswa.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (49, 'nilaiSiswa.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (50, 'nilaiSiswa.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (51, 'nilaiSiswa.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (52, 'nilaiSiswa.show', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (53, 'nilaiSiswa.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (54, 'nilaiSiswa.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (55, 'nilaiSiswa.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (56, 'setting.settings.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (57, 'setting.settings.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (58, 'setting.settings.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (59, 'setting.settings.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (60, 'setting.settings.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (61, 'setting.settings.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (62, 'setting.settings.checkData', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (63, 'setting.roles.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (64, 'setting.roles.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (65, 'setting.roles.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (66, 'setting.roles.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (67, 'setting.roles.show', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (68, 'setting.roles.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (69, 'setting.roles.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (70, 'setting.permissions.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (71, 'setting.permissions.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (72, 'setting.permissions.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (73, 'setting.permissions.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (74, 'setting.permissions.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (75, 'setting.permissions.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (76, 'setting.assignRoles.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (77, 'setting.assignRoles.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (78, 'setting.assignRoles.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (79, 'setting.assignRoles.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (80, 'setting.assignRoles.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (81, 'setting.assignRoles.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (82, 'setting.users.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (83, 'setting.users.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (84, 'setting.users.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (85, 'setting.users.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (86, 'setting.users.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (87, 'setting.users.destroy', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (88, 'setting.users.getUsersProfile', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (89, 'setting.users.getUsersIdProfile', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (90, 'setting.access.index', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (91, 'setting.access.create', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (92, 'setting.access.store', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (93, 'setting.access.edit', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (94, 'setting.access.update', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (95, 'setting.access.destroy', 'web', NULL, NULL);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int UNSIGNED NOT NULL,
  `nik_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat_profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_profile` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin_profile` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `profile_users_id_foreign`(`users_id` ASC) USING BTREE,
  CONSTRAINT `profile_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (1, 1, '12382993', 'Admin Profile', 'adminprofile@gmail.com', 'alamat admin profile', '082388392821', 'L', 'default.png', '2024-03-17 16:36:18', '2024-03-17 16:36:18');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);
INSERT INTO `role_has_permissions` VALUES (33, 1);
INSERT INTO `role_has_permissions` VALUES (34, 1);
INSERT INTO `role_has_permissions` VALUES (35, 1);
INSERT INTO `role_has_permissions` VALUES (36, 1);
INSERT INTO `role_has_permissions` VALUES (37, 1);
INSERT INTO `role_has_permissions` VALUES (38, 1);
INSERT INTO `role_has_permissions` VALUES (39, 1);
INSERT INTO `role_has_permissions` VALUES (40, 1);
INSERT INTO `role_has_permissions` VALUES (41, 1);
INSERT INTO `role_has_permissions` VALUES (42, 1);
INSERT INTO `role_has_permissions` VALUES (43, 1);
INSERT INTO `role_has_permissions` VALUES (44, 1);
INSERT INTO `role_has_permissions` VALUES (45, 1);
INSERT INTO `role_has_permissions` VALUES (46, 1);
INSERT INTO `role_has_permissions` VALUES (47, 1);
INSERT INTO `role_has_permissions` VALUES (48, 1);
INSERT INTO `role_has_permissions` VALUES (49, 1);
INSERT INTO `role_has_permissions` VALUES (50, 1);
INSERT INTO `role_has_permissions` VALUES (51, 1);
INSERT INTO `role_has_permissions` VALUES (52, 1);
INSERT INTO `role_has_permissions` VALUES (53, 1);
INSERT INTO `role_has_permissions` VALUES (54, 1);
INSERT INTO `role_has_permissions` VALUES (55, 1);
INSERT INTO `role_has_permissions` VALUES (56, 1);
INSERT INTO `role_has_permissions` VALUES (57, 1);
INSERT INTO `role_has_permissions` VALUES (58, 1);
INSERT INTO `role_has_permissions` VALUES (59, 1);
INSERT INTO `role_has_permissions` VALUES (60, 1);
INSERT INTO `role_has_permissions` VALUES (61, 1);
INSERT INTO `role_has_permissions` VALUES (62, 1);
INSERT INTO `role_has_permissions` VALUES (63, 1);
INSERT INTO `role_has_permissions` VALUES (64, 1);
INSERT INTO `role_has_permissions` VALUES (65, 1);
INSERT INTO `role_has_permissions` VALUES (66, 1);
INSERT INTO `role_has_permissions` VALUES (67, 1);
INSERT INTO `role_has_permissions` VALUES (68, 1);
INSERT INTO `role_has_permissions` VALUES (69, 1);
INSERT INTO `role_has_permissions` VALUES (70, 1);
INSERT INTO `role_has_permissions` VALUES (71, 1);
INSERT INTO `role_has_permissions` VALUES (72, 1);
INSERT INTO `role_has_permissions` VALUES (73, 1);
INSERT INTO `role_has_permissions` VALUES (74, 1);
INSERT INTO `role_has_permissions` VALUES (75, 1);
INSERT INTO `role_has_permissions` VALUES (76, 1);
INSERT INTO `role_has_permissions` VALUES (77, 1);
INSERT INTO `role_has_permissions` VALUES (78, 1);
INSERT INTO `role_has_permissions` VALUES (79, 1);
INSERT INTO `role_has_permissions` VALUES (80, 1);
INSERT INTO `role_has_permissions` VALUES (81, 1);
INSERT INTO `role_has_permissions` VALUES (82, 1);
INSERT INTO `role_has_permissions` VALUES (83, 1);
INSERT INTO `role_has_permissions` VALUES (84, 1);
INSERT INTO `role_has_permissions` VALUES (85, 1);
INSERT INTO `role_has_permissions` VALUES (86, 1);
INSERT INTO `role_has_permissions` VALUES (87, 1);
INSERT INTO `role_has_permissions` VALUES (88, 1);
INSERT INTO `role_has_permissions` VALUES (89, 1);
INSERT INTO `role_has_permissions` VALUES (90, 1);
INSERT INTO `role_has_permissions` VALUES (91, 1);
INSERT INTO `role_has_permissions` VALUES (92, 1);
INSERT INTO `role_has_permissions` VALUES (93, 1);
INSERT INTO `role_has_permissions` VALUES (94, 1);
INSERT INTO `role_has_permissions` VALUES (95, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'web', '2024-03-17 16:36:18', '2024-03-17 16:36:18');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `perusahaan_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `nohp_settings` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa_settings` int UNSIGNED NOT NULL,
  `zonawaktu_settings` int UNSIGNED NOT NULL,
  `email_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `linkedin_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `whatsapp_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `youtube_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `longitude_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `setting_acountemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_acountpassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_namapengirim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_contentemail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_penutupemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `settings_bahasa_settings_foreign`(`bahasa_settings` ASC) USING BTREE,
  INDEX `settings_zonawaktu_settings_foreign`(`zonawaktu_settings` ASC) USING BTREE,
  CONSTRAINT `settings_bahasa_settings_foreign` FOREIGN KEY (`bahasa_settings`) REFERENCES `data_statis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `settings_zonawaktu_settings_foreign` FOREIGN KEY (`zonawaktu_settings`) REFERENCES `data_statis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, '1710670052-flag_8907340.png', '1710670052-people_14074451.png', '1710670052-school_2602414.png', 'Sekolah -', 'Alamat -', 'Deskripsi -', '082277506232', 419, 239, 'emailsekolah@gmail.com', '-', '-', '-', '-', '-', '-', '-', '2024-03-17 17:04:08', '2024-03-17 17:07:32', 'sekolahsetting@gmail.com', '-', '-', 'Subject pesan email', '<p>-</p>', 'Penutup pesan email', 'Copyright pesan email');

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `notelpon_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `kontakdarurat_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `namaorangtua_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kelas_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (1, 'Siswa1', '1111111', 'L', NULL, NULL, NULL, NULL, NULL, 1, '2024-03-17 17:08:14', '2024-03-17 17:08:14');
INSERT INTO `siswa` VALUES (2, 'Siswa2', '2222222', 'L', NULL, NULL, NULL, NULL, NULL, 2, '2024-03-17 17:08:35', '2024-03-17 17:08:49');
INSERT INTO `siswa` VALUES (3, 'Siswa3', '3333333', 'L', NULL, NULL, NULL, NULL, NULL, 3, '2024-03-17 17:09:22', '2024-03-17 17:09:22');
INSERT INTO `siswa` VALUES (4, 'Siswa4', '4444444', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-19 07:35:26', '2024-03-19 07:41:47');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2y$10$98obJ2Vqau53Te9H2zrPcus2muLcgLDDeFWOjyhUiXfojCZ9eclSy', 'DO0K3791vV6ESJl3k9efLXFiBeYl4JZvpeHh0fPWfrYOCD3tm3qaa4QVa0ec', '2024-03-17 16:36:18', '2024-03-17 16:36:18');

SET FOREIGN_KEY_CHECKS = 1;
