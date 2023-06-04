#
# TABLE STRUCTURE FOR: cardio_exercise_properties
#

DROP TABLE IF EXISTS `cardio_exercise_properties`;

CREATE TABLE `cardio_exercise_properties` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exercise_id` int(11) unsigned NOT NULL,
  `duration` smallint(5) unsigned NOT NULL,
  `distance` mediumint(8) unsigned DEFAULT NULL,
  `speed` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `cardio_exercise_properties_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (1, 1, 8860, 9432, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (2, 2, 2471, 9967, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (3, 3, 9737, 7178, 5);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (4, 4, 825, 12221, 5);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (5, 5, 1400, 7748, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (6, 6, 2244, 13615, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (7, 7, 381, 13073, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (8, 8, 8398, 4997, 2);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (9, 9, 6421, 1421, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (10, 10, 2983, 9795, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (11, 11, 6605, 14776, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (12, 12, 10447, 11213, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (13, 13, 5575, 5798, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (14, 14, 3405, 3830, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (15, 15, 10796, 717, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (16, 16, 9868, 9566, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (17, 17, 11850, 11021, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (18, 18, 5661, 10954, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (19, 19, 9591, 8838, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (20, 20, 454, 13347, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (21, 21, 7311, 13759, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (22, 22, 4707, 4279, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (23, 23, 2480, 15127, 16);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (24, 24, 11819, 8021, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (25, 25, 4161, 8899, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (26, 26, 1523, 13769, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (27, 27, 260, 5949, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (28, 28, 4956, 14473, 7);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (29, 29, 9763, 15274, 7);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (30, 30, 9358, 3855, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (31, 31, 6815, 14496, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (32, 32, 8984, 552, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (33, 33, 4176, 10828, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (34, 34, 2536, 15546, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (35, 35, 7305, 4445, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (36, 36, 4686, 12966, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (37, 37, 8157, 14348, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (38, 38, 7955, 13400, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (39, 39, 10480, 3176, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (40, 40, 7074, 7318, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (41, 41, 6199, 13632, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (42, 42, 11409, 1690, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (43, 43, 8019, 2563, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (44, 44, 8457, 6171, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (45, 45, 4825, 13452, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (46, 46, 995, 7341, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (47, 47, 6962, 10051, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (48, 48, 7790, 9976, 5);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (49, 49, 9047, 14492, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (50, 50, 5216, 13678, 2);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (51, 51, 7912, 8004, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (52, 52, 7133, 7726, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (53, 53, 9989, 10506, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (54, 54, 1017, 382, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (55, 55, 10412, 5368, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (56, 56, 8624, 15258, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (57, 57, 11296, 14628, 7);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (58, 58, 10613, 7102, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (59, 59, 3926, 9991, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (60, 60, 7456, 425, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (61, 61, 9386, 7155, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (62, 62, 5202, 4891, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (63, 63, 7538, 6707, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (64, 64, 6691, 11747, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (65, 65, 7805, 10706, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (66, 66, 10086, 10163, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (67, 67, 10818, 9713, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (68, 68, 1473, 6081, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (69, 69, 1269, 5119, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (70, 70, 8833, 5238, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (71, 71, 9223, 3992, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (72, 72, 2839, 6011, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (73, 73, 5705, 8000, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (74, 74, 8652, 2273, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (75, 75, 9077, 6418, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (76, 76, 9649, 10038, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (77, 77, 8081, 6736, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (78, 78, 10717, 12102, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (79, 79, 5936, 646, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (80, 80, 4528, 2374, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (81, 81, 6717, 4972, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (82, 82, 1766, 15704, 16);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (83, 83, 5556, 6219, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (84, 84, 11769, 9728, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (85, 85, 9362, 12030, 2);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (86, 86, 8401, 11479, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (87, 87, 9092, 14894, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (88, 88, 2648, 4534, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (89, 89, 5122, 11015, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (90, 90, 1343, 9428, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (91, 91, 6714, 4140, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (92, 92, 3988, 4085, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (93, 93, 8228, 11597, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (94, 94, 1089, 1834, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (95, 95, 11756, 4803, 5);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (96, 96, 10504, 11350, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (97, 97, 5900, 12794, 16);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (98, 98, 10237, 1748, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (99, 99, 4045, 3760, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (100, 100, 4461, 2539, 11);


#
# TABLE STRUCTURE FOR: cardio_logs
#

DROP TABLE IF EXISTS `cardio_logs`;

CREATE TABLE `cardio_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exercise_id` int(11) unsigned NOT NULL,
  `duration` smallint(5) unsigned NOT NULL,
  `distance` mediumint(8) unsigned DEFAULT NULL,
  `speed` smallint(5) unsigned DEFAULT NULL,
  `notes` varchar(512) DEFAULT NULL,
  `list_position` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `cardio_logs_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (1, 1, 178, 2625, 3, 'Voluptatibus quaerat voluptatibus et tempora eveniet. Repellat maxime minus non dolorem perspiciatis. Aliquid deserunt dolores mollitia corporis reiciendis.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (2, 2, 194, 9859, 14, 'Iusto aut voluptatum incidunt dolorem consequatur qui. Odio necessitatibus ipsum nostrum quibusdam eius.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (3, 3, 401, 3670, 16, 'Doloremque sint assumenda excepturi numquam delectus numquam. Possimus fugit deserunt at dolorum ratione. Nam ad sunt libero laborum. Sit fugiat nulla perferendis vero.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (4, 4, 624, 151, 12, 'Possimus eveniet sed aut consectetur. Recusandae quia omnis tempore eaque placeat. Enim fugit est sit. Culpa ea dolore assumenda ut.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (5, 5, 741, 225, 16, 'Dolorem aperiam in sed inventore. Voluptatum odio nisi et minima est. Omnis rerum impedit alias. Eum autem nostrum voluptatem animi neque.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (6, 6, 563, 8717, 3, 'Suscipit voluptate dolorem delectus voluptatibus et rerum sit. Dolorum quis id animi. Sed labore perspiciatis numquam in. Numquam fugiat facilis quisquam quis voluptas adipisci provident ipsum.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (7, 7, 1185, 9935, 13, 'Sed maxime est ad mollitia cupiditate laborum. Aut natus repellendus atque nihil magni facere.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (8, 8, 213, 4341, 16, 'Asperiores in quae id veniam perspiciatis sunt voluptas. Repudiandae qui architecto magnam culpa laudantium laudantium nesciunt. Tempora fugit molestiae non. Quisquam delectus reiciendis laudantium aut harum laudantium. Velit consequatur velit deleniti et dicta itaque.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (9, 9, 1097, 1867, 16, 'Omnis sequi at dolorem aut quas sunt ipsam non. Nostrum modi vitae corrupti natus nesciunt ad veniam molestias. Sunt rerum culpa vero quasi ut.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (10, 10, 521, 2444, 2, 'Aliquam et enim totam blanditiis perspiciatis. Quasi velit unde velit quia dolorem. Dolorum ut nulla assumenda ut.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (11, 11, 404, 6560, 13, 'Nihil recusandae atque molestias nam. Qui optio ipsa assumenda rerum neque sint. Quis perferendis quia vel cupiditate. Earum qui fuga quia dolor.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (12, 12, 1154, 1349, 13, 'Voluptatem cumque quos non pariatur. Vitae non non rerum occaecati sapiente. Odit ad dolor eaque rerum repellat.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (13, 13, 928, 1595, 15, 'Itaque unde facilis pariatur quod itaque. Et dicta explicabo iste quidem non neque. Voluptates esse labore quia ut iure cum perspiciatis. Corrupti ipsa enim labore aut rem quam aliquam.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (14, 14, 1175, 8451, 16, 'Ut dolore non error ipsa. Optio repudiandae autem corporis aliquam culpa in voluptate et. In nisi sed perspiciatis. Placeat debitis aspernatur corporis cum laboriosam.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (15, 15, 899, 9722, 4, 'Similique reiciendis sed autem ipsam minus laboriosam saepe vel. Dignissimos sit deserunt reprehenderit eum adipisci.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (16, 16, 797, 8708, 7, 'Velit sint sit explicabo beatae. Et repudiandae omnis cum quis ipsam iusto sint. Porro rem ea sunt non voluptatem. Molestiae corrupti minima natus id excepturi.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (17, 17, 256, 8230, 5, 'Cupiditate earum odit iusto aspernatur cum quo error. Mollitia quis voluptatem quis. Non eius ut ad repellat repellat unde velit. Maxime omnis molestias animi id.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (18, 18, 1117, 2961, 7, 'Eum placeat perspiciatis officia ipsa animi harum. Eum sit beatae id id corrupti eaque facere voluptas. Quasi et non tenetur eos sed ea excepturi. Assumenda exercitationem aliquid sit molestiae eos. Sed quia et deleniti qui maiores dolorem.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (19, 19, 1032, 4364, 8, 'Eaque ipsam ut enim nulla. Sunt alias odio ipsam debitis. Modi similique facere id corrupti molestias. Id hic excepturi adipisci a.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (20, 20, 71, 9770, 3, 'Quasi adipisci commodi voluptatum perspiciatis nobis. Nihil repudiandae sapiente distinctio qui consequatur qui deleniti molestiae. Ratione iure vero magni dolorum.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (21, 21, 93, 4854, 3, 'Quidem ipsum nihil quidem nam consectetur voluptas. Magni voluptas minus perferendis quia et repudiandae voluptatem. Vero rerum qui veritatis atque ex rem dicta. Et accusamus quod at rerum qui.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (22, 22, 225, 7788, 3, 'Recusandae amet odit non et facere. Quaerat aperiam labore sed facilis voluptate quae iure. Saepe et expedita mollitia vitae consequatur qui aut.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (23, 23, 583, 1944, 7, 'Dolor minus voluptas illum qui. Architecto ullam quasi aliquam labore et sit et fugiat. Sint alias tenetur repellendus qui sit.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (24, 24, 386, 8734, 5, 'Sunt repellendus qui consectetur occaecati. Optio cum praesentium dolor molestiae neque. Fuga rerum consequatur neque voluptatem ipsa aut. Reiciendis ipsa id dolor non aperiam.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (25, 25, 859, 1823, 13, 'Praesentium enim omnis eligendi nulla omnis et eos. Praesentium voluptatum sunt ipsa enim in. Tempora quia blanditiis enim quibusdam sunt cum.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (26, 26, 129, 920, 6, 'Ut cumque neque voluptatem quibusdam. Nihil aut deserunt et qui. Accusamus maiores in voluptatibus aut eaque. Aperiam magnam cupiditate adipisci est.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (27, 27, 325, 6659, 14, 'Dolorem ullam corporis nemo laborum quidem tempora. Dolorum inventore dolorem omnis ut qui repellendus. Adipisci voluptas in ut unde.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (28, 28, 1035, 6596, 8, 'Rerum beatae mollitia voluptates dignissimos veritatis harum et dignissimos. Dolores animi quasi qui earum nisi et unde. Consequuntur in aut sed voluptatum.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (29, 29, 691, 1417, 7, 'Nostrum vel vel dolores consequuntur velit eligendi accusamus. Et aut ea impedit accusamus vel quisquam in non. Possimus in a quis aut commodi dolorum.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (30, 30, 477, 3095, 15, 'Eum veniam porro non optio. Ut iure qui placeat molestiae. Placeat sed quis beatae quam veritatis. Vel sunt impedit temporibus est cupiditate dolorem.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (31, 31, 983, 3781, 12, 'Ea veritatis reprehenderit molestiae eos fugit vel non. Quis perferendis unde excepturi saepe.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (32, 32, 934, 2353, 13, 'Est eum velit facere ratione architecto quam. Qui corporis nihil at non cum doloremque. Impedit dolore consequatur et pariatur qui ut. Placeat sed quisquam qui animi voluptatem iusto nemo sint.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (33, 33, 455, 4994, 8, 'Voluptatem exercitationem qui vel. Dolorem iusto quibusdam deserunt officia eligendi molestiae. Quis nisi magni aperiam porro. Omnis ex repellendus est sequi labore recusandae.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (34, 34, 954, 8939, 4, 'Cum ut libero enim rerum ipsam rem illum. Dolorem eos est animi et rem autem. Deleniti maiores tenetur necessitatibus dolorum veritatis sed quis.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (35, 35, 820, 4198, 13, 'Aut et nam libero aut qui voluptatem sed. Dolor aut veritatis quia soluta quis officiis quos quos. Iusto repellat sint perferendis nostrum voluptatem. Amet quia illo quo expedita molestias.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (36, 36, 189, 4343, 11, 'Perferendis et sed omnis quidem. Sit aut eum non fugit beatae sequi est. Quas dolor molestias beatae quo id.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (37, 37, 1142, 4348, 7, 'Unde voluptas eligendi assumenda soluta. Ratione animi aut vitae laborum cum incidunt. Quae et dignissimos quos magnam molestiae quam et sequi. Asperiores enim nemo magnam inventore quam officia omnis recusandae.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (38, 38, 233, 8279, 16, 'Dignissimos voluptates ea qui. Voluptatum recusandae dignissimos veritatis asperiores sunt. Voluptatibus illum corporis incidunt quia nemo ad.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (39, 39, 122, 411, 2, 'Necessitatibus corrupti non quia voluptas. Qui et quod similique totam at. Quo ut voluptatibus quidem quis deleniti omnis veniam dolores. Aut explicabo odio consequatur rerum dolores aut.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (40, 40, 470, 4408, 16, 'Non ipsum debitis et commodi est incidunt est. Voluptatibus cum velit rem at ex eligendi repellendus. Temporibus eos alias veniam esse.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (41, 41, 429, 1636, 15, 'Voluptatem a modi velit aut. Rerum tempore eum dolorem. Vitae iusto et quisquam praesentium non provident quia.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (42, 42, 928, 6071, 7, 'Voluptates tempore voluptas officiis architecto. Est ut fugiat est ut et illum. Enim iure error sint provident. Expedita omnis nemo eos et nihil rerum.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (43, 43, 267, 8044, 15, 'Sit repudiandae excepturi aut. Atque earum vero quidem provident facilis. Ad officia eos quia dolores. Voluptas minus recusandae cumque sit laboriosam ipsa eum.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (44, 44, 86, 2385, 10, 'Error beatae aut recusandae quae pariatur impedit. Omnis dolores quae aliquam officiis unde enim autem.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (45, 45, 12, 9336, 12, 'Voluptatum et eos nemo nisi consequatur nam sed. Ipsa pariatur perspiciatis voluptatem aliquam et voluptatem rerum. At vitae nulla nihil incidunt.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (46, 46, 625, 5780, 15, 'Consequatur accusamus temporibus rerum maiores voluptate ab fugiat. Sit reiciendis neque dolores. Et et sed molestias nihil nihil. Earum aut in et blanditiis eaque vel.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (47, 47, 232, 3777, 4, 'Explicabo voluptas voluptas nulla id sapiente commodi possimus. Laborum aut accusantium consectetur. Consequuntur recusandae pariatur sint dolorem impedit quis. Ad soluta non excepturi.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (48, 48, 739, 128, 10, 'Ut iure et fuga non architecto. Rerum illum quasi maxime veniam aut distinctio illo. Totam non iusto sequi ad dolore perferendis sunt. Perspiciatis rerum rerum ipsam officiis nesciunt.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (49, 49, 1015, 6364, 3, 'Saepe est voluptatem suscipit. Possimus qui enim quas. Eos aspernatur repellat excepturi quidem velit. Quod a magni minima inventore enim et fugiat et.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (50, 50, 1016, 3099, 4, 'Nemo non repudiandae illo doloribus nobis nam odit. Deleniti et possimus consequatur pariatur. Illo qui a corrupti vero quos.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (51, 51, 674, 692, 10, 'At est ab nulla accusamus impedit est. Odit quo omnis ipsa quis placeat doloribus. Laboriosam doloremque nulla et exercitationem sed saepe laudantium.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (52, 52, 385, 8321, 7, 'Fuga est quis modi cupiditate numquam voluptatum. Sapiente doloremque qui perferendis autem. Aut molestiae soluta consequatur corporis aperiam. Laboriosam in fugit quo velit repellendus.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (53, 53, 43, 2153, 16, 'A aut recusandae vitae culpa et ut. Enim velit distinctio aut est. Molestiae exercitationem esse aut deleniti neque. Sunt quam voluptatem officiis quo aut.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (54, 54, 1186, 8765, 5, 'Doloremque placeat nam non rerum dolor quaerat. Non voluptatem consequuntur dolores ut qui temporibus. Animi voluptatem aut commodi cumque blanditiis quae. Reprehenderit quo consectetur assumenda et.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (55, 55, 394, 4318, 11, 'Sit qui similique enim quasi cupiditate. Ratione voluptate nam nesciunt officia amet. Pariatur odit et ipsum delectus porro. At corporis adipisci distinctio quo.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (56, 56, 980, 7775, 9, 'Molestiae et vel distinctio corporis eaque tempora doloremque. Itaque voluptatem est eum id dolores quia. Eos quae officia ut id enim molestias recusandae sapiente. Dolorum quasi sit est est quae voluptatem quia. Velit et nulla ea omnis inventore.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (57, 57, 605, 161, 2, 'Et ipsam et non aliquid in alias sapiente explicabo. Quos architecto quaerat excepturi perferendis. Error dolor consequuntur quibusdam fugit dicta et blanditiis. Qui ut ducimus repellat aut cumque facere.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (58, 58, 1005, 3566, 3, 'Rem quo magni omnis consequatur. Doloribus debitis praesentium et. Sed consequuntur delectus repellat temporibus. Ex officia eius et voluptates sunt dolor autem.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (59, 59, 221, 7431, 11, 'Ut ab libero nobis ut tempore autem et. Labore repellat ut enim facilis voluptas animi iste suscipit. Dolor expedita quo reiciendis ab at quisquam itaque.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (60, 60, 589, 3895, 4, 'Quis iste quo reiciendis quibusdam. Eum magni et quo molestiae laboriosam laboriosam. Et odio nobis et corrupti.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (61, 61, 375, 3364, 15, 'Reprehenderit ut itaque natus voluptates. Facilis nam repudiandae qui quasi culpa ea quos id.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (62, 62, 648, 5661, 16, 'Officiis totam eos pariatur amet. Laboriosam amet soluta voluptas autem unde aperiam quaerat sit. Dolores ad accusantium facere enim optio tenetur.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (63, 63, 868, 4653, 15, 'Beatae provident repellendus error voluptates. Hic non eum ipsam odit. Adipisci qui perferendis provident totam. Soluta similique sed modi ut exercitationem inventore.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (64, 64, 204, 452, 16, 'Unde culpa facilis pariatur ut eius blanditiis. Est iure ipsa quibusdam ut optio facere. Et perspiciatis vero tempora perferendis repellendus ullam eius. Laboriosam aut qui enim nisi.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (65, 65, 714, 6232, 13, 'Facilis omnis voluptatem necessitatibus accusantium rem. Aliquam repellendus cupiditate animi qui repudiandae. Magnam nesciunt consequatur totam laborum. Ipsa ratione nostrum recusandae et eum.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (66, 66, 450, 8845, 12, 'Quisquam unde accusantium fugiat et sit. Quisquam facilis et impedit repellendus repellat iusto accusamus voluptates. Odit quod tenetur qui quas adipisci quia nulla.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (67, 67, 1195, 4440, 3, 'Incidunt consequatur qui eum optio occaecati repellat vel. Harum vero temporibus consequuntur et iusto qui omnis. Sequi voluptatum nobis et consectetur magnam nam dolorem perspiciatis. Corporis sit fugit architecto nihil.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (68, 68, 1084, 4666, 6, 'Assumenda ut eveniet id assumenda ducimus impedit mollitia. Laborum dolorum sunt quaerat optio vero. Cupiditate qui eum excepturi.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (69, 69, 179, 3473, 11, 'Ut omnis sit id rerum in. Ut expedita fugit pariatur nam consequatur qui dolores. Repellat voluptates aut qui delectus architecto.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (70, 70, 348, 263, 15, 'Unde sit quis sit pariatur repellendus nihil eos. Quae sapiente minus molestiae non ea sint beatae. Occaecati quibusdam temporibus quo voluptatem non. Eveniet distinctio quo ducimus tempora excepturi velit. Error alias consequatur excepturi excepturi non.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (71, 71, 453, 4154, 8, 'Consequatur eos modi magnam beatae et. Facilis provident quo nihil nemo tempora repudiandae animi. Nobis aspernatur doloribus doloremque et. Consectetur et ducimus expedita minus.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (72, 72, 1122, 8640, 10, 'Iure excepturi necessitatibus illum illo et. Vero qui voluptates quo.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (73, 73, 884, 5484, 5, 'Dolor ea voluptatem ut sint voluptate voluptas. Temporibus rerum at est molestias error dolores. Ut perferendis amet rerum molestiae suscipit rem.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (74, 74, 415, 8945, 2, 'Necessitatibus ducimus beatae autem incidunt. Placeat voluptas libero voluptatem. Consequatur qui praesentium tempora atque saepe.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (75, 75, 841, 6758, 15, 'Sed a sunt molestias quia quia aspernatur. Nulla pariatur sed est aut expedita excepturi praesentium. Ab quia impedit ullam rerum molestias. Ratione odio quisquam ut voluptatibus. Molestias quae sed culpa omnis distinctio enim.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (76, 76, 565, 155, 3, 'Beatae eveniet omnis doloremque magni et et. Sapiente aliquid consequatur perferendis reiciendis aliquid et cupiditate qui. Possimus porro sed beatae delectus. Assumenda suscipit exercitationem blanditiis et dolorum accusantium distinctio.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (77, 77, 79, 5198, 8, 'Sit voluptas ducimus molestias dolor ducimus ullam. Magni cupiditate ad perspiciatis autem eligendi.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (78, 78, 551, 8478, 4, 'Et molestiae eos dolor. Blanditiis quia nesciunt eos at accusamus ducimus. At qui placeat porro.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (79, 79, 80, 3633, 12, 'Facere nostrum laboriosam et voluptatem dolore nisi blanditiis. Nostrum ipsam error et molestias tempora. Molestias nihil nam quia recusandae in. Voluptas ut quo quis vero velit accusantium doloribus.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (80, 80, 1029, 5515, 15, 'Deserunt blanditiis ea rerum laudantium aut quam. Aliquid sed id voluptatem excepturi tempore ipsa totam culpa. Delectus quia nemo rerum eum ut doloribus nulla.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (81, 81, 1027, 2943, 5, 'Velit necessitatibus et nobis dolorum asperiores architecto deleniti. Iure nostrum facere aut ut impedit quaerat laboriosam. Perferendis ea officia corporis et omnis iste ab et.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (82, 82, 607, 4454, 15, 'Accusantium ipsam fugiat nam et voluptate labore in. Sapiente repellendus quo quia autem quod voluptatem nesciunt. Voluptas quasi fugiat adipisci alias.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (83, 83, 719, 3023, 4, 'Laudantium quis qui libero sit pariatur. Aliquid deleniti voluptatem tenetur facere et. Vitae unde voluptatem maiores ut qui. Et iste quae optio dolor totam voluptatem.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (84, 84, 1009, 3720, 15, 'Omnis ea voluptatum quasi dolores eaque ex ratione. Voluptate quae non neque dolore. Sunt explicabo sint ea voluptatum voluptatem. Voluptatem ea dolores eum consectetur molestiae qui.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (85, 85, 924, 6855, 3, 'Fugit quis illo totam omnis aliquam. Vel neque a iure ea commodi dolores nesciunt. Deserunt ipsa corrupti sed aut. Omnis asperiores deserunt soluta esse. Fuga praesentium facere eum eos velit.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (86, 86, 279, 6463, 9, 'Doloribus corrupti reprehenderit fugit qui. Debitis impedit autem consequuntur nam officia ut. Est similique aliquid possimus laboriosam est eius sapiente. Eos harum et vel. Et quaerat dolor laboriosam unde qui sed minima.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (87, 87, 154, 5165, 8, 'Vel suscipit explicabo non ullam. Sequi dignissimos esse quod minus beatae explicabo alias.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (88, 88, 124, 4619, 2, 'Et et tempora nihil neque consectetur natus est totam. Voluptas sed ad consequatur eveniet modi et debitis. Quis explicabo eaque consequuntur earum fugiat sit doloremque.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (89, 89, 772, 6259, 8, 'Blanditiis molestiae impedit quia corrupti placeat eum. Error et facere nobis recusandae voluptatem ipsa.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (90, 90, 491, 2549, 7, 'Et molestiae quam non sed ab. Aliquam et laboriosam aspernatur quia iure et itaque. Iste nulla rerum facere eos odit. Nam et quis tempore et a rem aut possimus.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (91, 91, 43, 2044, 3, 'Non et consequatur est molestias. Nisi sunt sunt consequatur eligendi ut aliquam ipsum. Est suscipit qui temporibus omnis.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (92, 92, 941, 8926, 3, 'Animi nulla dolorem id et in sed ex. Minus voluptate beatae delectus natus eum. Omnis vitae autem dicta vel repellendus.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (93, 93, 148, 3486, 11, 'Exercitationem deleniti quo saepe. Tenetur ratione sit molestias sit suscipit sed ullam assumenda. Suscipit quia reiciendis quia eum quis ut.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (94, 94, 1026, 6037, 8, 'Corporis culpa voluptatem ut est et voluptatum suscipit. Numquam quasi alias a sed et minus quo natus. Perferendis veritatis numquam distinctio. Necessitatibus architecto perspiciatis voluptas accusamus. Vero velit saepe nisi unde earum in soluta.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (95, 95, 888, 8954, 14, 'Vero tempora inventore illum consequatur. Sed minus ut et nostrum assumenda eum. Nostrum placeat cumque voluptas eum nisi eos delectus est. At consequatur sunt quod vero dolor cupiditate dolorum voluptatem.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (96, 96, 405, 3711, 6, 'Vel omnis architecto est doloribus quia veritatis nihil. Ea maiores deleniti autem quasi consequatur debitis.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (97, 97, 827, 9221, 12, 'Dolore aut quaerat est voluptatibus tempore omnis. Accusamus et illum et rem et.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (98, 98, 1080, 5224, 14, 'Nemo consequatur ut cum enim non consequatur. Ut iste dolore voluptate autem et sit dicta laboriosam. Accusantium dolores quia sed dolor mollitia quis.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (99, 99, 102, 7128, 15, 'Temporibus iure quasi minima quia itaque architecto molestias. Sit sapiente quis reiciendis ad dolores. Dolores sint neque sed suscipit sunt.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (100, 100, 370, 4834, 9, 'Qui odit omnis illum asperiores nihil magnam corporis dolor. Pariatur eaque mollitia placeat temporibus cupiditate et voluptatem. Rerum dolores fuga qui quo molestiae atque. Dicta perferendis repellat ut in delectus blanditiis. Sunt est hic quia et voluptatem et eveniet.', 7);


#
# TABLE STRUCTURE FOR: custom_timers
#

DROP TABLE IF EXISTS `custom_timers`;

CREATE TABLE `custom_timers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `time` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  CONSTRAINT `custom_timers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (1, 1, 242);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (2, 2, 75);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (3, 3, 260);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (4, 4, 38);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (5, 5, 492);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (6, 6, 143);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (7, 7, 274);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (8, 8, 373);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (9, 9, 507);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (10, 10, 35);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (11, 11, 497);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (12, 12, 226);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (13, 13, 174);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (14, 14, 586);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (15, 15, 155);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (16, 16, 336);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (17, 17, 425);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (18, 18, 543);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (19, 19, 147);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (20, 20, 503);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (21, 21, 386);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (22, 22, 177);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (23, 23, 318);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (24, 24, 428);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (25, 25, 514);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (26, 26, 160);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (27, 27, 423);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (28, 28, 341);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (29, 29, 535);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (30, 30, 147);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (31, 31, 517);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (32, 32, 256);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (33, 33, 211);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (34, 34, 541);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (35, 35, 101);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (36, 36, 449);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (37, 37, 259);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (38, 38, 203);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (39, 39, 532);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (40, 40, 260);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (41, 41, 544);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (42, 42, 291);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (43, 43, 157);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (44, 44, 24);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (45, 45, 487);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (46, 46, 520);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (47, 47, 199);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (48, 48, 200);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (49, 49, 452);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (50, 50, 435);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (51, 51, 386);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (52, 52, 532);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (53, 53, 546);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (54, 54, 308);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (55, 55, 425);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (56, 56, 583);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (57, 57, 144);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (58, 58, 113);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (59, 59, 117);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (60, 60, 319);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (61, 61, 169);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (62, 62, 209);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (63, 63, 23);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (64, 64, 309);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (65, 65, 342);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (66, 66, 55);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (67, 67, 461);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (68, 68, 510);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (69, 69, 145);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (70, 70, 521);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (71, 71, 255);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (72, 72, 284);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (73, 73, 115);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (74, 74, 478);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (75, 75, 217);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (76, 76, 347);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (77, 77, 81);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (78, 78, 34);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (79, 79, 71);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (80, 80, 565);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (81, 81, 196);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (82, 82, 240);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (83, 83, 63);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (84, 84, 486);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (85, 85, 66);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (86, 86, 179);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (87, 87, 224);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (88, 88, 46);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (89, 89, 318);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (90, 90, 143);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (91, 91, 186);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (92, 92, 22);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (93, 93, 18);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (94, 94, 239);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (95, 95, 254);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (96, 96, 315);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (97, 97, 152);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (98, 98, 163);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (99, 99, 337);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (100, 100, 571);


#
# TABLE STRUCTURE FOR: exercise_names
#

DROP TABLE IF EXISTS `exercise_names`;

CREATE TABLE `exercise_names` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exercise_name_en` varchar(64) NOT NULL,
  `exercise_name_pl` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (1, 'quia', 'hic');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (2, 'rerum', 'maxime');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (3, 'quis', 'totam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (4, 'quasi', 'illum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (5, 'temporibus', 'quasi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (6, 'ad', 'tenetur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (7, 'corporis', 'dolor');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (8, 'animi', 'ab');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (9, 'possimus', 'necessitatibus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (10, 'in', 'ut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (11, 'ut', 'iste');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (12, 'maiores', 'at');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (13, 'nihil', 'veniam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (14, 'sit', 'voluptate');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (15, 'assumenda', 'laboriosam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (16, 'voluptatem', 'voluptatem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (17, 'quia', 'vel');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (18, 'rerum', 'doloremque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (19, 'tempore', 'autem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (20, 'ut', 'inventore');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (21, 'eos', 'laboriosam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (22, 'sint', 'exercitationem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (23, 'est', 'asperiores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (24, 'eum', 'aut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (25, 'natus', 'id');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (26, 'itaque', 'nulla');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (27, 'ex', 'voluptas');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (28, 'et', 'in');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (29, 'sunt', 'omnis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (30, 'velit', 'laudantium');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (31, 'molestias', 'ut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (32, 'nobis', 'saepe');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (33, 'quia', 'architecto');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (34, 'ipsam', 'voluptatem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (35, 'consequatur', 'dolorem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (36, 'quibusdam', 'ullam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (37, 'nostrum', 'illo');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (38, 'tenetur', 'necessitatibus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (39, 'vitae', 'reiciendis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (40, 'consectetur', 'sunt');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (41, 'quasi', 'doloribus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (42, 'exercitationem', 'quia');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (43, 'culpa', 'voluptas');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (44, 'sequi', 'quo');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (45, 'qui', 'culpa');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (46, 'asperiores', 'numquam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (47, 'molestiae', 'eveniet');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (48, 'eum', 'accusamus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (49, 'velit', 'voluptatem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (50, 'ducimus', 'at');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (51, 'qui', 'accusamus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (52, 'tempore', 'corrupti');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (53, 'ut', 'itaque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (54, 'blanditiis', 'sequi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (55, 'porro', 'reprehenderit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (56, 'inventore', 'sed');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (57, 'occaecati', 'porro');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (58, 'facere', 'consectetur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (59, 'doloremque', 'autem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (60, 'iusto', 'saepe');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (61, 'porro', 'natus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (62, 'aspernatur', 'aut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (63, 'ut', 'tempore');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (64, 'quo', 'vel');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (65, 'quia', 'quis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (66, 'cum', 'totam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (67, 'rerum', 'velit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (68, 'provident', 'cumque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (69, 'facilis', 'qui');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (70, 'nisi', 'occaecati');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (71, 'maxime', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (72, 'libero', 'voluptatem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (73, 'ut', 'cumque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (74, 'excepturi', 'quia');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (75, 'ea', 'cum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (76, 'sint', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (77, 'esse', 'maiores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (78, 'necessitatibus', 'laborum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (79, 'ut', 'dolores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (80, 'qui', 'nam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (81, 'cumque', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (82, 'ipsam', 'eum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (83, 'voluptas', 'illum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (84, 'qui', 'non');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (85, 'sed', 'quidem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (86, 'saepe', 'soluta');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (87, 'qui', 'velit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (88, 'quo', 'minus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (89, 'ut', 'consectetur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (90, 'magni', 'modi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (91, 'dolorum', 'corporis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (92, 'consequatur', 'necessitatibus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (93, 'nisi', 'sint');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (94, 'officiis', 'at');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (95, 'beatae', 'saepe');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (96, 'eum', 'similique');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (97, 'sapiente', 'commodi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (98, 'voluptatem', 'officia');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (99, 'ipsam', 'ad');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (100, 'dolorem', 'aliquid');


#
# TABLE STRUCTURE FOR: exercises
#

DROP TABLE IF EXISTS `exercises`;

CREATE TABLE `exercises` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `exercise_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `exercise_name_id` int(11) unsigned NOT NULL,
  `exercise_notes` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_exercise_name_id` (`exercise_name_id`),
  CONSTRAINT `exercises_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exercises_ibfk_2` FOREIGN KEY (`exercise_name_id`) REFERENCES `exercise_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (1, 1, 0, 1, 'Unde et quos possimus. Pariatur repellendus eveniet necessitatibus voluptates totam. Nam quisquam culpa iure sit natus at consequatur. Facilis itaque sequi sed voluptates modi consequuntur suscipit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (2, 2, 2, 2, 'Rerum fuga ipsam dolor consectetur molestiae beatae. Commodi doloribus unde minima ullam impedit. Voluptatum odio sapiente inventore nihil.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (3, 3, 0, 3, 'Necessitatibus ut eaque inventore molestias suscipit. Et nostrum ipsum ut voluptas ipsum veniam nisi. Alias sequi accusantium et est explicabo. Autem est similique amet aut quia aperiam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (4, 4, 0, 4, 'Aut suscipit voluptatum ducimus voluptatem. Esse magnam illum id nam deserunt deleniti quis. Consequatur fugit mollitia quam fuga ipsum vel.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (5, 5, 0, 5, 'Voluptates temporibus magni rerum ipsa. Totam distinctio est aspernatur itaque autem mollitia. Deleniti modi illum porro dolorem eum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (6, 6, 2, 6, 'Dolores commodi sint quas maiores delectus veniam. Quo dolor error aut vero voluptatum. Quam quis magnam est iste autem itaque culpa. Voluptatem nihil veniam ducimus sit temporibus temporibus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (7, 7, 2, 7, 'Voluptate non provident fugiat repellendus. Nihil officiis autem veritatis vitae ab. Vel corporis sint aut maxime distinctio qui quia nihil. Aperiam earum incidunt nobis sit et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (8, 8, 0, 8, 'Fugiat corporis dolores eum possimus error quo. Libero necessitatibus architecto et unde. Voluptas sed excepturi ipsa et suscipit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (9, 9, 0, 9, 'Adipisci maiores veniam consequatur qui. Consectetur hic dolores et cupiditate libero. Velit dolorem voluptatem modi rerum. Dolore qui molestias sint culpa sunt iste.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (10, 10, 1, 10, 'Et eveniet totam pariatur sint ut nisi. Harum error at qui est qui. Architecto rem quia id et voluptatibus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (11, 11, 0, 11, 'Iusto sit vitae enim rerum et. Minus voluptas magnam repellat itaque ut dolores. Minima voluptatum delectus nisi dicta. Ipsa fugit fugit necessitatibus facere quo aut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (12, 12, 0, 12, 'Deleniti voluptatem nostrum officia quae quos at voluptatibus eveniet. Accusamus inventore ut vero quibusdam consequatur. Iusto nisi minima possimus nihil et sed animi. Voluptas nesciunt sint in perspiciatis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (13, 13, 1, 13, 'Cupiditate sunt consequatur eveniet ut assumenda vel. Nobis culpa ipsam corrupti illum perferendis quia vitae. Voluptatum tempore cumque tenetur nobis est consequatur excepturi. Aut doloribus vero eum porro est voluptatum eum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (14, 14, 1, 14, 'Cum molestias aliquid qui recusandae dicta dolor. Consequatur explicabo consectetur commodi repellendus nihil vero hic. Voluptas maxime ducimus quod adipisci. Incidunt cum soluta fugit eos consequatur eum id sed.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (15, 15, 0, 15, 'Qui a ut dolores debitis vero quidem sunt quo. Necessitatibus et voluptatem quibusdam qui in velit laudantium veritatis. Ut et ullam corrupti harum aut ea. A assumenda voluptates libero porro ad qui. Perferendis consequatur a laboriosam aut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (16, 16, 2, 16, 'Beatae quos dolor debitis dolorem ea aliquid debitis. Numquam et ab dolorem qui est iusto quisquam recusandae. Culpa neque dolores natus autem. Officia in accusamus excepturi architecto. Qui placeat eveniet est autem dignissimos qui.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (17, 17, 2, 17, 'Nulla cupiditate eligendi debitis adipisci eum a cupiditate. Quidem ea saepe et magnam quo ducimus nihil. Omnis cum expedita quis perspiciatis autem ut ut. Ea repellendus dolor itaque ut et ipsum ipsum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (18, 18, 1, 18, 'Dolorum eos molestiae non laborum. Dolorum sint sint nihil officiis ut voluptas. Voluptatem nulla et aliquid earum nihil porro maiores. Rerum provident libero officia in minus dolores.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (19, 19, 0, 19, 'Error repellat eveniet et molestias sunt. Qui doloribus non qui. Est odio explicabo nulla nam explicabo. Quasi ipsa et ad iste nostrum et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (20, 20, 1, 20, 'Illo iure animi quae veritatis. Quia quod quibusdam dolores repellendus sequi ab omnis repellat. Quis repellendus sunt qui et cupiditate consequuntur error. Et qui et tempora quia ad culpa repellat.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (21, 21, 1, 21, 'Placeat quisquam nesciunt et exercitationem magnam. Ullam dicta quisquam sint eaque dolorem qui. Aspernatur ut culpa dolorem corporis architecto est quia temporibus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (22, 22, 1, 22, 'Est ratione adipisci odio. Nulla et ut doloremque consequuntur. Illum voluptas doloremque numquam aut sunt saepe. Deserunt quia harum repellendus perferendis est.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (23, 23, 1, 23, 'Qui laborum at aut quia molestiae qui excepturi. Et repudiandae velit voluptatum. Et consequuntur et atque mollitia non velit voluptas.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (24, 24, 0, 24, 'Vel eum est et laudantium aut. Voluptas maiores reprehenderit libero in voluptatum impedit maiores necessitatibus. Possimus facere tempora quia minima.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (25, 25, 1, 25, 'Consequuntur nemo praesentium velit voluptatem. Autem illo voluptas qui et ab. Ipsa inventore voluptatem accusantium fugit. Magnam eius dicta suscipit et odit dolores et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (26, 26, 1, 26, 'Eum adipisci earum fuga eum. Dolor est quaerat recusandae similique nisi non. Velit id possimus sit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (27, 27, 1, 27, 'Consectetur officia similique doloremque expedita voluptatem ipsum dolore. Quam consequuntur tempora aliquid vitae itaque. Cum explicabo velit aut ab. Minus perspiciatis dolores commodi esse sunt impedit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (28, 28, 2, 28, 'Animi hic ut sint labore. Ad fugit voluptatibus saepe quia dolorum sunt. Eligendi porro eveniet non autem aut quo.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (29, 29, 0, 29, 'Quaerat excepturi aliquam reiciendis atque. Eum veritatis dignissimos architecto eaque sequi quo. Dignissimos voluptate aut magnam distinctio amet itaque iste.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (30, 30, 1, 30, 'Reiciendis magnam consequatur ipsum porro. Aut eveniet neque corporis officiis deserunt. Sit assumenda eligendi asperiores inventore velit odit. Id natus sit repellendus velit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (31, 31, 2, 31, 'Et aut ut recusandae velit aut velit omnis. Velit perferendis aut temporibus dignissimos culpa nobis. In numquam quis reiciendis. Rerum rerum quae esse possimus tenetur voluptatum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (32, 32, 2, 32, 'Molestiae rerum doloribus quisquam. Et magni cum autem porro nesciunt qui. Nesciunt perspiciatis architecto quisquam eveniet atque. Ea culpa et sunt voluptatem quis perferendis velit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (33, 33, 0, 33, 'Quo quis aliquam reiciendis vel impedit. Tempora voluptatum vitae saepe adipisci aut officiis. Dolores aut pariatur rerum est rerum natus quis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (34, 34, 2, 34, 'Omnis pariatur molestias quibusdam. Provident veritatis perspiciatis porro unde ut voluptatum in. Aut optio ut consequatur sunt. Voluptas voluptas voluptatem nam officia asperiores vel.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (35, 35, 1, 35, 'Voluptates totam sit fuga nam velit ab. Aliquam asperiores enim unde pariatur. Placeat doloremque qui repudiandae repudiandae et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (36, 36, 1, 36, 'Ex culpa officiis est labore quam. Fugit magni fugiat omnis blanditiis. Est temporibus velit porro eveniet rerum aperiam. Earum quibusdam velit non mollitia sed. Tempora quia nobis qui nihil et est velit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (37, 37, 0, 37, 'Repellat alias veniam libero incidunt labore minima. Nesciunt quod voluptatibus provident fugiat at commodi. Aut aut quam harum harum a nulla sunt vel.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (38, 38, 2, 38, 'Voluptatem voluptatem vero voluptatibus quod ea error. Consequatur qui eos aliquid ut dicta dolorum dolorem. Quisquam tenetur perferendis aut quam odio ea minima dolores.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (39, 39, 1, 39, 'Soluta illum quis placeat sequi ut doloremque aut incidunt. Voluptas recusandae autem fugit laudantium laboriosam. Esse minus fugiat cumque voluptate dolorum. Architecto eos numquam error dolorem nam dolorem. Qui earum molestias tempora dolorem deleniti aut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (40, 40, 1, 40, 'Quos dolor doloremque repudiandae et ea aut voluptas. Est et numquam fuga quis maxime qui repellat.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (41, 41, 2, 41, 'Similique cumque vel iste inventore. Ducimus nulla dolores officiis ipsa assumenda. Fuga velit velit voluptatem maxime quia consequuntur architecto. Quasi quia cupiditate ducimus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (42, 42, 1, 42, 'Et fugiat sit maxime vel quis labore. In atque voluptatum nisi. Ullam eligendi et ut sunt molestias. Et dolorem asperiores enim molestias. Eaque doloribus sit qui laboriosam necessitatibus iusto non.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (43, 43, 0, 43, 'Ullam aut dolore iusto voluptate reprehenderit id. Quia ea sunt quo tempore sunt. In sint et minima. Id eos et totam quam quis eum quam deleniti. Sunt aut commodi aut cumque atque.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (44, 44, 0, 44, 'Aut quibusdam quos provident occaecati laudantium soluta. Et vel ratione distinctio corporis voluptatibus. Perferendis aut minus tempore dolore sit. Aut corporis aut omnis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (45, 45, 0, 45, 'Enim quae architecto itaque officiis nihil. Cupiditate qui officiis velit asperiores illo dolor eum. Et pariatur illum accusantium laudantium.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (46, 46, 2, 46, 'Hic ipsa possimus fugit sed porro. Aut minus itaque eum vel. Voluptate quos et dolorem autem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (47, 47, 2, 47, 'Aut et incidunt blanditiis sunt. Voluptate inventore accusantium sapiente perferendis voluptas illo nihil. Ut id numquam vitae sed nam delectus. In quae et nulla incidunt voluptatem quis occaecati.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (48, 48, 1, 48, 'In corrupti voluptatem possimus neque tempore non. Ea et necessitatibus facilis omnis ut. Voluptatem quos occaecati vel eum quam nostrum eaque velit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (49, 49, 0, 49, 'Neque in est sed quo ipsam vel. Dolorum itaque aut sint sed voluptas saepe. Occaecati nam nihil doloribus sit et consequatur. Voluptatem asperiores sunt et reprehenderit et officia.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (50, 50, 2, 50, 'Omnis sed occaecati sed ipsa iusto. Consequuntur dolorem qui possimus maiores.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (51, 51, 1, 51, 'Eos qui ullam ex dolorum. Libero nihil dolorem fugiat quos sunt incidunt. In dignissimos quos et necessitatibus consectetur ipsam ut dolorum. Iste dolorem molestiae nobis nostrum facilis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (52, 52, 0, 52, 'Corrupti libero ut in ex qui. Est eligendi iure laborum debitis odit sit qui. Sint cumque vel minima et omnis. Harum corrupti quia consequatur dolor ullam rerum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (53, 53, 0, 53, 'Illo rerum temporibus ea incidunt. Odit nihil suscipit neque accusamus explicabo quis id. Molestias unde vitae dolorem dolor. Cupiditate cumque at architecto laboriosam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (54, 54, 0, 54, 'Alias enim dicta possimus recusandae quasi. Temporibus quasi nostrum voluptatem quo labore. Est vero voluptatum et ipsum tenetur et ut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (55, 55, 2, 55, 'Velit iure cumque illo sit nulla rerum. Beatae totam non adipisci aliquid. Natus est ut fugiat. Natus minima veniam aut deleniti.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (56, 56, 2, 56, 'Aspernatur quibusdam earum qui fugiat maxime deserunt. Incidunt cum quisquam ut explicabo suscipit officiis. Alias sint numquam quod quia aliquid veniam. Commodi voluptas vel fugiat accusamus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (57, 57, 1, 57, 'Est repudiandae libero consequatur praesentium exercitationem ut. Molestias fuga officiis voluptate sed nihil tempora qui. Aut quaerat dolorum voluptatum cupiditate impedit commodi excepturi.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (58, 58, 0, 58, 'Fuga commodi tempore nemo nulla omnis et non natus. Incidunt amet quibusdam ratione magni recusandae rerum. Quia est deserunt labore consequatur. Beatae ad velit rerum et beatae blanditiis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (59, 59, 0, 59, 'Qui id explicabo placeat distinctio iusto minima in laboriosam. Qui perferendis et architecto id consectetur aut recusandae. Numquam quia quidem pariatur eveniet est optio ut. Et alias eos et adipisci culpa cum inventore.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (60, 60, 2, 60, 'Veritatis fuga quo doloribus cupiditate. Ad error quae culpa voluptatem atque unde ipsam odio. At nemo autem fuga praesentium sapiente numquam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (61, 61, 0, 61, 'Sint qui aliquid fuga suscipit vero nihil rerum. Ducimus tempora corporis excepturi ab dignissimos sequi. Error aut ad voluptates ut. Sed ut laborum omnis vitae et. Optio repellendus esse est est dolore.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (62, 62, 0, 62, 'Aperiam autem ducimus reiciendis. Possimus consequatur ea ullam eos. Distinctio ea veniam ullam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (63, 63, 1, 63, 'Vel officiis consequatur velit odit vel maxime vel consequuntur. Qui neque libero aut laboriosam ipsa dolore. Unde voluptates iure blanditiis eum. Dolor inventore suscipit error vel nostrum eos.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (64, 64, 0, 64, 'Labore voluptatem fugiat illum nesciunt assumenda laboriosam. Distinctio molestiae optio quod nemo. Aut perspiciatis sit voluptates.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (65, 65, 1, 65, 'Itaque quod in impedit molestiae voluptatum repudiandae rem. Atque eaque facere rerum dolorem aut sunt molestias enim. Cum ullam qui ducimus enim optio non aspernatur.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (66, 66, 2, 66, 'Nam ut sit in et dicta aspernatur. Et nemo facere laborum odit explicabo voluptatibus rem. Veniam aperiam quisquam optio nostrum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (67, 67, 0, 67, 'Qui dolores et repellendus aut. Ipsam at voluptatibus qui modi qui quos autem. Molestiae dolores labore voluptatem ut. Non voluptate aliquam facilis facilis harum dignissimos et qui.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (68, 68, 1, 68, 'Qui porro illum omnis nulla est. Facere placeat labore quas et veritatis praesentium qui. Cum at rem quos quae. Dolor reiciendis et aut alias quis aperiam. Praesentium amet voluptas ducimus voluptatem eaque temporibus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (69, 69, 0, 69, 'Aliquid laborum cumque ex voluptatem minus fugit velit. Corporis culpa a voluptates aut sit magni recusandae. Non voluptatem aut et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (70, 70, 2, 70, 'Excepturi dicta veniam officiis non. Sapiente debitis eius soluta est eligendi quis sed voluptatem. Voluptas laudantium ad iusto. Consequatur nisi delectus eaque deserunt consectetur.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (71, 71, 2, 71, 'Placeat aut repellendus voluptas blanditiis aut dolores. Rerum illum nemo mollitia distinctio doloribus. Molestias dignissimos in consequatur sunt quasi qui ut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (72, 72, 0, 72, 'Suscipit aliquam sit aliquid adipisci non veritatis est ipsum. Consequatur pariatur cupiditate quo ut sit vero sed. Consequuntur laudantium eos tempora velit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (73, 73, 1, 73, 'Quis ut aut earum et sunt tempore eos. Ipsa ullam perferendis officia aut. Molestiae voluptates non voluptates a cum nulla magni dolorem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (74, 74, 0, 74, 'In porro numquam numquam et commodi enim a ut. Vel fugit optio ullam vel. Voluptas tenetur voluptatem accusantium natus dolor.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (75, 75, 0, 75, 'Eum omnis fuga qui laborum esse. Ut tempora dolor aperiam enim deleniti hic. Suscipit vero deleniti pariatur quis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (76, 76, 2, 76, 'Odio molestias corporis sunt. Modi ut aut fugit sit modi non consequatur. Qui voluptatum qui at et dolores vel dignissimos. Voluptatem dignissimos sed ea perferendis animi.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (77, 77, 1, 77, 'Repellat neque doloribus itaque et. Cum cupiditate dignissimos sit reprehenderit debitis quam a id. At minima est maxime fugiat voluptas veritatis repudiandae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (78, 78, 0, 78, 'Quae saepe commodi et recusandae. Soluta officiis dolor cupiditate dolores unde similique. Aspernatur tenetur voluptas ex culpa autem ut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (79, 79, 2, 79, 'Libero incidunt facere ducimus corrupti mollitia labore. Dolor in numquam rerum vero. Molestiae dolore fuga nostrum corrupti ratione in. Laborum repellat nobis vitae ducimus doloremque architecto et sint.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (80, 80, 0, 80, 'Distinctio praesentium consequuntur aut cum impedit facilis et. Molestiae et maiores necessitatibus amet sunt tempore eos dolor. Dolores necessitatibus amet sint sint nostrum officiis. Voluptatem id dolores adipisci sed molestiae inventore velit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (81, 81, 2, 81, 'Dolor hic cumque aut qui ipsa omnis totam. Voluptas explicabo itaque deserunt quia optio et voluptatibus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (82, 82, 2, 82, 'Non molestias laborum et atque. Incidunt et ea explicabo vel praesentium consectetur porro. Labore molestiae enim voluptas dolorem laborum cupiditate.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (83, 83, 0, 83, 'Possimus doloribus minima eum doloremque. Et tempora illo ratione eum nemo. Repellat tenetur vero ab culpa.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (84, 84, 0, 84, 'Aspernatur consectetur autem voluptas eius ipsa ratione sit. Pariatur ea qui dolorum et sequi earum dicta aliquam. Dolor veritatis numquam qui voluptas. Nemo eos omnis molestiae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (85, 85, 1, 85, 'Qui et voluptate et et. Molestiae et corrupti ut illum. Aut tempora earum et fugiat id.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (86, 86, 0, 86, 'Accusantium reprehenderit corrupti qui nemo. Vero corporis eius quia officiis ut consectetur. Necessitatibus laudantium hic labore est ea ex. Vel deserunt natus laboriosam consequatur ea facilis numquam hic.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (87, 87, 1, 87, 'Ratione eveniet et quos molestiae. Omnis non et blanditiis et soluta et qui. Quam possimus reprehenderit modi esse autem quam in ex.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (88, 88, 1, 88, 'Minima id in officiis nesciunt placeat repellendus. Odit reiciendis tempora vitae. Consectetur amet deserunt perspiciatis rerum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (89, 89, 1, 89, 'Magni incidunt molestias dolorem et maxime ut. Laudantium voluptatum sed quod veniam. Praesentium aut dolorem aut quibusdam consequatur.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (90, 90, 2, 90, 'Quos est necessitatibus ut sunt sit. Mollitia dignissimos repellendus quas consequuntur. Explicabo veniam ut et iusto sed. Aspernatur optio cum sunt aut velit. Voluptatem laudantium velit exercitationem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (91, 91, 0, 91, 'Sint accusamus nihil qui temporibus unde nostrum. Sit commodi hic nisi accusantium ut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (92, 92, 2, 92, 'Quis sed quo velit voluptatem provident eum. Voluptatem repellat totam sit cumque quia quia. Inventore itaque qui est distinctio. Sunt dolorem officia sit voluptatem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (93, 93, 0, 93, 'Dolore quo porro ut quo a eveniet. Praesentium quam vitae explicabo animi perferendis. Dicta tenetur quia voluptates dignissimos et non facilis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (94, 94, 1, 94, 'Velit qui debitis doloribus rem voluptatem quibusdam. Error excepturi rerum soluta eos. Sint dolorem id voluptas accusamus neque. Quibusdam qui neque consequatur voluptatem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (95, 95, 2, 95, 'Voluptatem fugiat perferendis fugit magni libero. Aut beatae quod aut aut reiciendis nisi. Incidunt neque error enim et. Doloremque fugit repellendus consequatur amet consequuntur sit sit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (96, 96, 1, 96, 'Qui quam molestiae ab repellat. Voluptatem voluptatum consequatur magni eligendi facere tenetur. Aspernatur officia pariatur exercitationem nostrum labore. Voluptate et quaerat ut quia doloremque velit cupiditate.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (97, 97, 1, 97, 'Nemo officia rem dicta autem eius vero ratione. Necessitatibus aut omnis asperiores corrupti odit modi iusto.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (98, 98, 2, 98, 'Dicta qui molestiae et quidem. Iusto error culpa et. Qui porro dolorum et quia inventore et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (99, 99, 1, 99, 'Et sunt laboriosam dolorem quas aut quasi quae. Sit corporis quos asperiores vitae tempora quae. Expedita autem deserunt dolorem nesciunt.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (100, 100, 2, 100, 'Et commodi sit eos sit. Quibusdam consequatur voluptatem voluptates repellendus. Blanditiis veniam quam ipsam et. Non id dolores eos doloremque.');


#
# TABLE STRUCTURE FOR: muscles
#

DROP TABLE IF EXISTS `muscles`;

CREATE TABLE `muscles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `muscle_name_en` varchar(32) NOT NULL,
  `muscle_name_pl` varchar(32) NOT NULL,
  `muscle_group` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (1, 'voluptatem', 'ut', 'voluptatem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (2, 'necessitatibus', 'consequatur', 'dicta');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (3, 'ab', 'odio', 'porro');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (4, 'quod', 'accusamus', 'magnam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (5, 'ut', 'quia', 'dolorem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (6, 'id', 'provident', 'maiores');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (7, 'explicabo', 'voluptatem', 'blanditiis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (8, 'ut', 'in', 'nisi');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (9, 'quisquam', 'ut', 'esse');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (10, 'ut', 'veritatis', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (11, 'blanditiis', 'dolore', 'inventore');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (12, 'illum', 'et', 'ducimus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (13, 'et', 'consequuntur', 'quidem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (14, 'nam', 'temporibus', 'harum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (15, 'ab', 'consequuntur', 'ut');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (16, 'expedita', 'aut', 'autem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (17, 'et', 'voluptates', 'consequatur');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (18, 'blanditiis', 'voluptas', 'est');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (19, 'numquam', 'est', 'vel');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (20, 'tempora', 'necessitatibus', 'est');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (21, 'saepe', 'nam', 'facilis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (22, 'illum', 'assumenda', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (23, 'quia', 'et', 'suscipit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (24, 'nisi', 'et', 'non');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (25, 'odio', 'incidunt', 'qui');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (26, 'repudiandae', 'veritatis', 'explicabo');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (27, 'sint', 'aut', 'vel');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (28, 'qui', 'nam', 'voluptatem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (29, 'autem', 'voluptate', 'saepe');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (30, 'neque', 'quis', 'veritatis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (31, 'magni', 'sapiente', 'fugit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (32, 'iure', 'quia', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (33, 'dicta', 'vitae', 'at');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (34, 'vero', 'est', 'qui');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (35, 'et', 'reiciendis', 'sapiente');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (36, 'dolor', 'vero', 'illum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (37, 'sunt', 'magni', 'ad');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (38, 'dicta', 'recusandae', 'placeat');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (39, 'quisquam', 'velit', 'sit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (40, 'aut', 'quo', 'nam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (41, 'omnis', 'ut', 'numquam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (42, 'quis', 'et', 'temporibus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (43, 'cum', 'non', 'dolorum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (44, 'est', 'est', 'ad');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (45, 'aspernatur', 'delectus', 'architecto');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (46, 'impedit', 'tenetur', 'nulla');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (47, 'sint', 'vel', 'pariatur');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (48, 'tempore', 'id', 'vitae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (49, 'dolorem', 'suscipit', 'necessitatibus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (50, 'et', 'hic', 'quas');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (51, 'ad', 'voluptas', 'porro');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (52, 'quae', 'atque', 'asperiores');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (53, 'ut', 'neque', 'molestias');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (54, 'consectetur', 'rerum', 'debitis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (55, 'ratione', 'doloribus', 'nihil');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (56, 'eaque', 'repellat', 'perspiciatis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (57, 'deleniti', 'nesciunt', 'minima');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (58, 'modi', 'sunt', 'nesciunt');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (59, 'dolores', 'enim', 'sed');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (60, 'nihil', 'est', 'non');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (61, 'quo', 'magni', 'dolores');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (62, 'ut', 'dolorem', 'beatae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (63, 'nisi', 'est', 'ut');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (64, 'non', 'debitis', 'sit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (65, 'suscipit', 'enim', 'iure');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (66, 'ut', 'nesciunt', 'dolores');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (67, 'inventore', 'officiis', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (68, 'autem', 'ut', 'laborum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (69, 'qui', 'quibusdam', 'magni');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (70, 'modi', 'non', 'hic');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (71, 'id', 'omnis', 'voluptate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (72, 'ea', 'qui', 'deleniti');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (73, 'inventore', 'et', 'nostrum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (74, 'fugiat', 'quos', 'voluptatum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (75, 'est', 'quae', 'libero');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (76, 'cum', 'sunt', 'laboriosam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (77, 'maiores', 'libero', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (78, 'animi', 'cupiditate', 'reiciendis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (79, 'itaque', 'sit', 'veritatis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (80, 'est', 'ullam', 'harum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (81, 'nostrum', 'iure', 'blanditiis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (82, 'cumque', 'voluptas', 'quo');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (83, 'laboriosam', 'consequatur', 'est');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (84, 'voluptate', 'consequuntur', 'voluptas');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (85, 'incidunt', 'veniam', 'accusamus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (86, 'ab', 'culpa', 'totam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (87, 'totam', 'doloremque', 'quo');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (88, 'voluptas', 'perspiciatis', 'doloremque');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (89, 'earum', 'est', 'quas');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (90, 'et', 'minima', 'voluptatem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (91, 'tenetur', 'quam', 'recusandae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (92, 'delectus', 'facere', 'aut');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (93, 'officiis', 'cum', 'beatae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (94, 'accusamus', 'dolor', 'debitis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (95, 'perspiciatis', 'rerum', 'ea');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (96, 'tenetur', 'ea', 'cupiditate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (97, 'corrupti', 'sit', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (98, 'alias', 'voluptatem', 'nihil');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (99, 'quae', 'est', 'repellat');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (100, 'est', 'nisi', 'voluptas');


#
# TABLE STRUCTURE FOR: set_logs
#

DROP TABLE IF EXISTS `set_logs`;

CREATE TABLE `set_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strength_exercise_log_id` int(11) unsigned NOT NULL,
  `set_number` tinyint(3) unsigned NOT NULL,
  `rep_count` tinyint(3) unsigned NOT NULL,
  `weight` smallint(5) unsigned NOT NULL,
  `drop_set` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `notes` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_strength_exercise_log_id` (`strength_exercise_log_id`),
  CONSTRAINT `set_logs_ibfk_1` FOREIGN KEY (`strength_exercise_log_id`) REFERENCES `strength_exercise_logs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (1, 1, 255, 0, 188, 1, 'Explicabo laboriosam nesciunt autem quibusdam id quasi libero. Iure earum quod fugiat voluptatem. Ut similique fugiat reiciendis et beatae. Voluptas aut minima et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (2, 2, 0, 255, 216, 0, 'Dolor maiores quae sed sit. Omnis unde neque autem. Reiciendis tempore molestias esse sapiente. Sit laboriosam ea ut et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (3, 3, 255, 255, 216, 0, 'Est tempore minus sequi maxime quibusdam aliquid. Aperiam neque beatae est ut voluptatem. Ducimus esse ullam sunt dolores quia quidem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (4, 4, 42, 27, 207, 0, 'Ratione unde est sapiente sint. Sed harum architecto quis dignissimos dignissimos. Consequuntur in minima repellendus. Illo aut rerum culpa maiores quia a qui autem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (5, 5, 255, 1, 48, 1, 'Voluptatum qui nobis aut explicabo deserunt itaque. Eos odit quam perspiciatis quod eum. Quo eum et deleniti adipisci.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (6, 6, 255, 7, 84, 0, 'Exercitationem dolore nesciunt quia quis necessitatibus. Saepe esse id est accusamus eos ut quis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (7, 7, 255, 255, 48, 0, 'Et atque qui hic voluptatibus. Possimus dignissimos in adipisci vero fuga. Odit delectus ut ipsum voluptate nam rerum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (8, 8, 34, 0, 161, 0, 'Rerum quis velit veniam voluptate. Magni dignissimos dolore ut modi eos dolores provident delectus. Dolores ab totam et facere culpa rerum. Totam quibusdam ipsum quam nulla.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (9, 9, 255, 255, 32, 0, 'Impedit a eius aliquid qui similique. Animi recusandae reprehenderit eaque suscipit. Molestiae quos ullam iste ut quibusdam ut nam. Dolores in voluptatem qui illum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (10, 10, 8, 255, 136, 0, 'Libero similique et voluptatem quaerat et dicta. Distinctio ut qui pariatur nulla animi sint. Quis sed reiciendis ratione sed quam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (11, 11, 0, 255, 109, 1, 'Quas ducimus veritatis ipsum qui quam ipsa quidem aut. Aut aut ipsum rerum facere quia. Architecto dolore id illo nam asperiores velit minima.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (12, 12, 45, 255, 85, 1, 'Qui consequatur error soluta architecto impedit maxime expedita. Sit cumque nihil quas ducimus. Laudantium dolores nulla nemo laborum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (13, 13, 255, 255, 21, 0, 'Enim provident rerum odit enim quas. Molestias aliquid rem et tempore. Nihil unde eum dolorem ad veritatis est autem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (14, 14, 255, 255, 186, 1, 'Sed et architecto dolorem. Non sit ab ipsam voluptas quibusdam. Ut at suscipit atque dicta eius.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (15, 15, 255, 52, 160, 1, 'Sit eligendi ipsa voluptatem facere. Laudantium repellendus in nemo aliquam sint voluptas iste consequatur. Ut optio sapiente illum saepe et. Praesentium consequatur expedita ea molestiae commodi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (16, 16, 255, 1, 120, 0, 'Non blanditiis tempora aut et dignissimos doloremque. Pariatur repellat dolores accusamus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (17, 17, 255, 255, 20, 0, 'Omnis ad labore doloremque sunt ut quos labore culpa. Et aut placeat ex debitis iusto atque sit. Quis est sed dolor accusantium sed deleniti. Sed et natus rem qui accusantium.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (18, 18, 255, 255, 96, 1, 'Nemo ut maxime temporibus facilis in. Enim ut dolorum commodi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (19, 19, 255, 255, 177, 1, 'Consequatur nisi nemo consequatur voluptas id minima. Mollitia ad amet hic iure minima est consequuntur. Voluptatem occaecati magni ex omnis molestiae ab atque. Doloribus sequi ut eum earum rerum dicta occaecati.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (20, 20, 255, 255, 199, 1, 'Nemo minima delectus ipsa expedita. Dolor quod tenetur laborum ducimus minima labore dolorem. Quam dolorum eveniet fugit harum recusandae recusandae est asperiores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (21, 21, 195, 7, 146, 1, 'Non fuga voluptatum ipsam dolorem fugit aut quae. Voluptatem illo qui voluptas dolores tempore. Blanditiis voluptatem amet aliquam possimus exercitationem delectus explicabo.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (22, 22, 12, 255, 24, 1, 'Omnis ad voluptas in asperiores eum et. Saepe nostrum consequatur voluptatibus. Qui voluptatem voluptatem et ea perferendis accusantium et sed. Est nulla consequuntur architecto quas aperiam ut ut voluptatem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (23, 23, 255, 128, 211, 1, 'Molestiae ipsum sapiente odit et nihil voluptas. Quo et minima quis labore eligendi. Et officia cum aut molestias expedita et. Quos maxime incidunt ad omnis iste recusandae et voluptatem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (24, 24, 0, 255, 146, 0, 'Ex tempora ducimus ipsum deserunt nihil pariatur magni enim. Aut aut rerum dolorum nostrum cumque. Illo nesciunt ut odio tempore eum perferendis animi. Dolorem odit minus voluptatum voluptas autem quos.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (25, 25, 255, 255, 148, 0, 'Dolorem qui deserunt fugiat quo ut alias eveniet. Facere eum tempore amet. Aut sapiente inventore ab rerum explicabo voluptas nobis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (26, 26, 255, 255, 131, 1, 'Vel rerum et quo incidunt et sit. Molestiae nam nisi et hic culpa.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (27, 27, 255, 255, 18, 0, 'Quaerat aliquam dolorem in voluptas ipsa consectetur quam. Quisquam non nostrum autem sed. Ipsum veritatis quam ea et ullam animi laborum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (28, 28, 255, 255, 227, 1, 'Deleniti sit quis voluptas excepturi. Perferendis sint suscipit et tenetur id. Ipsam expedita at consequuntur et autem ea.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (29, 29, 17, 70, 192, 1, 'Facilis ad soluta labore quae illo adipisci ab. Reiciendis vel et aut nisi. Fugiat quas aut illum non dolorum nihil eaque et. Similique aperiam ad architecto iusto id quae sequi et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (30, 30, 255, 255, 134, 1, 'Voluptate veritatis laborum numquam voluptas. Veritatis recusandae dolorem aut. Molestiae sit accusamus eligendi et. Quo vero tempore dolor.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (31, 31, 255, 255, 83, 1, 'Molestiae dignissimos facere consequatur sequi et. Nulla nemo magni voluptas magni quisquam rerum inventore. Et dolore necessitatibus saepe iste dolore. Quasi omnis aspernatur ea hic incidunt inventore dolor.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (32, 32, 255, 255, 129, 0, 'Enim amet ut minima facere ipsa doloribus. Eligendi reiciendis soluta dolore est aut inventore. Mollitia et ut natus nam quam harum natus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (33, 33, 255, 255, 218, 0, 'Natus tenetur omnis nihil nihil. Quaerat ut et autem animi facilis. Aliquid officiis sunt voluptas velit occaecati voluptatem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (34, 34, 255, 255, 205, 1, 'Nam eius cum sit. Porro cum saepe ipsa sit dicta iure aut. Autem ullam facere deleniti neque.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (35, 35, 255, 255, 158, 1, 'Consequatur sit quaerat consequatur omnis est. Illum veritatis illum voluptas id. Tenetur est cum quas accusamus delectus eligendi deserunt et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (36, 36, 255, 255, 10, 1, 'Et molestiae enim inventore molestiae ullam recusandae est. Accusantium voluptates a dolorum itaque magnam quibusdam ut. Iure mollitia blanditiis quaerat ut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (37, 37, 255, 255, 214, 0, 'Odit laborum maiores iste eligendi quia voluptatum. Ut voluptas et eligendi atque dolorem asperiores. Dolor ex suscipit nesciunt reprehenderit. Reprehenderit fugiat minus voluptas recusandae necessitatibus repudiandae. Et pariatur non excepturi et impedit hic aut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (38, 38, 255, 8, 72, 0, 'Quo autem tempora beatae corporis. Quia nobis voluptas qui aperiam beatae maxime rerum. Aliquid voluptates quia aut similique aut. Consequuntur ipsam sit natus at.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (39, 39, 255, 47, 131, 0, 'Incidunt quaerat sed dolores ex nihil. Dolores sunt et minima numquam assumenda voluptatem. Cupiditate sint dolorum aut qui exercitationem soluta.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (40, 40, 255, 1, 215, 1, 'Dignissimos praesentium autem eveniet distinctio vitae. Repellendus voluptatum soluta molestias. Natus dolorem minima et animi atque sunt.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (41, 41, 255, 255, 58, 1, 'Et maxime quo voluptatibus qui numquam. Ab qui vel occaecati aspernatur. Quam vel cumque assumenda non commodi sed. Enim odio quisquam et cum numquam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (42, 42, 255, 255, 68, 0, 'Aut accusamus ut dolorem molestiae adipisci consequatur. Rerum corporis eaque non non blanditiis voluptatem quo voluptatem. Similique molestiae sint voluptatem mollitia.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (43, 43, 0, 255, 71, 1, 'Sed pariatur aut adipisci repellendus reprehenderit architecto voluptas. Nam et et vero enim asperiores. Consequuntur perspiciatis ducimus et eum in iure.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (44, 44, 255, 50, 96, 1, 'Non et et odit nostrum nihil voluptatibus quisquam. Sit similique laborum ut sunt. Eligendi impedit ut neque eum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (45, 45, 0, 255, 176, 0, 'Sit ut ut quasi dolores qui ex. Ut cum quis facilis. Vel velit amet numquam ut amet. Magnam nobis nisi quod labore.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (46, 46, 255, 255, 113, 0, 'Ullam libero excepturi ea debitis minus quia ipsam. Esse a eum facere ipsam in qui. Nobis voluptatem amet labore quia. Dolore nam aut architecto consectetur sed.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (47, 47, 255, 255, 197, 1, 'Voluptatem qui qui autem aspernatur. Iste in fugit voluptatum ut earum nam expedita. Accusantium optio cum quia saepe.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (48, 48, 255, 255, 93, 1, 'Voluptatem atque animi placeat voluptatibus velit consequatur et consequatur. Natus non qui officia illum et provident exercitationem. Debitis nemo ut inventore occaecati dolore dolor. Est non ex iusto ut et nihil.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (49, 49, 255, 255, 176, 1, 'Quos aut alias placeat nam. Placeat quo natus error itaque doloribus quos fuga. Sunt ullam ut voluptatum est omnis animi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (50, 50, 255, 0, 104, 0, 'Occaecati et ipsa illum sed quisquam. Nam omnis sed cumque corporis aut aspernatur beatae natus. Ut iusto ipsum sed iste deserunt nulla repellat.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (51, 51, 255, 7, 71, 0, 'Explicabo consequatur et et occaecati repellendus. Qui corrupti omnis dolores ipsam deserunt est voluptas. Autem qui quas rerum magni reprehenderit rerum consequuntur.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (52, 52, 255, 255, 194, 1, 'Itaque dolore officia cupiditate eius recusandae qui. Ad reprehenderit et cumque id omnis quis sit. Est aut molestias laboriosam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (53, 53, 0, 255, 28, 0, 'Quia quo aliquam molestias perferendis ad architecto et. Amet unde quam doloremque a. Enim vero corrupti possimus at placeat vitae odio.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (54, 54, 255, 255, 57, 0, 'Optio facilis veritatis incidunt et expedita. Sunt veritatis tempora velit aut. Id illum officia sint recusandae quisquam dolor consectetur. Numquam cupiditate dolor est nobis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (55, 55, 255, 0, 188, 1, 'Qui est culpa delectus enim dolorem quod voluptatem. Fuga id atque animi omnis fuga. Molestiae impedit molestiae facilis saepe beatae. Velit maxime esse quo dignissimos assumenda animi laborum numquam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (56, 56, 0, 255, 123, 0, 'Dolore voluptas et in soluta ut eius. Est debitis eos fugit porro odio tempora et. Explicabo sunt sunt odit. Similique ad voluptatem incidunt sapiente voluptatem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (57, 57, 7, 255, 39, 0, 'Est sint et est harum nostrum odit. Voluptatem et dolorem enim.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (58, 58, 97, 255, 188, 1, 'Architecto omnis sed earum aut quis voluptas. Ducimus eos est eos modi. Optio quos quo ut ut sed saepe asperiores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (59, 59, 1, 255, 171, 0, 'Ad reiciendis corporis rerum debitis. Occaecati praesentium dolor dicta. Eveniet perferendis commodi distinctio unde nobis et nisi doloribus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (60, 60, 85, 9, 53, 0, 'Maxime eaque labore consequatur aut blanditiis officia possimus. Qui corrupti et enim sint odio ullam in. Odit illo qui quia deleniti tempora temporibus. Velit architecto est natus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (61, 61, 255, 255, 123, 1, 'Tenetur esse consequatur rerum accusantium et reprehenderit omnis. Soluta iusto totam debitis et. Possimus quibusdam omnis inventore repudiandae.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (62, 62, 255, 255, 28, 0, 'Et illum est nihil dolore quia doloribus minus id. Velit explicabo ut unde et nihil placeat omnis. Debitis officia consequatur possimus libero et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (63, 63, 255, 57, 48, 0, 'Sit quibusdam aspernatur voluptates ea. Nihil nemo aut eius accusantium porro eum consequatur. Dolores minima similique neque rerum ea. Voluptas cum ut quae.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (64, 64, 255, 255, 22, 1, 'Doloribus autem est sit ea. Dolor voluptas non cumque minima voluptates.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (65, 65, 255, 255, 45, 1, 'Id sed deserunt voluptatum laudantium quae. Hic vel magni saepe voluptas commodi et. Perferendis non aliquid suscipit. Aut et error et provident velit odit ut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (66, 66, 17, 9, 166, 1, 'Esse architecto facere omnis magni perspiciatis maxime ut. Numquam et deleniti aut. Aut et expedita distinctio laboriosam nam et rerum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (67, 67, 255, 3, 124, 0, 'Nam nisi molestiae dolores qui quia porro. Incidunt laborum odit rerum tempora eum aut modi. Cum mollitia explicabo magni ea est voluptas eum unde. Voluptas pariatur voluptatum est eos.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (68, 68, 255, 255, 197, 1, 'Quaerat impedit voluptas id illo ipsa aspernatur necessitatibus quo. Blanditiis tempora sed ea. At iure officiis eos asperiores iusto.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (69, 69, 255, 255, 42, 0, 'Autem accusamus dolorem enim aut nesciunt qui accusamus. Harum minus velit aliquid placeat reiciendis porro. Dolores eaque sint doloremque eveniet. Qui sit voluptatem necessitatibus earum id.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (70, 70, 216, 255, 92, 0, 'Nostrum qui vel voluptatem vel maiores. Id reiciendis fugit aut ut voluptas. Molestiae accusamus accusantium sit minus magnam et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (71, 71, 0, 255, 164, 0, 'Ab quia molestiae nostrum. Voluptas occaecati esse tenetur omnis officiis facere sunt. Voluptatem quam aut asperiores inventore provident quis quia voluptates.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (72, 72, 255, 3, 18, 0, 'Earum dolor libero laudantium non necessitatibus. Ut velit maiores modi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (73, 73, 255, 255, 136, 1, 'Totam id corporis similique placeat nesciunt. Temporibus eum omnis ea odit. Sed nesciunt hic eaque laborum aut enim.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (74, 74, 0, 112, 160, 1, 'Pariatur deserunt aliquid perferendis sunt rerum voluptas. Quos doloremque quo consequatur culpa sed. Dolores repellat voluptatem necessitatibus debitis voluptatum nostrum. Nesciunt accusamus et eius necessitatibus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (75, 75, 255, 89, 134, 0, 'Porro praesentium voluptatum et nemo ipsam. Ad dolore quisquam voluptas rem vitae consequatur. Consequuntur ex sint eligendi dolore cum aut. Ipsam quis excepturi velit illum aut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (76, 76, 255, 0, 166, 0, 'Repellendus libero nesciunt rerum voluptates minima omnis sapiente eos. Veritatis quis cum vitae quo. Et exercitationem qui sit sapiente modi. Alias commodi explicabo omnis est consequatur. Sequi exercitationem ex voluptate ex ut expedita itaque.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (77, 77, 255, 0, 11, 1, 'Expedita ratione soluta quas voluptatem praesentium laborum. Ducimus corrupti magnam qui ipsum aut. Vitae nobis est esse.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (78, 78, 255, 255, 93, 1, 'Earum aliquam aut qui laudantium. Est dolorum sunt atque sequi voluptatem aut ullam. Deleniti molestias officia totam molestias incidunt.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (79, 79, 73, 8, 30, 1, 'Perferendis aspernatur et et ea cupiditate quasi. Nobis ex quibusdam dolor id laborum dolores nihil. Qui quam facere nihil et asperiores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (80, 80, 255, 244, 111, 0, 'Sit deserunt maiores ut. Repudiandae sint eligendi dignissimos omnis. Harum itaque sunt sed repellat consequatur rerum iusto error. Animi aperiam et cumque quia ea ipsam illo temporibus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (81, 81, 255, 255, 225, 1, 'Laborum dicta ut nihil cumque expedita id aperiam eveniet. Omnis provident libero dolor enim. Fuga totam libero ipsa.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (82, 82, 255, 255, 35, 1, 'Corrupti rerum dignissimos dicta ut nostrum. Fugiat est est nobis et perferendis consequatur. Expedita et id ipsa et provident ex.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (83, 83, 255, 7, 101, 1, 'Est voluptatum et beatae dolor magnam. Blanditiis nesciunt est minima odio ipsum quam. Ut nemo nostrum sit. Eum nulla nisi consequatur laudantium doloremque omnis qui praesentium.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (84, 84, 46, 255, 228, 0, 'Natus aut ad velit omnis quo. Dicta debitis qui molestiae. Veniam deleniti architecto magni ut esse. Omnis voluptatem atque facilis velit sunt.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (85, 85, 0, 63, 170, 1, 'Quod ut aut quibusdam distinctio illo. In qui quas sed ipsa sed. Iste voluptatem ullam nulla saepe. Deserunt eaque animi et ut nisi sed soluta.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (86, 86, 6, 255, 90, 1, 'Nemo rerum doloribus aut error quas. Voluptate ducimus et rerum nihil earum voluptates voluptatum nesciunt. Iste eligendi quia ea blanditiis ut eveniet molestias. Aut voluptatem veritatis ut voluptatem nihil aut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (87, 87, 255, 255, 51, 1, 'Est iure et vitae deserunt quo modi quisquam at. Rerum consectetur sed sunt. Sequi sit ea qui ut saepe id maiores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (88, 88, 255, 0, 40, 1, 'Enim est et eos ipsam fugit rerum harum et. Perspiciatis aliquid aperiam sequi tempora eos ut. Natus laudantium recusandae est minima ullam atque at.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (89, 89, 255, 255, 197, 0, 'Commodi expedita et beatae odio eum voluptatem dignissimos. Ex velit sit quas voluptate totam et consequatur aut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (90, 90, 82, 255, 114, 0, 'Alias aliquam atque occaecati quas nesciunt minima. Veritatis sint sit deleniti magni exercitationem. Molestiae error velit asperiores. A voluptatem doloremque magni et voluptate ut. Et eum iusto quasi qui culpa.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (91, 91, 255, 255, 124, 1, 'Nihil repudiandae ipsum soluta et laborum excepturi officia qui. Illo occaecati totam tenetur aspernatur nemo itaque odit. Labore rerum sit totam est. Provident nihil quaerat nostrum molestiae animi nemo.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (92, 92, 255, 1, 162, 0, 'Quis sed quam sed sunt corrupti animi vero. Similique qui sed adipisci voluptas qui quos veniam. Aut quam molestias rerum earum accusamus. Sequi consequatur voluptatem corporis et voluptas repellat temporibus ab.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (93, 93, 255, 71, 91, 1, 'Molestias in omnis hic molestiae. Est aut enim officiis aperiam occaecati qui ut. Aut voluptatem eius officiis error distinctio excepturi distinctio similique. Itaque quas aut qui ut quaerat maiores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (94, 94, 255, 255, 34, 0, 'Est omnis debitis non reprehenderit magnam et molestiae quod. Quia explicabo quia ut et est quae. Odit est veritatis quisquam voluptates deserunt est. Eius dolores eum dolores hic id aliquid. Et aut et at impedit id.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (95, 95, 255, 255, 153, 1, 'Doloremque quod saepe sint alias at. Distinctio neque maxime autem odio mollitia pariatur iure quos.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (96, 96, 0, 65, 24, 1, 'Amet sed eius quae sit repudiandae est vel. Laborum debitis quo quia quod sequi sapiente placeat. Et sit sit consequatur cumque quae. Fuga autem quam odit harum ratione voluptatem optio.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (97, 97, 255, 255, 221, 0, 'Iure excepturi dolorem odio itaque sunt ut. Qui repellat suscipit ut optio nihil. Quod dolor omnis repellat ab nisi inventore vero.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (98, 98, 255, 255, 184, 0, 'Qui autem et laboriosam non numquam id corporis. Necessitatibus reprehenderit repellendus quo laudantium aspernatur cupiditate totam. Enim vel totam rerum animi. Quis enim sit et ratione numquam tenetur enim. Adipisci voluptates mollitia nihil numquam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (99, 99, 255, 255, 31, 0, 'Et consequatur aliquam cupiditate est. Velit animi odio amet eius. Dolores optio sit omnis. Ipsum neque eveniet aperiam eum nobis eligendi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (100, 100, 7, 255, 92, 0, 'Non iure accusantium molestiae unde deleniti. Rem sed error eum iusto expedita facere.');


#
# TABLE STRUCTURE FOR: strength_exercise_logs
#

DROP TABLE IF EXISTS `strength_exercise_logs`;

CREATE TABLE `strength_exercise_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) unsigned NOT NULL,
  `exercise_id` int(11) unsigned NOT NULL,
  `notes` varchar(512) DEFAULT NULL,
  `list_position` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_session_id` (`session_id`),
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `strength_exercise_logs_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (1, 1, 1, 'Est dolorum qui consequatur. Optio enim quas sed itaque qui. Explicabo rem sunt aut tempora rerum nemo. Soluta harum qui quidem blanditiis iusto nulla.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (2, 2, 2, 'Explicabo ipsa reiciendis facilis temporibus voluptas sapiente numquam. Asperiores omnis maiores rerum error temporibus. Ab sit impedit quia magni enim. Soluta voluptas qui quia quis aut. Dolor ut dolor a dolor quis ducimus.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (3, 3, 3, 'Quia deserunt quae est iste necessitatibus sint. Beatae eos ut sunt. Veniam consequatur et optio deleniti rerum nihil.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (4, 4, 4, 'Sit iure autem qui qui aspernatur. Veritatis et sit placeat nemo voluptas. Molestiae rem sapiente ab ut dolores.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (5, 5, 5, 'Vitae autem minima incidunt. Fuga sunt architecto suscipit nulla nam dolor molestias suscipit. Corporis facere quasi dolor temporibus.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (6, 6, 6, 'At qui et qui numquam. Dolorem et delectus recusandae quasi id. Incidunt aut deserunt dolor dolor quos. Necessitatibus expedita amet consequatur pariatur itaque.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (7, 7, 7, 'Quasi pariatur eligendi aut omnis. Quaerat sed debitis tempore ea delectus aut. Est labore esse odio tempore inventore est.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (8, 8, 8, 'Accusamus qui quas quaerat vel et. Harum iusto doloremque et velit. Voluptate voluptas voluptatem similique vero ut ducimus omnis.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (9, 9, 9, 'Possimus deserunt voluptatem sapiente sit porro vitae ea. Deleniti sequi sint perferendis dolores.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (10, 10, 10, 'Sequi deserunt quas minus nihil optio. Reiciendis quia quam magni iusto aliquam facilis illo provident.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (11, 11, 11, 'Pariatur est ipsum itaque quaerat eius quis. Sit tempora voluptatem ut accusamus magnam nam soluta. Quis et ducimus adipisci vel. Accusamus repellendus aut minus explicabo cum officiis.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (12, 12, 12, 'Qui molestiae ducimus earum veritatis officiis perspiciatis. Enim harum consequatur aut delectus nam. Vel molestiae beatae modi culpa consequatur labore.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (13, 13, 13, 'Error distinctio provident et assumenda. Fuga quia autem dolor sit nihil ab. Molestias excepturi qui omnis porro dignissimos est. Aliquid consequatur sint sed sint suscipit.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (14, 14, 14, 'Eaque vel aut autem ipsum. Ea quas deserunt et at rerum voluptatem dolor.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (15, 15, 15, 'Adipisci reprehenderit incidunt aspernatur veniam. Cumque fuga voluptates doloremque voluptatem et laborum quaerat error. Accusantium id dicta occaecati velit et. Sapiente tenetur delectus et nihil.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (16, 16, 16, 'Corrupti quia tenetur dolorem. Voluptatibus voluptatum voluptatum facere similique est. Vitae sit doloribus minima quia.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (17, 17, 17, 'Eveniet ea ducimus qui ut adipisci rerum. Culpa minus iure nemo quaerat natus cupiditate at. Suscipit cupiditate pariatur consectetur non. Natus maxime soluta quia molestiae.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (18, 18, 18, 'Sapiente vero veritatis similique quo omnis blanditiis aspernatur eum. Enim quo cupiditate autem unde iure. Ut possimus exercitationem eum est in. Minima aut quaerat accusamus sapiente qui.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (19, 19, 19, 'Sed ut perspiciatis illo vero sit aliquam. Ipsa eum veniam autem rem praesentium. Voluptatem laboriosam eos provident odio. Quos aliquam et architecto ex et officia provident. Accusantium sit dolores dignissimos vero aperiam natus.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (20, 20, 20, 'Velit inventore quo enim nam reiciendis. Similique mollitia molestias et voluptate et suscipit est. Voluptatem voluptatem itaque et vitae. Pariatur labore reiciendis pariatur pariatur nobis necessitatibus in.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (21, 21, 21, 'Sint architecto occaecati ut vitae. Sint qui voluptatibus possimus sed harum itaque pariatur. Aliquam in placeat eum atque aut.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (22, 22, 22, 'Quis nihil sint exercitationem consequatur voluptatem. Nemo quod et tempore dolor cupiditate aut. Velit odit omnis et voluptatem necessitatibus quibusdam.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (23, 23, 23, 'Odit ea ducimus et iusto ut harum. Ut consectetur voluptas sapiente nulla cupiditate perferendis reprehenderit voluptatem. Modi ab iste ducimus quos quae. Incidunt unde qui sed omnis.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (24, 24, 24, 'Cupiditate in eum eum delectus. Et et quod dolores voluptas. Enim similique et accusamus.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (25, 25, 25, 'Repudiandae voluptatum saepe sunt maiores officia incidunt et. Quas voluptatem enim rerum delectus ut a aut. Nam sed nobis sit perspiciatis eum tempora reiciendis modi. Enim amet aut cumque cumque enim. Omnis aut consequatur quia.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (26, 26, 26, 'Animi voluptate quia ut. Natus laudantium eveniet quam itaque rerum quibusdam. Et hic qui similique distinctio. Quis quasi omnis dicta doloremque maiores laboriosam impedit. Dolorem perspiciatis aut eum repellat qui fugit cum.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (27, 27, 27, 'Similique amet dolorum quasi aspernatur. Velit voluptate et et quidem expedita aspernatur eveniet. Eligendi vel deserunt et ea praesentium voluptas nobis. Dolores natus sit eveniet maxime perferendis inventore accusantium dignissimos.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (28, 28, 28, 'Eos non aut vel est quidem reiciendis ut quam. Esse iure cupiditate qui nesciunt delectus voluptatem. Ipsam architecto distinctio consequatur magnam.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (29, 29, 29, 'Hic tempore reiciendis quibusdam. Illum aliquid et blanditiis. Nam blanditiis cumque quibusdam quibusdam quisquam.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (30, 30, 30, 'Natus officiis corporis tempore similique minima nam ut aut. Iusto reprehenderit placeat ea et quia esse esse.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (31, 31, 31, 'Commodi et reprehenderit et ex quia. Laudantium qui eum voluptate perferendis. Sunt fugiat minus qui hic.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (32, 32, 32, 'Fugit rerum et dicta in repellendus dolorem. Eos consequatur adipisci temporibus ab non. Quaerat et aspernatur qui ducimus. Placeat et necessitatibus sapiente ab et ut dicta.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (33, 33, 33, 'Dolor dolores occaecati qui earum cumque sed culpa et. Error odio autem eum voluptatibus animi in consequuntur. Ullam perspiciatis nisi ut aut. Reiciendis laboriosam vel aut voluptas non similique.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (34, 34, 34, 'Sed aut architecto sed consequuntur quas ipsa. Neque vel placeat iusto quo neque sed sequi. Tempora officia ut nobis quisquam id.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (35, 35, 35, 'Ea repudiandae laudantium nesciunt sequi architecto tenetur sed officia. Incidunt molestias ipsam sed odio in et.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (36, 36, 36, 'Qui explicabo eum vel illum provident. Consequatur quis consequatur ullam maxime expedita odio voluptate.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (37, 37, 37, 'Aut eligendi architecto maiores aperiam dolorem corporis quia. Rerum quo ut quia rerum suscipit eligendi quia. Sed nisi laborum soluta recusandae fugiat. Expedita qui possimus magni cum earum aliquid.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (38, 38, 38, 'Molestias beatae est ratione illum expedita assumenda officia. Veritatis asperiores quo minima ut. Quos neque facere quos eligendi omnis quis molestiae. Quas aut fugiat alias nihil et similique.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (39, 39, 39, 'Et fugit harum quo fuga. Nesciunt eos dolorum repellat sit impedit voluptates unde illo. Voluptas ducimus incidunt sunt sint maiores sunt quisquam.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (40, 40, 40, 'Ipsam neque veritatis nulla ad architecto. Non eum facere magni accusantium temporibus. Omnis nihil quasi iusto quaerat vel.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (41, 41, 41, 'Numquam dicta et iure omnis eaque. Ipsam blanditiis aut nesciunt voluptas ipsam facere adipisci. Blanditiis accusamus ullam earum eligendi aut. Praesentium aut velit et quod. Sint fuga illo sed et.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (42, 42, 42, 'Consequatur et rerum vel id dolorem. Perferendis reprehenderit corrupti ad omnis qui. Deserunt voluptatem est aut in et ratione. Atque sit magni magnam expedita id sint et.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (43, 43, 43, 'Quia quia consequatur tenetur ea. Et necessitatibus id sed molestiae voluptatem est nesciunt autem. Fuga et minus qui dolorum aperiam dicta accusamus.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (44, 44, 44, 'Consectetur eos et voluptate neque ut quidem dolorum. Dicta saepe velit delectus nulla. Commodi quisquam animi perferendis ut dolores autem ipsa molestiae.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (45, 45, 45, 'Delectus sed molestiae veniam enim voluptatibus nihil. Reiciendis voluptatem qui sunt consequatur consequuntur. Ut sed quos tempora et odit. Ex quae excepturi non quo vero saepe qui. Voluptatem cum id sapiente earum dolorem excepturi.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (46, 46, 46, 'Tenetur sequi architecto qui quis. Consequatur perferendis illum necessitatibus exercitationem reprehenderit possimus.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (47, 47, 47, 'Voluptatum placeat voluptatem voluptatem consequuntur vitae voluptas. Id vel vitae ad ex ratione. Eveniet nesciunt sapiente eius placeat.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (48, 48, 48, 'Reprehenderit unde molestiae quo explicabo enim. Laboriosam nihil et sed quidem architecto ratione enim. Quo eum sunt corporis labore eligendi itaque. Dolorem eum et facere dolor qui.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (49, 49, 49, 'Perferendis libero deserunt explicabo debitis a laborum in. Vero autem odio ea.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (50, 50, 50, 'Natus et sit id et nihil rerum. Cumque eos dolorem nisi ipsum aperiam est cupiditate. Voluptatem et officiis officiis odit placeat consequatur et. Mollitia fugit sunt ullam laudantium voluptatum rerum quia.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (51, 51, 51, 'Eos quisquam illo eaque. Iure occaecati aut consequatur non. Tempora aut est nemo aut sequi dolores accusamus. Ut delectus sit illum expedita.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (52, 52, 52, 'Cumque esse quis eos fugit consequatur. Labore velit sit ullam aut et saepe eius. Dignissimos omnis sit sapiente qui laboriosam maiores voluptatibus.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (53, 53, 53, 'Officiis voluptatem repellendus qui qui accusamus dolorem. Commodi quidem aut sit sunt dicta. Amet excepturi rerum doloribus et sapiente. Fugiat facere facere similique vero unde architecto.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (54, 54, 54, 'Et omnis qui veritatis est laboriosam voluptas nam temporibus. Mollitia delectus odit aliquam explicabo molestias rem qui. Quis quidem doloremque doloribus ea porro quasi culpa.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (55, 55, 55, 'Sed alias voluptas quas accusantium odit. Incidunt ipsa esse reprehenderit accusantium impedit libero. Optio saepe amet libero libero ut eaque praesentium. Rerum magnam facere consequuntur maxime aspernatur. Doloremque aut sit dolorem.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (56, 56, 56, 'Omnis accusantium eos quae reiciendis. Impedit incidunt voluptatibus placeat consequatur nam. Sequi nulla hic molestias adipisci omnis dolores.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (57, 57, 57, 'Sequi quo veniam voluptatibus quos nisi. Illo cumque qui quas iure ipsam omnis qui. Natus saepe aut earum.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (58, 58, 58, 'Blanditiis ducimus eius est. Ratione ut earum nostrum quaerat sint maxime. Est aut impedit sunt voluptate doloribus quia facilis corrupti. Cupiditate velit ut recusandae facere qui et hic.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (59, 59, 59, 'Aut nihil nobis commodi necessitatibus reiciendis. Quia explicabo rem quo ex debitis quo esse.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (60, 60, 60, 'Eaque sapiente fuga quia doloremque recusandae enim fugit. Aut accusamus dolores numquam. Rem repellat aut est voluptas quasi.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (61, 61, 61, 'At iusto incidunt temporibus. Molestias excepturi nesciunt praesentium voluptas suscipit quia modi est. Quia illum provident quia pariatur rerum dolore dolor.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (62, 62, 62, 'Omnis optio ratione excepturi et quia in. Suscipit dolores asperiores molestias molestiae beatae mollitia et. Similique praesentium provident repudiandae molestiae animi id.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (63, 63, 63, 'Amet sed repellendus ea assumenda ullam sapiente accusamus. Vero sunt et et sit fugit. Possimus nesciunt tempore quia asperiores enim.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (64, 64, 64, 'Sed soluta sit tempore ipsam quo non iusto. Qui veniam harum sapiente. Velit maiores ducimus optio accusantium et possimus. Sit aliquam quisquam aut earum rerum.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (65, 65, 65, 'Dolores delectus vero eius alias non dolore minima maxime. Atque perspiciatis molestiae cumque rerum inventore non illum. Nam illo est neque nemo consectetur. Eos commodi illum repellat aut ad culpa ut qui.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (66, 66, 66, 'Facere est perferendis nesciunt et nihil cum occaecati. Explicabo consequatur illo laborum sed corrupti beatae. Asperiores praesentium possimus odit eligendi accusantium aut. Omnis id beatae aut.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (67, 67, 67, 'Sapiente fuga quo eum dicta est voluptatem. Vel exercitationem rem totam vel commodi. Numquam qui sunt ut delectus.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (68, 68, 68, 'Voluptatum nulla expedita ut tempore nulla. Natus qui repellendus quia quae. Rem magni laudantium a vel deserunt nihil voluptas aut. Et ducimus consequatur deserunt non ad molestias. Molestias commodi sit reprehenderit officia non totam amet.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (69, 69, 69, 'Voluptatem voluptatem autem et. Consectetur sit ipsa iusto libero. Distinctio non odio et quas.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (70, 70, 70, 'Eos qui sit porro et facilis in. Quos dignissimos sed est pariatur voluptatem laborum est. Minus mollitia quibusdam itaque sit.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (71, 71, 71, 'Adipisci enim sapiente soluta ut id. At quos suscipit itaque perspiciatis accusamus incidunt. Distinctio deleniti tempore a perspiciatis nihil beatae ea eius.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (72, 72, 72, 'Facere sed enim repudiandae eius laudantium. Dolores veritatis voluptates qui. Culpa eum aut quod sit fuga.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (73, 73, 73, 'A reprehenderit vitae ut quisquam quisquam omnis. Asperiores autem maxime corrupti non architecto atque similique. Repellendus quia maxime tempora architecto. Beatae quas ut sed veniam quisquam explicabo doloribus.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (74, 74, 74, 'Unde non quam et accusamus mollitia error harum suscipit. Similique aut distinctio perferendis reiciendis nostrum. Hic ut blanditiis odit dolores voluptatem accusantium. Et distinctio non aut ullam vitae.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (75, 75, 75, 'Temporibus excepturi porro rerum dolorum omnis iure odio. Quo quos voluptas aut tempore voluptas assumenda assumenda. Incidunt harum quas ea modi ea eos soluta. Qui sit exercitationem a non eius vel dolorem.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (76, 76, 76, 'Accusantium velit non aut. Veniam quisquam recusandae sed quasi corporis aliquid. Tenetur assumenda voluptas ex excepturi id.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (77, 77, 77, 'Iure quo magnam ab molestias. Et aut ex incidunt eaque vel aut accusantium ut. Aut et aut vero nihil provident soluta quisquam officia.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (78, 78, 78, 'Alias excepturi error illo dolorem laborum. Dolor praesentium ipsam atque quisquam. Aut rerum voluptas et aut temporibus. Fugit velit esse dolorem quibusdam.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (79, 79, 79, 'Laudantium inventore quisquam perferendis ut. Ea id dolor minima asperiores odit asperiores in ratione. Reprehenderit et asperiores cumque perferendis quos sapiente.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (80, 80, 80, 'Vero expedita illum eos asperiores. Consequatur natus modi voluptates incidunt. Maiores repellendus nobis itaque dignissimos quaerat et. Reiciendis placeat mollitia omnis ea quas praesentium.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (81, 81, 81, 'Accusamus ad nihil ut cupiditate aliquid. Earum sit sapiente dolorem optio odit impedit.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (82, 82, 82, 'Exercitationem omnis sit dolorem aperiam ipsum aut consequatur. Iure recusandae qui minima deserunt ipsum voluptatem. Voluptatem iste minus sed dolorum et rerum delectus.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (83, 83, 83, 'Consequatur voluptatem eligendi iure amet. Fuga in impedit architecto mollitia.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (84, 84, 84, 'Eveniet atque fugiat quo eligendi. Sunt autem omnis quae dolores autem. Quis consequatur ipsum ut dolore provident hic. Corrupti et quaerat qui nostrum deserunt dolores qui.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (85, 85, 85, 'Nostrum asperiores optio et rem. Sunt eum molestias labore aut magni recusandae. Et occaecati facere et exercitationem facere. Enim ullam quo quia id.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (86, 86, 86, 'Consequuntur voluptatem neque est sunt autem. Corporis sunt illum aperiam recusandae. Necessitatibus quae adipisci cumque repellendus unde atque dolores.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (87, 87, 87, 'Optio voluptas libero quis. Odit soluta veritatis quia natus. Nihil earum consequuntur quae ullam optio aperiam voluptatem numquam.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (88, 88, 88, 'Qui adipisci ut porro. Velit est similique rerum et voluptates dolore.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (89, 89, 89, 'In voluptate aut quae quia ea. Ducimus numquam consequatur ex ad aut quo optio. Iure alias occaecati et in. Et cumque mollitia nobis et saepe porro.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (90, 90, 90, 'Officia quam sunt veniam quasi tempora nesciunt. Quibusdam autem molestias vero est voluptatem dolor. Iusto qui dolor architecto vero.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (91, 91, 91, 'Necessitatibus dolorum odit ut optio error quis. Sed accusantium ut est perspiciatis. Sed beatae pariatur ex molestiae repudiandae veniam. Nam cum voluptatem tenetur magnam reiciendis.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (92, 92, 92, 'Repudiandae aspernatur voluptatem odio dolorem totam eos. Aspernatur saepe perferendis aut adipisci. Debitis voluptatem perferendis tempora id adipisci facere in. Deleniti libero ducimus molestiae.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (93, 93, 93, 'Voluptatem autem optio voluptatem repudiandae ipsam pariatur. Soluta eos alias sed aspernatur tenetur. Aut et porro quae labore nam.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (94, 94, 94, 'Tempora voluptatem consectetur accusantium hic soluta. Labore ratione non reprehenderit sed voluptatem quia accusamus. Veniam magni aut eum et. Voluptatem officia aut ipsum et.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (95, 95, 95, 'Est sit omnis ex distinctio. Et quia vero sint minima rerum. Velit id dignissimos recusandae quo libero.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (96, 96, 96, 'Dolor corporis beatae ducimus sit. Repellat optio odit tempora. Magni alias dignissimos autem atque.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (97, 97, 97, 'Omnis fugiat deserunt magni quo a dolores. Provident nisi quod alias ducimus. Est sunt ipsa repellat eos.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (98, 98, 98, 'Ut veniam ab ratione aut dolore. Quis placeat eos explicabo maiores rerum est at aperiam. Et eos quaerat accusamus officia. Ad est cumque omnis dolorem deleniti ut dolores.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (99, 99, 99, 'Consequatur quae cupiditate expedita excepturi totam libero. Velit eaque exercitationem nobis unde deserunt quo. Nihil quia nobis corrupti inventore.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (100, 100, 100, 'Nihil quaerat blanditiis dicta quia in et autem. Ut fuga culpa rerum ut eius sit nostrum vel. Exercitationem iste omnis vel aliquid. Aut sed sunt vero quas aut distinctio nihil. Sit nisi eligendi et laboriosam expedita inventore.', 6);


#
# TABLE STRUCTURE FOR: strength_exercise_muscles
#

DROP TABLE IF EXISTS `strength_exercise_muscles`;

CREATE TABLE `strength_exercise_muscles` (
  `strength_exercise_id` int(11) unsigned NOT NULL,
  `muscle_id` int(11) unsigned NOT NULL,
  KEY `strength_exercise_id` (`strength_exercise_id`),
  KEY `idx_muscle_id` (`muscle_id`),
  CONSTRAINT `strength_exercise_muscles_ibfk_1` FOREIGN KEY (`muscle_id`) REFERENCES `muscles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strength_exercise_muscles_ibfk_2` FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercise_properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (1, 1);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (2, 2);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (3, 3);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (4, 4);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (5, 5);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (6, 6);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (7, 7);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (8, 8);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (9, 9);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (10, 10);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (11, 11);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (12, 12);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (13, 13);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (14, 14);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (15, 15);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (16, 16);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (17, 17);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (18, 18);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (19, 19);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (20, 20);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (21, 21);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (22, 22);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (23, 23);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (24, 24);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (25, 25);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (26, 26);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (27, 27);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (28, 28);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (29, 29);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (30, 30);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (31, 31);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (32, 32);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (33, 33);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (34, 34);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (35, 35);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (36, 36);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (37, 37);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (38, 38);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (39, 39);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (40, 40);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (41, 41);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (42, 42);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (43, 43);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (44, 44);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (45, 45);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (46, 46);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (47, 47);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (48, 48);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (49, 49);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (50, 50);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (51, 51);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (52, 52);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (53, 53);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (54, 54);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (55, 55);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (56, 56);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (57, 57);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (58, 58);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (59, 59);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (60, 60);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (61, 61);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (62, 62);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (63, 63);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (64, 64);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (65, 65);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (66, 66);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (67, 67);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (68, 68);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (69, 69);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (70, 70);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (71, 71);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (72, 72);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (73, 73);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (74, 74);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (75, 75);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (76, 76);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (77, 77);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (78, 78);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (79, 79);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (80, 80);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (81, 81);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (82, 82);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (83, 83);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (84, 84);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (85, 85);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (86, 86);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (87, 87);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (88, 88);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (89, 89);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (90, 90);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (91, 91);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (92, 92);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (93, 93);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (94, 94);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (95, 95);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (96, 96);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (97, 97);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (98, 98);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (99, 99);
INSERT INTO `strength_exercise_muscles` (`strength_exercise_id`, `muscle_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: strength_exercise_properties
#

DROP TABLE IF EXISTS `strength_exercise_properties`;

CREATE TABLE `strength_exercise_properties` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exercise_id` int(11) unsigned NOT NULL,
  `set_number` tinyint(3) unsigned NOT NULL,
  `rep_count` tinyint(3) unsigned NOT NULL,
  `weight` smallint(5) unsigned NOT NULL,
  `drop_set` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `strength_exercise_properties_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (1, 1, 0, 255, 160, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (2, 2, 83, 255, 184, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (3, 3, 53, 1, 55, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (4, 4, 1, 4, 59, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (5, 5, 255, 255, 120, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (6, 6, 255, 69, 78, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (7, 7, 255, 255, 140, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (8, 8, 255, 255, 31, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (9, 9, 255, 255, 144, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (10, 10, 255, 255, 178, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (11, 11, 255, 255, 165, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (12, 12, 0, 255, 36, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (13, 13, 138, 255, 169, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (14, 14, 255, 255, 209, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (15, 15, 255, 255, 69, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (16, 16, 5, 255, 134, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (17, 17, 0, 255, 91, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (18, 18, 255, 255, 207, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (19, 19, 255, 255, 165, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (20, 20, 0, 255, 147, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (21, 21, 255, 255, 46, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (22, 22, 255, 55, 180, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (23, 23, 36, 255, 36, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (24, 24, 255, 6, 58, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (25, 25, 255, 255, 108, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (26, 26, 255, 255, 91, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (27, 27, 255, 31, 230, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (28, 28, 255, 255, 196, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (29, 29, 255, 255, 116, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (30, 30, 255, 3, 182, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (31, 31, 255, 1, 193, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (32, 32, 3, 255, 92, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (33, 33, 255, 255, 68, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (34, 34, 255, 0, 89, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (35, 35, 86, 0, 224, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (36, 36, 6, 9, 141, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (37, 37, 0, 255, 217, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (38, 38, 4, 255, 131, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (39, 39, 0, 255, 118, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (40, 40, 255, 0, 114, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (41, 41, 255, 255, 218, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (42, 42, 3, 255, 211, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (43, 43, 255, 1, 82, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (44, 44, 224, 255, 192, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (45, 45, 255, 255, 113, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (46, 46, 255, 255, 19, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (47, 47, 0, 255, 195, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (48, 48, 255, 255, 138, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (49, 49, 0, 255, 14, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (50, 50, 3, 255, 187, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (51, 51, 255, 63, 47, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (52, 52, 22, 255, 47, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (53, 53, 255, 255, 51, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (54, 54, 255, 255, 159, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (55, 55, 255, 255, 64, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (56, 56, 255, 255, 206, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (57, 57, 255, 0, 146, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (58, 58, 255, 255, 157, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (59, 59, 255, 255, 84, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (60, 60, 255, 255, 64, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (61, 61, 255, 255, 159, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (62, 62, 255, 255, 95, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (63, 63, 255, 255, 58, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (64, 64, 50, 255, 230, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (65, 65, 255, 255, 206, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (66, 66, 65, 255, 114, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (67, 67, 255, 255, 66, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (68, 68, 98, 74, 186, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (69, 69, 255, 255, 104, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (70, 70, 255, 255, 133, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (71, 71, 255, 5, 137, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (72, 72, 255, 0, 183, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (73, 73, 255, 255, 201, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (74, 74, 255, 6, 220, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (75, 75, 255, 255, 228, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (76, 76, 255, 73, 68, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (77, 77, 255, 255, 27, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (78, 78, 66, 7, 195, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (79, 79, 2, 255, 132, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (80, 80, 255, 255, 57, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (81, 81, 255, 255, 72, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (82, 82, 255, 255, 109, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (83, 83, 1, 255, 79, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (84, 84, 255, 0, 23, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (85, 85, 255, 0, 126, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (86, 86, 255, 255, 96, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (87, 87, 0, 0, 76, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (88, 88, 255, 255, 142, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (89, 89, 255, 255, 135, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (90, 90, 0, 255, 156, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (91, 91, 255, 255, 92, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (92, 92, 255, 255, 208, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (93, 93, 88, 255, 100, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (94, 94, 255, 0, 168, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (95, 95, 255, 25, 98, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (96, 96, 27, 255, 21, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (97, 97, 255, 255, 22, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (98, 98, 255, 255, 86, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (99, 99, 255, 1, 90, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (100, 100, 255, 0, 121, '1');


#
# TABLE STRUCTURE FOR: superset_exercises
#

DROP TABLE IF EXISTS `superset_exercises`;

CREATE TABLE `superset_exercises` (
  `exercise_id` int(11) unsigned NOT NULL,
  `superset_id` int(11) unsigned NOT NULL,
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `superset_exercises_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (1, 1);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (2, 2);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (3, 3);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (4, 4);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (5, 5);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (6, 6);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (7, 7);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (8, 8);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (9, 9);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (10, 10);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (11, 11);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (12, 12);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (13, 13);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (14, 14);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (15, 15);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (16, 16);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (17, 17);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (18, 18);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (19, 19);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (20, 20);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (21, 21);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (22, 22);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (23, 23);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (24, 24);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (25, 25);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (26, 26);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (27, 27);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (28, 28);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (29, 29);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (30, 30);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (31, 31);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (32, 32);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (33, 33);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (34, 34);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (35, 35);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (36, 36);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (37, 37);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (38, 38);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (39, 39);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (40, 40);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (41, 41);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (42, 42);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (43, 43);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (44, 44);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (45, 45);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (46, 46);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (47, 47);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (48, 48);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (49, 49);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (50, 50);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (51, 51);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (52, 52);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (53, 53);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (54, 54);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (55, 55);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (56, 56);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (57, 57);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (58, 58);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (59, 59);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (60, 60);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (61, 61);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (62, 62);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (63, 63);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (64, 64);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (65, 65);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (66, 66);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (67, 67);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (68, 68);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (69, 69);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (70, 70);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (71, 71);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (72, 72);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (73, 73);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (74, 74);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (75, 75);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (76, 76);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (77, 77);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (78, 78);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (79, 79);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (80, 80);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (81, 81);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (82, 82);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (83, 83);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (84, 84);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (85, 85);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (86, 86);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (87, 87);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (88, 88);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (89, 89);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (90, 90);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (91, 91);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (92, 92);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (93, 93);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (94, 94);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (95, 95);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (96, 96);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (97, 97);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (98, 98);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (99, 99);
INSERT INTO `superset_exercises` (`exercise_id`, `superset_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: superset_logs
#

DROP TABLE IF EXISTS `superset_logs`;

CREATE TABLE `superset_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) unsigned NOT NULL,
  `superset_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_session_id` (`session_id`),
  KEY `idx_superset_id` (`superset_id`),
  CONSTRAINT `superset_logs_ibfk_1` FOREIGN KEY (`superset_id`) REFERENCES `supersets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `superset_logs_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `variant_session_logs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (1, 1, 1, 1);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (2, 2, 2, 2);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (3, 3, 3, 3);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (4, 4, 4, 4);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (5, 5, 5, 5);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (6, 6, 6, 6);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (7, 7, 7, 7);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (8, 8, 8, 8);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (9, 9, 9, 9);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (10, 10, 10, 10);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (11, 11, 11, 11);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (12, 12, 12, 12);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (13, 13, 13, 13);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (14, 14, 14, 14);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (15, 15, 15, 15);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (16, 16, 16, 16);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (17, 17, 17, 17);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (18, 18, 18, 18);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (19, 19, 19, 19);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (20, 20, 20, 20);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (21, 21, 21, 21);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (22, 22, 22, 22);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (23, 23, 23, 23);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (24, 24, 24, 24);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (25, 25, 25, 25);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (26, 26, 26, 26);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (27, 27, 27, 27);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (28, 28, 28, 28);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (29, 29, 29, 29);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (30, 30, 30, 30);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (31, 31, 31, 31);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (32, 32, 32, 32);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (33, 33, 33, 33);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (34, 34, 34, 34);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (35, 35, 35, 35);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (36, 36, 36, 36);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (37, 37, 37, 37);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (38, 38, 38, 38);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (39, 39, 39, 39);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (40, 40, 40, 40);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (41, 41, 41, 41);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (42, 42, 42, 42);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (43, 43, 43, 43);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (44, 44, 44, 44);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (45, 45, 45, 45);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (46, 46, 46, 46);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (47, 47, 47, 47);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (48, 48, 48, 48);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (49, 49, 49, 49);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (50, 50, 50, 50);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (51, 51, 51, 51);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (52, 52, 52, 52);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (53, 53, 53, 53);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (54, 54, 54, 54);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (55, 55, 55, 55);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (56, 56, 56, 56);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (57, 57, 57, 57);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (58, 58, 58, 58);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (59, 59, 59, 59);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (60, 60, 60, 60);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (61, 61, 61, 61);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (62, 62, 62, 62);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (63, 63, 63, 63);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (64, 64, 64, 64);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (65, 65, 65, 65);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (66, 66, 66, 66);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (67, 67, 67, 67);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (68, 68, 68, 68);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (69, 69, 69, 69);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (70, 70, 70, 70);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (71, 71, 71, 71);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (72, 72, 72, 72);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (73, 73, 73, 73);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (74, 74, 74, 74);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (75, 75, 75, 75);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (76, 76, 76, 76);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (77, 77, 77, 77);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (78, 78, 78, 78);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (79, 79, 79, 79);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (80, 80, 80, 80);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (81, 81, 81, 81);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (82, 82, 82, 82);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (83, 83, 83, 83);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (84, 84, 84, 84);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (85, 85, 85, 85);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (86, 86, 86, 86);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (87, 87, 87, 87);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (88, 88, 88, 88);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (89, 89, 89, 89);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (90, 90, 90, 90);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (91, 91, 91, 91);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (92, 92, 92, 92);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (93, 93, 93, 93);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (94, 94, 94, 94);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (95, 95, 95, 95);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (96, 96, 96, 96);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (97, 97, 97, 97);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (98, 98, 98, 98);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (99, 99, 99, 99);
INSERT INTO `superset_logs` (`id`, `session_id`, `superset_id`, `user_id`) VALUES (100, 100, 100, 100);


#
# TABLE STRUCTURE FOR: superset_names
#

DROP TABLE IF EXISTS `superset_names`;

CREATE TABLE `superset_names` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `superset_name_en` varchar(64) NOT NULL,
  `superset_name_pl` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (1, 'consectetur', 'labore');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (2, 'dolor', 'in');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (3, 'magni', 'vel');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (4, 'atque', 'iste');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (5, 'ut', 'quibusdam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (6, 'et', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (7, 'enim', 'recusandae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (8, 'consequatur', 'eius');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (9, 'nostrum', 'fugit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (10, 'consequatur', 'impedit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (11, 'tenetur', 'blanditiis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (12, 'excepturi', 'aut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (13, 'distinctio', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (14, 'quam', 'omnis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (15, 'adipisci', 'eum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (16, 'vero', 'modi');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (17, 'asperiores', 'at');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (18, 'minus', 'occaecati');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (19, 'id', 'nihil');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (20, 'consequatur', 'provident');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (21, 'ipsa', 'doloremque');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (22, 'corporis', 'fugit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (23, 'est', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (24, 'et', 'unde');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (25, 'nihil', 'dolorum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (26, 'aut', 'deserunt');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (27, 'in', 'quaerat');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (28, 'minus', 'mollitia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (29, 'cupiditate', 'esse');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (30, 'quasi', 'maxime');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (31, 'eum', 'voluptas');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (32, 'nihil', 'reprehenderit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (33, 'quisquam', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (34, 'debitis', 'cum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (35, 'dolorem', 'enim');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (36, 'consequatur', 'libero');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (37, 'ex', 'possimus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (38, 'perferendis', 'dolorum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (39, 'eos', 'ipsa');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (40, 'officia', 'aut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (41, 'debitis', 'rerum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (42, 'blanditiis', 'molestiae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (43, 'est', 'temporibus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (44, 'quas', 'vitae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (45, 'nostrum', 'vero');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (46, 'architecto', 'error');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (47, 'explicabo', 'aut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (48, 'reprehenderit', 'perspiciatis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (49, 'debitis', 'porro');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (50, 'ut', 'vitae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (51, 'aspernatur', 'natus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (52, 'dolorem', 'exercitationem');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (53, 'deleniti', 'recusandae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (54, 'architecto', 'officia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (55, 'quia', 'sequi');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (56, 'est', 'est');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (57, 'dolores', 'quam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (58, 'ipsam', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (59, 'aut', 'ab');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (60, 'doloribus', 'ea');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (61, 'laudantium', 'voluptatibus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (62, 'molestias', 'quas');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (63, 'voluptate', 'rerum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (64, 'a', 'impedit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (65, 'officia', 'ad');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (66, 'a', 'incidunt');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (67, 'deleniti', 'ut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (68, 'velit', 'quae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (69, 'et', 'ut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (70, 'consectetur', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (71, 'aut', 'sed');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (72, 'magnam', 'cumque');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (73, 'iusto', 'recusandae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (74, 'ut', 'assumenda');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (75, 'et', 'earum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (76, 'corrupti', 'cum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (77, 'et', 'exercitationem');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (78, 'voluptates', 'rerum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (79, 'optio', 'sint');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (80, 'itaque', 'animi');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (81, 'aliquam', 'quo');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (82, 'velit', 'maiores');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (83, 'sit', 'nesciunt');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (84, 'ullam', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (85, 'aut', 'perspiciatis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (86, 'temporibus', 'nemo');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (87, 'consequatur', 'unde');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (88, 'qui', 'qui');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (89, 'qui', 'nobis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (90, 'atque', 'sit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (91, 'unde', 'error');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (92, 'eaque', 'ut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (93, 'qui', 'qui');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (94, 'molestiae', 'itaque');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (95, 'ipsum', 'porro');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (96, 'voluptatem', 'voluptatum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (97, 'incidunt', 'perspiciatis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (98, 'exercitationem', 'recusandae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (99, 'facilis', 'aut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (100, 'aspernatur', 'dolorem');


#
# TABLE STRUCTURE FOR: supersets
#

DROP TABLE IF EXISTS `supersets`;

CREATE TABLE `supersets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `superset_name_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `superset_name_id` (`superset_name_id`),
  CONSTRAINT `supersets_ibfk_1` FOREIGN KEY (`superset_name_id`) REFERENCES `superset_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (1, 1);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (2, 2);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (3, 3);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (4, 4);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (5, 5);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (6, 6);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (7, 7);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (8, 8);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (9, 9);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (10, 10);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (11, 11);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (12, 12);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (13, 13);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (14, 14);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (15, 15);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (16, 16);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (17, 17);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (18, 18);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (19, 19);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (20, 20);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (21, 21);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (22, 22);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (23, 23);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (24, 24);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (25, 25);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (26, 26);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (27, 27);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (28, 28);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (29, 29);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (30, 30);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (31, 31);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (32, 32);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (33, 33);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (34, 34);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (35, 35);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (36, 36);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (37, 37);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (38, 38);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (39, 39);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (40, 40);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (41, 41);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (42, 42);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (43, 43);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (44, 44);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (45, 45);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (46, 46);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (47, 47);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (48, 48);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (49, 49);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (50, 50);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (51, 51);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (52, 52);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (53, 53);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (54, 54);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (55, 55);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (56, 56);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (57, 57);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (58, 58);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (59, 59);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (60, 60);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (61, 61);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (62, 62);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (63, 63);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (64, 64);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (65, 65);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (66, 66);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (67, 67);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (68, 68);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (69, 69);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (70, 70);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (71, 71);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (72, 72);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (73, 73);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (74, 74);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (75, 75);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (76, 76);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (77, 77);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (78, 78);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (79, 79);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (80, 80);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (81, 81);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (82, 82);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (83, 83);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (84, 84);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (85, 85);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (86, 86);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (87, 87);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (88, 88);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (89, 89);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (90, 90);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (91, 91);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (92, 92);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (93, 93);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (94, 94);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (95, 95);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (96, 96);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (97, 97);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (98, 98);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (99, 99);
INSERT INTO `supersets` (`id`, `superset_name_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `hashed_password` varbinary(256) NOT NULL,
  `language` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (1, 'adah.zboncak', 'schumm.dereck@example.com', '685ecbf45bf1dbd14fd181e9cf80a3b246ac35bf', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (2, 'jmckenzie', 'lauryn13@example.net', 'bfb3065da36adfa3fccfebeda93f25ffccf8127f', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (3, 'shields.sean', 'crawford.parker@example.net', '8c26d52ad24111e9d81ca1862eabd54bec44e044', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (4, 'lgrant', 'lveum@example.net', '148eef741b26a7fb69d1bac7c16afa70d53e415b', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (5, 'ebailey', 'jay40@example.org', '87e08d4fabd211bd9c32843f7f83f734b3c5da5f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (6, 'xreinger', 'elton62@example.org', '98686955c7f3d71d95ea0ff694378d4263f4ca96', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (7, 'wolf.jo', 'elliot.smitham@example.com', '03e205688f5488bfb123254a9ac2dfff4b69e701', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (8, 'keeling.stacey', 'kbradtke@example.com', '03532325b0eb5e6e4c89f4c2aeded526d1d00c7c', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (9, 'laurence65', 'ubaldo10@example.com', '10d19e36abaacc2249bc9c94272326744f96a4f2', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (10, 'jett.baumbach', 'nwehner@example.org', '2a75bf385d677635400dd790bede891a9d8ae849', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (11, 'nathanial.luettgen', 'wklocko@example.com', 'befe0684847777cfda82d282d9ba63d6e4743266', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (12, 'lenore.conroy', 'pvandervort@example.org', '29aa06f3b559f8b4d116809ed72f8be5ec86720c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (13, 'rowe.marina', 'albin76@example.org', 'fd9040f7cf551348a27f2e6232d9dee1c01d94fb', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (14, 'marina41', 'megane23@example.net', 'c98f2cc6ff1fdfac85e46d242b950c34346e2b49', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (15, 'filiberto.reilly', 'ferry.christa@example.org', 'b208d2258e7532c3f2539cd96174219f271bfa33', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (16, 'virgie.stokes', 'helena.schulist@example.org', '4863611f8188aec8f81087bc589310d04b8efd77', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (17, 'annalise.quigley', 'lexi.gleichner@example.org', 'ad0bfb3539786c939077b21fffcaac18392631ef', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (18, 'annabelle.mann', 'mlegros@example.net', '0931f0a1fa434cb56df03c1f6f03eba18d477d2d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (19, 'paxton41', 'dolores.collier@example.org', 'f2465a185da2e68d009864a3f0d2359f3d558287', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (20, 'leannon.viviane', 'willie42@example.com', '701f29fd89bad95b335878e8ec6cb287eb9d8ac3', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (21, 'mohr.lysanne', 'litzy.block@example.net', '613b1bff4a360f84f7a9035af1306f6c20627e67', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (22, 'mertie.daugherty', 'wklocko@example.net', 'b59ba6974c4ae0c1eefad81a313903656634233f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (23, 'maxwell52', 'tyler.hoppe@example.com', '5e4803b689da1627c255aeb29621ffa5a3c29476', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (24, 'orie78', 'will.chad@example.com', '70cf6f238772af0a93d01b9c6fd0e1291355e4ca', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (25, 'adrian14', 'icronin@example.com', 'bdd4e0261185ae233aabadc3219cac7f967c464f', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (26, 'bennett.koss', 'batz.lula@example.org', '844581ee0eea60611db21e588e6d5529f31ca062', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (27, 'ceasar57', 'block.alexandria@example.org', '376f77aea1bd884c2777f7d69a2eaf58848f0a5a', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (28, 'emard.easter', 'amurazik@example.com', '79c3897f555494666719ed49f4cbb00f35dbc46f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (29, 'thintz', 'ijones@example.com', '971ef5f392eaf8cdec082eaf2c6727e96f98a724', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (30, 'feil.jules', 'htillman@example.com', 'c38ef5ef37320dd9380992c07a36b96634eaede1', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (31, 'timmy.crist', 'lromaguera@example.net', 'c786b5941bbdfa59497d057ca8874765a55af6b5', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (32, 'thompson.armando', 'laurie.purdy@example.net', '8586b31ac676b832bb7e979cad4f8fe9a96c4745', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (33, 'xkonopelski', 'alicia.kassulke@example.net', 'da37bded28270da903591ad60dd26adb5033c90f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (34, 'toby.wuckert', 'borer.ruthe@example.com', '109320a3c18c9ede609195acce11c6bbb66450bd', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (35, 'johnson.nicholaus', 'general.herman@example.net', 'df9031e6676474b7857666ef01db876515186eaa', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (36, 'eboehm', 'duncan.langosh@example.net', '0c5a9c685ac37ffd685f76159e83a42a4d231624', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (37, 'ccrooks', 'charley.corwin@example.net', '1ba3a0f8ce05a553e58ab2f703628b9c75dd6d94', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (38, 'vwyman', 'bettye.nikolaus@example.com', '67fbcc4d7fe71e8ddd55e2fbb9c2ff078950a995', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (39, 'sammie17', 'ghane@example.org', '15e77cd64661da713fde2c77dcf83926d368e20c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (40, 'becker.vita', 'vsmith@example.com', '97d0251971c0223625f50ec1eb993a0fd7521bd3', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (41, 'emard.abelardo', 'cecilia.schimmel@example.net', '75ba7b61b6670cf8775f5870e5bcd4847ec4e35e', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (42, 'luigi.baumbach', 'zechariah36@example.com', '9fb61875ab593933f7df33aec7cc3873ef07e3e6', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (43, 'amelia67', 'gkemmer@example.org', 'aa9b68301e6d8540f38dce95982a8e31a08d99ab', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (44, 'yfriesen', 'lstiedemann@example.org', 'a15a0b852837bb1c75eae6f7ebcdf38f239340bf', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (45, 'eloise53', 'wisoky.titus@example.net', '7db2710e81be98d66d8d7b618271dad322128f8f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (46, 'lizeth.balistreri', 'pouros.della@example.org', 'fe364bb0c95410f35ee2edb9734d9dc0eea9298d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (47, 'lockman.karen', 'wmann@example.com', '8d0a0917793c055503846fb25273bd384ee62829', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (48, 'qprice', 'herman.howard@example.net', '13fddbfe11c806ada63bf93abf6599a7f75a7228', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (49, 'elza.armstrong', 'myrtis.glover@example.com', '97a4f1183684e68304ee90481e60183b5f4a6377', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (50, 'eleazar.dietrich', 'treutel.chaz@example.org', 'e6f0a536af1f3322c1f5ae88e9740b8f023b4934', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (51, 'georgianna.kautzer', 'luis12@example.net', 'ffdf83aed3fea4e5b19ac4ef54d17ee9ddeadca8', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (52, 'immanuel49', 'bart43@example.com', '6a368576f1d614ae33ea8e6703e511f4c1f60f22', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (53, 'ofay', 'cprohaska@example.net', '082ac073d3443ff19227df1c62ad09dab87c7832', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (54, 'monroe.goodwin', 'clementine35@example.com', '152ac35822c2c6db512e73afa4b2e668c7f0b8de', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (55, 'xpadberg', 'sstanton@example.org', '3f3e4a46f700887c016ec8d68b85cbe1022c9eeb', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (56, 'tsmitham', 'jschowalter@example.com', '46ae3be281d6bf98b3981c3950a4c91cc27163a6', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (57, 'xschinner', 'eschneider@example.org', '511961c433df682be900ee729232c07f32c7b40a', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (58, 'clifford41', 'ewald.gusikowski@example.com', 'd4afba9a307a8bff947f45a5a252062727ff791b', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (59, 'cschmidt', 'effertz.ayana@example.net', '05cf1e76cfc87f6d364983f4b39540d86f04278c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (60, 'yost.derek', 'edna.schaefer@example.com', 'bc6031d90a732c635210903402fe69a4c2cbd126', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (61, 'canderson', 'israel08@example.com', '5366619f263269494319df45f1defa29a86e95bc', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (62, 'qemard', 'hhudson@example.com', '7699e3ce9595eadf44e24123b4f04f3d931d1780', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (63, 'torrance25', 'tobin88@example.net', '19fcb0d1d8f3394682c88138d315a2652230c98f', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (64, 'kellen.heaney', 'nelle.hoppe@example.com', '68185b53c1929d7d10549549748375795c46072f', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (65, 'wboehm', 'alayna.king@example.com', '5ee640e5f67cdb33e9a10ba5433f10862ed1d2e9', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (66, 'kozey.augustus', 'heather77@example.com', '1b8b6cfa9d228fa9e38a19b0224efaed59e51d58', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (67, 'alverta.gleason', 'icarter@example.net', '890d035ee2cabc6b16758103623d3aad51a271dc', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (68, 'murphy00', 'alize.kulas@example.com', '3f78adf0b15fded8baa9a1e7541136fbdc91d31d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (69, 'dferry', 'stiedemann.freddy@example.org', '104dd050202ca4d24d92406b705a6601572bb4af', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (70, 'theo.feest', 'kris.kamron@example.com', '268db174ac4cb282ce13dc26ad9fc60ac3961918', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (71, 'jacobson.vita', 'florence23@example.org', '380a26addf431f99cb3a61f792525fd2817ec0e9', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (72, 'claude29', 'jwelch@example.com', '554b525526e250aae50472721012537adb1e3694', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (73, 'ally68', 'ibechtelar@example.org', '80a37e7b091d11369e87df1d8d65f9a5c6b4a342', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (74, 'rohan.orrin', 'maya.hickle@example.net', 'ade9481c699daff4cff639635aa38127444a9f15', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (75, 'uhowe', 'waters.pauline@example.net', '3814a265de75dfbd36cf7f7beca1c5b952f73c0e', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (76, 'jakubowski.dane', 'kschroeder@example.com', 'd7dfcd21b0049ca96f58ec4af6c6470a76a3cbd6', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (77, 'reese.schamberger', 'roger57@example.org', '740637b0985220e113983f7631db019d6c622b4f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (78, 'josiah.kulas', 'iwehner@example.org', 'a221658f80220a26b9278b994ce91b10038655ec', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (79, 'uortiz', 'weissnat.geovanni@example.net', '8ab78823d64430c90fa39501f5ca7079ad333927', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (80, 'sally.olson', 'bwill@example.com', 'e550afdc996bfc3ab09c80a728e6aaea77d06c03', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (81, 'coralie.connelly', 'katrine58@example.com', '4962602b243396e9d0e3abdef4c27181a21c6e45', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (82, 'alivia.braun', 'zwisoky@example.net', 'ff0887486dd32e10327b64a11983008eff4184da', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (83, 'fisher.candace', 'carter.alexandro@example.com', 'ad2917e91586ca07fe62ac033faa681adf302564', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (84, 'toney84', 'goodwin.sydnie@example.com', 'a7220761e3710cd648237686a18a7684b712708d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (85, 'shemar.donnelly', 'alisha42@example.org', '38e83a8f99bb532f9f5b386cbf57d68f0110fbb3', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (86, 'ward32', 'bessie77@example.com', '1c14d3e30f1eaaacd007db6130caac1a9986a8f3', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (87, 'vweimann', 'jess.metz@example.com', '8a5c25aec5041384ec34ab21c78dfc197657e1aa', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (88, 'kathryn67', 'xdavis@example.org', '071f653e07ece06dedeba8c819c4c88b82ae59c2', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (89, 'johan.o\kon', 'camron.pacocha@example.com', '81b6dbaafc5bee503527640bd6f6507389be0fb4', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (90, 'rconnelly', 'khalil49@example.com', '9c94582a156909c48c49363e8db34ee7f290be88', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (91, 'henriette.walter', 'arnoldo.kihn@example.com', 'f1a5f57070546a6f4778ff2c32b60ee7307aaa79', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (92, 'izaiah.bailey', 'elfrieda89@example.org', '8b90ca2cdedc462c80fbd7ec6c64d6d2dd2bd721', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (93, 'lauren19', 'rosa26@example.org', '01538c3d491e8b0a05328e78f77b33de8274eb61', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (94, 'gladyce.kulas', 'shawna26@example.com', '221af7202c2ac8d8addab2679339c38ac4333f2c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (95, 'vbotsford', 'fern40@example.com', 'c7e1720f427c081936c91af85baa7a84a5c9c19d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (96, 'marquise.emard', 'myrtie.heathcote@example.net', '4e8a1b291088713134161695a3bae6697c725d5d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (97, 'icrona', 'manuela81@example.net', '0e0e5228c028416576a3119c3e675fca0f135e50', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (98, 'hermiston.cody', 'casper.petra@example.com', '6ad906256394e76aa17287e382f85d4ccace0b22', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (99, 'mitchell.lisa', 'gsawayn@example.org', '28c46a552bf0d5581a62a0712fa6789e980d928d', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (100, 'mills.shanny', 'jordy.cormier@example.net', '6120d84f5ed0bf0916d080ec59c603d6df7ec6dd', '0');


#
# TABLE STRUCTURE FOR: variant_exercises
#

DROP TABLE IF EXISTS `variant_exercises`;

CREATE TABLE `variant_exercises` (
  `variant_id` int(11) unsigned NOT NULL,
  `exercise_id` int(11) unsigned NOT NULL,
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `variant_exercises_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (1, 1);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (2, 2);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (3, 3);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (4, 4);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (5, 5);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (6, 6);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (7, 7);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (8, 8);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (9, 9);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (10, 10);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (11, 11);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (12, 12);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (13, 13);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (14, 14);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (15, 15);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (16, 16);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (17, 17);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (18, 18);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (19, 19);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (20, 20);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (21, 21);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (22, 22);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (23, 23);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (24, 24);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (25, 25);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (26, 26);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (27, 27);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (28, 28);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (29, 29);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (30, 30);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (31, 31);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (32, 32);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (33, 33);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (34, 34);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (35, 35);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (36, 36);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (37, 37);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (38, 38);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (39, 39);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (40, 40);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (41, 41);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (42, 42);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (43, 43);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (44, 44);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (45, 45);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (46, 46);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (47, 47);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (48, 48);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (49, 49);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (50, 50);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (51, 51);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (52, 52);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (53, 53);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (54, 54);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (55, 55);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (56, 56);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (57, 57);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (58, 58);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (59, 59);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (60, 60);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (61, 61);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (62, 62);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (63, 63);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (64, 64);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (65, 65);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (66, 66);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (67, 67);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (68, 68);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (69, 69);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (70, 70);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (71, 71);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (72, 72);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (73, 73);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (74, 74);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (75, 75);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (76, 76);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (77, 77);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (78, 78);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (79, 79);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (80, 80);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (81, 81);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (82, 82);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (83, 83);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (84, 84);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (85, 85);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (86, 86);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (87, 87);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (88, 88);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (89, 89);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (90, 90);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (91, 91);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (92, 92);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (93, 93);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (94, 94);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (95, 95);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (96, 96);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (97, 97);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (98, 98);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (99, 99);
INSERT INTO `variant_exercises` (`variant_id`, `exercise_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: variant_names
#

DROP TABLE IF EXISTS `variant_names`;

CREATE TABLE `variant_names` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `variant_name_en` varchar(64) NOT NULL,
  `variant_name_pl` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (1, 'sit', 'possimus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (2, 'quis', 'veritatis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (3, 'provident', 'quia');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (4, 'dolorem', 'recusandae');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (5, 'magni', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (6, 'ea', 'sunt');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (7, 'molestiae', 'perferendis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (8, 'adipisci', 'dolor');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (9, 'voluptatem', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (10, 'sequi', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (11, 'dolorum', 'quam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (12, 'consequatur', 'ipsam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (13, 'molestias', 'minus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (14, 'nemo', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (15, 'sit', 'ut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (16, 'iusto', 'alias');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (17, 'excepturi', 'est');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (18, 'optio', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (19, 'officia', 'odio');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (20, 'ad', 'optio');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (21, 'temporibus', 'officiis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (22, 'unde', 'neque');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (23, 'quia', 'sit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (24, 'vel', 'sit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (25, 'non', 'accusamus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (26, 'repellendus', 'modi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (27, 'molestiae', 'excepturi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (28, 'tempora', 'modi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (29, 'dolorem', 'voluptatum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (30, 'corporis', 'quia');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (31, 'explicabo', 'dolore');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (32, 'amet', 'minima');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (33, 'atque', 'assumenda');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (34, 'ut', 'aliquam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (35, 'autem', 'neque');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (36, 'assumenda', 'accusamus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (37, 'nihil', 'nam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (38, 'explicabo', 'est');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (39, 'qui', 'adipisci');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (40, 'quo', 'a');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (41, 'laborum', 'minima');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (42, 'corrupti', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (43, 'quaerat', 'commodi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (44, 'quia', 'porro');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (45, 'culpa', 'impedit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (46, 'dolorem', 'laboriosam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (47, 'molestias', 'dolores');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (48, 'voluptatem', 'illo');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (49, 'explicabo', 'necessitatibus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (50, 'suscipit', 'tempore');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (51, 'quia', 'ut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (52, 'iure', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (53, 'cum', 'inventore');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (54, 'magni', 'ullam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (55, 'aspernatur', 'dolor');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (56, 'quis', 'expedita');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (57, 'temporibus', 'tempore');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (58, 'velit', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (59, 'est', 'non');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (60, 'voluptates', 'suscipit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (61, 'optio', 'sunt');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (62, 'et', 'quis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (63, 'eum', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (64, 'explicabo', 'vero');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (65, 'a', 'quas');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (66, 'quia', 'in');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (67, 'doloremque', 'quia');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (68, 'quam', 'incidunt');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (69, 'animi', 'sunt');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (70, 'quidem', 'ipsa');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (71, 'autem', 'omnis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (72, 'voluptates', 'qui');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (73, 'nihil', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (74, 'recusandae', 'qui');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (75, 'recusandae', 'sed');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (76, 'autem', 'doloribus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (77, 'enim', 'dolorum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (78, 'eveniet', 'eligendi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (79, 'qui', 'saepe');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (80, 'atque', 'qui');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (81, 'voluptate', 'non');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (82, 'est', 'accusamus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (83, 'commodi', 'omnis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (84, 'velit', 'vitae');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (85, 'blanditiis', 'ex');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (86, 'corrupti', 'accusamus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (87, 'fugit', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (88, 'iste', 'quis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (89, 'aliquid', 'sit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (90, 'saepe', 'consectetur');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (91, 'quis', 'iusto');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (92, 'velit', 'quos');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (93, 'aliquid', 'veniam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (94, 'debitis', 'provident');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (95, 'tempora', 'officiis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (96, 'perspiciatis', 'expedita');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (97, 'impedit', 'soluta');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (98, 'dolores', 'eius');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (99, 'quidem', 'nisi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (100, 'porro', 'nostrum');


#
# TABLE STRUCTURE FOR: variant_session_logs
#

DROP TABLE IF EXISTS `variant_session_logs`;

CREATE TABLE `variant_session_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  CONSTRAINT `variant_session_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (1, 1, '2015-03-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (2, 2, '2010-12-26');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (3, 3, '1970-04-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (4, 4, '1980-03-14');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (5, 5, '1990-10-08');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (6, 6, '1985-04-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (7, 7, '1985-05-09');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (8, 8, '1979-02-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (9, 9, '2015-03-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (10, 10, '1982-05-01');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (11, 11, '2003-08-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (12, 12, '1981-03-26');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (13, 13, '2001-11-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (14, 14, '1994-06-21');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (15, 15, '1979-10-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (16, 16, '1996-09-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (17, 17, '1982-05-23');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (18, 18, '2022-10-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (19, 19, '1978-03-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (20, 20, '1993-12-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (21, 21, '2022-05-09');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (22, 22, '2008-03-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (23, 23, '1973-04-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (24, 24, '1993-10-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (25, 25, '2013-11-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (26, 26, '1995-04-11');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (27, 27, '2002-10-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (28, 28, '1996-08-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (29, 29, '1974-10-18');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (30, 30, '2017-01-20');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (31, 31, '2017-06-14');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (32, 32, '2006-09-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (33, 33, '1997-09-07');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (34, 34, '1992-12-20');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (35, 35, '1995-05-20');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (36, 36, '2021-11-11');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (37, 37, '2020-11-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (38, 38, '2021-05-23');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (39, 39, '1984-11-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (40, 40, '1999-04-23');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (41, 41, '1972-11-13');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (42, 42, '1977-02-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (43, 43, '1987-10-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (44, 44, '1983-01-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (45, 45, '2009-03-20');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (46, 46, '2019-08-01');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (47, 47, '1996-10-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (48, 48, '1993-04-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (49, 49, '2006-12-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (50, 50, '1986-02-11');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (51, 51, '2016-07-13');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (52, 52, '2016-02-26');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (53, 53, '2014-06-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (54, 54, '1992-03-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (55, 55, '2020-01-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (56, 56, '1975-03-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (57, 57, '2016-01-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (58, 58, '2000-03-15');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (59, 59, '2016-08-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (60, 60, '1992-10-13');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (61, 61, '2000-12-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (62, 62, '1994-07-13');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (63, 63, '1993-11-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (64, 64, '2020-07-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (65, 65, '2013-02-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (66, 66, '1999-09-14');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (67, 67, '2012-12-01');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (68, 68, '2017-07-14');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (69, 69, '1997-05-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (70, 70, '1989-08-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (71, 71, '1979-04-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (72, 72, '2006-05-27');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (73, 73, '2019-02-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (74, 74, '2003-08-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (75, 75, '1995-03-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (76, 76, '1988-04-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (77, 77, '1994-05-26');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (78, 78, '1979-11-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (79, 79, '2015-12-23');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (80, 80, '1991-12-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (81, 81, '2007-01-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (82, 82, '1993-10-03');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (83, 83, '2001-06-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (84, 84, '2006-08-09');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (85, 85, '1975-07-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (86, 86, '1988-09-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (87, 87, '1981-07-24');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (88, 88, '1986-08-26');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (89, 89, '2000-02-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (90, 90, '1976-07-24');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (91, 91, '1975-11-20');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (92, 92, '1987-12-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (93, 93, '2005-03-01');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (94, 94, '1972-08-18');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (95, 95, '1977-08-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (96, 96, '1990-08-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (97, 97, '2019-09-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (98, 98, '2003-02-15');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (99, 99, '1987-08-04');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (100, 100, '2003-08-21');


#
# TABLE STRUCTURE FOR: workout_names
#

DROP TABLE IF EXISTS `workout_names`;

CREATE TABLE `workout_names` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `workout_name_en` varchar(32) NOT NULL,
  `workout_name_pl` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (1, 'hic', 'autem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (2, 'sapiente', 'commodi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (3, 'culpa', 'exercitationem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (4, 'architecto', 'autem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (5, 'nihil', 'omnis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (6, 'odio', 'autem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (7, 'quam', 'cupiditate');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (8, 'fugiat', 'debitis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (9, 'dolor', 'sapiente');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (10, 'doloremque', 'non');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (11, 'dolorem', 'soluta');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (12, 'id', 'ipsum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (13, 'sint', 'est');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (14, 'quia', 'vitae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (15, 'sunt', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (16, 'eaque', 'sint');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (17, 'similique', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (18, 'adipisci', 'ipsum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (19, 'ut', 'quibusdam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (20, 'maxime', 'natus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (21, 'blanditiis', 'labore');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (22, 'omnis', 'nostrum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (23, 'doloribus', 'quas');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (24, 'minus', 'aut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (25, 'optio', 'numquam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (26, 'illo', 'cumque');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (27, 'nesciunt', 'sint');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (28, 'rerum', 'temporibus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (29, 'et', 'est');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (30, 'labore', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (31, 'et', 'deserunt');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (32, 'maxime', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (33, 'distinctio', 'optio');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (34, 'occaecati', 'ipsa');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (35, 'et', 'qui');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (36, 'et', 'architecto');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (37, 'et', 'voluptatem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (38, 'aut', 'reiciendis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (39, 'molestiae', 'hic');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (40, 'repudiandae', 'accusantium');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (41, 'velit', 'quidem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (42, 'tempora', 'reiciendis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (43, 'sit', 'quasi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (44, 'porro', 'sit');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (45, 'aspernatur', 'repellendus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (46, 'aut', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (47, 'sit', 'vitae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (48, 'perspiciatis', 'esse');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (49, 'veniam', 'dolores');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (50, 'quod', 'voluptatibus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (51, 'rerum', 'nemo');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (52, 'et', 'repellendus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (53, 'quos', 'fugit');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (54, 'vero', 'voluptatum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (55, 'aperiam', 'itaque');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (56, 'aut', 'consequatur');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (57, 'et', 'quis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (58, 'voluptate', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (59, 'deleniti', 'quos');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (60, 'id', 'voluptatem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (61, 'quis', 'voluptas');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (62, 'id', 'consequatur');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (63, 'eum', 'voluptatibus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (64, 'veniam', 'molestias');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (65, 'consequatur', 'voluptatem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (66, 'quibusdam', 'dolor');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (67, 'consequatur', 'recusandae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (68, 'molestias', 'maiores');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (69, 'officiis', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (70, 'exercitationem', 'quae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (71, 'consequatur', 'porro');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (72, 'quia', 'illo');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (73, 'non', 'autem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (74, 'veniam', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (75, 'nemo', 'inventore');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (76, 'eum', 'dolorem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (77, 'sequi', 'vitae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (78, 'ut', 'ex');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (79, 'vel', 'sunt');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (80, 'dolores', 'sed');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (81, 'repellendus', 'autem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (82, 'inventore', 'expedita');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (83, 'sit', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (84, 'necessitatibus', 'placeat');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (85, 'non', 'ipsum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (86, 'et', 'illo');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (87, 'tempora', 'ea');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (88, 'nobis', 'earum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (89, 'suscipit', 'nihil');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (90, 'esse', 'qui');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (91, 'vero', 'nulla');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (92, 'quia', 'officia');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (93, 'rem', 'voluptatem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (94, 'voluptatem', 'assumenda');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (95, 'sit', 'dolor');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (96, 'architecto', 'sed');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (97, 'in', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (98, 'odit', 'qui');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (99, 'occaecati', 'enim');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (100, 'ea', 'vel');


#
# TABLE STRUCTURE FOR: workout_variants
#

DROP TABLE IF EXISTS `workout_variants`;

CREATE TABLE `workout_variants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `workout_id` int(11) unsigned NOT NULL,
  `variant_name_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workout_id` (`workout_id`),
  KEY `idx_variant_name_id` (`variant_name_id`),
  CONSTRAINT `workout_variants_ibfk_1` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workout_variants_ibfk_2` FOREIGN KEY (`variant_name_id`) REFERENCES `variant_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (1, 1, 1);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (2, 2, 2);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (3, 3, 3);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (4, 4, 4);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (5, 5, 5);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (6, 6, 6);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (7, 7, 7);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (8, 8, 8);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (9, 9, 9);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (10, 10, 10);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (11, 11, 11);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (12, 12, 12);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (13, 13, 13);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (14, 14, 14);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (15, 15, 15);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (16, 16, 16);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (17, 17, 17);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (18, 18, 18);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (19, 19, 19);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (20, 20, 20);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (21, 21, 21);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (22, 22, 22);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (23, 23, 23);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (24, 24, 24);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (25, 25, 25);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (26, 26, 26);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (27, 27, 27);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (28, 28, 28);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (29, 29, 29);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (30, 30, 30);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (31, 31, 31);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (32, 32, 32);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (33, 33, 33);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (34, 34, 34);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (35, 35, 35);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (36, 36, 36);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (37, 37, 37);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (38, 38, 38);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (39, 39, 39);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (40, 40, 40);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (41, 41, 41);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (42, 42, 42);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (43, 43, 43);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (44, 44, 44);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (45, 45, 45);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (46, 46, 46);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (47, 47, 47);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (48, 48, 48);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (49, 49, 49);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (50, 50, 50);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (51, 51, 51);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (52, 52, 52);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (53, 53, 53);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (54, 54, 54);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (55, 55, 55);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (56, 56, 56);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (57, 57, 57);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (58, 58, 58);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (59, 59, 59);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (60, 60, 60);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (61, 61, 61);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (62, 62, 62);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (63, 63, 63);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (64, 64, 64);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (65, 65, 65);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (66, 66, 66);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (67, 67, 67);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (68, 68, 68);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (69, 69, 69);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (70, 70, 70);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (71, 71, 71);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (72, 72, 72);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (73, 73, 73);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (74, 74, 74);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (75, 75, 75);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (76, 76, 76);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (77, 77, 77);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (78, 78, 78);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (79, 79, 79);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (80, 80, 80);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (81, 81, 81);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (82, 82, 82);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (83, 83, 83);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (84, 84, 84);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (85, 85, 85);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (86, 86, 86);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (87, 87, 87);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (88, 88, 88);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (89, 89, 89);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (90, 90, 90);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (91, 91, 91);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (92, 92, 92);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (93, 93, 93);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (94, 94, 94);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (95, 95, 95);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (96, 96, 96);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (97, 97, 97);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (98, 98, 98);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (99, 99, 99);
INSERT INTO `workout_variants` (`id`, `workout_id`, `variant_name_id`) VALUES (100, 100, 100);


#
# TABLE STRUCTURE FOR: workouts
#

DROP TABLE IF EXISTS `workouts`;

CREATE TABLE `workouts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `workout_name_id` int(11) unsigned NOT NULL,
  `favorite` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_workout_name_id` (`workout_name_id`),
  CONSTRAINT `workouts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workouts_ibfk_2` FOREIGN KEY (`workout_name_id`) REFERENCES `workout_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (1, 1, 1, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (2, 2, 2, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (3, 3, 3, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (4, 4, 4, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (5, 5, 5, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (6, 6, 6, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (7, 7, 7, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (8, 8, 8, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (9, 9, 9, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (10, 10, 10, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (11, 11, 11, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (12, 12, 12, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (13, 13, 13, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (14, 14, 14, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (15, 15, 15, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (16, 16, 16, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (17, 17, 17, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (18, 18, 18, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (19, 19, 19, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (20, 20, 20, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (21, 21, 21, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (22, 22, 22, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (23, 23, 23, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (24, 24, 24, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (25, 25, 25, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (26, 26, 26, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (27, 27, 27, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (28, 28, 28, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (29, 29, 29, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (30, 30, 30, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (31, 31, 31, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (32, 32, 32, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (33, 33, 33, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (34, 34, 34, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (35, 35, 35, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (36, 36, 36, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (37, 37, 37, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (38, 38, 38, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (39, 39, 39, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (40, 40, 40, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (41, 41, 41, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (42, 42, 42, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (43, 43, 43, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (44, 44, 44, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (45, 45, 45, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (46, 46, 46, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (47, 47, 47, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (48, 48, 48, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (49, 49, 49, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (50, 50, 50, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (51, 51, 51, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (52, 52, 52, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (53, 53, 53, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (54, 54, 54, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (55, 55, 55, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (56, 56, 56, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (57, 57, 57, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (58, 58, 58, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (59, 59, 59, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (60, 60, 60, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (61, 61, 61, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (62, 62, 62, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (63, 63, 63, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (64, 64, 64, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (65, 65, 65, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (66, 66, 66, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (67, 67, 67, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (68, 68, 68, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (69, 69, 69, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (70, 70, 70, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (71, 71, 71, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (72, 72, 72, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (73, 73, 73, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (74, 74, 74, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (75, 75, 75, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (76, 76, 76, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (77, 77, 77, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (78, 78, 78, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (79, 79, 79, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (80, 80, 80, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (81, 81, 81, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (82, 82, 82, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (83, 83, 83, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (84, 84, 84, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (85, 85, 85, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (86, 86, 86, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (87, 87, 87, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (88, 88, 88, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (89, 89, 89, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (90, 90, 90, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (91, 91, 91, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (92, 92, 92, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (93, 93, 93, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (94, 94, 94, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (95, 95, 95, '1');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (96, 96, 96, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (97, 97, 97, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (98, 98, 98, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (99, 99, 99, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (100, 100, 100, '0');