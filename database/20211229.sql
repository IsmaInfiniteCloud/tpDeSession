-- Host: localhost    Database: monshopvynilvault
-- ------------------------------------------------------
-- Server version 8.0.22
DROP database monshopvynilvault;

CREATE DATABASE monshopvynilvault;
USE monshopvynilvault;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `u_id` int NOT NULL,
  `o_quantity` int NOT NULL,
  `o_date` varchar(450) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (25,3,1,3,'2021-05-15'),(26,2,1,1,'2021-05-15');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--


DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `artist` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO products (name, artist, price, image) VALUES
('Use Your Illusion I', 'Guns N'' Roses', 19.99, 'your_illusion_1.jpg'),
('The Birth of the Cool', 'Miles Davis', 29.99, 'the_birth_of_the_cool.jpg'),
('At Fillmore East', 'The Allman Brothers Band', 34.99, 'at_fillmore_east.jpg'),
('L.A. Woman', 'The Doors', 24.99, 'la_woman.jpg'),
('Exile on Main St.', 'The Rolling Stones', 19.99, 'exile_on_main_st.jpg'),
('Hotter Than July', 'Stevie Wonder', 24.99, 'hotter_than_july.jpg'),
('Born to Run', 'Bruce Springsteen', 24.99, 'born_to_run.jpg'),

('Are You Experienced?', 'The Jimi Hendrix Experience', 29.99, 'jimi_hendrix_experienced.jpg'),
('The Miseducation of Lauryn Hill', 'Lauryn Hill', 19.99, 'lauryn_hill_miseducation.jpg'),
('The Color Purple', 'Original Broadway Cast', 29.99, 'color_purple_broadway.jpg'),
('The Rise and Fall of Ziggy Stardust and the Spiders from Mars', 'David Bowie', 19.99, 'david_bowie_ziggy.jpg'),
('Born in the U.S.A.', 'Bruce Springsteen', 29.99, 'bruce_springsteen_born.jpg'),
('The Dark Side of the Moon', 'Pink Floyd', 24.99, 'dark_side_of_the_moon.jpg'),
('Thriller', 'Michael Jackson', 19.99, 'thriller.jpg'),
('The Bodyguard Soundt', 'Whitney Houston', 29.99, 'the_bodyguard.jpg'),
('The Eagles Greatest Hits', 'The Eagles', 34.99, 'the_eagles.jpg'),
('Back in Black', 'AC/DC', 19.99, 'back_in_black.jpg'),
('Hotel California', 'The Eagles', 24.99, 'hotel_california.jpg'),
('The Wall', 'Pink Floyd', 29.99, 'the_wall.jpg'),

