-- Dette skal skrives som det første i "SQL"
CREATE TABLE `mandag24`.`teams` (`id` SERIAL NOT NULL , `name` TEXT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
CREATE TABLE `mandag24`.`student` (`id` SERIAL NOT NULL , `name` TEXT NOT NULL , `teams_id` BIGINT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- Skriv den "SQL" EFTER, du har skrevet ovenstående i "SQL" 
ALTER TABLE `mandag24`.`student` ADD  FOREIGN KEY (`teams_id`) REFERENCES `teams`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;