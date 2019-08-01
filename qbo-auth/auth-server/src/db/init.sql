
CREATE DATABASE qbo_auth_v1 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
Use qbo_auth_v1;
/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : qbo_auth_v1

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/08/2019 14:16:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_client
-- ----------------------------
DROP TABLE IF EXISTS `auth_client`;
CREATE TABLE `auth_client`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务编码',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务密钥',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务名',
  `locked` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否锁定',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `crt_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人姓名',
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建主机',
  `upd_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新姓名',
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新主机',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_client
-- ----------------------------
INSERT INTO `auth_client` VALUES (1, 'qbo-gateway', '123456', 'qbo-gateway', '0', '网关服务', '2019-07-26 14:45:37', '1', 'admin', '192.168.21.15', '2019-08-01 11:48:48', '1', 'admin', '192.168.21.15');
INSERT INTO `auth_client` VALUES (2, 'qbo-admin', '123456', 'qbo-admin', '0', '后台管理', '2019-07-26 14:45:37', '1', 'admin', '192.168.21.15', '2019-08-01 11:48:55', '1', 'admin', '192.168.21.15');
INSERT INTO `auth_client` VALUES (3, 'qbo-auth', '123456', 'qbo-auth', '0', '认证服务', '2019-07-26 14:45:37', '1', 'admin', '192.168.21.15', '2019-08-01 11:48:59', '1', 'admin', '192.168.21.15');
INSERT INTO `auth_client` VALUES (4, 'qbo-monitor', '123456', 'qbo-monitor', '0', '监控服务', '2019-07-26 14:45:37', '1', 'admin', '192.168.21.15', '2019-08-01 11:49:01', '1', 'admin', '192.168.21.15');

-- ----------------------------
-- Table structure for auth_client_service
-- ----------------------------
DROP TABLE IF EXISTS `auth_client_service`;
CREATE TABLE `auth_client_service`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_client_service
-- ----------------------------
INSERT INTO `auth_client_service` VALUES (2, '2', '3', NULL, '2019-08-01 11:49:36', '1', 'admin', '192.168.21.15');
INSERT INTO `auth_client_service` VALUES (4, '2', '1', NULL, '2019-08-01 11:49:36', '1', 'admin', '192.168.21.15');
INSERT INTO `auth_client_service` VALUES (5, '3', '1', NULL, '2019-08-01 11:49:36', '1', 'admin', '192.168.21.15');
INSERT INTO `auth_client_service` VALUES (6, '4', '1', NULL, '2019-08-01 11:49:36', '1', 'admin', '192.168.21.15');

SET FOREIGN_KEY_CHECKS = 1;