('The Thrill is Gone', 'B.B. King', 19.99, 'bb_king_thrill.jpg'),
('My Life', 'Mary J. Blige', 24.99, 'mary_j_blige_my_life.jpg'),
('Graceland', 'Paul Simon', 24.99, 'paul_simon_graceland.jpg'),
('Jagged Little Pill', 'Alanis Morissette', 24.99, 'alanis_morissette_jagged.jpg'),
('The Chronic', 'Dr. Dre', 19.99, 'dr_dre_chronic.jpg'),
('Off the Wall', 'Michael Jackson', 29.99, 'michael_jackson_off_wall.jpg'),
('Bad', 'Michael Jackson', 24.99, 'michael_jackson_bad.jpg'),
('Bat Out of Hell', 'Meat Loaf', 29.99, 'meat_loaf_bat_out_of_hell.jpg'),
('Blue Skies', 'Ella Fitzgerald', 19.99, 'blue_skies.jpg'),
('The Very Best of Blues', 'Various Artists', 24.99, 'best_of_blues.jpg'),
('The Definitive Jazz Collection', 'Louis Armstrong', 29.99, 'definitive_jazz.jpg'),
('Songs in the Key of Life', 'Stevie Wonder', 24.99, 'songs_in_the_key_of_life.jpg'),
('A Love Supreme', 'John Coltrane', 19.99, 'a_love_supreme.jpg'),
('Kind of Blue', 'Miles Davis', 29.99, 'kind_of_blue.jpg'),
('The Greatest Hits', 'Elvis Presley', 24.99, 'elvis_presley.jpg'),
('The Complete Recordings', 'Robert Johnson', 34.99, 'robert_johnson.jpg'),
('Sticky Fingers', 'The Rolling Stones', 19.99, 'sticky_fingers.jpg'),
('The Jackson 5 Greatest Hits', 'The Jackson 5', 24.99, 'jackson_5.jpg'),
('Saturday Night Fever Soundtrack', 'Various Artists', 24.99, 'saturday_night_fever.jpg'),
('Led Zeppelin IV', 'Led Zeppelin', 19.99, 'led_zeppelin_iv.jpg'),
('Physical Graffiti', 'Led Zeppelin', 29.99, 'physical_graffiti.jpg'),
('The River', 'Bruce Springsteen', 19.99, 'the_river.jpg'),
('Appetite for Destruction', 'Guns N'' Roses', 24.99, 'appetite_for_destruction.jpg'),
('Black Sabbath', 'Black Sabbath', 19.99, 'black_sabbath.jpg'),
('Electric Ladyland', 'The Jimi Hendrix Experience', 24.99, 'electric_ladyland.jpg'),
('Master of Puppets', 'Metallica', 29.99, 'master_of_puppets.jpg'),
('Parallel Lines', 'Blondie', 24.99, 'parallel_lines.jpg'),
('Kenza', 'Cheb Khaled', 29.99, 'cheb_khaled_kenza.jpg'),
('Dellali', 'Cheb Mami', 29.99, 'cheb_mami_dellali.jpg'),
('A Night at the Opera', 'Queen', 24.99, 'a_night_at_the_opera.jpg'),
('The Healer', 'John Lee Hooker', 34.99, 'john_lee_hooker_healer.jpg'),
('Born Under a Bad Sign', 'Albert King', 29.99, 'albert_king.jpg'),
('Howlin Wolf', 'hubert_sumlin', 19.99, 'hubert_sumlin.jpg'),
('Electric Mud', 'Muddy Waters', 19.99, 'muddy_waters.jpg'),
('Live at the Regal', 'B.B. King', 24.99, 'bb_king_regal.jpg'),
('Damn Right, Ive Got the Blues', 'Buddy Guy', 29.99, 'buddy_guy.jpg'),
('The Velvet Underground & Nico', 'The Velvet Underground', 24.99, 'velvet_underground_nico.jpg'),
('Superfly', 'Curtis Mayfield', 19.99, 'curtis_mayfield_superfly.jpg'),
('Desert Rose', 'Sting', 29.99, 'sting_desert_rose.jpg'),
('Couldnt Stand the Weather', 'Stevie Ray Vaughan', 24.99, 'stevie_ray_vaughan_couldnt_stand.jpg'),
('The Joshua Tree', 'U2', 29.99, 'u2_joshua_tree.jpg'),
('From the Cradle', 'Eric Clapton', 24.99, 'eric_clapton_from_the_cradle.jpg'),
('The Freewheelin'' Bob Dylan', 'Bob Dylan', 19.99, 'bob_dylan_freewheelin.jpg'),
('The Sun Sessions', 'Elvis Presley', 29.99, 'elvis_presley_sun_sessions.jpg'),
('Exodus', 'Bob Marley', 19.99, 'exodus.jpg'),
('Legend', 'Bob Marley', 24.99, 'legend.jpg'),
('Catch a Fire', 'Bob Marley', 29.99, 'catch_a_fire.jpg'),
('Aladdin Sane', 'David Bowie', 19.99, 'aladdin_sane.jpg'),
('Machine Head', 'Deep Purple', 24.99, 'machine_head.jpg'),
('In Rock', 'Deep Purple', 19.99, 'in_rock.jpg'),
('Made in Japan', 'Deep Purple', 29.99, 'made_in_japan.jpg'),
('Help!', 'The Beatles', 24.99, 'help.jpg'),
('A Hard Days Night', 'The Beatles', 19.99, 'a_hard_days_night.jpg'),
('Sgt. Peppers Lonely Hearts Club Band', 'The Beatles', 29.99, 'sgt_peppers.jpg'),
('Purple Rain', 'Prince', 29.99, 'purple_rain.jpg'),
('The Police Greatest Hits', 'The Police', 29.99, 'the_police_greatest_hits.jpg'),
('Dirty Dancing Soundtrack', 'Various Artists', 19.99, 'dirty_dancing_soundtrack.jpg'),
('Slippery When Wet', 'Bon Jovi', 29.99, 'slippery_when_wet.jpg'),
('Hysteria', 'Def Leppard', 24.99, 'hysteria.jpg'),
('The Black Parade', 'My Chemical Romance', 29.99, 'my_chemical_romance.jpg'),
('American Idiot', 'Green Day', 24.99, 'american_idiot.jpg'),

