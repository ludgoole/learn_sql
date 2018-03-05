-- ----------------------------
-- create table
-- ----------------------------
CREATE TABLE `users` (
    `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID'，
    `name` varchar(32) NOT NULL COMMENT '用户昵称',
    PRIMARY KEY (`userId`)
)

CREATE TABLE `rooms` (
    `roomId` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间ID'，
    `gem` int(11) NOT NULL COMMENT '钻石',
    PRIMARY KEY (`userId`)
)

-- ----------------------------
-- insert value
-- ----------------------------
INSERT INTO `users` VALUES (234, '5aSP5L6v6LWM5Zyj');
INSERT INTO `users` VALUES (456, '1w3ju3j7juc8vk9v');

INSERT INTO `rooms` VALUES (123456, 40);
INSERT INTO `rooms` VALUES (223487, 22); 

-- ----------------------------
-- select value
-- ----------------------------
SELECT userId name FROM `users`; --多选
SELECT * FROM `users` WHERE userId = 234 ORDER BY name ; --默认增序
SELECT * FROM `users` WHERE LIKE '_4'; --包含4

SELECT DSTINCT gem FROM `rooms`; --去重
SELECT * FROM `rooms` WHERE gem > 40 AND gem < 100 ORDER BY name DESC; --降序
SELECT * FROM `rooms` WHERE LIKE '4%'; --4开头

-- ----------------------------
-- update value
-- ----------------------------
UPDATE `users` SET name ='q1u48dhew87hjfc9ee' WHERE userId = 234;

UPDATE `rooms` SET gem ='80' WHERE roomId = 123456;

-- ----------------------------
-- delete value
-- ----------------------------
DELETE FROM `users` WHERE userId = 234;

DELETE FROM `rooms` WHERE roomId = 123456;
