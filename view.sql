CREATE VIEW `mail_view_sendloopback` AS
SELECT
	CONCAT(`mu`.`user`,'@',`d`.`name`) AS `user`,
	`mu`.`sendloopback`
FROM
	`mail_user` AS `mu`
JOIN
	`domain` AS `d` ON `d`.`active` AND `d`.`id` = `mu`.`domain_id`
WHERE
	`mu`.`active`;


CREATE VIEW `view_sendloopback` AS
SELECT
	CONCAT(`u`.`user`,'@',`d`.`name`) AS `user`,
	`u`.`sendloopback`
FROM
	`user` AS `u`
JOIN
	`domain` AS `d` ON `d`.`id` = `u`.`domain_id`;
