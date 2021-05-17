-- CREATE DATABASE me;
CREATE TABLE `me`.`accounts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `account_name` VARCHAR(45) NULL,
  `passwd` VARCHAR(45) NULL,
  `url` VARCHAR(100) NULL,
  `notes` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE);

-- 加密 插入
USE me;
INSERT INTO me.accounts 
(`ID`,`account_name`,`passwd`,`url`,`Notes`)
VALUES 
(NULL,'',HEX(AES_ENCRYPT('','')),'','');

-- 加密 修改密码
USE me;
UPDATE `accounts` 
SET 
`passwd` = HEX(AES_ENCRYPT('',''))
WHERE `accounts`.`ID` = 4;

-- 解密
USE me;
SELECT AES_DECRYPT(UNHEX(passwd),'') 
AS 'MIMA'
FROM `me`.`accounts`
WHERE `ID`=19;

-- 修改
USE me;
UPDATE `accounts`
SET
`url` = ''
WHERE
  ;

USE me;
SELECT * 
FROM accounts;

DESCRIBE me.accounts;
