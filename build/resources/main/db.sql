CREATE SCHEMA `testhibernate` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `testhibernate`.`author`
(
    `id`   INT          NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(300) NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8
    COLLATE = utf8_bin;
INSERT INTO `testhibernate`.`author` (`id`, `name`) VALUES ('1', 'Лермонтов');
INSERT INTO `testhibernate`.`author` (`id`, `name`) VALUES ('2', 'Пушкин');
INSERT INTO `testhibernate`.`author` (`id`, `name`) VALUES ('3', 'Некрасов');
INSERT INTO `testhibernate`.`author` (`id`, `name`) VALUES ('4', 'Шолохов');
INSERT INTO `testhibernate`.`author` (`id`, `name`) VALUES ('5', 'Акунин');
