CREATE DATABASE qbo_jkyypt_v1 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
Use qbo_jkyypt_v1;
/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : qbo_jkyypt_v1

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/08/2019 14:45:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_element
-- ----------------------------
DROP TABLE IF EXISTS `base_element`;
CREATE TABLE `base_element`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编码',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源关联菜单',
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源树状检索路径',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源请求类型',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_element
-- ----------------------------
INSERT INTO `base_element` VALUES (3, 'userManager:btn_add', 'button', '新增', '/admin/user', '1', NULL, NULL, 'POST', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (4, 'userManager:btn_edit', 'button', '编辑', '/admin/user/{*}', '1', NULL, NULL, 'PUT', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (5, 'userManager:btn_del', 'button', '删除', '/admin/user/{*}', '1', NULL, NULL, 'DELETE', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (9, 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', NULL, NULL, 'GET', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (10, 'menuManager:btn_add', 'button', '新增', '/admin/menu/{*}', '6', NULL, NULL, 'POST', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (11, 'menuManager:btn_edit', 'button', '编辑', '/admin/menu/{*}', '6', '', '', 'PUT', '', '2017-06-24 00:00:00', '', '', '');
INSERT INTO `base_element` VALUES (12, 'menuManager:btn_del', 'button', '删除', '/admin/menu/{*}', '6', '', '', 'DELETE', '', '2017-06-24 00:00:00', '', '', '');
INSERT INTO `base_element` VALUES (13, 'menuManager:btn_element_add', 'button', '新增元素', '/admin/element', '6', NULL, NULL, 'POST', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (14, 'menuManager:btn_element_edit', 'button', '编辑元素', '/admin/element/{*}', '6', NULL, NULL, 'PUT', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (15, 'menuManager:btn_element_del', 'button', '删除元素', '/admin/element/{*}', '6', NULL, NULL, 'DELETE', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (16, 'groupManager:btn_add', 'button', '新增', '/admin/group', '7', NULL, NULL, 'POST', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (17, 'groupManager:btn_edit', 'button', '编辑', '/admin/group/{*}', '7', NULL, NULL, 'PUT', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (18, 'groupManager:btn_del', 'button', '删除', '/admin/group/{*}', '7', NULL, NULL, 'DELETE', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (19, 'groupManager:btn_userManager', 'button', '分配用户', '/admin/group/{*}/user', '7', NULL, NULL, 'PUT', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (20, 'groupManager:btn_resourceManager', 'button', '分配权限', '/admin/group/{*}/authority', '7', NULL, NULL, 'GET', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (21, 'groupManager:menu', 'uri', '分配菜单', '/admin/group/{*}/authority/menu', '7', NULL, NULL, 'POST', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (22, 'groupManager:element', 'uri', '分配资源', '/admin/group/{*}/authority/element', '7', NULL, NULL, 'POST', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (23, 'userManager:view', 'uri', '查看', '/admin/user/{*}', '1', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '');
INSERT INTO `base_element` VALUES (24, 'menuManager:view', 'uri', '查看', '/admin/menu/{*}', '6', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '');
INSERT INTO `base_element` VALUES (27, 'menuManager:element_view', 'uri', '查看', '/admin/element/{*}', '6', NULL, NULL, 'GET', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (28, 'groupManager:view', 'uri', '查看', '/admin/group/{*}', '7', NULL, NULL, 'GET', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (32, 'groupTypeManager:view', 'uri', '查看', '/admin/groupType/{*}', '8', NULL, NULL, 'GET', '', NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (33, 'groupTypeManager:btn_add', 'button', '新增', '/admin/groupType', '8', NULL, NULL, 'POST', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (34, 'groupTypeManager:btn_edit', 'button', '编辑', '/admin/groupType/{*}', '8', NULL, NULL, 'PUT', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (35, 'groupTypeManager:btn_del', 'button', '删除', '/admin/groupType/{*}', '8', NULL, NULL, 'DELETE', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (41, 'gateLogManager:view', 'button', '查看', '/admin/gateLog', '27', NULL, NULL, 'GET', '', '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `base_element` VALUES (42, 'serviceManager:view', 'URI', '查看', '/auth/service/{*}', '30', NULL, NULL, 'GET', NULL, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_element` VALUES (43, 'serviceManager:btn_add', 'button', '新增', '/auth/service', '30', NULL, NULL, 'POST', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (44, 'serviceManager:btn_edit', 'button', '编辑', '/auth/service/{*}', '30', NULL, NULL, 'PUT', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (45, 'serviceManager:btn_del', 'button', '删除', '/auth/service/{*}', '30', NULL, NULL, 'DELETE', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_element` VALUES (46, 'serviceManager:btn_clientManager', 'button', '服务授权', '/auth/service/{*}/client', '30', NULL, NULL, 'POST', NULL, '2017-12-30 16:32:48', '1', 'Mr.AG', '127.0.0.1');

-- ----------------------------
-- Table structure for base_group
-- ----------------------------
DROP TABLE IF EXISTS `base_group`;
CREATE TABLE `base_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `parent_id` bigint(20) NOT NULL COMMENT '上级节点',
  `path` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '树状关系',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `group_type` int(11) NOT NULL COMMENT '角色组类型',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_time` datetime(0) NULL DEFAULT NULL,
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_group
-- ----------------------------
INSERT INTO `base_group` VALUES (1, 'adminRole', '管理员', -1, '/adminRole', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group` VALUES (2, 'testGroup', '体验组', -1, '/testGroup', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group` VALUES (3, 'visitorRole', '游客', 3, '/testGroup/visitorRole', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group` VALUES (4, 'company', 'QBO集团', -1, '/company', NULL, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group` VALUES (5, 'financeDepart', '财务部', 6, '/company/financeDepart', NULL, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group` VALUES (6, 'hrDepart', '人力资源部', 6, '/company/hrDepart', NULL, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group` VALUES (7, 'teachers', '教师', -1, '/teachers', NULL, 1, '教师角色', '2019-08-01 14:31:18', '1', 'admin', '192.168.21.15', '2019-08-01 14:31:18', '1', 'admin', '192.168.21.15');

-- ----------------------------
-- Table structure for base_group_leader
-- ----------------------------
DROP TABLE IF EXISTS `base_group_leader`;
CREATE TABLE `base_group_leader`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_time` datetime(0) NULL DEFAULT NULL,
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_group_leader
-- ----------------------------
INSERT INTO `base_group_leader` VALUES (1, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_group_member
-- ----------------------------
DROP TABLE IF EXISTS `base_group_member`;
CREATE TABLE `base_group_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_time` datetime(0) NULL DEFAULT NULL,
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_group_member
-- ----------------------------
INSERT INTO `base_group_member` VALUES (1, '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group_member` VALUES (2, '9', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_group_member` VALUES (3, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_group_type
-- ----------------------------
DROP TABLE IF EXISTS `base_group_type`;
CREATE TABLE `base_group_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `crt_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建主机',
  `upd_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人',
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新主机',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_group_type
-- ----------------------------
INSERT INTO `base_group_type` VALUES (1, 'role', '角色类型', 'role', NULL, NULL, NULL, NULL, '2019-07-25 11:54:53', '1', 'admin', '192.168.21.15');
INSERT INTO `base_group_type` VALUES (2, 'depart', '部门类型', 'depart', NULL, NULL, NULL, NULL, '2019-07-25 11:55:04', '1', 'admin', '192.168.21.15');
INSERT INTO `base_group_type` VALUES (3, 'free', '自定义类型', 'free', NULL, NULL, NULL, NULL, '2019-07-25 11:55:15', '1', 'admin', '192.168.21.15');

-- ----------------------------
-- Table structure for base_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径编码',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `parent_id` int(11) NOT NULL COMMENT '父级节点',
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单上下级关系',
  `enabled` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '启用禁用',
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_time` datetime(0) NULL DEFAULT NULL,
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_menu
-- ----------------------------
INSERT INTO `base_menu` VALUES (1, 'userManager', '用户管理', 5, '/admin/user', 'fa-user', 'menu', 0, '', '/adminSys/baseManager/userManager', NULL, NULL, NULL, NULL, NULL, '2017-09-05 21:06:51', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_menu` VALUES (5, 'baseManager', '基础配置管理', 13, '/admin', 'setting', 'dirt', 0, '', '/adminSys/baseManager', NULL, NULL, NULL, NULL, NULL, '2017-09-05 21:46:11', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_menu` VALUES (6, 'menuManager', '菜单管理', 5, '/admin/menu', 'category', 'menu', 0, '', '/adminSys/baseManager/menuManager', NULL, NULL, NULL, NULL, NULL, '2017-09-05 21:10:25', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_menu` VALUES (7, 'groupManager', '权限管理', 5, '/admin/group', 'group_fill', 'menu', 0, '', '/adminSys/baseManager/groupManager', NULL, NULL, NULL, NULL, NULL, '2019-07-26 14:26:51', '1', 'admin', '192.168.21.15');
INSERT INTO `base_menu` VALUES (8, 'groupTypeManager', '角色管理', 5, '/admin/groupType', 'fa-users', 'menu', 0, '', '/adminSys/baseManager/groupTypeManager', NULL, NULL, NULL, NULL, NULL, '2019-07-26 14:27:41', '1', 'admin', '192.168.21.15');
INSERT INTO `base_menu` VALUES (13, 'adminSys', '权限管理系统', -1, '/base', 'setting', 'dirt', 0, '', '/adminSys', NULL, NULL, NULL, NULL, NULL, '2017-09-28 12:09:22', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_menu` VALUES (27, 'gateLogManager', '操作日志', 5, '/admin/gateLog', 'viewlist', 'menu', 0, '', '/adminSys/baseManager/gateLogManager', NULL, '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', '2017-09-05 22:32:55', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_menu` VALUES (29, 'authManager', '服务权限管理', 13, '/auth', 'service', 'dirt', 0, '服务权限管理', '/adminSys/authManager', NULL, '2017-12-26 19:54:45', '1', 'Mr.AG', '127.0.0.1', '2019-01-27 12:42:09', '1', 'admin', '127.0.0.1');
INSERT INTO `base_menu` VALUES (30, 'serviceManager', '服务管理', 29, '/auth/service', 'client', NULL, 0, '服务管理', '/adminSys/authManager/serviceManager', NULL, '2017-12-26 19:56:06', '1', 'Mr.AG', '127.0.0.1', '2017-12-26 19:56:06', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `base_menu` VALUES (31, 'monitorManager', '监控模块管理', 13, '/service', 'service', 'dirt', 0, NULL, '/adminSys/monitorManager', NULL, '2018-02-25 09:36:35', '1', 'Mr.AG', '127.0.0.1', '2019-01-27 12:42:13', '1', 'admin', '127.0.0.1');
INSERT INTO `base_menu` VALUES (32, 'serviceEurekaManager', '服务注册中心', 31, 'http://localhost:8848/nacos', 'client', 'menu', 0, NULL, '/adminSys/monitorManager/serviceEurekaManager', NULL, '2018-02-25 09:37:04', '1', 'Mr.AG', '127.0.0.1', '2019-01-27 12:14:35', '1', 'admin', '127.0.0.1');
INSERT INTO `base_menu` VALUES (33, 'serviceMonitorManager', '服务状态监控', 31, '', 'client', 'menu', 0, NULL, '/adminSys/monitorManager/serviceEurekaManager', NULL, '2018-02-25 09:37:05', '1', 'Mr.AG', '127.0.0.1', '2019-01-27 12:07:14', '1', 'admin', '127.0.0.1');
INSERT INTO `base_menu` VALUES (34, 'serviceZipkinManager', '服务链路监控', 31, '', 'client', 'menu', 0, NULL, '/adminSys/monitorManager/serviceZipkinManager', NULL, '2018-02-25 09:38:05', '1', 'Mr.AG', '127.0.0.1', '2019-01-27 13:13:33', '1', 'admin', '127.0.0.1');

-- ----------------------------
-- Table structure for base_resource_authority
-- ----------------------------
DROP TABLE IF EXISTS `base_resource_authority`;
CREATE TABLE `base_resource_authority`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authority_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色ID',
  `authority_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色类型',
  `resource_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源ID',
  `resource_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_resource_authority
-- ----------------------------
INSERT INTO `base_resource_authority` VALUES (1, '1', 'group', '5', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (2, '1', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (3, '1', 'group', '10', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (4, '1', 'group', '11', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (5, '1', 'group', '12', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (6, '1', 'group', '5', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (7, '1', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (8, '1', 'group', '10', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (9, '1', 'group', '11', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (10, '1', 'group', '12', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (11, '1', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (12, '1', 'group', '12', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (13, '1', 'group', '10', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (14, '1', 'group', '11', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (15, '1', 'group', '13', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (16, '1', 'group', '14', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (17, '1', 'group', '15', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (18, '1', 'group', '10', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (19, '1', 'group', '11', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (20, '1', 'group', '12', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (21, '1', 'group', '13', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (22, '1', 'group', '14', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (23, '1', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (24, '1', 'group', '15', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (25, '1', 'group', '16', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (26, '1', 'group', '17', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (27, '1', 'group', '18', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (28, '1', 'group', '20', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (29, '1', 'group', '21', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (30, '1', 'group', '22', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (31, '4', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (32, '1', 'group', '23', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (33, '1', 'group', '24', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (34, '1', 'group', '27', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (35, '1', 'group', '28', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (36, '1', 'group', '23', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (37, '1', 'group', '5', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (38, '1', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (39, '1', 'group', '11', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (40, '1', 'group', '14', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (41, '1', 'group', '13', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (42, '1', 'group', '15', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (43, '1', 'group', '12', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (44, '1', 'group', '24', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (45, '1', 'group', '10', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (46, '1', 'group', '27', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (47, '1', 'group', '16', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (48, '1', 'group', '18', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (49, '1', 'group', '17', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (50, '1', 'group', '20', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (51, '1', 'group', '28', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (52, '1', 'group', '22', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (53, '1', 'group', '21', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (54, '4', 'group', '23', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (55, '4', 'group', '9', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (56, '4', 'group', '27', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (57, '4', 'group', '24', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (58, '4', 'group', '28', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (59, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (60, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (61, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (62, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (63, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (64, '4', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (65, '4', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (66, '1', 'group', '32', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (67, '1', 'group', '33', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (68, '1', 'group', '34', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (69, '1', 'group', '35', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (70, '4', 'group', '32', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (71, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (72, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (73, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (74, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (75, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (76, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (77, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (78, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (79, '1', 'group', '40', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (80, '1', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (81, '1', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (82, '1', 'group', '40', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (83, '4', 'group', '41', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (84, '4', 'group', '30', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (85, '4', 'group', '31', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (86, '4', 'group', '40', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (87, '4', 'group', '42', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (88, '4', 'group', '36', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (89, '4', 'group', '13', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (90, '4', 'group', '5', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (91, '4', 'group', '1', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (92, '4', 'group', '6', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (93, '4', 'group', '7', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (94, '4', 'group', '8', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (95, '4', 'group', '27', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (96, '4', 'group', '9', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (97, '4', 'group', '24', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (98, '4', 'group', '22', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (99, '4', 'group', '23', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (100, '4', 'group', '25', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (101, '4', 'group', '26', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (102, '4', 'group', '28', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (103, '1', 'group', '41', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (104, '1', 'group', '43', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (105, '1', 'group', '44', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (106, '9', 'group', '42', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (107, '9', 'group', '43', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (108, '9', 'group', '44', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (109, '9', 'group', '45', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (110, '9', 'group', '42', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (111, '9', 'group', '44', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (112, '9', 'group', '45', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (113, '9', 'group', '43', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (114, '1', 'group', '41', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (115, '10', 'group', '13', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (116, '10', 'group', '14', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (117, '10', 'group', '-1', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (118, '10', 'group', '5', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (119, '10', 'group', '6', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (120, '10', 'group', '17', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (121, '10', 'group', '20', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (122, '1', 'group', '3', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (123, '1', 'group', '4', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (124, '1', 'group', '19', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (125, '1', 'group', '42', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (126, '1', 'group', '45', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (127, '1', 'group', '46', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (128, '1', 'group', '33', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (129, '1', 'group', '34', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (130, '1', 'group', '13', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (131, '1', 'group', '-1', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (132, '1', 'group', '27', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (133, '1', 'group', '29', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (134, '1', 'group', '1', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (135, '1', 'group', '5', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (136, '1', 'group', '6', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (137, '1', 'group', '7', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (138, '1', 'group', '8', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (139, '1', 'group', '30', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (140, '1', 'group', '31', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (141, '1', 'group', '32', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (142, '9', 'group', '23', 'button', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (143, '9', 'group', '1', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (144, '9', 'group', '13', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (145, '9', 'group', '-1', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_resource_authority` VALUES (146, '9', 'group', '5', 'menu', '-1', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_time` datetime(0) NULL DEFAULT NULL,
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_time` datetime(0) NULL DEFAULT NULL,
  `upd_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `upd_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES (1, 'admin', '$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie', 'Mr.QBO', '', NULL, '', '', '男', NULL, NULL, '超级管理员', NULL, NULL, NULL, NULL, '2019-07-25 11:52:06', '1', 'admin', '192.168.21.15');

-- ----------------------------
-- Table structure for gate_log
-- ----------------------------
DROP TABLE IF EXISTS `gate_log`;
CREATE TABLE `gate_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单',
  `opt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  `crt_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `crt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人ID',
  `crt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `crt_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作主机',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gate_log
-- ----------------------------
INSERT INTO `gate_log` VALUES (1, '权限管理', '新增', '/admin/group', '2019-08-01 14:31:18', '1', 'QBO', '/127.0.0.1:60971', 'null');

-- ----------------------------
-- Table structure for worker_node
-- ----------------------------
DROP TABLE IF EXISTS `worker_node`;
CREATE TABLE `worker_node`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'auto increment id',
  `HOST_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'host name',
  `PORT` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'port',
  `TYPE` int(11) NOT NULL COMMENT 'node type: CONTAINER(1), ACTUAL(2), FAKE(3)',
  `LAUNCH_DATE` date NOT NULL COMMENT 'launch date',
  `MODIFIED` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'modified time',
  `CREATED` timestamp(0) NOT NULL COMMENT 'created time',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'DB WorkerID Assigner for UID Generator' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worker_node
-- ----------------------------
INSERT INTO `worker_node` VALUES (1, '192.168.21.15', '1564555602996-91424', 2, '2019-07-31', '2019-07-31 14:46:43', '2019-07-31 14:46:43');
INSERT INTO `worker_node` VALUES (2, '192.168.21.15', '1564555603093-37834', 2, '2019-07-31', '2019-07-31 14:46:43', '2019-07-31 14:46:43');
INSERT INTO `worker_node` VALUES (3, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564559793019-49407', 2, '2019-07-31', '2019-07-31 15:56:33', '2019-07-31 15:56:33');
INSERT INTO `worker_node` VALUES (4, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564559793112-64190', 2, '2019-07-31', '2019-07-31 15:56:33', '2019-07-31 15:56:33');
INSERT INTO `worker_node` VALUES (5, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564560297323-345', 2, '2019-07-31', '2019-07-31 16:04:57', '2019-07-31 16:04:57');
INSERT INTO `worker_node` VALUES (6, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564560297425-73017', 2, '2019-07-31', '2019-07-31 16:04:57', '2019-07-31 16:04:57');
INSERT INTO `worker_node` VALUES (7, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564563292036-70961', 2, '2019-07-31', '2019-07-31 16:54:52', '2019-07-31 16:54:52');
INSERT INTO `worker_node` VALUES (8, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564563292134-70775', 2, '2019-07-31', '2019-07-31 16:54:52', '2019-07-31 16:54:52');
INSERT INTO `worker_node` VALUES (9, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564630440415-52912', 2, '2019-08-01', '2019-08-01 11:34:00', '2019-08-01 11:34:00');
INSERT INTO `worker_node` VALUES (10, '2001:0:348b:fb58:453:f0b4:6285:481d', '1564630440512-21247', 2, '2019-08-01', '2019-08-01 11:34:00', '2019-08-01 11:34:00');
INSERT INTO `worker_node` VALUES (11, '2001:0:348b:fb58:346c:2d63:6285:481d', '1564640053370-33586', 2, '2019-08-01', '2019-08-01 14:14:13', '2019-08-01 14:14:13');
INSERT INTO `worker_node` VALUES (12, '2001:0:348b:fb58:346c:2d63:6285:481d', '1564640053468-85639', 2, '2019-08-01', '2019-08-01 14:14:13', '2019-08-01 14:14:13');
INSERT INTO `worker_node` VALUES (13, '2001:0:348b:fb58:346c:2d63:6285:481d', '1564640818419-4887', 2, '2019-08-01', '2019-08-01 14:26:58', '2019-08-01 14:26:58');
INSERT INTO `worker_node` VALUES (14, '2001:0:348b:fb58:346c:2d63:6285:481d', '1564640818515-40217', 2, '2019-08-01', '2019-08-01 14:26:58', '2019-08-01 14:26:58');

SET FOREIGN_KEY_CHECKS = 1;
