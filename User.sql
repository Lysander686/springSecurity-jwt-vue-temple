/*

 Date: 06/01/2019 13:43:01
*/

SET NAMES utf8mb4;


-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User`  (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of User
-- ----------------------------
INSERT INTO `User` VALUES (1, 'admin', '$2a$10$rIX9ewyHU2ROytz1ryWEi.YLEtxIhgcQi8WR/7YAcKBl/rZ/4m0jC');
INSERT INTO `User` VALUES (2, '123456', '$2a$10$rIX9ewyHU2ROytz1ryWEi.YLEtxIhgcQi8WR/7YAcKBl/rZ/4m0jC');
INSERT INTO `User` VALUES (221, 'test021', '$2a$10$D6iS9ohqNq338TqMRe8AN.ojrjDHDYIjgLSlUQkfacWrml6VZjuTK');
INSERT INTO `User` VALUES (222, 'test01', '$2a$10$1.4hJD5uefd/u5ARik0xE.pKsgaufAHS4gfLFvMHPkCPMr7hzduFG');



-- ----------------------------
-- Table structure for RoleUser
-- ----------------------------
DROP TABLE IF EXISTS `RoleUser`;
CREATE TABLE `RoleUser`  (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NULL DEFAULT NULL,
  `roleId` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of RoleUser
-- ----------------------------
INSERT INTO `RoleUser` VALUES (1, 1, 1);
INSERT INTO `RoleUser` VALUES (2, 2, 2);


-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE IF EXISTS `Role`;
CREATE TABLE `Role`  (
  `id` bigint(20) NOT NULL,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Role
-- ----------------------------
INSERT INTO `Role` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `Role` VALUES (2, 'ROLE_USER');

-- ----------------------------
-- Table structure for Permission
-- ----------------------------
DROP TABLE IF EXISTS `Permission`;
CREATE TABLE `Permission` (
  `per_id` int(11) NOT NULL,
  `per_parent_id` int(11) DEFAULT NULL,
  `per_name` varchar(100) DEFAULT NULL COMMENT 'Ȩ������',
  `per_resource` varchar(100) DEFAULT NULL COMMENT 'Ȩ����Դ',
  `per_type` varchar(100) DEFAULT NULL COMMENT 'Ȩ������',
  `per_icon` varchar(100) DEFAULT NULL COMMENT 'ͼ��',
  `per_describe` varchar(100) DEFAULT NULL COMMENT 'Ȩ������',
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Permission
-- ----------------------------
INSERT INTO `Permission` VALUES ('1101', '0', 'Ȩ�޹���', 'auth', 'menu', null, 'Ȩ�޹���˵�');
INSERT INTO `Permission` VALUES ('1102', '1101', '��ɫ����', 'role', 'menu', null, '��ɫ����˵�');
INSERT INTO `Permission` VALUES ('1103', '1101', '��Դ����', 'per', 'menu', null, '��Դ����˵�');


-- ----------------------------
-- Table structure for RolePermission
-- ----------------------------
DROP TABLE IF EXISTS `RolePermission`;
CREATE TABLE `RolePermission` (
  `rp_id` int(11) NOT NULL,
  `rp_role_id` int(11) DEFAULT NULL COMMENT '��ɫid',
  `rp_per_id` int(11) DEFAULT NULL COMMENT 'Ȩ��id',
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of RolePermission
-- ----------------------------
INSERT INTO `RolePermission` VALUES ('111', '1', '1101');
INSERT INTO `RolePermission` VALUES ('112', '1', '1102');
INSERT INTO `RolePermission` VALUES ('113', '1', '1103');