('Use Your Illusion II', 'Guns N'' Roses', 29.99, 'illusion_2.jpg'),
('Appeal to Reason', 'Rise Against', 24.99, 'appeal_to_reason.jpg'),
('The Sufferer & the Witness', 'Rise Against', 19.99, 'sufferer_witness.jpg'),
('So Far, So Good... So What!', 'Megadeth', 29.99, 'so_far_so_good.jpg'),
('Countdown to Extinction', 'Megadeth', 24.99, 'countdown_to_extinction.jpg'),
('Ride the Lightning', 'Metallica', 29.99, 'ride_the_lightning.jpg'),
('The Eminem Show', 'Eminem', 24.99, 'eminem_show.jpg'),
('Come Away With Me', 'Norah Jones', 19.99, 'come_away.jpg'),
('21', 'Adele', 34.99, 'adele_21.jpg'),
('25', 'Adele', 29.99, 'adele_25.jpg'),
('Layla and Other Assorted Love Songs', 'Eric Clapton', 24.99, 'clapton_layla.jpg'),
('461 Ocean Boulevard', 'Eric Clapton', 19.99, 'clapton_461_ocean.jpg'),
('Theres One in Every Crowd', 'Eric Clapton', 29.99, 'clapton_theres_one.jpg'),
('No Reason to Cry', 'Eric Clapton', 34.99, 'clapton_no_reason.jpg'),
('Slowhand', 'Eric Clapton', 19.99, 'clapton_slowhand.jpg'),
('Another Ticket', 'Eric Clapton', 24.99, 'clapton_another_ticket.jpg'),
('Money and Cigarettes', 'Eric Clapton', 29.99, 'clapton_money_cigarettes.jpg'),
('Behind the Sun', 'Eric Clapton', 24.99, 'clapton_behind_the_sun.jpg'),
('Journeyman', 'Eric Clapton', 29.99, 'clapton_journeyman.jpg'),
('Reptile', 'Eric Clapton', 24.99, 'clapton_reptile.jpg'),
('Me and Mr. Johnson', 'Eric Clapton', 29.99, 'clapton_me_mr_johnson.jpg'),
('Back Home', 'Eric Clapton', 24.99, 'clapton_back_home.jpg'),
('The Chronic 2', 'Dr. Dre', 19.99, 'dr_dre_chronic_2.jpg'),
('All Eyez on Me', 'Tupac', 24.99, 'tupac_alleyezonme.jpg'),
('The Doors', 'The Doors', 19.99, 'the_doors.jpg'),

('Morrison Hotel', 'The Doors', 29.99, 'morrison_hotel.jpg'),
('The Soft Parade', 'The Doors', 34.99, 'the_soft_parade.jpg'),
('Waiting for the Sun', 'The Doors', 19.99, 'waiting_for_the_sun.jpg'),
('Brothers in Arms', 'Dire Straits', 19.99, 'dire_straits_brothers_in_arms.jpg'),
('On Every Street', 'Dire Straits', 24.99, 'dire_straits_on_every_street.jpg'),
('Making Movies', 'Dire Straits', 19.99, 'dire_straits_making_movies.jpg'),
('Love Over Gold', 'Dire Straits', 24.99, 'dire_straits_love_over_gold.jpg'),
('The White Album', 'The Beatles', 24.99, 'beatles_white_album.jpg'),
('Revolver', 'The Beatles', 19.99, 'beatles_revolver.jpg'),
('Rubber Soul', 'The Beatles', 24.99, 'beatles_rubber_soul.jpg'),
('Let it Bleed', 'The Rolling Stones', 24.99, 'rolling_stones_let_it_bleed.jpg'),
('Beggars Banquet', 'The Rolling Stones', 19.99, 'rolling_stones_beggars_banquet.jpg'),
('Ten', 'Pearl Jam', 19.99, 'pearl_jam_ten.jpg'),
('Vs.', 'Pearl Jam', 24.99, 'pearl_jam_vs.jpg'),
('Discovery', 'Daft Punk', 24.99, 'daft_punk_discovery.jpg'),
('Get a Grip', 'Aerosmith', 29.99, 'Get_a_Grip.jpg'),
('Blues Breakers with Eric Clapton', 'John Mayall', 29.99, 'mayall_clapton_blues_breakers.jpg'),
('Ok Computer', 'Radiohead', 24.99, 'radiohead_ok_computer.jpg'),
('In Rainbows', 'Radiohead', 29.99, 'radiohead_in_rainbows.jpg');

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ismail','ismail@mail.com','123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



SELECT COUNT(*) FROM products;
SELECT id, name
FROM products
WHERE id IN (SELECT id FROM products GROUP BY name HAVING COUNT(*) > 1);
