/*
 Navicat Premium Data Transfer

 Source Server         : adweb_project
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : ts

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 17/04/2022 20:22:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student_homework
-- ----------------------------
DROP TABLE IF EXISTS `student_homework`;
CREATE TABLE `student_homework`  (
  `number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `link` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` double NOT NULL,
  PRIMARY KEY (`number`, `course_id`, `homework_id`) USING BTREE,
  INDEX `course_id2`(`course_id`) USING BTREE,
  INDEX `homework_id2`(`homework_id`) USING BTREE,
  CONSTRAINT `course_id2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `homework_id2` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`homework_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `number_2` FOREIGN KEY (`number`) REFERENCES `student` (`number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_homework
-- ----------------------------
INSERT INTO `student_homework` VALUES ('MF21320000', 1, 1, 'D:\\nju\\敏捷软件开发\\Teaching-Square\\backside\\src\\main\\resources\\student_homework\\MF21320000_1_1_人机交互课程报告提纲.docx', 0);

SET FOREIGN_KEY_CHECKS = 1;
