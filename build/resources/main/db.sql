CREATE SCHEMA `testhibernate` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `testhibernate`.`author`
(
    `id`   BIGINT(20)   NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(300) NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8
    COLLATE = utf8_bin;
INSERT INTO `testhibernate`.`author` (`id`, `name`)
VALUES ('1', 'Лермонтов');
INSERT INTO `testhibernate`.`author` (`id`, `name`)
VALUES ('2', 'Пушкин');
INSERT INTO `testhibernate`.`author` (`id`, `name`)
VALUES ('3', 'Некрасов');
INSERT INTO `testhibernate`.`author` (`id`, `name`)
VALUES ('4', 'Шолохов');
INSERT INTO `testhibernate`.`author` (`id`, `name`)
VALUES ('5', 'Акунин');

CREATE TABLE `testhibernate`.`book`
(
    `id`        BIGINT(20)   NOT NULL AUTO_INCREMENT,
    `name`      VARCHAR(300) NOT NULL,
    `author_id` BIGINT(20)   NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_author_idx` (`author_id` ASC) VISIBLE,
    CONSTRAINT `fk_author`
        FOREIGN KEY (`author_id`)
            REFERENCES `testhibernate`.`author` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8
    COLLATE = utf8_bin;

INSERT INTO `testhibernate`.`book` (`id`, `name`, `author_id`)
VALUES ('1', 'Бородино', '1');
INSERT INTO `testhibernate`.`book` (`id`, `name`, `author_id`)
VALUES ('2', 'Сказки', '2');

