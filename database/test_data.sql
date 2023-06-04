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

INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (1, 1, 1997, 33140, 1);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (2, 2, 1438, 6622, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (3, 3, 3383, 24241, 25);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (4, 4, 2660, 8327, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (5, 5, 2634, 35235, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (6, 6, 870, 37629, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (7, 7, 2345, 11235, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (8, 8, 26, 18941, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (9, 9, 944, 38707, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (10, 10, 655, 7096, 30);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (11, 11, 316, 3421, 21);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (12, 12, 1029, 13241, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (13, 13, 685, 32909, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (14, 14, 1668, 8121, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (15, 15, 2829, 30387, 27);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (16, 16, 1097, 18290, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (17, 17, 1778, 33055, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (18, 18, 2712, 20688, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (19, 19, 1307, 17602, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (20, 20, 2920, 1120, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (21, 21, 197, 41689, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (22, 22, 1684, 16174, 21);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (23, 23, 1425, 10509, 1);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (24, 24, 2456, 26155, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (25, 25, 3455, 28266, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (26, 26, 464, 13548, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (27, 27, 1319, 33304, 16);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (28, 28, 2330, 15202, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (29, 29, 527, 23511, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (30, 30, 1242, 4214, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (31, 31, 2329, 9696, 27);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (32, 32, 406, 15068, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (33, 33, 1372, 18694, 7);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (34, 34, 1389, 41852, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (35, 35, 1642, 15813, 21);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (36, 36, 408, 38811, 5);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (37, 37, 3145, 11008, 30);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (38, 38, 1419, 17976, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (39, 39, 3371, 24044, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (40, 40, 3008, 7678, 1);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (41, 41, 1411, 34899, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (42, 42, 3384, 24602, 22);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (43, 43, 526, 22316, 29);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (44, 44, 610, 16136, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (45, 45, 2787, 24277, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (46, 46, 3535, 36147, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (47, 47, 3507, 26476, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (48, 48, 3389, 41882, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (49, 49, 1593, 42033, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (50, 50, 1227, 2822, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (51, 51, 291, 5825, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (52, 52, 2655, 1541, 1);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (53, 53, 1194, 790, 26);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (54, 54, 2323, 41249, 1);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (55, 55, 2205, 29761, 28);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (56, 56, 84, 15584, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (57, 57, 2470, 15643, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (58, 58, 3498, 37656, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (59, 59, 3160, 21527, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (60, 60, 3410, 26753, 30);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (61, 61, 3112, 29001, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (62, 62, 2316, 17236, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (63, 63, 948, 15182, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (64, 64, 1185, 23468, 19);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (65, 65, 359, 38705, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (66, 66, 3435, 21654, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (67, 67, 1401, 22168, 15);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (68, 68, 146, 3829, 7);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (69, 69, 84, 37465, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (70, 70, 2113, 5150, 24);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (71, 71, 376, 20558, 5);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (72, 72, 2798, 2892, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (73, 73, 3087, 17418, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (74, 74, 1058, 19245, 4);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (75, 75, 3110, 29515, 24);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (76, 76, 2599, 15130, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (77, 77, 1511, 24433, 14);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (78, 78, 519, 6430, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (79, 79, 2617, 12183, 9);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (80, 80, 2420, 18014, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (81, 81, 3169, 31517, 17);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (82, 82, 521, 24220, 6);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (83, 83, 1134, 28117, 27);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (84, 84, 1311, 22309, 27);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (85, 85, 658, 23941, 18);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (86, 86, 1257, 27962, 8);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (87, 87, 3089, 18262, 10);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (88, 88, 1655, 11436, 11);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (89, 89, 3009, 28551, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (90, 90, 3284, 10749, 29);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (91, 91, 131, 10593, 30);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (92, 92, 3014, 2284, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (93, 93, 2138, 36137, 3);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (94, 94, 1832, 22099, 13);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (95, 95, 1017, 18790, 12);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (96, 96, 681, 8861, 16);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (97, 97, 130, 32521, 25);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (98, 98, 1223, 39505, 16);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (99, 99, 1301, 18128, 20);
INSERT INTO `cardio_exercise_properties` (`id`, `exercise_id`, `duration`, `distance`, `speed`) VALUES (100, 100, 1106, 27415, 16);


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

INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (1, 1, 1496, 6215, 24, 'Vel necessitatibus nemo cupiditate et. Consequatur doloremque quis officia maiores quam velit quia ipsum. Perferendis quibusdam similique ut voluptatibus atque recusandae consequuntur.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (2, 2, 2792, 24589, 1, 'Reprehenderit eum id neque dolores aliquam expedita vel explicabo. Repudiandae quo repellat dolorem aperiam. Nemo illum suscipit a hic. Quibusdam expedita nihil cupiditate modi alias.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (3, 3, 1540, 40494, 26, 'Sint laudantium sit voluptatem aut aspernatur aut. Commodi reprehenderit non dolor aspernatur ut ipsam voluptate recusandae. Laudantium in expedita non eius fuga iure ab.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (4, 4, 1123, 17303, 21, 'Et harum non iusto libero. Sequi officiis natus ut dignissimos reprehenderit. Reiciendis aliquam ipsa molestias dolor tempora ab et. Molestias consequatur praesentium aperiam similique velit nostrum quisquam autem.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (5, 5, 1084, 40360, 6, 'Neque enim facilis quasi. Doloribus illum omnis itaque distinctio quis quia quidem. Vero eaque qui ut animi nemo maxime harum. Officia voluptas sed iure quis est.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (6, 6, 2193, 1918, 7, 'Rem voluptatem dolorem id. Quidem quo sint ad. Quisquam eos iste id et. Quae facilis aut ex sit fugiat ipsam nihil ut.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (7, 7, 1752, 12274, 2, 'Laborum iusto aut consequuntur nihil earum. Nostrum nesciunt dolorum perspiciatis qui. Ratione officiis voluptatum aut enim excepturi labore.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (8, 8, 1257, 3485, 15, 'Quaerat similique qui ratione. Consequatur eveniet non eos corporis. Omnis vitae iste cum veritatis.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (9, 9, 2142, 12378, 29, 'Dicta ut omnis cupiditate et voluptatem commodi dolorem. Ea blanditiis sequi reiciendis totam quo dolores. Cum debitis quo iure autem illum quis sequi ea.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (10, 10, 622, 33891, 3, 'Vel tempore velit aspernatur corporis eveniet quasi molestiae. Dolores in atque aperiam laborum quisquam nisi eum. Rerum praesentium eum reiciendis velit consequatur voluptatem. Dolorem magnam nobis vel quia eligendi et ab.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (11, 11, 1963, 39888, 25, 'Qui ratione voluptatum reprehenderit exercitationem. Et repellat esse incidunt vero. Corporis nostrum cumque eos.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (12, 12, 3250, 36130, 25, 'Dolore laborum unde earum quos ea. Accusamus enim et voluptatibus. Vitae reiciendis ipsa totam facere. Vero enim officia veritatis voluptatem voluptas.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (13, 13, 1070, 23295, 17, 'Ipsam ea neque placeat rerum voluptate. Velit laudantium dolores officiis est. Ratione dolorem rem labore dolor ut exercitationem in. Molestias minima iure quo repudiandae. Labore dolorem fuga dolore sint eos.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (14, 14, 3104, 16957, 11, 'Tempora corporis numquam dignissimos neque voluptatem delectus. Voluptas enim aut quasi nisi doloremque. Ipsa eos aut dolore sunt.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (15, 15, 200, 14664, 23, 'Natus dolores eos eos eius aut perferendis consequuntur odit. Facere consectetur possimus facere quaerat. Voluptatem excepturi qui odit labore dolorum recusandae temporibus facilis. Sed ut laudantium quia porro deserunt.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (16, 16, 2961, 16676, 28, 'Voluptas sit necessitatibus velit architecto voluptates in cum. Facilis velit optio recusandae. Aut quia voluptatem neque voluptatum libero est voluptas.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (17, 17, 3290, 4439, 28, 'Nostrum atque autem magnam voluptas ea ab. Eius aut architecto ipsum iste possimus harum sunt. Tempore molestiae voluptatum amet fugiat in voluptate.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (18, 18, 1642, 22628, 0, 'Officia laudantium sit consequatur et. Similique facilis rem dolorum et. Est amet repellat eaque qui molestias asperiores reiciendis. Illo sunt vel voluptatum quo.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (19, 19, 2544, 12164, 10, 'Saepe enim neque nulla ipsum dolorem. Aperiam sequi quam qui assumenda non. Sed saepe velit non magni nihil neque voluptas. In maxime voluptatum commodi quae occaecati adipisci.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (20, 20, 3575, 25278, 2, 'Esse pariatur non deleniti voluptatem ea perspiciatis ut. Numquam nesciunt nihil quibusdam provident vero consequatur expedita. Quia voluptatem minus mollitia est modi est. Voluptatem consectetur quia a.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (21, 21, 1130, 41264, 26, 'Qui repudiandae at voluptatem nobis non qui laboriosam. Quam dolorem ex id in et autem earum. Iusto provident quos rerum.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (22, 22, 1878, 11943, 6, 'Qui aut dolor et optio hic. Eligendi a nemo cupiditate maxime exercitationem odio assumenda. Quas et et qui facere. Molestiae numquam in fugiat et qui ut.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (23, 23, 2812, 33248, 25, 'Quo repellendus voluptate odit atque. Est delectus facilis est temporibus deleniti. Accusantium aliquam eius ducimus asperiores.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (24, 24, 613, 14661, 0, 'Praesentium velit quisquam veritatis nihil ea accusantium esse quasi. Voluptatem occaecati velit veritatis aliquid ex autem. Eum beatae sint aut ducimus ut harum.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (25, 25, 2556, 30252, 23, 'Sint perferendis expedita accusamus ipsa necessitatibus. Error vitae velit dolorem quam beatae error quod. Enim eos eos maxime alias ea exercitationem.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (26, 26, 1812, 5313, 24, 'Adipisci voluptates odio dolore mollitia odit magnam et. Vel dolores quo fugiat cupiditate. Veniam est ipsum vel sit alias quis. Architecto dolore illum quia alias perferendis ipsa. Omnis ut qui sequi amet et culpa voluptatem.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (27, 27, 2662, 10794, 6, 'Sed quis optio nobis quibusdam officiis sit ipsa. Blanditiis sed corporis a sapiente consequatur iste sit. Pariatur sed explicabo mollitia. Ut qui eos quas earum eum inventore.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (28, 28, 2348, 37376, 6, 'Porro delectus nihil magnam excepturi et ut. Deleniti quibusdam veniam illo quo. Praesentium assumenda dolores expedita inventore corporis. Repellat rerum commodi maxime quibusdam voluptate et eaque.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (29, 29, 79, 1944, 12, 'Molestias eaque incidunt sunt eos. Eos quis veritatis doloremque. Qui expedita dolor inventore et aut qui.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (30, 30, 604, 1861, 14, 'Voluptatem pariatur officiis laudantium. Tempora ex qui rem ea minima rerum molestiae ea. Eaque voluptatem quidem molestias sunt. Expedita enim rerum ea. Dignissimos doloremque delectus rerum et dolore consequuntur eius debitis.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (31, 31, 549, 41334, 21, 'Sint voluptas aut optio consectetur. Cumque facere atque in quia dolores perferendis. Dolores dolorem alias necessitatibus nostrum eum.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (32, 32, 3313, 39057, 15, 'Ut saepe repellendus exercitationem voluptatem et distinctio provident. Qui vel distinctio vero fugiat. Reiciendis sapiente qui modi veritatis. Harum fugiat provident dicta iste eligendi consequuntur.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (33, 33, 2446, 16911, 12, 'Facere vel deserunt iusto dolor dicta qui tempore excepturi. Harum aperiam ullam minus enim odit et.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (34, 34, 1378, 40550, 21, 'Corrupti voluptatem ad quia sint perspiciatis fugit. Eum pariatur aut libero consequatur. Voluptatum dolores voluptatibus voluptatibus impedit molestiae est culpa. Sit cum non saepe omnis. Et nisi placeat est reiciendis.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (35, 35, 1753, 17862, 23, 'Consectetur eligendi deleniti harum ut voluptas labore sit. Aliquid aperiam eum cum debitis eos sed fuga. Distinctio omnis molestiae quis autem.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (36, 36, 496, 9628, 13, 'Eum harum consectetur commodi eos ut. Laboriosam nobis nesciunt tenetur et voluptas molestiae ratione. Omnis sunt sit sit iste. Eveniet esse earum expedita inventore id est.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (37, 37, 2024, 4255, 11, 'Sequi quibusdam unde quam eum cum modi. Aut expedita provident eum voluptas iusto dolorum quo. Quo ratione voluptatibus maxime aliquid.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (38, 38, 951, 28421, 20, 'Quis impedit provident facere dolores totam eveniet vitae. Ad ipsum alias ullam sed earum ipsam. Sunt dolores sed est commodi consequatur hic. Aut eaque dolore fugit eos asperiores a. Sint sit voluptatem fugit non.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (39, 39, 2207, 208, 3, 'Et aspernatur sunt laboriosam placeat ea ut dolorem. Consequatur odio laboriosam quisquam corporis.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (40, 40, 1133, 12959, 15, 'Vero doloribus at non est totam rem labore. Nihil quia rerum alias eos. Fuga molestiae autem id in. Animi est alias alias.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (41, 41, 1851, 15895, 18, 'Iste et dolor delectus. Culpa exercitationem quia quia laboriosam ea nesciunt aut. Ipsam neque quod doloribus consequatur saepe laboriosam cupiditate. Sint delectus porro modi voluptas ipsa aut.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (42, 42, 2068, 19272, 9, 'Numquam repellat earum nemo debitis dolorem laudantium aspernatur sit. Quod omnis maiores architecto id velit totam quaerat. Non rem necessitatibus qui provident. Tempora sunt est deserunt autem autem illo ut.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (43, 43, 1961, 9842, 22, 'Officia et ut ea. Velit et voluptas accusamus placeat aut nobis quisquam.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (44, 44, 1353, 7438, 24, 'Quidem quia et id qui quia eius. Fuga mollitia aliquid asperiores repudiandae maiores. Sunt dolores consequatur ipsa totam.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (45, 45, 667, 15654, 20, 'Veniam quas enim eum vel. Quibusdam quia voluptas quis deserunt rerum. Non enim nemo recusandae placeat alias. Libero quo qui saepe et dolor.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (46, 46, 2571, 4640, 27, 'Pariatur dolores voluptates sit sequi. Cum autem aliquid error blanditiis perferendis. Accusantium earum accusamus praesentium sequi incidunt.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (47, 47, 936, 35697, 16, 'Quod eveniet ea nihil illum at. Et consequatur voluptatem at ut minus eligendi non. Et velit incidunt sequi fuga. Adipisci quo officia ipsa voluptatibus aut qui dicta eos.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (48, 48, 3378, 13865, 12, 'Eum eius eos totam ut. Beatae quod sed iste ut. Similique reprehenderit culpa eum. Et est neque ea voluptas est.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (49, 49, 2688, 36797, 29, 'Eius rerum ullam quam veniam aut. Quisquam voluptas delectus culpa quasi ad cupiditate. Ut eos maxime eligendi rem quod deserunt. Dolores animi vitae numquam.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (50, 50, 1466, 40179, 9, 'Voluptatem magni qui voluptatem dolor quod nemo. Illum autem itaque nemo veritatis. Dignissimos corrupti ab iure pariatur quasi explicabo.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (51, 51, 3386, 31541, 28, 'Rerum veniam ratione voluptas aut ut neque. Consequatur asperiores temporibus tenetur suscipit aut nam sit. Nemo consequatur accusamus suscipit et est dolor. Id eveniet dolor tempora fugiat assumenda error molestiae non.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (52, 52, 1255, 7019, 19, 'Quasi eaque pariatur beatae totam porro aut mollitia. Tempore aut quia itaque excepturi nulla corrupti deserunt quam. Ad illum vero ullam sed. Dicta eligendi deleniti culpa quo.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (53, 53, 1647, 4515, 17, 'Natus aut porro voluptatem animi sit numquam. Enim quod qui sint voluptatem molestias. Veritatis eos explicabo beatae sint.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (54, 54, 291, 14690, 2, 'Consequuntur vel voluptatem voluptas quis aspernatur dicta. Natus ut iste et veniam id. Id excepturi eius amet.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (55, 55, 785, 12469, 13, 'Laborum placeat dolores omnis voluptatibus ducimus fuga ea. Enim et placeat error recusandae laborum sed. Deserunt consequatur minus illum impedit. Nostrum est est aliquam ullam esse saepe occaecati.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (56, 56, 941, 12807, 28, 'Quod quas aut et. Voluptas ducimus facilis hic. Dolores eum odio incidunt.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (57, 57, 1219, 38316, 23, 'Veritatis rem ex animi tenetur voluptates. Temporibus sapiente cupiditate neque facilis aperiam ea. Dolores quasi id maxime mollitia.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (58, 58, 1371, 17767, 22, 'Atque mollitia eligendi hic. Quod quidem adipisci modi ipsam in animi voluptatum. Et et incidunt et corporis debitis. Debitis repellat rerum consequatur aliquid dolores soluta animi. Ut nam totam quis magnam nisi earum incidunt quia.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (59, 59, 816, 40727, 13, 'Magnam velit voluptas omnis odit debitis. Sint sint dolor eius. Consequatur pariatur nam commodi. Autem maxime aut voluptatibus non eos.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (60, 60, 1903, 10830, 17, 'Sit distinctio incidunt molestias aut ut perferendis odit. Minus quia consequatur ratione possimus ut officiis. Sed repellat odit qui amet quas iusto. Aut id dolorum sint.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (61, 61, 615, 35965, 6, 'Laudantium et veniam repellendus nihil et. Voluptatum suscipit dolores dolor provident nesciunt consectetur quis. Tenetur officia ut quod beatae. Itaque et aut perspiciatis error et id sit.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (62, 62, 2243, 36509, 22, 'Error eum eligendi accusantium. Eum officiis eos veritatis quae. A cumque sed magnam id voluptatem cumque quia minima.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (63, 63, 1049, 13412, 19, 'Facilis iure ipsum et. Temporibus esse error et. Adipisci delectus iure est eum voluptates deleniti. Sed nihil molestiae voluptatem accusantium autem.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (64, 64, 2553, 26999, 20, 'Hic est in dolorem. Esse et dolores libero repellat vitae qui. Debitis omnis natus ullam ex. Sapiente dolores neque cupiditate at ut officia.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (65, 65, 448, 12373, 3, 'Sed eum omnis et ad cupiditate. Quam voluptate numquam itaque voluptates. Nihil voluptatibus eum est illo. Dolorem qui fugit illo quo. Vel possimus iure culpa error explicabo veritatis voluptates.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (66, 66, 3034, 24567, 13, 'Vel sunt qui perspiciatis voluptatibus. Culpa unde sit in ut dignissimos ullam repellat. Neque et iure sit mollitia itaque. Mollitia accusamus doloremque atque laboriosam aut cumque.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (67, 67, 117, 40749, 2, 'Vel quo pariatur ad voluptate voluptatem ut. Minus repellendus minus sunt quos porro consequatur aperiam quibusdam. Placeat repellat dolorem soluta aut repellat ratione. Maiores omnis dolore laudantium eos iste id quod.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (68, 68, 1077, 7541, 11, 'Rerum nemo in et dolore voluptatem. Voluptas ad placeat repudiandae nulla. Beatae quia eaque aut nulla quisquam. Laudantium eius et quod laudantium molestiae.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (69, 69, 3380, 18870, 26, 'Nam et fugit iure quod molestias. Enim doloremque est qui pariatur quo accusamus. Voluptas dolorem molestiae et in incidunt. Enim accusamus inventore eius eius quidem aperiam.', 7);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (70, 70, 1965, 22471, 11, 'Cupiditate voluptatibus temporibus saepe sit voluptates et ut. Sed odio magni odit. Architecto id dignissimos pariatur magnam.', 0);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (71, 71, 1987, 16570, 29, 'Vel dolorum perspiciatis explicabo vel. Voluptatem neque eaque rerum non quae sunt amet non. Dolorem libero aut ipsam maiores eum. Itaque temporibus doloribus sint veritatis maxime modi.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (72, 72, 457, 22099, 13, 'Expedita saepe voluptatem reiciendis ut commodi. Aut unde sint hic repellendus ducimus nesciunt unde. Reiciendis rerum non aut necessitatibus dicta. Doloremque rerum eaque in sunt eligendi.', 3);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (73, 73, 1003, 14519, 7, 'Eius qui et deleniti iusto modi neque non qui. Assumenda ipsam voluptate eaque voluptatem ea omnis assumenda. Aliquid nobis mollitia porro dolorem eum animi id. Ad omnis molestiae exercitationem illum illum blanditiis. Nihil nesciunt atque nesciunt eum placeat.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (74, 74, 688, 32367, 26, 'Ea tempora qui laborum aliquam. Odio quaerat omnis laborum accusamus veniam quo.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (75, 75, 1923, 21957, 29, 'Sapiente enim voluptatem minus nostrum architecto nostrum. Et totam totam sunt. Temporibus qui sapiente rem dolor vel laboriosam laudantium veniam. Quo molestiae praesentium illo quia.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (76, 76, 2768, 29740, 1, 'Minus temporibus ea iste et fugiat id nisi nulla. Ut minus suscipit illum vel quibusdam quaerat. Harum eius sunt reiciendis placeat.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (77, 77, 172, 41887, 5, 'Eos dolor a et et itaque autem. Enim libero error est atque magni et dolorum.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (78, 78, 2854, 37241, 25, 'Aut velit qui minus odit non. Omnis optio cupiditate et in commodi eos a libero.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (79, 79, 2397, 23427, 30, 'Illo facere officia aspernatur ipsum cupiditate mollitia. Eligendi quis optio blanditiis aut architecto consequuntur numquam cupiditate. Dicta dolor eos qui accusamus laudantium eius quisquam. Qui vel fuga et fuga. Quam deserunt molestias aut ut libero deserunt.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (80, 80, 1291, 22074, 18, 'Tempore cupiditate ad eaque ratione itaque ullam. Quasi porro sed aut hic laborum voluptates dolores. Repellat illum dicta ducimus. Asperiores aut autem est dolorum qui. Voluptate non sint quam est nostrum voluptatem ut accusamus.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (81, 81, 2981, 39384, 29, 'Ut est mollitia vitae consequatur dolorem. Enim alias eligendi excepturi. Consequuntur incidunt quam unde incidunt esse et.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (82, 82, 1646, 9815, 25, 'Sed aperiam libero ipsam magnam saepe delectus sunt. Eligendi et voluptatem placeat aut. Quod voluptas fuga qui natus.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (83, 83, 1500, 15179, 27, 'Eius dolore qui laborum enim explicabo totam tempora quo. Ut velit ullam accusantium unde nam perspiciatis et nulla. Est occaecati repellendus eum est nihil officia.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (84, 84, 959, 14347, 25, 'Suscipit perspiciatis sint et debitis. Ipsa repellat totam nihil ea illum dignissimos. Et qui voluptates sed beatae nihil porro.', 6);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (85, 85, 2440, 25226, 9, 'Saepe distinctio aliquid voluptas. Est qui optio cupiditate tempore accusantium. Qui molestiae iste eius et cupiditate esse.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (86, 86, 2830, 3682, 18, 'Fuga sed iste ullam ex. Facilis dolorem totam aut aut expedita. At consequuntur magnam in corporis aut et. Dolores quo nisi quidem quo.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (87, 87, 2227, 1677, 28, 'Architecto voluptatum error sit veniam. Officiis facilis ipsum nesciunt repudiandae atque et harum. Quo consectetur voluptas aut eligendi vel enim porro.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (88, 88, 3111, 27154, 20, 'Suscipit esse architecto odit. Vel adipisci ut inventore asperiores est suscipit. Ea et qui eligendi laborum nulla. Explicabo velit libero distinctio debitis hic.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (89, 89, 715, 4928, 17, 'Enim aut odio harum consequatur consequatur impedit voluptatem. Et eos dolorem rerum adipisci quod inventore. Voluptas eos molestiae odit doloremque illo aut.', 5);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (90, 90, 2205, 12121, 22, 'Dolor exercitationem autem officia minus qui. Minima voluptas vel magni aspernatur qui. Laborum possimus omnis suscipit quis quia. Quis quo sed molestiae voluptatem labore.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (91, 91, 3218, 12611, 16, 'Dolore alias ipsa quia odio fugiat quasi. Similique eaque ea autem omnis sed aliquid.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (92, 92, 1846, 31409, 15, 'Quia sapiente officiis et accusamus sed ut ipsa. Accusantium nulla quidem possimus unde qui. Eius magnam enim nemo nihil mollitia mollitia.', 1);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (93, 93, 97, 41695, 9, 'Debitis facilis pariatur libero est rerum nulla. Tempore et et dicta velit voluptas repellat. Et rem qui iure distinctio vel voluptatem est. Omnis cum autem id error.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (94, 94, 260, 19901, 28, 'Expedita est ratione ut ut ipsa. Dolores et sit aliquam voluptas nemo quae dolorem. Molestias quis quasi dolorum voluptatem in error dicta.', 8);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (95, 95, 3375, 23888, 30, 'Fugiat consequatur commodi harum omnis. Ad ducimus quia velit ipsa sit quae molestiae minima. Ex cum blanditiis explicabo a laudantium ea eum.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (96, 96, 3370, 28483, 29, 'Est officiis qui aut repudiandae. Quo commodi inventore similique eum. Nulla labore quidem consequatur. Excepturi provident facere et et voluptas corporis.', 10);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (97, 97, 3104, 19825, 30, 'Praesentium quia mollitia maiores libero ratione natus. Repudiandae nisi libero ex. Aperiam maxime et vel atque et. Eligendi ut atque doloremque reiciendis voluptatem praesentium.', 9);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (98, 98, 3182, 7703, 30, 'Eum magnam ratione adipisci alias repellendus ipsum. Officia consequatur harum omnis veniam rerum expedita voluptates. Enim ea eos perferendis et illo quas tenetur.', 2);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (99, 99, 1597, 39377, 18, 'Non quis veritatis fugit debitis. Unde beatae numquam quos nihil aut aperiam. Recusandae omnis tenetur nihil. Quia est commodi placeat ut ut quae.', 4);
INSERT INTO `cardio_logs` (`id`, `exercise_id`, `duration`, `distance`, `speed`, `notes`, `list_position`) VALUES (100, 100, 13, 2240, 24, 'Est consequatur eum voluptas ut atque quo magnam autem. Dolores est ad libero mollitia explicabo et. Nulla quia molestiae sit sunt et animi.', 9);


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

INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (1, 1, 248);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (2, 2, 55);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (3, 3, 52);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (4, 4, 499);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (5, 5, 186);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (6, 6, 197);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (7, 7, 220);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (8, 8, 521);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (9, 9, 34);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (10, 10, 11);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (11, 11, 60);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (12, 12, 329);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (13, 13, 400);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (14, 14, 85);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (15, 15, 179);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (16, 16, 328);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (17, 17, 250);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (18, 18, 5);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (19, 19, 176);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (20, 20, 336);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (21, 21, 484);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (22, 22, 404);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (23, 23, 17);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (24, 24, 495);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (25, 25, 556);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (26, 26, 167);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (27, 27, 313);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (28, 28, 320);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (29, 29, 436);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (30, 30, 227);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (31, 31, 242);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (32, 32, 497);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (33, 33, 165);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (34, 34, 366);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (35, 35, 314);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (36, 36, 253);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (37, 37, 259);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (38, 38, 415);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (39, 39, 412);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (40, 40, 130);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (41, 41, 219);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (42, 42, 548);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (43, 43, 116);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (44, 44, 391);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (45, 45, 186);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (46, 46, 175);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (47, 47, 65);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (48, 48, 405);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (49, 49, 373);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (50, 50, 298);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (51, 51, 539);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (52, 52, 271);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (53, 53, 392);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (54, 54, 446);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (55, 55, 280);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (56, 56, 187);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (57, 57, 484);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (58, 58, 334);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (59, 59, 98);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (60, 60, 452);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (61, 61, 335);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (62, 62, 3);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (63, 63, 419);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (64, 64, 57);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (65, 65, 41);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (66, 66, 366);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (67, 67, 113);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (68, 68, 6);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (69, 69, 381);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (70, 70, 551);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (71, 71, 206);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (72, 72, 337);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (73, 73, 519);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (74, 74, 543);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (75, 75, 36);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (76, 76, 276);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (77, 77, 247);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (78, 78, 86);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (79, 79, 516);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (80, 80, 397);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (81, 81, 343);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (82, 82, 306);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (83, 83, 463);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (84, 84, 131);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (85, 85, 102);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (86, 86, 292);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (87, 87, 551);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (88, 88, 90);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (89, 89, 390);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (90, 90, 490);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (91, 91, 593);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (92, 92, 377);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (93, 93, 39);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (94, 94, 568);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (95, 95, 397);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (96, 96, 73);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (97, 97, 9);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (98, 98, 333);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (99, 99, 287);
INSERT INTO `custom_timers` (`id`, `user_id`, `time`) VALUES (100, 100, 289);


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

INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (1, 'placeat', 'qui');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (2, 'eum', 'exercitationem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (3, 'et', 'aperiam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (4, 'aut', 'id');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (5, 'rerum', 'in');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (6, 'hic', 'ullam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (7, 'aperiam', 'non');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (8, 'vitae', 'aperiam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (9, 'aliquid', 'delectus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (10, 'mollitia', 'sit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (11, 'numquam', 'omnis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (12, 'nihil', 'enim');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (13, 'aliquid', 'doloremque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (14, 'qui', 'beatae');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (15, 'maxime', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (16, 'odio', 'nostrum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (17, 'sit', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (18, 'aperiam', 'dolor');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (19, 'est', 'facilis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (20, 'voluptas', 'aut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (21, 'sequi', 'consequatur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (22, 'necessitatibus', 'aut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (23, 'nam', 'consequatur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (24, 'deleniti', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (25, 'qui', 'eos');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (26, 'sed', 'tenetur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (27, 'sit', 'impedit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (28, 'nihil', 'beatae');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (29, 'veritatis', 'dolorum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (30, 'incidunt', 'sit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (31, 'animi', 'dolores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (32, 'sunt', 'dolor');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (33, 'est', 'possimus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (34, 'nihil', 'minus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (35, 'nulla', 'odit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (36, 'dolorem', 'dolorum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (37, 'aliquid', 'quod');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (38, 'cum', 'adipisci');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (39, 'qui', 'quia');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (40, 'nesciunt', 'voluptas');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (41, 'molestiae', 'quisquam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (42, 'magnam', 'in');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (43, 'explicabo', 'voluptatem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (44, 'voluptas', 'laudantium');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (45, 'et', 'ipsa');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (46, 'tenetur', 'qui');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (47, 'deleniti', 'ullam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (48, 'atque', 'nesciunt');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (49, 'facilis', 'qui');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (50, 'qui', 'doloribus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (51, 'qui', 'rem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (52, 'ut', 'et');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (53, 'quibusdam', 'voluptas');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (54, 'tempora', 'ut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (55, 'iste', 'quos');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (56, 'nihil', 'excepturi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (57, 'nisi', 'omnis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (58, 'asperiores', 'neque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (59, 'esse', 'ipsa');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (60, 'porro', 'sit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (61, 'et', 'ratione');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (62, 'dolor', 'exercitationem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (63, 'nostrum', 'modi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (64, 'ut', 'quia');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (65, 'est', 'dolore');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (66, 'aliquid', 'fuga');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (67, 'qui', 'quis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (68, 'aspernatur', 'est');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (69, 'suscipit', 'velit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (70, 'perspiciatis', 'voluptates');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (71, 'quas', 'doloremque');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (72, 'molestiae', 'provident');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (73, 'aspernatur', 'ut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (74, 'enim', 'magnam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (75, 'non', 'rerum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (76, 'consequuntur', 'nostrum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (77, 'aut', 'beatae');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (78, 'rerum', 'dolores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (79, 'veniam', 'asperiores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (80, 'veniam', 'voluptate');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (81, 'pariatur', 'dicta');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (82, 'accusantium', 'voluptatem');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (83, 'qui', 'aspernatur');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (84, 'molestiae', 'est');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (85, 'hic', 'totam');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (86, 'nobis', 'minima');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (87, 'porro', 'non');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (88, 'voluptatem', 'reiciendis');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (89, 'eaque', 'fugit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (90, 'qui', 'rerum');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (91, 'aliquam', 'maiores');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (92, 'harum', 'aut');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (93, 'esse', 'vel');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (94, 'reprehenderit', 'labore');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (95, 'fugiat', 'ipsa');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (96, 'earum', 'optio');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (97, 'deserunt', 'nisi');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (98, 'ratione', 'impedit');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (99, 'et', 'voluptatibus');
INSERT INTO `exercise_names` (`id`, `exercise_name_en`, `exercise_name_pl`) VALUES (100, 'fugiat', 'quia');


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

INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (1, 1, 2, 1, 'Molestiae consequatur quia delectus ea est illum repudiandae corrupti. Ut doloremque nostrum qui est cumque fugiat. Id ut necessitatibus officia. Blanditiis voluptatibus possimus nemo fuga unde voluptas ab.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (2, 2, 1, 2, 'Repellendus quod delectus similique deserunt possimus. Maxime et in nihil in nisi. Perspiciatis quidem consequuntur in.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (3, 3, 1, 3, 'Doloremque similique quos rerum sint incidunt aut. Debitis tempora voluptas dolore molestias dolor exercitationem unde. Magnam similique id accusantium fugit et voluptatem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (4, 4, 1, 4, 'Soluta sit cum unde dicta ullam modi nostrum. Quam nihil iste necessitatibus corporis corrupti. Occaecati illum repellendus illo praesentium debitis ad id. Molestiae debitis ducimus aut dolores quisquam id. Odio quis doloremque enim error ipsum recusandae in.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (5, 5, 2, 5, 'Ducimus modi sed sunt aspernatur molestiae. Maxime quia nihil odit voluptas impedit. Sunt officia cumque magnam veritatis. Aliquid magnam magnam qui corrupti necessitatibus a.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (6, 6, 1, 6, 'Sunt consequatur eligendi tempora quidem veniam qui laudantium. Tenetur enim quae nihil nihil et officiis nihil earum. Rem aut aspernatur esse dolorem alias.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (7, 7, 2, 7, 'Quibusdam adipisci exercitationem distinctio sint et ipsum commodi. Quia voluptatem atque qui autem voluptatem animi. Ut hic quia voluptas. Quo aut voluptate et pariatur nihil.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (8, 8, 2, 8, 'Rem labore earum dolorum numquam placeat labore omnis. Quidem accusamus sint dolor neque est. Quia fugit dignissimos cumque enim tempore qui ut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (9, 9, 0, 9, 'Corporis minima sint qui. Voluptatem velit repellat amet est omnis vitae incidunt.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (10, 10, 0, 10, 'Iure error nihil excepturi fuga soluta voluptatum saepe iste. Nobis voluptas quis quia reprehenderit. Voluptatem ab aliquid aut deserunt. Rerum quaerat qui cupiditate commodi. Optio recusandae sit officia accusantium temporibus cupiditate omnis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (11, 11, 0, 11, 'Non tempora eius voluptatibus et velit recusandae. Nam dolores deserunt vel cupiditate voluptatem eaque vitae et. Distinctio ut ut hic perspiciatis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (12, 12, 1, 12, 'Et perferendis id neque et nisi at. Voluptates rerum sed libero illum est ducimus. Et deserunt in velit. Quia sapiente aut in earum suscipit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (13, 13, 1, 13, 'Officia libero molestiae aliquam id magni consequatur. Excepturi veritatis quod maxime qui. Officia vero saepe ipsam fugiat nemo maxime.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (14, 14, 0, 14, 'Qui excepturi rerum deleniti provident voluptas architecto sint. Eaque dolorum consequuntur atque et omnis. Officiis placeat nostrum quis repellat optio ea et. Ut ab neque aspernatur asperiores commodi enim.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (15, 15, 2, 15, 'Sed ea et est vero. Ipsa nam ut corporis a et praesentium voluptatibus suscipit. Enim et facilis aliquam error. Enim quae unde ex ducimus praesentium sit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (16, 16, 1, 16, 'Qui in culpa fuga et. Rerum assumenda assumenda enim quos sed. Incidunt quod ut cupiditate qui eius voluptas voluptas provident.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (17, 17, 2, 17, 'Cum aut error molestiae quisquam officiis consequatur. Ipsa sed temporibus asperiores qui inventore quo. Et beatae quos dolor assumenda repellendus asperiores at.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (18, 18, 1, 18, 'Quaerat eius praesentium quaerat autem et sint dicta. Exercitationem ut eveniet rerum minus ducimus quia. Cum magnam ut velit eius quam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (19, 19, 2, 19, 'Cum voluptatum aliquam adipisci voluptates est. Recusandae inventore aut atque dolore. Aut culpa aut quidem deserunt et ut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (20, 20, 2, 20, 'Non perspiciatis autem aut quia perspiciatis doloremque. Minus maiores quo placeat temporibus. Accusamus corrupti est possimus numquam deserunt in.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (21, 21, 1, 21, 'Quasi ut rem illo odio vero. Perferendis libero impedit voluptatem quibusdam eos. Autem amet accusantium natus nulla et similique. Libero quod id quia sequi.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (22, 22, 0, 22, 'Nihil et similique ipsum molestiae est deserunt consequuntur animi. Cupiditate quaerat est est quaerat aliquid quaerat est maiores. Ut sint non et architecto suscipit cumque quibusdam molestiae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (23, 23, 0, 23, 'Error et qui quisquam pariatur ea iste. Consectetur magni et rerum consequatur totam sit. Ut voluptate fuga voluptates rerum dolorem nihil consequuntur.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (24, 24, 2, 24, 'Iure magnam vel ratione enim dolorem enim. Voluptas enim tenetur quia facere veniam ut est quas. Nostrum nulla sint maiores.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (25, 25, 0, 25, 'Adipisci libero voluptatem qui et. In ut ad necessitatibus doloremque. Inventore rem a ex aut sapiente ipsam. Rem officiis omnis veritatis sed in aut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (26, 26, 1, 26, 'Error vel commodi et autem. Et iure consequatur eos non facilis nihil. Nesciunt perspiciatis laboriosam sequi saepe dolorum qui libero. Occaecati autem laudantium eius quis nihil consequatur est impedit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (27, 27, 2, 27, 'Illum reprehenderit at occaecati cupiditate accusamus vero. Et eum doloribus hic ab. Ullam ipsum excepturi omnis dolores. Omnis et voluptas unde in quidem consequatur et.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (28, 28, 2, 28, 'Exercitationem reiciendis voluptatem dolor omnis quidem suscipit facilis nihil. Illo voluptatem eum sapiente deleniti facere. Nulla qui iste laborum excepturi quia sunt. Voluptatum vel rerum sint voluptates dolor.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (29, 29, 2, 29, 'Eum vel omnis est. Consequuntur dignissimos est accusamus at eum tenetur reiciendis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (30, 30, 1, 30, 'Id praesentium voluptatem possimus eaque voluptatem. Neque maiores nihil est odit voluptatem. Ad temporibus accusamus repudiandae eveniet qui cum. Accusantium rerum ex quibusdam ipsum et amet facilis laboriosam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (31, 31, 0, 31, 'Illum et earum voluptas corporis id et eaque. Quod reiciendis iure nesciunt id sapiente sit. Eum consectetur quis ut est delectus sit.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (32, 32, 2, 32, 'Omnis consequatur esse id perspiciatis natus. Reiciendis architecto assumenda voluptatum dolorem ipsa. Eligendi eum quia omnis accusantium.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (33, 33, 0, 33, 'Est voluptas facere quaerat exercitationem voluptate quis. Odit quidem possimus saepe dolorum. Perferendis voluptatem temporibus harum et cumque non optio. Voluptates sit fugiat aut iste.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (34, 34, 1, 34, 'Ab deserunt tenetur quia sit. Magnam sed qui laboriosam a. Rerum eveniet consequatur saepe quia exercitationem temporibus non. Amet eum voluptatem necessitatibus aliquam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (35, 35, 1, 35, 'Molestias non illo consequuntur totam consequatur. Deserunt ut repudiandae quam tempore qui fugit est aut. Nihil reiciendis laudantium est a beatae dolorem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (36, 36, 0, 36, 'Et quisquam non cum beatae. Voluptatem asperiores voluptas doloribus impedit. Voluptatum ut harum odit animi.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (37, 37, 0, 37, 'Voluptatem dolores quo dolorem error sed et harum. Molestiae minus nam at dolorem. Autem velit sequi consequatur velit quia laudantium enim. Vel doloremque voluptatem corporis sed maxime ratione vel. Omnis blanditiis libero vel sit eum dolor maiores qui.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (38, 38, 0, 38, 'Magnam in aut expedita nihil commodi eius. Animi iure itaque at suscipit velit. Sint impedit molestias fuga expedita laboriosam et. Eum non et perspiciatis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (39, 39, 0, 39, 'Nisi et ut sit. Tempora nemo in incidunt minus pariatur distinctio. Omnis nihil recusandae et itaque deserunt.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (40, 40, 0, 40, 'Voluptatum voluptatem cupiditate omnis voluptas. Vel possimus quae ipsam inventore temporibus a. Eum sint itaque ut exercitationem nihil a error. Ex autem cupiditate omnis quo autem autem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (41, 41, 2, 41, 'Qui veniam alias mollitia quis velit dolore ipsam. Quia modi facere placeat aperiam soluta quod assumenda amet. Non consequatur consequatur unde et molestiae deserunt ratione.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (42, 42, 2, 42, 'Iure delectus omnis necessitatibus est corrupti exercitationem. Ea nobis rem enim dignissimos et. Iusto perferendis molestiae voluptates facilis. Reiciendis dolorum suscipit commodi facilis ut recusandae. Quia neque quidem ullam amet sunt.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (43, 43, 0, 43, 'Maiores consequatur ut ullam assumenda ab. Commodi aperiam laboriosam aut quas dolor sunt veniam. Impedit temporibus nam aspernatur non amet commodi.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (44, 44, 1, 44, 'Aut non eos et consequatur molestias sit molestiae. Sunt aut consequuntur libero blanditiis. Tempora numquam aut tempore.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (45, 45, 0, 45, 'Ratione ex ea vitae blanditiis consectetur doloremque. Optio a impedit qui voluptate totam eos porro. Voluptas debitis est odio incidunt rerum cupiditate. Sed corporis ipsum saepe dolorum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (46, 46, 2, 46, 'Ullam esse cum dolor est. Sit rerum ratione aperiam. Et consequuntur rem est.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (47, 47, 0, 47, 'Autem vel debitis minus sed quibusdam voluptatem. Et et et est quas enim molestiae perspiciatis. Doloribus cum est quia eum natus sed a. Eos eaque nostrum quis rerum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (48, 48, 1, 48, 'Asperiores impedit minus blanditiis et et iusto harum. Sunt quos beatae quisquam odio quas dolores. Dolorem qui totam aperiam voluptatem saepe eos. Dolores quis beatae non quia cum voluptatem repellat.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (49, 49, 2, 49, 'Error dicta quidem ut aut. Qui recusandae mollitia numquam ipsa et et. Et dolore harum mollitia sunt est. Ut exercitationem est excepturi veniam. Veniam adipisci laboriosam ipsum quia labore quibusdam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (50, 50, 1, 50, 'Maiores aut nesciunt deleniti qui animi illo. Omnis quos ut optio. Corrupti dolorem omnis eius rerum perferendis. Voluptate culpa iusto tenetur a et corporis alias unde.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (51, 51, 1, 51, 'Non omnis id aliquam vitae sunt dicta. Voluptatem error neque iste exercitationem veritatis accusamus. Beatae et magni saepe a in consequuntur.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (52, 52, 1, 52, 'Officiis ut culpa numquam quod. Quidem consequatur aut sed sint iste. Odit officia laudantium porro in. Voluptate aperiam ut adipisci et nisi. Minus asperiores quae consequatur veniam totam deleniti sint.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (53, 53, 1, 53, 'Quam sit in dolorem aut molestias commodi. Perferendis ipsum modi aut voluptatibus ab. Est neque quia earum aut. Molestias molestiae ipsum eum est maiores ea.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (54, 54, 2, 54, 'Quia reiciendis voluptas amet distinctio sit nemo. Quia aut illo accusantium nam iste. Distinctio ut aut placeat laudantium excepturi recusandae culpa rem. Quis sint ut laborum consectetur aut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (55, 55, 2, 55, 'Ab ut consequatur hic quasi omnis asperiores. Quasi praesentium adipisci iste dolorum voluptates rerum. Porro quia in unde itaque quia nam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (56, 56, 0, 56, 'Quibusdam mollitia quod vel est omnis cupiditate. Molestias inventore similique vel. Est occaecati id minus animi quam aliquid debitis tenetur. Suscipit soluta quis deserunt quae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (57, 57, 2, 57, 'Vel nemo iure iure aut labore voluptatem. Molestiae ut qui velit error et ut. Qui quia nesciunt quia dolorum qui tempore voluptas.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (58, 58, 0, 58, 'Similique commodi eius suscipit quod. Velit molestiae autem ea quos vitae et. Velit et ut atque tempore placeat.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (59, 59, 1, 59, 'Et aperiam fuga fugiat repellendus. Magnam ut dicta officiis maiores facilis ut. Ex blanditiis aut voluptas beatae. Sed dolorem et dignissimos quod aut cumque. Omnis natus ut quo error nostrum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (60, 60, 1, 60, 'Perferendis recusandae voluptate laudantium. Aspernatur est repellendus quod nihil eum quod error.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (61, 61, 2, 61, 'Libero dicta velit sapiente quia dolores qui. Voluptate deserunt repudiandae ex non velit repudiandae molestias. Eius odio itaque maxime ut sed. Deserunt nulla odit architecto et reprehenderit reprehenderit exercitationem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (62, 62, 0, 62, 'Dolore voluptatum reiciendis perferendis accusamus. Repellendus voluptatem voluptatem aut voluptatem explicabo molestiae. Rerum expedita doloribus doloribus non explicabo quidem. Nulla explicabo expedita dolores.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (63, 63, 0, 63, 'Autem ut placeat consequatur blanditiis accusamus et. Error maiores voluptate quas neque velit quibusdam. Eum voluptatibus earum dolores at. Quaerat similique illo voluptatum et dolor adipisci in beatae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (64, 64, 2, 64, 'Et et libero velit et molestias. Ea est voluptates itaque. Libero praesentium sed quos enim voluptatem nesciunt. Beatae culpa inventore voluptas temporibus. Minus tempore sed quas excepturi aliquid quis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (65, 65, 2, 65, 'Natus harum aspernatur repellendus voluptate officia ea. Error omnis exercitationem est. Voluptatem sequi consequatur magnam nemo. Labore eaque ipsum aut molestiae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (66, 66, 2, 66, 'Iusto et voluptatibus eos sapiente repellendus. Accusamus voluptas veritatis aliquam qui. Molestiae consectetur deleniti qui voluptas ut dolorem officiis. Quaerat sunt incidunt ut impedit unde.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (67, 67, 2, 67, 'Esse laudantium accusamus rerum dolore quia omnis. Voluptatem minus doloribus nam.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (68, 68, 0, 68, 'Est quia aut odit dolore ab id. Quaerat quo ut minima saepe. Provident possimus autem repudiandae ipsa blanditiis ut. A esse vero et perferendis.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (69, 69, 1, 69, 'Ad voluptatem non ab culpa. Et ut id esse doloribus cum repudiandae dolorem sint. Dolore a vitae ut tempora mollitia non qui necessitatibus. Dicta pariatur numquam autem est.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (70, 70, 2, 70, 'Deleniti id odio fuga asperiores dolor. Aliquam eum optio est et ab non voluptas. Voluptate eos placeat nihil non aperiam. Voluptas eligendi laudantium est dignissimos voluptatem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (71, 71, 1, 71, 'Illo minus nesciunt sunt eos corporis cumque. Atque sunt totam et dignissimos. Corporis qui consequuntur sit maiores quisquam. Accusantium accusantium officiis qui perspiciatis quod accusantium voluptatem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (72, 72, 1, 72, 'Nostrum ipsum debitis temporibus assumenda sunt necessitatibus ipsum. Recusandae fugit accusantium numquam voluptas. Molestias sed sit dolorum suscipit enim harum non est.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (73, 73, 2, 73, 'Sequi omnis enim quae voluptas. Quos sed ab voluptates est eum et. Voluptates quo accusantium itaque necessitatibus odio velit eum. Cum magnam eveniet voluptatem fugit alias illo.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (74, 74, 0, 74, 'Quasi autem quisquam dicta eos quia cum. Explicabo dolorem sunt et excepturi. Non natus quibusdam dolor eum qui nobis porro. Est aut necessitatibus eum perspiciatis quaerat voluptatem expedita.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (75, 75, 1, 75, 'Aut et iste ut voluptate libero. Facere accusantium voluptatem est ad ut qui alias molestias. Distinctio ea est eveniet doloribus eum ex.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (76, 76, 2, 76, 'Quidem et repudiandae id veniam sunt. Quis quisquam alias impedit. Optio quis aut temporibus iusto voluptatem. Totam atque voluptas harum et qui fugiat id.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (77, 77, 2, 77, 'Voluptatum fugit officia dolore pariatur et aliquam saepe. Molestias sint et temporibus vero eos neque est. Consequatur omnis tempora occaecati voluptatem quis. Dolore et consequatur laboriosam vitae eos unde labore.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (78, 78, 2, 78, 'Est ut error officia vitae. Voluptates provident enim illo ea. Molestiae autem quisquam velit odit veritatis et. Ut doloremque pariatur enim dignissimos aut.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (79, 79, 0, 79, 'Veniam vitae amet accusamus eum repellat est incidunt. Voluptates est ea excepturi cupiditate reiciendis pariatur dolor aspernatur. Sed consequuntur recusandae modi qui facere.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (80, 80, 2, 80, 'Dolore est sed omnis voluptatem. Nisi delectus rerum excepturi in laborum ipsa. Minima facere vitae rerum recusandae et voluptas est. Corrupti mollitia error corrupti est consequuntur.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (81, 81, 0, 81, 'Ratione velit qui ullam odit. Nihil veritatis accusamus asperiores harum perferendis sed voluptas. Maxime et numquam ut reprehenderit. Amet minus quae quo quia.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (82, 82, 1, 82, 'Rerum quo sunt corrupti odio eaque. Quo in eos neque impedit dolorum dolor cum aliquam. Et libero natus nisi qui nihil maxime ratione.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (83, 83, 1, 83, 'Adipisci incidunt doloremque architecto dolor. Ut earum nemo ut doloribus corrupti voluptatum ut sint. Possimus consectetur et eius in voluptatibus quisquam maiores.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (84, 84, 0, 84, 'Quo qui vel architecto ut ad laboriosam. Voluptate velit harum quo necessitatibus architecto. Dolor facilis aut quia consequatur reprehenderit itaque qui molestiae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (85, 85, 0, 85, 'Quis quod veniam labore sequi omnis quisquam velit cum. Enim cum omnis harum. Dolores aperiam modi nam repellendus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (86, 86, 2, 86, 'Saepe praesentium autem deserunt illum. Ut magnam at dolores eaque veniam expedita quos recusandae. Architecto possimus ipsam quos enim illo.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (87, 87, 0, 87, 'Voluptatem tempore quo distinctio quo corrupti. Velit praesentium ullam optio officiis nulla.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (88, 88, 0, 88, 'Aut laborum et laborum placeat veniam pariatur aut. Nobis provident voluptate tenetur velit magnam dicta sint. Officia nesciunt expedita saepe. Pariatur modi perferendis dicta perspiciatis voluptas placeat.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (89, 89, 0, 89, 'Eaque sunt sint et. Earum sequi nobis ea necessitatibus sit quia. Minima magni beatae vel illum iure.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (90, 90, 0, 90, 'Deleniti soluta porro aut adipisci culpa. Suscipit explicabo sint nemo ratione laborum. Omnis et aliquid corrupti molestiae repellendus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (91, 91, 2, 91, 'Quo dicta et voluptatem saepe delectus error consequatur. Modi sint est voluptatum eveniet. Earum velit ut at nam autem ipsum non.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (92, 92, 1, 92, 'Aliquam eos natus incidunt iusto. Est eius itaque delectus impedit quas. Esse est ratione pariatur occaecati harum et sed eaque. Reiciendis accusamus aut dignissimos enim nesciunt et repudiandae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (93, 93, 0, 93, 'Esse totam culpa doloremque eveniet voluptate. Ratione eaque et atque autem sunt mollitia ut sed. Et autem adipisci perferendis aspernatur nobis reprehenderit eum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (94, 94, 1, 94, 'Architecto sequi nulla culpa reprehenderit sunt voluptatem. A quia laboriosam omnis quibusdam fugit dolorum qui id. Porro maiores et non expedita dolores accusamus.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (95, 95, 0, 95, 'Dolorum minus quibusdam explicabo aut veniam eum id. Nobis provident est repudiandae non dolore. Voluptate similique architecto nisi accusamus. Deserunt est quia non consequatur dolores facilis quia id.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (96, 96, 2, 96, 'Est incidunt placeat itaque cumque voluptatem. Dolores et cumque et accusantium et dolorum. Quod quam perspiciatis est et nulla excepturi. Sunt sunt est quae atque eum.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (97, 97, 0, 97, 'Asperiores minus perferendis consectetur libero. Excepturi cupiditate quaerat repudiandae voluptatum. Et harum et ut nisi. Fugit minus voluptas inventore reprehenderit animi quibusdam. Et rem sequi qui consectetur est repellendus vitae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (98, 98, 1, 98, 'Autem reprehenderit perspiciatis eos minima aut optio temporibus odio. Recusandae iure in accusantium recusandae.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (99, 99, 0, 99, 'Dicta quia doloribus natus est labore ea quis. Error hic aspernatur explicabo occaecati ut. Distinctio et vel quasi rem. Nisi pariatur doloremque soluta ipsam. Assumenda soluta ad ut sunt dolorem.');
INSERT INTO `exercises` (`id`, `user_id`, `exercise_type`, `exercise_name_id`, `exercise_notes`) VALUES (100, 100, 2, 100, 'Accusantium dolore repellendus ipsa ut reiciendis dolorum deleniti eveniet. Cumque quod possimus a qui non ex sit. Rerum est neque praesentium vero.');


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

INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (1, 'qui', 'saepe', 'nihil');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (2, 'quibusdam', 'in', 'distinctio');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (3, 'accusantium', 'quia', 'ipsa');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (4, 'dolore', 'laboriosam', 'laborum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (5, 'aspernatur', 'ipsum', 'aut');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (6, 'laboriosam', 'aut', 'voluptatem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (7, 'eum', 'accusamus', 'est');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (8, 'dolor', 'non', 'voluptatem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (9, 'nulla', 'facere', 'ullam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (10, 'nobis', 'modi', 'sit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (11, 'veniam', 'dolore', 'quidem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (12, 'tenetur', 'accusantium', 'animi');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (13, 'deserunt', 'nihil', 'nihil');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (14, 'molestiae', 'facilis', 'magnam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (15, 'autem', 'reiciendis', 'sunt');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (16, 'sint', 'minus', 'mollitia');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (17, 'et', 'non', 'quisquam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (18, 'molestias', 'et', 'incidunt');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (19, 'consequatur', 'voluptatum', 'quis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (20, 'blanditiis', 'nihil', 'nemo');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (21, 'doloribus', 'ad', 'velit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (22, 'similique', 'dolores', 'omnis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (23, 'voluptatibus', 'mollitia', 'ipsum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (24, 'assumenda', 'aut', 'amet');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (25, 'est', 'rerum', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (26, 'quisquam', 'sint', 'corporis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (27, 'consectetur', 'hic', 'aliquam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (28, 'quia', 'ut', 'repellat');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (29, 'accusamus', 'unde', 'omnis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (30, 'itaque', 'sed', 'sed');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (31, 'rem', 'voluptatem', 'vitae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (32, 'eum', 'temporibus', 'cupiditate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (33, 'nulla', 'animi', 'consectetur');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (34, 'incidunt', 'qui', 'debitis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (35, 'dolores', 'ut', 'ab');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (36, 'pariatur', 'perspiciatis', 'suscipit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (37, 'laboriosam', 'quasi', 'voluptatibus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (38, 'placeat', 'odit', 'ut');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (39, 'est', 'laboriosam', 'culpa');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (40, 'voluptates', 'eligendi', 'eum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (41, 'hic', 'nesciunt', 'rem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (42, 'sequi', 'eius', 'libero');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (43, 'qui', 'ut', 'voluptate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (44, 'vero', 'in', 'deleniti');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (45, 'nihil', 'pariatur', 'reprehenderit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (46, 'inventore', 'ut', 'consequuntur');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (47, 'est', 'rerum', 'corporis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (48, 'tempora', 'aut', 'veniam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (49, 'magni', 'itaque', 'omnis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (50, 'officia', 'sunt', 'nihil');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (51, 'accusantium', 'porro', 'qui');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (52, 'rerum', 'dolor', 'optio');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (53, 'tenetur', 'voluptatibus', 'voluptatum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (54, 'nisi', 'qui', 'exercitationem');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (55, 'minus', 'est', 'voluptate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (56, 'eum', 'maiores', 'facere');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (57, 'accusantium', 'doloribus', 'adipisci');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (58, 'et', 'autem', 'odit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (59, 'et', 'et', 'laborum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (60, 'impedit', 'sed', 'sapiente');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (61, 'ea', 'nesciunt', 'sunt');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (62, 'iure', 'ab', 'voluptate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (63, 'eligendi', 'veniam', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (64, 'error', 'aut', 'quisquam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (65, 'provident', 'ipsa', 'voluptate');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (66, 'aut', 'dolores', 'id');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (67, 'adipisci', 'aut', 'repellendus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (68, 'possimus', 'eum', 'esse');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (69, 'quam', 'laudantium', 'suscipit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (70, 'harum', 'possimus', 'harum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (71, 'natus', 'sapiente', 'deleniti');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (72, 'doloremque', 'iure', 'nulla');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (73, 'commodi', 'porro', 'culpa');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (74, 'nesciunt', 'enim', 'et');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (75, 'quo', 'nesciunt', 'eligendi');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (76, 'iusto', 'ab', 'voluptas');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (77, 'non', 'neque', 'repudiandae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (78, 'possimus', 'eaque', 'vel');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (79, 'in', 'explicabo', 'repudiandae');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (80, 'mollitia', 'et', 'illo');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (81, 'aliquid', 'nemo', 'ipsam');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (82, 'est', 'consequatur', 'consequatur');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (83, 'consequatur', 'blanditiis', 'excepturi');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (84, 'qui', 'qui', 'sunt');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (85, 'quas', 'optio', 'dolorum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (86, 'qui', 'ab', 'est');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (87, 'ea', 'debitis', 'reiciendis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (88, 'harum', 'et', 'reprehenderit');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (89, 'eum', 'quibusdam', 'modi');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (90, 'vel', 'unde', 'veritatis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (91, 'commodi', 'natus', 'labore');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (92, 'necessitatibus', 'rerum', 'porro');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (93, 'aut', 'dolores', 'quis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (94, 'modi', 'reiciendis', 'nemo');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (95, 'provident', 'inventore', 'quis');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (96, 'et', 'dolorum', 'nostrum');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (97, 'sunt', 'architecto', 'accusamus');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (98, 'blanditiis', 'praesentium', 'qui');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (99, 'eveniet', 'qui', 'unde');
INSERT INTO `muscles` (`id`, `muscle_name_en`, `muscle_name_pl`, `muscle_group`) VALUES (100, 'autem', 'aut', 'porro');


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

INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (1, 1, 255, 0, 114, 0, 'Nostrum quos vel fugit labore. Natus sapiente cum omnis ab ullam quae corrupti. Sed est velit vel sit error doloremque. Et est ipsam inventore quos animi amet.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (2, 2, 0, 0, 160, 0, 'Sint beatae id vel nam cum tempora distinctio. Atque officiis iure eligendi eligendi tenetur. Et voluptatem soluta aut animi. Aut earum adipisci voluptatibus recusandae non.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (3, 3, 255, 0, 112, 0, 'A numquam officia eos fugiat aliquid explicabo et. Quia optio qui cupiditate hic quae et velit. Dolor ab libero odit aut exercitationem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (4, 4, 255, 48, 350, 0, 'Quae nesciunt vero quidem autem consequatur culpa consequatur. Sed et rerum maiores a. Qui est consequuntur reiciendis et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (5, 5, 255, 255, 315, 0, 'Modi in maxime cupiditate repudiandae. Vel exercitationem quos dicta. Minus repellendus ut commodi rerum tempore. Dolor eveniet quo reiciendis a expedita.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (6, 6, 255, 0, 206, 1, 'Ipsum dolor esse aut quia. Autem facere dolorem fugit quae aut. Voluptatem rerum eaque sed veritatis. Atque sit autem ex consequatur.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (7, 7, 255, 255, 7, 0, 'Placeat consequuntur omnis odit dolorem labore vero. Cupiditate dolor excepturi quaerat pariatur. Recusandae dolorem quia sit in ullam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (8, 8, 255, 255, 47, 1, 'Est rerum praesentium debitis blanditiis consequatur. Voluptatem perspiciatis accusamus necessitatibus. Ad tempore nam est voluptatem. Corporis aut alias in voluptatem iure doloremque magnam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (9, 9, 0, 98, 212, 0, 'Sed delectus sit iure sapiente consectetur quisquam. Quia facere illo veritatis voluptatem amet. Consequatur et nobis aliquam pariatur.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (10, 10, 255, 255, 13, 0, 'Atque nulla consequatur quia officiis distinctio debitis. Perferendis officia reiciendis tempora quis ipsa magni ea. Voluptatem sit aliquid numquam eveniet.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (11, 11, 0, 255, 122, 0, 'Veritatis nobis nihil soluta voluptatem sequi quasi facere. Vitae rerum quia saepe. Ea repellendus iusto adipisci accusantium occaecati nostrum sequi. Laborum mollitia neque quia perspiciatis suscipit nihil.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (12, 12, 0, 3, 195, 1, 'Corrupti ratione et dolores consequuntur ratione animi et. Placeat ducimus sequi voluptatem debitis. Quisquam impedit cum velit mollitia.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (13, 13, 255, 255, 16, 0, 'Optio ratione quas est totam nobis consequatur facilis. Nulla quas voluptas nisi est et facere aut. Magni aut sapiente exercitationem eos ut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (14, 14, 255, 255, 260, 1, 'Quia ut alias facilis vero maiores enim nihil. Molestiae accusamus corporis odio et reiciendis ex sed in. Aspernatur eum culpa rem eaque.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (15, 15, 255, 255, 249, 0, 'Suscipit in neque doloribus cumque. Odio aut sed animi. Possimus voluptas perferendis aut quo rerum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (16, 16, 255, 255, 435, 1, 'Est eos aliquam magni dolor mollitia ut. Quae odit deserunt voluptatibus molestiae hic quasi. Vel id quo nemo omnis incidunt aut. Quis cupiditate perspiciatis ad nemo fugit at.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (17, 17, 4, 255, 81, 0, 'Ut ut est qui velit velit. Assumenda dolorem modi fugiat amet ex ea. Quia quis quia assumenda aut itaque sit iusto. Nostrum quisquam animi molestias porro incidunt rerum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (18, 18, 4, 255, 400, 1, 'Praesentium neque ipsum laudantium fuga et vel. Vero officia in provident hic cum minima quos. Ut non ut distinctio voluptatem rerum ad. Voluptas quidem id at error.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (19, 19, 31, 255, 168, 0, 'Reprehenderit minus rerum eligendi libero sit cum at et. Quas qui eum deleniti voluptates optio tenetur. Doloribus iste nemo rerum. Qui earum ut quo quibusdam tenetur at quia.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (20, 20, 255, 255, 440, 1, 'Odio impedit minus reiciendis laboriosam. Quod quia esse molestiae blanditiis minus ad in. Non pariatur quod qui minima nihil blanditiis. Commodi dignissimos magni dolores nihil ut. Voluptas a repellat incidunt ut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (21, 21, 255, 0, 143, 0, 'Tenetur doloribus perferendis voluptatum architecto cupiditate. Alias quas quo molestiae repellendus corporis similique cupiditate veritatis. Ut quidem est aperiam eos dolorem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (22, 22, 255, 0, 64, 0, 'Veniam expedita ducimus voluptatem numquam repellendus at maiores unde. Quas necessitatibus est ut ullam. Nesciunt qui et non enim voluptatem et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (23, 23, 0, 255, 407, 0, 'Ea ea tempore mollitia est iure asperiores reprehenderit. Est voluptatem minus dolor repellat. Qui a eos possimus velit.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (24, 24, 255, 255, 451, 1, 'Suscipit aut beatae et qui. Consectetur porro ipsa nobis consequatur. Doloremque doloremque eligendi beatae nobis error id.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (25, 25, 255, 255, 158, 1, 'Maxime voluptatibus perferendis in omnis beatae dolorem accusamus. Sequi dicta quia fugiat deleniti enim saepe sed. Minima ut veniam quasi et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (26, 26, 5, 0, 186, 0, 'Doloribus iste laboriosam error nobis sit neque perspiciatis. Perspiciatis est in voluptas consequatur repellat expedita a. Soluta ea illo distinctio pariatur hic natus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (27, 27, 134, 255, 34, 1, 'Ipsum voluptas voluptatem ea ipsum tempora libero adipisci. Quia nulla placeat ab sunt voluptatibus quia sed natus. Autem adipisci itaque voluptate alias cupiditate ducimus. Enim vitae excepturi magni sed.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (28, 28, 255, 0, 441, 1, 'Quisquam dolorum et ex commodi harum ut doloribus. Accusamus doloribus doloremque eum sit qui tempora et. Iure facere esse expedita vero. Qui eligendi velit repellat delectus et nam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (29, 29, 255, 8, 415, 0, 'Libero dolores dicta ex neque minima a. Accusamus voluptatem suscipit quam consectetur ex eaque et officia.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (30, 30, 255, 76, 99, 1, 'Pariatur quia fuga ratione voluptatem quibusdam. Nemo ab pariatur eveniet nihil est deleniti. Eum adipisci occaecati enim hic asperiores odio. Similique odio error natus aliquid eligendi dolorum eligendi quas.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (31, 31, 255, 255, 93, 1, 'Veritatis dolores consequatur laudantium earum mollitia. Necessitatibus iusto possimus facilis aut. Iure quod ut qui ea. Aut at quo perspiciatis quia praesentium placeat. In minus in perferendis hic laborum enim et.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (32, 32, 255, 255, 448, 0, 'Mollitia provident omnis fugit aspernatur aut nisi ut. Quia fugit eum qui qui voluptatem reiciendis. Expedita qui eos facere et quod odit ut. Corporis voluptatem praesentium id tenetur error.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (33, 33, 255, 255, 349, 0, 'Qui et et rem excepturi. Ut eveniet qui ut nulla voluptas qui. Quae placeat nihil est quaerat ut sunt officia.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (34, 34, 7, 255, 364, 1, 'Ex minima quisquam autem quia non tempore. Reprehenderit ipsa quas vel expedita aut qui. Fugiat consequatur in ducimus dignissimos aut illo. Ut fugit commodi eveniet quia consequatur velit. Aut fugit repellendus doloremque.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (35, 35, 255, 255, 293, 1, 'In sint possimus rerum. Voluptatem voluptatum impedit a dolores nam. Repellat id quo neque in. Ut mollitia illo tenetur eos et molestias harum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (36, 36, 255, 255, 145, 0, 'Eos et animi facere dolorum id. Unde sed veniam laudantium labore neque.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (37, 37, 0, 255, 288, 0, 'Neque beatae illo eaque vitae reprehenderit ad. A tempore in eum ut nulla distinctio. Culpa modi dignissimos voluptatem magni quod vel sequi. Magni amet et unde autem reiciendis sit.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (38, 38, 255, 255, 420, 0, 'Itaque rerum voluptas cumque autem odio suscipit. Occaecati cupiditate quo et qui deserunt. Suscipit magni sit corrupti vel incidunt. Omnis corrupti qui neque assumenda eaque deleniti saepe quae. Aliquam perferendis suscipit vero qui.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (39, 39, 255, 0, 418, 1, 'Est autem doloribus quasi ut earum sed. Exercitationem sit quod ratione ratione. Doloribus est excepturi aut et reprehenderit consequatur voluptas ut.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (40, 40, 3, 255, 366, 1, 'Vitae voluptate consequatur eum dolore. Voluptatum numquam a reiciendis animi nam. Nostrum aliquid non officiis. Delectus et hic est consequatur sint temporibus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (41, 41, 255, 255, 16, 0, 'Quis qui dolores earum et. Itaque et ea in repudiandae minus libero amet libero. Earum in asperiores odio ut quo et dignissimos.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (42, 42, 1, 255, 370, 1, 'Consequatur cumque et sit impedit qui quia voluptatem beatae. Sit consequatur placeat fugit ipsum quia ad consequatur et. Recusandae sit exercitationem ut et voluptas et et. Enim et nulla voluptatibus nulla.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (43, 43, 255, 0, 49, 0, 'Ea beatae voluptatum harum quos suscipit. Iure soluta vel libero nam quisquam quas. Non sed molestiae ipsum consequuntur consequatur delectus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (44, 44, 255, 255, 353, 1, 'Quas autem cum asperiores in perspiciatis. Accusamus ea molestiae quia eum rem reprehenderit voluptatem quia. Sed eius molestiae ex laboriosam. Omnis assumenda vel doloribus tempora consequuntur temporibus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (45, 45, 255, 59, 68, 1, 'Delectus quo soluta ullam suscipit. Deserunt eligendi corrupti quo ducimus. Vero blanditiis et aut suscipit dolores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (46, 46, 255, 255, 81, 1, 'Perferendis molestiae repudiandae ratione at ipsam deleniti. Sed adipisci nihil adipisci dignissimos sapiente dolor rerum. Nemo eius veniam natus perferendis tempore atque sunt harum. Nam numquam sint quia ipsum debitis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (47, 47, 255, 0, 202, 1, 'Suscipit dolores veritatis dolore laborum et tempore qui. Omnis porro laudantium qui dolor et. Nam adipisci voluptas nisi velit vel quia reprehenderit. Qui omnis consequatur voluptatem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (48, 48, 69, 12, 457, 1, 'At eum dolorem maiores qui asperiores aut autem doloremque. Voluptate tenetur omnis vitae voluptate accusantium. Qui accusamus voluptas repellendus dolores unde.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (49, 49, 255, 255, 75, 0, 'Numquam voluptas similique eligendi libero aliquam quam. Eveniet assumenda non dolor. Architecto aspernatur velit aut cupiditate est dicta iusto.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (50, 50, 209, 255, 195, 1, 'Sit est asperiores maxime sit. Cumque nobis aut suscipit dolor officiis. Aut eos ipsam aut maxime voluptas.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (51, 51, 0, 8, 274, 1, 'Quis consequatur adipisci non et sed animi. Numquam aut recusandae cupiditate. Ut officiis corporis molestias commodi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (52, 52, 255, 255, 39, 0, 'Omnis est vitae nostrum nostrum ea a. Sint vitae voluptatibus eius voluptas et libero dolorem. Ex nihil et eos dicta quam molestiae corrupti. Et eaque repellat possimus voluptatem illo fuga. Quis eos itaque perspiciatis hic eveniet iusto culpa.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (53, 53, 3, 61, 479, 1, 'Tenetur dignissimos reprehenderit alias nostrum expedita. Odio id molestiae est doloribus laudantium natus earum. Nihil ut quidem consequatur amet. Fugit sit sunt excepturi voluptatibus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (54, 54, 255, 255, 219, 1, 'Ab modi dolore aliquid ut dolore. Eum at odio rerum voluptatem commodi sit. Ut voluptatem eum tenetur nihil velit perspiciatis quas beatae.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (55, 55, 255, 255, 143, 0, 'Eligendi mollitia dolorum sed et laborum. Eaque unde ut quo laudantium eveniet quis. Blanditiis pariatur et aliquid sunt est.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (56, 56, 255, 255, 50, 1, 'Et voluptatem ipsum et. Ipsa quisquam beatae consequatur eos. Id dolor aut rerum est dolorem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (57, 57, 255, 63, 239, 1, 'Sequi velit unde asperiores et nam. Omnis ducimus dolore eius eum laudantium debitis. Et ea eum dolores modi.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (58, 58, 95, 255, 205, 0, 'Facilis nostrum provident voluptate vitae. Corrupti beatae consequatur recusandae at.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (59, 59, 255, 15, 63, 0, 'Ex blanditiis ea qui aut optio. Iure adipisci veritatis nihil aut debitis ea ab.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (60, 60, 255, 255, 436, 0, 'Aut enim excepturi nulla ipsum eveniet consequuntur veritatis similique. Corrupti quasi eius quo libero delectus possimus. Quia ab voluptas vel sed illo cumque rem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (61, 61, 255, 57, 394, 0, 'Voluptatem velit asperiores veritatis aut ipsa et odio. Quisquam quidem aut labore cum distinctio aut. Voluptate maiores expedita odio culpa eum corporis. Eum labore perferendis sed rerum quidem placeat quasi aut. Assumenda hic molestiae quod explicabo esse eligendi eius.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (62, 62, 5, 255, 143, 0, 'Quia eos sed optio esse cum accusamus. Sequi ipsa dolores voluptatum architecto. Voluptate corporis expedita doloremque consequatur expedita eum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (63, 63, 255, 59, 392, 0, 'Totam nihil vel eveniet illo velit. Tempore maiores harum error. Modi qui est nisi laborum quia sapiente natus similique.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (64, 64, 255, 255, 324, 0, 'Suscipit dignissimos rerum vel praesentium. Aut laudantium sit non autem voluptatem. Eveniet ipsam et reprehenderit quia perspiciatis voluptatem ipsam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (65, 65, 0, 255, 379, 1, 'Velit voluptate fugiat aperiam saepe. Quis perferendis voluptate fugiat magni. Ab nihil nihil suscipit incidunt. Saepe vero nihil libero.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (66, 66, 255, 0, 140, 1, 'Ut assumenda aut qui ut ut dolor. Voluptatem dolor omnis illo corrupti. Fugit maiores sit impedit animi dolor minus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (67, 67, 255, 27, 209, 1, 'Ducimus neque ad nesciunt et modi possimus. Ut et non maiores sapiente quo hic quis possimus. Similique optio non omnis praesentium itaque sit. Eligendi sit sunt itaque corporis eaque rem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (68, 68, 27, 0, 315, 0, 'Optio nam explicabo perspiciatis dicta voluptatem ut. Sit sint quos adipisci sed. Doloribus rerum aut accusamus necessitatibus distinctio est.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (69, 69, 255, 67, 10, 1, 'Ab aut voluptas et quia sequi accusamus. Explicabo molestiae ratione omnis aut facere. Incidunt possimus asperiores quod perferendis officiis vel. Quisquam ipsa aliquam excepturi exercitationem facilis ipsa qui. Corrupti deserunt possimus numquam minima corporis ut minima maxime.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (70, 70, 255, 255, 10, 0, 'Incidunt maxime fugiat repellendus eos vel itaque ullam. Doloribus labore laboriosam dolorum. Tempore aut modi aspernatur esse. Doloremque ut sint doloremque labore consequatur.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (71, 71, 6, 0, 231, 1, 'Esse voluptas magnam voluptatem quibusdam corrupti non magnam. Molestiae aut earum nisi earum quas praesentium. Ut nostrum impedit dolorem velit necessitatibus qui.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (72, 72, 2, 255, 329, 1, 'Eius laborum sit quod rem qui non voluptas. Quos ab numquam sed molestiae autem a provident. Aut et delectus nihil explicabo rerum. Soluta sed est rerum velit rerum doloribus quos.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (73, 73, 32, 255, 288, 1, 'Qui deleniti rem quas fuga explicabo. Nemo ipsa omnis quasi sint. Et aliquid recusandae ut est eos molestiae labore. Quod quae nemo eum voluptatem.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (74, 74, 7, 0, 144, 0, 'Ratione consequatur consequatur dolore quod architecto. Deserunt voluptates vel dicta tempore vel omnis et. Necessitatibus quia quis vitae. Non dolor eos nemo aut illum non a reiciendis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (75, 75, 255, 0, 463, 0, 'Vel et a molestias in laboriosam odit. Est quas quidem optio omnis cumque hic. Qui distinctio commodi magnam iste quas omnis hic.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (76, 76, 255, 255, 426, 1, 'Molestiae alias assumenda praesentium. Sit quia ea cum et quasi eos. Omnis molestiae dicta et inventore ex voluptatem. Tempore qui dolore nihil quasi quidem blanditiis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (77, 77, 8, 255, 316, 0, 'Deleniti nobis qui delectus id adipisci alias corrupti. Voluptatum vitae veniam qui dolor. Animi officia veritatis neque est in impedit.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (78, 78, 0, 255, 358, 1, 'Minima iste sunt nihil libero. Quasi atque consequatur fugiat hic quas rerum est. Sed esse numquam eos exercitationem est ut expedita.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (79, 79, 15, 255, 228, 1, 'Doloribus aut voluptatem rerum. Numquam est corrupti labore ut maiores error incidunt. Aperiam laboriosam sit excepturi dolor.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (80, 80, 255, 255, 276, 0, 'Aut deserunt repellendus a dolor aspernatur quas. Quam perferendis quam sit deserunt doloribus. Libero atque enim molestiae deserunt quod non quia.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (81, 81, 4, 255, 194, 1, 'Error ea est eveniet. Minus quia a magni fuga. Distinctio occaecati et qui rerum expedita et ea. Vel libero sed labore expedita aperiam explicabo distinctio.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (82, 82, 0, 2, 191, 0, 'Ipsa accusamus qui sapiente voluptatibus doloremque eum aliquid beatae. Quis asperiores culpa eveniet deleniti saepe quis. Vitae saepe iure eos voluptatem ea sit velit suscipit. Voluptatibus officiis et veniam voluptates a.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (83, 83, 2, 255, 433, 0, 'Quis delectus quibusdam sint nesciunt necessitatibus vel. Quas amet nulla aut provident non id dignissimos. Omnis adipisci id velit. Quos et ducimus adipisci ducimus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (84, 84, 255, 255, 279, 0, 'Et impedit sapiente aut eum. Voluptas et quas molestiae exercitationem est. Omnis rem quisquam et hic. Provident aperiam nihil quisquam aliquid.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (85, 85, 255, 255, 126, 1, 'Ut officiis porro natus odio perferendis ex expedita. Atque qui non impedit recusandae autem ut error. Libero eaque aut tempora aliquam aliquam nobis. Occaecati voluptas vero ea. Nesciunt ratione est deserunt facilis et veniam.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (86, 86, 255, 6, 36, 1, 'Suscipit vel qui quaerat et. Dolorem architecto harum at rerum nisi. Impedit eum est et possimus eos asperiores.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (87, 87, 69, 255, 295, 0, 'Dicta et perspiciatis eum magni beatae error. Quasi quod delectus sint consequuntur quasi placeat. Voluptatem ut sit omnis sit accusamus possimus.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (88, 88, 255, 255, 305, 1, 'Sed quam modi nam accusamus qui placeat nihil non. Quia et fugiat amet consequatur. Sit omnis ullam quibusdam et laudantium nemo. Assumenda fugit laudantium voluptates sint rerum.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (89, 89, 4, 0, 500, 1, 'Et consequatur eos distinctio repellendus. Tempore ut dignissimos eius accusamus tempore maxime.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (90, 90, 44, 255, 174, 1, 'Temporibus aut ex debitis officia veritatis voluptatem similique. Ipsum qui laudantium ut nostrum iusto.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (91, 91, 255, 255, 392, 0, 'Velit libero tempore modi iure enim dolores aliquam. Dolor suscipit nisi alias excepturi dolore cupiditate voluptatem. Quasi non atque tempora dignissimos accusantium. Debitis voluptas atque quisquam assumenda. Qui rerum ea vel sed nobis.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (92, 92, 255, 255, 225, 1, 'Quo voluptatem sit ullam ad. Voluptatem in sed est laudantium dicta. Alias iure velit suscipit ab suscipit.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (93, 93, 255, 255, 160, 1, 'Laboriosam quas quisquam sapiente nesciunt dolorem rerum quisquam. Harum vel quasi veniam. Repellat qui nulla et nam reprehenderit enim saepe quod.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (94, 94, 255, 0, 372, 0, 'Et temporibus amet magni sint libero neque ducimus ea. Earum sunt sunt consectetur reiciendis dignissimos odit voluptates tenetur. Omnis culpa suscipit tenetur non temporibus saepe unde.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (95, 95, 255, 255, 217, 1, 'Consequatur recusandae accusamus ducimus dolores quia. Accusantium excepturi numquam ad. Explicabo vitae sint ullam sapiente. Quasi rerum eos nam ad.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (96, 96, 0, 0, 209, 1, 'Fuga ipsum consequatur pariatur recusandae eum aliquid. Pariatur ratione autem dolore ipsum. Similique reiciendis deleniti nostrum repellendus. Ex facilis occaecati sit quia recusandae.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (97, 97, 255, 255, 243, 0, 'Voluptates consectetur eligendi nisi. Officiis nemo rerum nihil quia. Voluptas quasi aliquid delectus sit ex deserunt. Et unde qui in similique.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (98, 98, 255, 255, 8, 0, 'Maxime omnis odio maxime. Molestias excepturi commodi occaecati quia molestiae laudantium mollitia voluptate. Neque voluptatem ut temporibus culpa autem similique voluptatem. Tenetur et dolor saepe qui quia exercitationem ut odio.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (99, 99, 255, 35, 427, 0, 'Dicta velit et qui dicta eum. Labore in quo voluptatem eos. Sed laborum nesciunt aut magni eum expedita.');
INSERT INTO `set_logs` (`id`, `strength_exercise_log_id`, `set_number`, `rep_count`, `weight`, `drop_set`, `notes`) VALUES (100, 100, 4, 12, 172, 0, 'Facere dolorem consequuntur sunt dolorum velit. Quibusdam ut tenetur id et unde odit iste. Commodi laboriosam odit ut autem veniam qui sint laborum. Maxime ipsa commodi ex eveniet sed velit corporis.');


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
  CONSTRAINT `strength_exercise_logs_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strength_exercise_logs_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `variant_session_logs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (1, 1, 1, 'Omnis aperiam ducimus itaque eum. Voluptate veritatis consectetur alias atque repudiandae. Voluptas non distinctio ea tempore. Et temporibus et et.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (2, 2, 2, 'Porro aliquid quis ea quisquam consequatur deleniti voluptas maiores. Hic in sed sunt consequatur. Sapiente dignissimos excepturi officiis dicta animi porro et.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (3, 3, 3, 'Blanditiis sint et veritatis. Fugiat atque deleniti repudiandae iusto repudiandae. Eos in quae quis id aspernatur veritatis nihil sint. Doloremque sed hic vel enim sed.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (4, 4, 4, 'Labore et numquam vitae. Officia saepe voluptate esse voluptas quas asperiores omnis. Ut expedita dolores ut aut nihil.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (5, 5, 5, 'Ea autem officiis voluptatibus sint dolores. Suscipit nihil qui error hic unde ut. Autem quam assumenda ut qui dolores molestiae maiores. Soluta ad ea odit unde et pariatur.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (6, 6, 6, 'Laborum est est et ratione ipsa. Et consequuntur exercitationem ipsum reiciendis ipsa.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (7, 7, 7, 'Necessitatibus vitae in quibusdam ut nemo deleniti. Nisi ea et inventore at fugit dolores soluta. Ducimus et rem tempore qui ut. Eos libero error et.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (8, 8, 8, 'Nihil sed aut voluptas ab ut. Optio vel sint aliquam iure velit nemo enim. Et repellat voluptas nesciunt qui. Earum necessitatibus quidem ratione. Occaecati voluptate ipsam error non aut a.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (9, 9, 9, 'Perspiciatis architecto aliquid ad amet illum totam. Ducimus fugiat odio id ut. Enim velit iste accusantium nam ut.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (10, 10, 10, 'Itaque laborum et amet at laudantium animi facilis. Ratione voluptatibus nihil rerum labore.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (11, 11, 11, 'Cupiditate natus ut voluptas. Aut quod est omnis provident et ab eum. Atque quam laboriosam ad dolor voluptas.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (12, 12, 12, 'Libero aspernatur reiciendis repudiandae iste sunt iste. Odio vel harum mollitia nesciunt consequatur. Cupiditate ad et ut dignissimos ducimus ut et. Quo facilis consequatur iure aut in.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (13, 13, 13, 'Quis deleniti natus aut ut. Soluta earum minus placeat et repellendus.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (14, 14, 14, 'Dolorum ut perspiciatis aut autem. Dolores ea nihil repellat et quam. Incidunt ipsa ad aut quisquam alias. Sapiente pariatur quia reiciendis aut ratione corrupti.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (15, 15, 15, 'Dolorem similique adipisci hic delectus asperiores. Ipsum sit similique dignissimos aut voluptatum. Quis est accusamus ut minima ullam.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (16, 16, 16, 'Esse sed eum et facilis sint. Culpa velit vel in aliquid modi. Possimus rerum enim delectus delectus et. Ratione vel sit nesciunt maiores unde.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (17, 17, 17, 'Ullam eaque dignissimos ut alias deserunt. Amet dolor enim inventore nesciunt magni. Distinctio dolorem magni nihil facere. Sint consequatur et velit in sit.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (18, 18, 18, 'Nobis non sunt incidunt perferendis est qui. Suscipit reiciendis et est sequi qui molestiae eligendi.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (19, 19, 19, 'Commodi voluptas aut officia qui. Enim possimus corrupti eum eos. Facilis blanditiis explicabo quos consectetur laudantium incidunt libero officiis. Iusto dolor velit numquam quisquam eum tempore.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (20, 20, 20, 'Sit suscipit est rem quia minus provident. Sit laborum illo aliquid.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (21, 21, 21, 'Sunt enim doloremque atque numquam quidem dolor. Aspernatur pariatur iste beatae earum officia quas ratione. Ducimus delectus accusamus cupiditate doloribus voluptatum voluptas natus.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (22, 22, 22, 'Quo perferendis enim ipsum sapiente nostrum veniam. Molestiae quod voluptatem fugiat sed id. Vel voluptatem et tempora fugiat rerum minima doloribus.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (23, 23, 23, 'Quibusdam et est aut. Dolor voluptatibus qui aut suscipit. Hic ex ut veniam in eos fugiat.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (24, 24, 24, 'Et omnis et nisi quis aut. Ut sed ut enim in possimus sit. Quibusdam mollitia dolores voluptate sit temporibus sint atque.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (25, 25, 25, 'Illo molestiae illum illum aut molestiae dignissimos. Libero expedita a cupiditate perferendis sit facilis qui. Aliquid optio ab id hic est molestiae. Odit qui incidunt ea ratione occaecati. Recusandae aut ut est sed officiis.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (26, 26, 26, 'Autem quos nobis est voluptates voluptatem. Culpa quis sunt tenetur et numquam. Earum quia veritatis et quasi at molestiae saepe. Eum quod saepe in consequatur placeat et.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (27, 27, 27, 'Est laudantium itaque velit omnis provident. Laboriosam fugit consectetur quasi pariatur laborum ipsam. Blanditiis aut soluta non quam aliquam minima dolores.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (28, 28, 28, 'Sunt dolore consequatur occaecati et. Culpa amet illo aut. Magnam quia natus assumenda odio aliquam quisquam et.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (29, 29, 29, 'Labore deserunt amet eos aut quaerat ea et. Molestiae dolore mollitia maxime. Error soluta asperiores ratione quos sint fugit.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (30, 30, 30, 'Dolor ea rerum optio. Qui non consequuntur provident dolores tempore fuga. Asperiores enim aliquam quia. Ipsam minima nihil minus aliquam reprehenderit.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (31, 31, 31, 'Optio qui aut quidem quis labore voluptatem. Nisi molestias quo voluptas corporis dolorem. Blanditiis natus odio sed sit laudantium rerum.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (32, 32, 32, 'Odio eligendi officia harum rerum ex voluptatem. Optio voluptatem delectus consequatur velit et. Tenetur eum expedita aut voluptatem.', 0);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (33, 33, 33, 'Iusto fuga dignissimos nesciunt. Vero sed deserunt in eligendi numquam reprehenderit unde nihil. Quas amet non in non ut in repellendus nemo.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (34, 34, 34, 'Doloremque dolorem inventore suscipit quia nulla consequatur. Voluptas est voluptatem laborum repudiandae alias. Expedita animi facere quisquam fugit quae ea reprehenderit aut. Vel voluptatibus nesciunt quaerat dignissimos quis. Optio alias quae incidunt doloribus.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (35, 35, 35, 'In provident corporis voluptatem eum. Soluta natus natus dolor dolor. Ipsam explicabo deleniti natus cupiditate optio sequi excepturi. Facere sit iste harum necessitatibus reiciendis molestias rem.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (36, 36, 36, 'Molestiae repudiandae repellendus at eum et. Facilis maxime in minima qui numquam. Ad iste beatae laborum quos voluptatibus non eos. Ea voluptas ut delectus earum dolor ratione.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (37, 37, 37, 'Enim nostrum alias autem dolorem voluptatem tempora dolorum qui. Nihil sint atque beatae vitae. Sit inventore soluta aliquid velit ut illum.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (38, 38, 38, 'Alias dolor ut possimus dolores soluta. Ipsum repudiandae non error. Laborum est doloribus ut mollitia consequatur expedita rerum.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (39, 39, 39, 'Aut impedit nemo voluptatum cum vel. Quo ut iste blanditiis et aliquam rerum earum. Dolores voluptatem sapiente voluptates voluptatem nam natus.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (40, 40, 40, 'Voluptatem qui voluptas corporis laborum quis. Soluta et voluptatem amet. Mollitia voluptatem et et quidem debitis. Labore harum voluptas molestiae ut qui quidem.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (41, 41, 41, 'Sunt nisi eum nihil. Accusamus dolor repellendus tenetur ipsum fugiat magni. Pariatur ipsum culpa dolor aut et autem odio iusto. Ut molestiae et perferendis voluptas ea suscipit.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (42, 42, 42, 'Accusamus ab placeat qui et et. Rerum voluptatem dolores cumque ullam.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (43, 43, 43, 'Aperiam ut et et laborum illo in. Magni nulla quo et repudiandae. Repudiandae laudantium consequatur commodi accusamus. Soluta nobis maxime et error.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (44, 44, 44, 'Ex excepturi nemo molestiae eveniet odio. Neque nulla quod dolore repellat. Quas velit odit a veritatis molestiae voluptate sunt.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (45, 45, 45, 'Et aut corporis distinctio aut. Labore suscipit earum tempore amet veritatis hic. Libero quasi temporibus consequatur nobis voluptas. Et blanditiis quaerat debitis optio. Vel deserunt at illum praesentium.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (46, 46, 46, 'Cumque quibusdam hic et eum. Corrupti repellendus sit nam at consequatur. Error minus mollitia consequatur iste illo.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (47, 47, 47, 'Ullam tenetur suscipit molestiae voluptatem et. Praesentium est sit tenetur itaque qui omnis. Beatae vero enim deserunt qui repellendus. Qui sed incidunt autem aut odio.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (48, 48, 48, 'Quia voluptates harum id blanditiis. Qui occaecati autem aperiam. Quisquam at vitae itaque et qui molestiae fugiat in.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (49, 49, 49, 'Maxime est omnis magnam tenetur ratione dolorum. Ipsam voluptatem modi placeat sit. Animi et consequuntur quia quia nihil. Natus nesciunt nesciunt nam mollitia delectus quis.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (50, 50, 50, 'Sint non quia voluptate nam fugit. Consequatur accusamus sed molestiae consequatur. Blanditiis harum ad commodi.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (51, 51, 51, 'Fuga quo in cumque nisi accusantium quis. Amet occaecati sapiente eos maxime aut. Id atque ut error in commodi totam. Architecto consectetur illo quia aut nulla impedit tempora reprehenderit.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (52, 52, 52, 'Deserunt est et ipsum sint vel in culpa. Facere quia possimus aut. Non dolores sit occaecati. Eveniet at necessitatibus quia incidunt impedit.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (53, 53, 53, 'Dolore quisquam itaque omnis molestiae rem veniam aspernatur dignissimos. Est vitae fugit molestiae. Architecto deleniti sint rerum magni et et. Numquam corporis excepturi eaque quod.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (54, 54, 54, 'Explicabo commodi beatae est voluptatem officia. Adipisci ratione rerum culpa asperiores.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (55, 55, 55, 'Est natus quia ullam voluptatem magni rerum consequatur odio. Reprehenderit neque id omnis eos vitae sit. Ea et perspiciatis quis. Et autem voluptas cumque eveniet incidunt soluta deserunt.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (56, 56, 56, 'Impedit rerum suscipit perspiciatis aut tenetur libero fugit. Rerum earum quod eum. At ipsam ut dolor dolorum non aut. Ipsa optio rerum tempore suscipit velit culpa in.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (57, 57, 57, 'Laborum hic et recusandae ut velit consequatur. Cumque minima iste quo aperiam odit dicta. Rerum non repellendus delectus rerum eligendi mollitia.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (58, 58, 58, 'Aut nisi et adipisci magni eum. Tempore fuga quos earum harum. Et perferendis autem distinctio beatae optio. Harum minus nisi ullam eum sed harum.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (59, 59, 59, 'Eveniet et facilis voluptates inventore cum. Quasi incidunt assumenda eaque libero in error.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (60, 60, 60, 'Distinctio et rerum earum ipsum rerum. Et perferendis voluptatem corporis alias in necessitatibus. Molestiae doloribus earum cum nobis quia et natus.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (61, 61, 61, 'Vel eos dignissimos quos numquam quibusdam. Veritatis at repellendus iure veritatis. In consectetur qui laboriosam magnam est soluta aperiam. Nostrum sit eveniet praesentium illum.', 0);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (62, 62, 62, 'Itaque facilis aperiam accusamus architecto. Sed et accusamus laboriosam dolores. Cumque architecto et assumenda aspernatur. Reprehenderit asperiores esse ipsa et sit et. Qui beatae repudiandae atque fuga expedita harum eos nihil.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (63, 63, 63, 'Est ratione aliquid amet dignissimos corporis. Sit rerum minus itaque qui veritatis. Quia dignissimos rerum deserunt commodi. Doloribus aliquid necessitatibus accusantium vitae rem illum.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (64, 64, 64, 'Consectetur incidunt expedita ut qui. Nam labore sapiente incidunt laborum recusandae. Nesciunt quo et occaecati aut voluptatibus maxime magnam. Reprehenderit voluptatibus qui corporis ducimus consequatur corporis libero.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (65, 65, 65, 'Sunt qui sit animi odit ullam. Sit est eos aut aut. Suscipit velit est fugiat in et vel sunt. Quis dolorem nulla dolores eaque.', 0);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (66, 66, 66, 'Autem expedita tenetur aperiam doloremque velit facilis in. Animi et enim enim explicabo fuga ut facere. Suscipit voluptatem tempore deleniti voluptatem repudiandae fugit ut. Quaerat enim fugiat ipsum rerum.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (67, 67, 67, 'Optio velit nihil necessitatibus et. Dolorum laudantium ut a debitis nobis quae qui. Aut voluptates iusto eos perspiciatis.', 0);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (68, 68, 68, 'Fugiat ut aspernatur officiis vel explicabo. Magni velit inventore voluptatem voluptatem. Dolore non cum non et.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (69, 69, 69, 'Earum ex rerum reprehenderit quae. In cum id rerum omnis et et qui laudantium. Et eum et est qui et.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (70, 70, 70, 'Consequatur fugit reprehenderit minima. Sit eius ullam et.', 6);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (71, 71, 71, 'Sint qui doloribus aperiam non quia. Et molestias tenetur suscipit quo veniam quibusdam. Ut inventore tenetur quod rem.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (72, 72, 72, 'Quis eaque non autem quo vel quod. Eaque nihil at omnis. Et dolor eaque id non voluptas culpa et. Numquam esse assumenda qui ad.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (73, 73, 73, 'Harum odio molestiae numquam harum sequi quibusdam quae. Debitis aliquam corporis quas molestiae eum nihil. Et reprehenderit nam adipisci dicta eveniet aut rerum.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (74, 74, 74, 'Totam odit cupiditate porro suscipit cum. Velit et expedita sed. Aperiam accusamus est velit. Quos commodi vel aut harum ratione.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (75, 75, 75, 'Excepturi ipsum aliquid consequatur velit quae autem. Temporibus facilis distinctio quo omnis et. Ea vitae molestiae dolor magni aperiam. In cum ipsum sed molestias nisi ullam vitae architecto.', 0);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (76, 76, 76, 'Blanditiis similique quia et voluptatem. Ab quia soluta est ipsum.', 0);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (77, 77, 77, 'Vero nulla ut omnis voluptatem et ut distinctio. Sunt ut qui illum voluptas nemo. Ipsa modi id nulla magnam minima delectus.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (78, 78, 78, 'Velit et sit officia est minima corporis aut. Magni voluptas asperiores aut et fugiat dolorum nobis.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (79, 79, 79, 'Quasi occaecati eligendi consequuntur architecto officia voluptatibus suscipit. Doloremque voluptate aut deserunt voluptatem velit. Non illo repellendus vel ab accusantium sit dolorem. Nam amet minus amet ipsa tempora ab nemo ipsum.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (80, 80, 80, 'Et qui et et quos eius accusamus eveniet iusto. In velit qui explicabo sunt quia dolores. Ab molestiae aut vitae earum amet.', 7);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (81, 81, 81, 'Praesentium dolores voluptatem repellat nihil veniam est asperiores qui. Facilis iusto saepe autem a facere dolores illum. Architecto nostrum doloribus qui ad voluptatem minima quia. Iure error rerum eum dolores.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (82, 82, 82, 'Harum neque reprehenderit veniam dicta. Et suscipit deleniti tenetur magnam. Harum cupiditate est magnam. Quaerat nisi soluta qui magnam soluta mollitia quo molestiae.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (83, 83, 83, 'Molestias tempora similique odit et. Ipsam aut alias illum quae ut. Doloribus reprehenderit qui dolores odio veniam officiis.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (84, 84, 84, 'Reiciendis facilis et ipsa rerum adipisci ad ipsum. Ullam quam est architecto ratione molestiae quam. Ut sed sed qui iusto ut voluptatem autem. Suscipit temporibus eligendi veniam ut dolores tenetur suscipit.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (85, 85, 85, 'Expedita qui qui et deserunt laudantium nostrum labore excepturi. Ea mollitia aut id sint repudiandae sunt. Non nisi aspernatur architecto non asperiores corrupti. Tempore voluptatum temporibus natus et aliquid ea deserunt.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (86, 86, 86, 'Explicabo qui qui voluptatem similique odit in. Dolor et laboriosam quae repudiandae. Et aut dolores cumque aliquam itaque et.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (87, 87, 87, 'Autem et quam non corrupti rerum delectus. Et odio eos nesciunt quisquam expedita occaecati. Est omnis libero unde quo reiciendis. Pariatur alias officiis nobis totam ut voluptas ab.', 5);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (88, 88, 88, 'Soluta omnis consequatur voluptate doloremque fugit ipsam amet. Aut quos expedita culpa. Necessitatibus velit voluptatem nihil cumque.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (89, 89, 89, 'Quam non cumque sint quis aperiam nulla dolor. Nulla incidunt ea at aut eum molestiae. Ut officiis optio consequatur recusandae vel.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (90, 90, 90, 'Sequi est voluptatem quis voluptatem dolorem. Et est laudantium repellat voluptatem. Aut quo inventore iure quae molestiae itaque.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (91, 91, 91, 'Facere aut iure praesentium et et omnis. Quo dignissimos qui voluptatem facere et. Alias et rerum necessitatibus eveniet. Occaecati eligendi sunt ea error veritatis. Unde placeat vel possimus in accusantium vel ab.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (92, 92, 92, 'Sequi ipsam culpa sapiente vel aut. Neque rerum eum quis autem nulla. Enim laudantium iste voluptatem ad optio qui et a. Repellat illum mollitia sit esse recusandae vel id.', 9);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (93, 93, 93, 'At magni ea et corrupti hic et ullam. Hic ea atque dicta veniam. Eum et aut voluptatem quia debitis.', 10);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (94, 94, 94, 'Quis rerum eos accusantium ullam similique quas sunt voluptatem. Sit magni et distinctio et.', 2);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (95, 95, 95, 'Quod excepturi aperiam et quaerat nesciunt modi adipisci quia. Officia hic impedit dolores minima. Alias sequi vero voluptatem aut voluptates. Itaque sit autem exercitationem quis voluptas tempora.', 1);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (96, 96, 96, 'Dolores aut et tempore esse veniam. Quidem eum pariatur sint dolore id id. Dolorum autem iure itaque ut aut.', 4);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (97, 97, 97, 'Laborum neque et est. Ex facere natus quasi nobis a nemo. A accusamus saepe veniam laudantium. Incidunt dolores facilis magni est repellendus harum exercitationem. Inventore dignissimos esse cupiditate labore et recusandae voluptas.', 8);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (98, 98, 98, 'Repellat qui ut corporis et voluptatem maxime culpa maiores. Nesciunt laudantium assumenda natus dolorum illum enim. Ut blanditiis tempora quisquam nemo necessitatibus illo nam.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (99, 99, 99, 'Culpa necessitatibus ullam possimus esse architecto ea earum qui. Dolores quam placeat animi odio voluptate. Voluptatem et aut dolorem et magnam impedit qui. Quos ut ipsum dolorem non alias sed quod.', 3);
INSERT INTO `strength_exercise_logs` (`id`, `session_id`, `exercise_id`, `notes`, `list_position`) VALUES (100, 100, 100, 'Nobis et id et eaque et. Corrupti at et aliquam nam voluptatem. Quas fuga reiciendis ut vitae totam. Accusamus repellendus aspernatur voluptatem earum.', 7);


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

INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (1, 1, 255, 255, 257, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (2, 2, 255, 38, 52, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (3, 3, 255, 255, 404, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (4, 4, 255, 255, 343, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (5, 5, 255, 255, 60, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (6, 6, 2, 255, 353, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (7, 7, 0, 255, 184, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (8, 8, 12, 255, 123, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (9, 9, 2, 255, 323, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (10, 10, 255, 255, 24, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (11, 11, 255, 60, 299, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (12, 12, 255, 0, 171, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (13, 13, 255, 255, 10, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (14, 14, 255, 255, 81, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (15, 15, 0, 255, 306, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (16, 16, 255, 72, 47, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (17, 17, 255, 10, 44, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (18, 18, 255, 255, 477, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (19, 19, 255, 255, 108, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (20, 20, 255, 0, 320, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (21, 21, 255, 255, 5, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (22, 22, 255, 8, 15, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (23, 23, 0, 9, 485, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (24, 24, 76, 255, 162, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (25, 25, 31, 5, 105, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (26, 26, 20, 255, 265, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (27, 27, 0, 255, 392, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (28, 28, 255, 0, 350, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (29, 29, 255, 255, 452, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (30, 30, 255, 3, 32, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (31, 31, 255, 0, 67, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (32, 32, 255, 30, 94, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (33, 33, 255, 255, 33, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (34, 34, 255, 36, 388, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (35, 35, 255, 255, 316, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (36, 36, 4, 255, 366, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (37, 37, 255, 255, 307, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (38, 38, 255, 255, 361, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (39, 39, 27, 255, 332, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (40, 40, 255, 0, 366, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (41, 41, 255, 255, 366, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (42, 42, 1, 86, 237, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (43, 43, 255, 255, 480, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (44, 44, 255, 255, 232, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (45, 45, 255, 255, 174, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (46, 46, 255, 255, 207, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (47, 47, 0, 255, 223, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (48, 48, 8, 255, 338, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (49, 49, 22, 74, 420, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (50, 50, 255, 255, 325, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (51, 51, 4, 255, 265, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (52, 52, 2, 255, 146, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (53, 53, 255, 255, 180, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (54, 54, 255, 255, 27, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (55, 55, 255, 32, 312, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (56, 56, 4, 255, 482, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (57, 57, 7, 255, 226, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (58, 58, 255, 255, 286, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (59, 59, 255, 85, 94, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (60, 60, 255, 8, 309, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (61, 61, 255, 8, 181, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (62, 62, 255, 255, 432, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (63, 63, 255, 255, 299, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (64, 64, 255, 255, 210, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (65, 65, 255, 255, 169, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (66, 66, 255, 4, 141, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (67, 67, 7, 189, 47, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (68, 68, 10, 255, 57, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (69, 69, 255, 255, 200, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (70, 70, 255, 12, 375, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (71, 71, 31, 99, 95, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (72, 72, 1, 255, 465, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (73, 73, 255, 57, 462, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (74, 74, 8, 255, 243, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (75, 75, 255, 255, 35, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (76, 76, 255, 255, 109, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (77, 77, 255, 0, 449, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (78, 78, 255, 255, 49, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (79, 79, 255, 255, 229, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (80, 80, 255, 0, 298, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (81, 81, 255, 0, 185, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (82, 82, 0, 255, 349, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (83, 83, 3, 255, 479, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (84, 84, 6, 30, 262, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (85, 85, 5, 255, 465, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (86, 86, 255, 255, 87, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (87, 87, 255, 255, 329, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (88, 88, 80, 2, 334, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (89, 89, 255, 255, 68, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (90, 90, 255, 255, 35, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (91, 91, 5, 84, 259, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (92, 92, 49, 255, 98, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (93, 93, 255, 255, 316, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (94, 94, 255, 255, 14, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (95, 95, 255, 255, 197, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (96, 96, 255, 68, 358, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (97, 97, 255, 4, 261, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (98, 98, 255, 11, 456, '1');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (99, 99, 129, 255, 65, '0');
INSERT INTO `strength_exercise_properties` (`id`, `exercise_id`, `set_number`, `rep_count`, `weight`, `drop_set`) VALUES (100, 100, 255, 255, 109, '1');


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

INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (1, 'id', 'in');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (2, 'quo', 'quis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (3, 'et', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (4, 'distinctio', 'aut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (5, 'est', 'dolor');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (6, 'doloremque', 'aliquid');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (7, 'id', 'minus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (8, 'voluptatem', 'vel');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (9, 'sint', 'mollitia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (10, 'earum', 'soluta');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (11, 'id', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (12, 'neque', 'repudiandae');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (13, 'et', 'quia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (14, 'earum', 'sit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (15, 'architecto', 'magnam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (16, 'ipsa', 'est');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (17, 'repudiandae', 'voluptas');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (18, 'omnis', 'laudantium');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (19, 'aut', 'sit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (20, 'magni', 'ducimus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (21, 'quae', 'libero');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (22, 'aspernatur', 'omnis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (23, 'maxime', 'inventore');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (24, 'earum', 'ipsum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (25, 'harum', 'maxime');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (26, 'soluta', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (27, 'occaecati', 'consectetur');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (28, 'perspiciatis', 'laboriosam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (29, 'rerum', 'exercitationem');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (30, 'aliquid', 'quos');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (31, 'praesentium', 'qui');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (32, 'sequi', 'voluptates');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (33, 'corrupti', 'illum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (34, 'molestiae', 'quod');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (35, 'officiis', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (36, 'harum', 'quo');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (37, 'quia', 'dolore');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (38, 'quia', 'nobis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (39, 'eos', 'velit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (40, 'ipsum', 'reiciendis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (41, 'ab', 'optio');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (42, 'iure', 'molestias');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (43, 'a', 'accusantium');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (44, 'quis', 'quidem');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (45, 'deleniti', 'quam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (46, 'perspiciatis', 'non');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (47, 'accusamus', 'consequatur');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (48, 'exercitationem', 'soluta');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (49, 'odio', 'cumque');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (50, 'nihil', 'perferendis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (51, 'veniam', 'inventore');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (52, 'magni', 'sed');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (53, 'aut', 'sit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (54, 'et', 'maiores');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (55, 'alias', 'nostrum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (56, 'voluptatem', 'perferendis');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (57, 'occaecati', 'dignissimos');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (58, 'aut', 'vel');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (59, 'qui', 'facere');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (60, 'dolorem', 'maiores');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (61, 'aut', 'numquam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (62, 'ducimus', 'atque');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (63, 'aut', 'minima');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (64, 'debitis', 'est');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (65, 'necessitatibus', 'excepturi');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (66, 'enim', 'quia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (67, 'numquam', 'velit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (68, 'architecto', 'vel');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (69, 'eaque', 'quibusdam');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (70, 'vero', 'sit');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (71, 'sed', 'soluta');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (72, 'quos', 'labore');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (73, 'esse', 'quia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (74, 'similique', 'ex');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (75, 'sed', 'ut');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (76, 'libero', 'consequatur');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (77, 'ut', 'est');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (78, 'voluptatum', 'aspernatur');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (79, 'qui', 'autem');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (80, 'quis', 'ad');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (81, 'quia', 'dolore');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (82, 'in', 'est');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (83, 'quae', 'cupiditate');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (84, 'dolore', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (85, 'et', 'mollitia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (86, 'quibusdam', 'quia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (87, 'dolorem', 'consectetur');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (88, 'eos', 'qui');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (89, 'voluptatum', 'mollitia');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (90, 'veniam', 'ducimus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (91, 'et', 'nesciunt');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (92, 'enim', 'doloribus');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (93, 'accusantium', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (94, 'eum', 'est');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (95, 'hic', 'laborum');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (96, 'accusantium', 'nisi');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (97, 'ut', 'et');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (98, 'ab', 'id');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (99, 'iure', 'hic');
INSERT INTO `superset_names` (`id`, `superset_name_en`, `superset_name_pl`) VALUES (100, 'quasi', 'est');


#
# TABLE STRUCTURE FOR: superset_strength_exercise_logs
#

DROP TABLE IF EXISTS `superset_strength_exercise_logs`;

CREATE TABLE `superset_strength_exercise_logs` (
  `superset_id` int(11) unsigned NOT NULL,
  `strength_exercise_log_id` int(11) unsigned NOT NULL,
  KEY `idx_strength_exercise_log_id` (`strength_exercise_log_id`),
  KEY `idx_superset_id` (`superset_id`),
  CONSTRAINT `superset_strength_exercise_logs_ibfk_1` FOREIGN KEY (`superset_id`) REFERENCES `supersets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `superset_strength_exercise_logs_ibfk_2` FOREIGN KEY (`strength_exercise_log_id`) REFERENCES `strength_exercise_logs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (1, 1);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (2, 2);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (3, 3);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (4, 4);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (5, 5);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (6, 6);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (7, 7);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (8, 8);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (9, 9);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (10, 10);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (11, 11);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (12, 12);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (13, 13);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (14, 14);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (15, 15);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (16, 16);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (17, 17);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (18, 18);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (19, 19);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (20, 20);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (21, 21);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (22, 22);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (23, 23);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (24, 24);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (25, 25);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (26, 26);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (27, 27);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (28, 28);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (29, 29);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (30, 30);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (31, 31);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (32, 32);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (33, 33);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (34, 34);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (35, 35);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (36, 36);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (37, 37);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (38, 38);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (39, 39);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (40, 40);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (41, 41);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (42, 42);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (43, 43);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (44, 44);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (45, 45);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (46, 46);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (47, 47);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (48, 48);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (49, 49);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (50, 50);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (51, 51);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (52, 52);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (53, 53);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (54, 54);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (55, 55);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (56, 56);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (57, 57);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (58, 58);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (59, 59);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (60, 60);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (61, 61);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (62, 62);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (63, 63);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (64, 64);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (65, 65);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (66, 66);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (67, 67);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (68, 68);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (69, 69);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (70, 70);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (71, 71);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (72, 72);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (73, 73);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (74, 74);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (75, 75);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (76, 76);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (77, 77);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (78, 78);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (79, 79);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (80, 80);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (81, 81);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (82, 82);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (83, 83);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (84, 84);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (85, 85);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (86, 86);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (87, 87);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (88, 88);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (89, 89);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (90, 90);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (91, 91);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (92, 92);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (93, 93);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (94, 94);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (95, 95);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (96, 96);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (97, 97);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (98, 98);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (99, 99);
INSERT INTO `superset_strength_exercise_logs` (`superset_id`, `strength_exercise_log_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: superset_strength_exercises
#

DROP TABLE IF EXISTS `superset_strength_exercises`;

CREATE TABLE `superset_strength_exercises` (
  `strength_exercise_id` int(11) unsigned NOT NULL,
  `superset_id` int(11) unsigned NOT NULL,
  KEY `superset_id` (`superset_id`),
  KEY `idx_strength_exercise_id` (`strength_exercise_id`),
  CONSTRAINT `superset_strength_exercises_ibfk_1` FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercise_properties` (`id`) ON DELETE CASCADE,
  CONSTRAINT `superset_strength_exercises_ibfk_2` FOREIGN KEY (`superset_id`) REFERENCES `supersets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (1, 1);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (2, 2);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (3, 3);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (4, 4);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (5, 5);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (6, 6);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (7, 7);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (8, 8);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (9, 9);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (10, 10);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (11, 11);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (12, 12);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (13, 13);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (14, 14);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (15, 15);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (16, 16);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (17, 17);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (18, 18);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (19, 19);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (20, 20);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (21, 21);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (22, 22);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (23, 23);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (24, 24);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (25, 25);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (26, 26);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (27, 27);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (28, 28);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (29, 29);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (30, 30);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (31, 31);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (32, 32);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (33, 33);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (34, 34);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (35, 35);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (36, 36);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (37, 37);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (38, 38);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (39, 39);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (40, 40);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (41, 41);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (42, 42);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (43, 43);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (44, 44);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (45, 45);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (46, 46);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (47, 47);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (48, 48);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (49, 49);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (50, 50);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (51, 51);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (52, 52);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (53, 53);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (54, 54);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (55, 55);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (56, 56);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (57, 57);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (58, 58);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (59, 59);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (60, 60);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (61, 61);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (62, 62);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (63, 63);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (64, 64);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (65, 65);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (66, 66);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (67, 67);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (68, 68);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (69, 69);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (70, 70);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (71, 71);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (72, 72);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (73, 73);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (74, 74);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (75, 75);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (76, 76);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (77, 77);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (78, 78);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (79, 79);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (80, 80);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (81, 81);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (82, 82);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (83, 83);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (84, 84);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (85, 85);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (86, 86);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (87, 87);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (88, 88);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (89, 89);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (90, 90);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (91, 91);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (92, 92);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (93, 93);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (94, 94);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (95, 95);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (96, 96);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (97, 97);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (98, 98);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (99, 99);
INSERT INTO `superset_strength_exercises` (`strength_exercise_id`, `superset_id`) VALUES (100, 100);


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

INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (1, 'darien.rutherford', 'ed.cummings@example.net', '53dc015a9fb133fe8ad63794fe187c5f54042f00', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (2, 'gabbott', 'ricky.bergstrom@example.org', '97e6ee7c53fa5fe33e93594b25a88a0d4ab972fb', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (3, 'cronin.gregoria', 'bartoletti.lenora@example.net', 'b2a6cce95facad4389ccbd0915e542fe82dbc923', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (4, 'destiny02', 'lauretta.swift@example.net', '70d7d901aa8dadaf1e28462e7689b585c6e8346f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (5, 'estefania.kihn', 'hward@example.org', '79948ae0c689176e273acf4b6c33dcf174967cdb', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (6, 'caleigh.keebler', 'craig86@example.net', '4854e41c1c8abe18e9fec9c281160ee857deb73d', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (7, 'rusty44', 'blake25@example.org', 'e06b9c8842b1147fe98abf00a3060e79830bb383', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (8, 'elza90', 'creola.ebert@example.net', '535cbc75ee9858f87197478a696ca492936808fc', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (9, 'kaylie.hilpert', 'hpagac@example.net', '7afb9d53d6221de4366ae01038ff89d38465a61f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (10, 'koss.mercedes', 'hpaucek@example.org', 'd2a5680f0650a509a71f1d62377aef4231493313', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (11, 'morton.bahringer', 'emile.carroll@example.net', 'ba16d27a142815d9d60dccd5b7723763ca6eac0a', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (12, 'santino78', 'yhettinger@example.org', '61b9a54d7400fa9d87943d9a5a2b766f0cc00e02', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (13, 'kovacek.karlee', 'genesis.miller@example.com', 'a0931c15517c04320c0ed0b5b7e1bd9e94141322', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (14, 'hettinger.rachael', 'osauer@example.net', '09cf355ba28f5e95d69935cf54ccb7546c18468d', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (15, 'wuckert.arnaldo', 'ureinger@example.net', '9a95920476d0b82922a03df729eeabdc3ab56f0a', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (16, 'monserrate.hermann', 'tfeest@example.com', '9d28e85af06bd4e4f42f306ccf7b61b37a5ee665', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (17, 'qaltenwerth', 'wiegand.winifred@example.com', '086f75a24ea2c3d610a6691bbdbbcb758c07a3d2', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (18, 'lhahn', 'konopelski.brenda@example.org', '72561fa97df8ac357c6dd00b186de711a6b93b5c', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (19, 'udavis', 'simonis.ezekiel@example.net', '8f2037d06442b163b6ae79740e9fa363161df139', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (20, 'flossie43', 'pasquale01@example.net', '0a02c79d2af628a2c0af79c50079d6272c0cd4db', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (21, 'hryan', 'pstokes@example.org', 'd25370a5c31351c8653751b87187763e44c5525b', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (22, 'kautzer.kamren', 'bonita.spencer@example.net', 'e2493363e9eaf1849b7ea91c70fe0b234da316ae', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (23, 'tjaskolski', 'mccullough.claudine@example.net', '07442c69e5f168358fed3cbd269f3130e04a3a55', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (24, 'qheaney', 'macejkovic.kendra@example.net', 'fd733398fa5a97108ac0faa9959dd86c83c7cc5f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (25, 'cpouros', 'danyka82@example.com', '6eadb75dc67abb92b652f796f9b3cd58eeafef4d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (26, 'elvera.romaguera', 'vonrueden.margie@example.net', '0dbd194794c240347a7abe0439e1dda8b9054009', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (27, 'name.swift', 'dare.teresa@example.com', '049aec36c5ebe20476735c85d5cd8799891517be', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (28, 'ofelia.harber', 'rosalee.becker@example.org', '4fdf36c646fe7c3754891b9bd08580dab0131b2b', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (29, 'rafael37', 'lilla.kling@example.com', '6c9f386cd22859737abd546c8924b774bf13e3f2', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (30, 'torp.alivia', 'nienow.clemmie@example.org', '78e904ed1dea71133231283398530191ce0b50a1', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (31, 'feest.grover', 'jackeline29@example.org', 'c1a23428d1f27d00fd127fad3ecebef52920c1b6', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (32, 'hintz.meda', 'hbernhard@example.com', 'bf926668c080af4ca61dacb6ba2f3b9794c7181a', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (33, 'reynolds.alanna', 'mozell.davis@example.org', 'bbf6dabb42e7688afa41b2894c44812404024073', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (34, 'vheathcote', 'breana.d\'amore@example.net', 'e3705df1e1d28e1686c67900204718d4c41890c3', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (35, 'lwatsica', 'nya12@example.com', 'c8f3a2f189879295b27123f6ba8e582a3fd3972c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (36, 'gaston91', 'taylor00@example.net', 'b2f12587601d5b67d2351df29172f480d11003a5', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (37, 'yolanda.kunde', 'hschroeder@example.net', 'e0fff83c3b176f581820f60aaabeef20139bd43e', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (38, 'doris.feil', 'auer.lorenza@example.com', 'e6ac7ca156c217a3fd82b44fc74db796a56d544e', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (39, 'arno.cormier', 'eugenia32@example.net', 'c62a89c0286d53e22359f9c0d445bbd6ef807b08', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (40, 'peter06', 'fosinski@example.org', 'd995072535d2f21e94eaa8b5ba40bff192f5984a', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (41, 'malachi.schmidt', 'gleichner.weston@example.org', 'cce9eb425aa3796a912def1a6e26f5563b6086df', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (42, 'kwest', 'reynolds.pat@example.com', '4a0b37b46fa63d299d4966b2683beba7e2143d18', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (43, 'alva31', 'tboehm@example.org', 'fb57d27e60439a2e2c20d8cd293caf0bc1cef737', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (44, 'abarton', 'kmitchell@example.com', '5144cd4420267ea23ccab9f70d58aa688b1f90d9', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (45, 'russel.henderson', 'boris07@example.org', '7bea97920abe43b62dab9d6f01dc8c0508e02b32', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (46, 'kade.turner', 'damaris57@example.com', '3c164e750838930f03b069f1be5b68c5cea2594c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (47, 'jeffery29', 'karine87@example.org', 'bcc05c71fb61f4490d754de7f15debaf2af09612', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (48, 'orn.rupert', 'oluettgen@example.com', '498836048c859be289ea16e4d1a68429cdfb6aa3', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (49, 'uwest', 'lauryn.littel@example.net', '450ed3bf1297bfb4c8d83e9f5cb30801e1f5a272', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (50, 'clemmie.quigley', 'mazie.rice@example.com', 'e9bc7973b6e8170c0b20c6b8b6e4a3b4dd083301', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (51, 'streich.mariah', 'qnitzsche@example.net', '02334069e8a0e1009647c34ced542d58ae4e64cc', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (52, 'royal42', 'gaetano17@example.net', 'e22d4746284fbdd11b1a38e29ead75fd62bd08ae', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (53, 'ekling', 'ryan.sonia@example.net', '24438aee332311a5713dca114b2e67a918d29a93', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (54, 'lockman.lyric', 'icarroll@example.net', '7e4565ca51f08a6ba7fa38ef9f23a499cc8205d9', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (55, 'imacejkovic', 'nichole50@example.net', '86ca32ab18d9d68c192269121319530bb3eab59a', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (56, 'wgleichner', 'vergie.o\'reilly@example.com', '28e230f361f299cf442ebc7ad66404b57b4cda83', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (57, 'johnny.fritsch', 'mccullough.adell@example.net', '855414caa14cb2b63578ee75b9485fa0226e826d', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (58, 'watsica.loyal', 'vivianne32@example.com', '4b79aae61b1ed89025f6d25ece2dedde59d00cd2', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (59, 'drake68', 'rklocko@example.org', 'b044eca124226a2f08c3dbd86f013fdd32364035', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (60, 'owisozk', 'treutel.jamil@example.net', '03619d7024424d6f9aa54010f45abc2aa5addd1b', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (61, 'darrick.muller', 'doyle.thurman@example.net', 'd5a165c9fb0afee0733bf06199fa13355017a3d3', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (62, 'cbogan', 'addison29@example.net', 'bf81d137dd5e9882cc6f4a459736fef4394131e0', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (63, 'ashlynn.hoppe', 'marilie.littel@example.net', 'afa72fc3ce41edd778f8dd8b5d5af53652ce1f30', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (64, 'stanton.eugenia', 'hschuster@example.net', 'fac2f7e414cb184ceb94540b698d7b90eceeaa5e', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (65, 'beier.estelle', 'krunte@example.org', '6d8d96f2d5a103d93a036acc7a84fd68aaccd301', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (66, 'quigley.braeden', 'adele60@example.com', '0e24da8faeabb30510e53f64763103dc07c65b83', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (67, 'o\'keefe.oren', 'jessy.cartwright@example.org', '93009dc86306faaf6c2b94e0c0ca02e9e8998261', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (68, 'turcotte.wade', 'xdavis@example.org', 'fa90e5af959e1144709a452b63c9ce7ca1e09925', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (69, 'rohan.marco', 'carter.rashad@example.org', 'd51b285c906b4d11acfd567d67de39f0f4362068', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (70, 'hwalter', 'novella79@example.net', 'd7a28e234e0ea23fb6500d6add67dc42ca035b1f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (71, 'willow.beatty', 'vonrueden.keshaun@example.org', '599200e049312021e7772798fbb603bc0662a3a8', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (72, 'stacy55', 'beer.nora@example.net', 'f758d35ae4de41b94b54e871571945cb058300a1', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (73, 'vickie70', 'brown.romaguera@example.net', '740cf2b62afbb26879db98842075813d0c6daa8d', '0');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (74, 'ivy.hahn', 'uo\'hara@example.org', '9f299fc935f74cb0e318ec0811a5531ef4d9f923', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (75, 'kcorwin', 'joana26@example.com', 'fff7e40474ec5498623aaa1fdc97d3904b5316cd', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (76, 'josefa.zemlak', 'hermann.meaghan@example.net', '7a16870aa0ddeb46dfa667eabfbb9917f91e4bca', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (77, 'shoppe', 'stehr.santa@example.net', 'beba93568b620837825ec228318a7d5cb7791fd5', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (78, 'milford.senger', 'mgraham@example.com', '61625459582ce04d0838388055bebe9cb07dc6a5', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (79, 'don87', 'dhansen@example.net', '2539195c422da5287bd0f1347e22bd4bd080fb85', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (80, 'schulist.camryn', 'oglover@example.org', '626118ea06387dc53256793e7a8ecdbc4ee6d99c', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (81, 'iromaguera', 'csmith@example.com', 'fc4d7743205ba586eaa271f8e57c3b4d366882e6', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (82, 'marquardt.brandon', 'oda.ryan@example.com', 'e7cc352fed309a258adae4124ec6f24b8c924a8d', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (83, 'sabryna.gutkowski', 'ondricka.alicia@example.net', '360c3adaf8f6341c021f973a6d68893473004de3', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (84, 'kip35', 'chad.kessler@example.net', '85c2720f0cc7480e59c5d6cd506b2e7d3e36b68b', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (85, 'vincenza35', 'wlittle@example.net', '6afb46be3072ee248743d39baef8e6c9149e8d8b', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (86, 'sschmitt', 'ucorkery@example.net', 'e45682ff85ed4b0ed2c3acab4a749d85eef17884', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (87, 'elinore99', 'uhudson@example.com', '7ccd1d9859f4d30a034c549c121591b3d7e3d030', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (88, 'trenton.hayes', 'schinner.adeline@example.com', '27c90a9f201965a60116b53ff99ce14a46f76851', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (89, 'esperanza40', 'miller.fahey@example.net', 'b15669a18acaf53d994cbbb2343cba04887476a7', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (90, 'brown94', 'megane.harber@example.com', 'f0ef5fa0aa9da0b11a06b1d1250b7f9c1320b629', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (91, 'hauck.kian', 'altenwerth.madison@example.org', '1cecf585afe35271ed739a3c0d417938ef3854e7', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (92, 'rippin.trever', 'ward.konopelski@example.org', '2b245f564a9dd0ea8bd8f9af5e839bfc88c1097d', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (93, 'amparo.marquardt', 'florence19@example.org', 'cc5e2df69c5c110a3d7e4da215eb2316ad0b1d65', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (94, 'caden62', 'xstark@example.net', '4c9e0ec693e4a69f224a9a043f63200489e5c45f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (95, 'zconnelly', 'chaim48@example.net', '498aa793a6dfc63c977f5c02d955fa4dfa81c28f', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (96, 'dolores08', 'agoodwin@example.org', '57ff2a3cd615a029675c115eab7b22587e2c3993', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (97, 'waelchi.titus', 'kiehn.darion@example.org', 'f8a37d5b3c90fc145e5d1d695a45aea6c3c41369', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (98, 'omayer', 'tabitha34@example.com', '0d6d4383e1f15701874d84bb9b47894b960eeaa1', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (99, 'aratke', 'palma.lowe@example.net', '3543ac7f7c80778c76bc038d2e8a3b06a5484fd6', '1');
INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `language`) VALUES (100, 'margret.gaylord', 'felicity.torphy@example.net', '478f3b065b45c1665c9c56accd4ea8a19ea59ea6', '1');


#
# TABLE STRUCTURE FOR: variant_exercises
#

DROP TABLE IF EXISTS `variant_exercises`;

CREATE TABLE `variant_exercises` (
  `variant_id` int(11) unsigned NOT NULL,
  `exercise_id` int(11) unsigned NOT NULL,
  KEY `variant_id` (`variant_id`),
  KEY `idx_exercise_id` (`exercise_id`),
  CONSTRAINT `variant_exercises_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE,
  CONSTRAINT `variant_exercises_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `workout_variants` (`id`) ON DELETE CASCADE
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

INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (1, 'illum', 'corporis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (2, 'et', 'provident');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (3, 'necessitatibus', 'molestiae');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (4, 'voluptate', 'ut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (5, 'earum', 'ex');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (6, 'facilis', 'rerum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (7, 'consequuntur', 'est');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (8, 'repellat', 'voluptates');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (9, 'quibusdam', 'laboriosam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (10, 'veniam', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (11, 'laudantium', 'nostrum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (12, 'quaerat', 'deleniti');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (13, 'ipsum', 'voluptatem');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (14, 'voluptatibus', 'assumenda');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (15, 'quam', 'reiciendis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (16, 'illum', 'voluptatum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (17, 'pariatur', 'similique');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (18, 'dolores', 'placeat');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (19, 'ab', 'dolorum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (20, 'numquam', 'necessitatibus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (21, 'repellendus', 'fugit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (22, 'blanditiis', 'neque');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (23, 'eligendi', 'voluptas');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (24, 'nisi', 'vel');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (25, 'harum', 'voluptate');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (26, 'reiciendis', 'perferendis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (27, 'fugiat', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (28, 'impedit', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (29, 'qui', 'qui');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (30, 'voluptatem', 'dolores');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (31, 'quia', 'earum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (32, 'magni', 'praesentium');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (33, 'perspiciatis', 'accusantium');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (34, 'est', 'voluptatem');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (35, 'et', 'rerum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (36, 'numquam', 'sunt');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (37, 'ipsam', 'cupiditate');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (38, 'atque', 'corporis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (39, 'nemo', 'rerum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (40, 'non', 'dolor');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (41, 'voluptas', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (42, 'quo', 'impedit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (43, 'repudiandae', 'ipsum');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (44, 'quia', 'neque');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (45, 'recusandae', 'nihil');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (46, 'incidunt', 'aspernatur');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (47, 'ullam', 'id');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (48, 'qui', 'dignissimos');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (49, 'et', 'nemo');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (50, 'tempore', 'libero');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (51, 'dolores', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (52, 'maxime', 'laboriosam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (53, 'ab', 'vel');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (54, 'excepturi', 'vel');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (55, 'dignissimos', 'repellat');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (56, 'cumque', 'consequatur');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (57, 'perferendis', 'hic');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (58, 'perferendis', 'fugiat');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (59, 'vero', 'qui');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (60, 'sed', 'esse');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (61, 'qui', 'sapiente');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (62, 'molestiae', 'vel');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (63, 'ut', 'voluptatibus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (64, 'illo', 'voluptates');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (65, 'sunt', 'voluptatem');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (66, 'dolores', 'voluptatem');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (67, 'aut', 'nemo');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (68, 'voluptas', 'totam');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (69, 'ut', 'nihil');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (70, 'eos', 'assumenda');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (71, 'minima', 'soluta');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (72, 'quidem', 'culpa');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (73, 'praesentium', 'fugit');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (74, 'voluptatem', 'aut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (75, 'cumque', 'occaecati');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (76, 'blanditiis', 'deserunt');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (77, 'eum', 'ut');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (78, 'ea', 'omnis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (79, 'eaque', 'eligendi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (80, 'sequi', 'in');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (81, 'eius', 'quasi');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (82, 'repudiandae', 'quo');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (83, 'totam', 'voluptatibus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (84, 'quod', 'qui');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (85, 'consequatur', 'alias');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (86, 'illo', 'veritatis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (87, 'asperiores', 'accusamus');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (88, 'odio', 'corporis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (89, 'voluptate', 'ad');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (90, 'et', 'iste');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (91, 'consequatur', 'optio');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (92, 'nulla', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (93, 'iste', 'et');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (94, 'quia', 'facere');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (95, 'autem', 'dignissimos');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (96, 'rerum', 'eos');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (97, 'qui', 'sint');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (98, 'soluta', 'voluptas');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (99, 'illum', 'omnis');
INSERT INTO `variant_names` (`id`, `variant_name_en`, `variant_name_pl`) VALUES (100, 'laudantium', 'non');


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

INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (1, 1, '2016-01-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (2, 2, '1996-02-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (3, 3, '1990-03-18');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (4, 4, '1994-07-08');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (5, 5, '2021-12-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (6, 6, '2022-04-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (7, 7, '2018-04-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (8, 8, '1994-02-03');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (9, 9, '1976-03-03');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (10, 10, '2007-02-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (11, 11, '1973-05-23');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (12, 12, '1990-03-27');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (13, 13, '2008-06-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (14, 14, '2005-05-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (15, 15, '1971-03-14');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (16, 16, '2023-04-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (17, 17, '2000-02-14');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (18, 18, '2016-05-27');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (19, 19, '2001-01-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (20, 20, '2015-05-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (21, 21, '2016-06-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (22, 22, '2000-04-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (23, 23, '1992-04-27');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (24, 24, '1981-02-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (25, 25, '2001-09-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (26, 26, '1992-07-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (27, 27, '1990-11-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (28, 28, '1994-03-06');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (29, 29, '1994-04-27');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (30, 30, '1980-11-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (31, 31, '2006-11-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (32, 32, '1990-06-18');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (33, 33, '1984-02-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (34, 34, '1977-12-28');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (35, 35, '1986-09-13');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (36, 36, '1984-06-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (37, 37, '2007-04-07');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (38, 38, '2000-08-24');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (39, 39, '1993-01-20');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (40, 40, '1977-11-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (41, 41, '1986-09-04');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (42, 42, '1989-02-23');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (43, 43, '1975-07-07');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (44, 44, '2008-07-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (45, 45, '1987-11-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (46, 46, '1989-10-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (47, 47, '2010-03-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (48, 48, '2006-09-28');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (49, 49, '1981-02-11');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (50, 50, '2021-04-16');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (51, 51, '1983-06-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (52, 52, '1972-05-07');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (53, 53, '1985-04-07');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (54, 54, '2005-05-19');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (55, 55, '1993-03-21');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (56, 56, '1981-12-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (57, 57, '1970-04-27');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (58, 58, '2017-12-01');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (59, 59, '2006-01-03');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (60, 60, '2013-03-01');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (61, 61, '2006-12-09');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (62, 62, '1972-03-22');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (63, 63, '1999-06-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (64, 64, '1987-01-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (65, 65, '1999-08-21');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (66, 66, '1993-03-21');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (67, 67, '2013-12-09');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (68, 68, '1985-09-28');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (69, 69, '2021-07-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (70, 70, '2022-04-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (71, 71, '1984-01-31');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (72, 72, '1978-05-15');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (73, 73, '2018-07-04');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (74, 74, '1979-03-11');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (75, 75, '2012-07-11');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (76, 76, '1980-05-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (77, 77, '1982-07-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (78, 78, '2005-09-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (79, 79, '2019-01-25');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (80, 80, '2017-08-13');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (81, 81, '1999-06-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (82, 82, '1990-07-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (83, 83, '2018-08-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (84, 84, '2022-03-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (85, 85, '1985-10-31');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (86, 86, '1995-02-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (87, 87, '2005-04-24');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (88, 88, '1972-06-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (89, 89, '2021-11-17');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (90, 90, '1992-07-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (91, 91, '1995-06-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (92, 92, '2022-08-26');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (93, 93, '1990-08-30');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (94, 94, '2015-11-10');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (95, 95, '1993-07-02');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (96, 96, '2014-12-05');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (97, 97, '2013-09-18');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (98, 98, '1971-10-12');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (99, 99, '1995-01-29');
INSERT INTO `variant_session_logs` (`id`, `user_id`, `date`) VALUES (100, 100, '1974-06-01');


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

INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (1, 'ea', 'sed');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (2, 'eius', 'numquam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (3, 'non', 'architecto');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (4, 'facere', 'molestiae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (5, 'voluptatem', 'eveniet');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (6, 'dolores', 'nihil');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (7, 'assumenda', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (8, 'sit', 'quas');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (9, 'ut', 'repellendus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (10, 'iste', 'dolorum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (11, 'aut', 'repudiandae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (12, 'iste', 'unde');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (13, 'iusto', 'reiciendis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (14, 'sit', 'ab');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (15, 'omnis', 'nihil');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (16, 'reiciendis', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (17, 'nostrum', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (18, 'consequuntur', 'nisi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (19, 'exercitationem', 'enim');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (20, 'consequatur', 'vitae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (21, 'eligendi', 'error');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (22, 'quaerat', 'suscipit');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (23, 'est', 'aliquid');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (24, 'dolorem', 'quisquam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (25, 'asperiores', 'totam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (26, 'voluptas', 'incidunt');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (27, 'quidem', 'facilis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (28, 'tempore', 'corporis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (29, 'ut', 'voluptates');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (30, 'esse', 'nisi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (31, 'at', 'est');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (32, 'et', 'dolorum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (33, 'sunt', 'suscipit');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (34, 'vero', 'provident');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (35, 'omnis', 'sed');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (36, 'in', 'repellendus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (37, 'non', 'consequatur');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (38, 'consequuntur', 'voluptas');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (39, 'et', 'alias');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (40, 'possimus', 'deleniti');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (41, 'quidem', 'repudiandae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (42, 'explicabo', 'repudiandae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (43, 'reprehenderit', 'culpa');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (44, 'voluptatibus', 'vel');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (45, 'nobis', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (46, 'culpa', 'esse');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (47, 'sunt', 'rerum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (48, 'maxime', 'ea');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (49, 'nobis', 'molestiae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (50, 'quae', 'quis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (51, 'adipisci', 'rerum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (52, 'expedita', 'incidunt');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (53, 'quo', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (54, 'et', 'fugiat');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (55, 'quibusdam', 'sunt');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (56, 'iusto', 'ut');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (57, 'iure', 'iusto');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (58, 'sunt', 'mollitia');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (59, 'ullam', 'illo');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (60, 'et', 'est');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (61, 'odio', 'laudantium');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (62, 'qui', 'quasi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (63, 'tempora', 'recusandae');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (64, 'iste', 'quasi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (65, 'et', 'sed');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (66, 'non', 'inventore');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (67, 'atque', 'omnis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (68, 'rerum', 'non');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (69, 'mollitia', 'dicta');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (70, 'molestiae', 'qui');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (71, 'dolore', 'laborum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (72, 'et', 'nemo');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (73, 'quia', 'natus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (74, 'pariatur', 'quis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (75, 'vel', 'quos');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (76, 'voluptatem', 'iste');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (77, 'aut', 'quam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (78, 'debitis', 'similique');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (79, 'tempora', 'accusantium');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (80, 'laudantium', 'accusantium');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (81, 'cupiditate', 'natus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (82, 'provident', 'autem');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (83, 'quas', 'atque');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (84, 'deleniti', 'labore');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (85, 'fugiat', 'sed');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (86, 'consequatur', 'saepe');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (87, 'harum', 'modi');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (88, 'expedita', 'omnis');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (89, 'aut', 'nesciunt');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (90, 'exercitationem', 'rerum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (91, 'quia', 'assumenda');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (92, 'sit', 'et');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (93, 'et', 'earum');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (94, 'ad', 'accusamus');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (95, 'quisquam', 'voluptas');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (96, 'libero', 'quibusdam');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (97, 'incidunt', 'odit');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (98, 'nulla', 'nemo');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (99, 'expedita', 'repellat');
INSERT INTO `workout_names` (`id`, `workout_name_en`, `workout_name_pl`) VALUES (100, 'et', 'amet');


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

INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (1, 1, 1, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (2, 2, 2, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (3, 3, 3, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (4, 4, 4, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (5, 5, 5, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (6, 6, 6, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (7, 7, 7, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (8, 8, 8, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (9, 9, 9, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (10, 10, 10, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (11, 11, 11, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (12, 12, 12, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (13, 13, 13, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (14, 14, 14, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (15, 15, 15, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (16, 16, 16, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (17, 17, 17, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (18, 18, 18, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (19, 19, 19, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (20, 20, 20, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (21, 21, 21, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (22, 22, 22, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (23, 23, 23, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (24, 24, 24, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (25, 25, 25, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (26, 26, 26, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (27, 27, 27, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (28, 28, 28, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (29, 29, 29, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (30, 30, 30, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (31, 31, 31, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (32, 32, 32, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (33, 33, 33, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (34, 34, 34, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (35, 35, 35, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (36, 36, 36, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (37, 37, 37, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (38, 38, 38, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (39, 39, 39, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (40, 40, 40, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (41, 41, 41, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (42, 42, 42, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (43, 43, 43, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (44, 44, 44, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (45, 45, 45, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (46, 46, 46, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (47, 47, 47, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (48, 48, 48, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (49, 49, 49, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (50, 50, 50, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (51, 51, 51, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (52, 52, 52, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (53, 53, 53, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (54, 54, 54, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (55, 55, 55, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (56, 56, 56, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (57, 57, 57, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (58, 58, 58, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (59, 59, 59, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (60, 60, 60, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (61, 61, 61, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (62, 62, 62, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (63, 63, 63, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (64, 64, 64, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (65, 65, 65, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (66, 66, 66, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (67, 67, 67, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (68, 68, 68, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (69, 69, 69, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (70, 70, 70, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (71, 71, 71, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (72, 72, 72, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (73, 73, 73, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (74, 74, 74, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (75, 75, 75, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (76, 76, 76, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (77, 77, 77, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (78, 78, 78, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (79, 79, 79, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (80, 80, 80, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (81, 81, 81, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (82, 82, 82, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (83, 83, 83, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (84, 84, 84, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (85, 85, 85, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (86, 86, 86, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (87, 87, 87, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (88, 88, 88, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (89, 89, 89, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (90, 90, 90, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (91, 91, 91, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (92, 92, 92, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (93, 93, 93, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (94, 94, 94, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (95, 95, 95, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (96, 96, 96, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (97, 97, 97, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (98, 98, 98, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (99, 99, 99, '0');
INSERT INTO `workouts` (`id`, `user_id`, `workout_name_id`, `favorite`) VALUES (100, 100, 100, '0');