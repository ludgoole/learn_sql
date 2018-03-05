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
-- update table
-- ----------------------------
UPDATE `user` SET name ='q1u48dhew87hjfc9ee' WHERE userId = 234;

UPDATE `rooms` SET gem ='80' WHERE roomId = 123456;

-- ----------------------------
-- select vaule
-- ----------------------------
SELECT DSTINCT name FROM `user`; --去重
SELECT * FROM `user` WHERE userId = 234 AND userId >= 123 ORDER BY name DESC; --降序(默认增序)
SELECT * FROM `user` WHERE LIKE '_4'; --含4

