<% if p("mariadb.cce_enable") %>
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'         IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.datasource.password") %>') WITH GRANT OPTION;
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.datasource.password") %>') WITH GRANT OPTION;
	ALTER USER 'root'@'localhost' 			  IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.datasource.password") %>');
	ALTER USER 'mariadb.sys'@'localhost'              IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.datasource.password") %>');
	ALTER USER 'vcap'@'localhost'                     IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.datasource.password") %>');
<% else %>
	ALTER USER 'root'@'localhost' IDENTIFIED BY '<%= p("mariadb.datasource.password") %>';
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '<%= p("mariadb.datasource.password") %>' WITH GRANT OPTION;
<% end %>

FLUSH PRIVILEGES;

DROP USER IF EXISTS '<%= p("spring.datasource.username") %>';


CREATE DATABASE IF NOT EXISTS <%= p("spring.datasource.databasename")%> CHARACTER SET utf8 COLLATE utf8_general_ci;
use <%= p("spring.datasource.databasename") %>;
<% if p("mariadb.cce_enable") %>

	CREATE USER '<%= p("spring.datasource.username") %>'@'%' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("spring.datasource.password") %>');
	GRANT ALL PRIVILEGES ON *.* TO '<%= p("spring.datasource.username") %>'@'%' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("spring.datasource.password") %>') WITH GRANT OPTION;
<% else %>
	CREATE USER '<%= p("spring.datasource.username") %>'@'%' IDENTIFIED BY '<%= p("spring.datasource.password") %>';
	GRANT ALL PRIVILEGES ON  <%= p("spring.datasource.databasename") %>.* TO  '<%= p("spring.datasource.username") %>'@'%' IDENTIFIED BY  '<%= p("spring.datasource.password") %>' WITH GRANT OPTION;
<% end %>
FLUSH PRIVILEGES;

/*
Navicat MariaDB Data Transfer
Source Database       : PAASTA_SRC_DB
Target Server Type    : MariaDB
Target Server Version : 100122
Date: 2017-11-08 20:32:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for REPO_PERMITION
-- ----------------------------
DROP TABLE IF EXISTS `REPO_PERMITION`;
CREATE TABLE `REPO_PERMITION` (
    `NO` int(11) NOT NULL AUTO_INCREMENT,
    `REPO_NO` int(11) NOT NULL,
    `USER_ID` varchar(128) NOT NULL,
    `PERMISSION` varchar(128) NOT NULL,
    PRIMARY KEY (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=914 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for SC_INSTANCE_USER
-- ----------------------------
DROP TABLE IF EXISTS `SC_INSTANCE_USER`;
CREATE TABLE `SC_INSTANCE_USER` (
    `NO` int(11) NOT NULL AUTO_INCREMENT,
    `INSTANCE_ID` varchar(255) NOT NULL,
    `USER_ID` varchar(128) NOT NULL,
    `REPO_ROLE` varchar(128) DEFAULT NULL,
    `CREATER_YN` varchar(2) NOT NULL,
    `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for SC_REPOSITORY
-- ----------------------------
DROP TABLE IF EXISTS `SC_REPOSITORY`;
CREATE TABLE `SC_REPOSITORY` (
    `REPO_NO` int(11) NOT NULL AUTO_INCREMENT,
    `REPO_SCM_ID` varchar(128) NOT NULL,
    `REPO_NAME` varchar(255) NOT NULL,
    `REPO_DESC` varchar(255) DEFAULT NULL,
    `INSTANCE_ID` varchar(255) NOT NULL,
    `OWNER_USER_ID` varchar(128) NOT NULL,
    `CREATE_USER_ID` varchar(128) NOT NULL,
    `CREATED_TIME` varchar(12) NOT NULL,
    PRIMARY KEY (`REPO_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for SC_USER
-- ----------------------------
DROP TABLE IF EXISTS `SC_USER`;
CREATE TABLE `SC_USER` (
    `USER_ID` varchar(255) NOT NULL,
    `USER_DESC` varchar(255) DEFAULT NULL,
    `USER_MAIL` varchar(255) DEFAULT NULL,
    `USER_NAME` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for SERVICE_INSTANCE
-- ----------------------------
DROP TABLE IF EXISTS `SERVICE_INSTANCE`;
CREATE TABLE `SERVICE_INSTANCE` (
    `INSTANCE_ID` varchar(255) NOT NULL COMMENT '서비스 인스턴스 아이디',
    `ORGANIZATION_GUID` varchar(255) NOT NULL COMMENT '조직 아이디',
    `ORGANIZATION_NAME` varchar(128) DEFAULT NULL COMMENT '조직 명',
    `PLAN_ID` varchar(255) NOT NULL COMMENT '플랜 아이디',
    `SERVICE_ID` varchar(255) NOT NULL COMMENT '서비스 아이디',
    `SPACE_GUID` varchar(255) NOT NULL COMMENT '공간 아이디',
    `CREATE_USER_ID` varchar(128) DEFAULT NULL COMMENT '등록자 아이디',
    `CREATED_TIME` varchar(12) NOT NULL COMMENT '등록일',
    PRIMARY KEY (`INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='형상관리 서비스 인스턴스 관리';
SET FOREIGN_KEY_CHECKS=1;
