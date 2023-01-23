-- Host: localhost    Database: monshopvynilvault
-- ------------------------------------------------------
-- Server version 8.0.22

UNLOCK TABLES;
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
INSERT INTO `orders` VALUES (26,2,1,1,'2022-12-15'), (27,2,1,1,'2022-12-29');
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
  `genre` varchar(450) NOT NULL,
  `description` text NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO products (name, artist, price, image, genre, description, year) VALUES
('Layla and Other Assorted Love Songs', 'Eric Clapton', 24.99, 'clapton_layla.jpg', 'Rock', 'Layla and Other Assorted Love Songs is a double album by the British rock group Derek and the Dominos. It was released in November 1970.', 1970),

('Hotel California', 'The Eagles', 24.99, 'hotel_california.jpg', 'Rock', 'Hotel California is the fifth studio album by American rock band the Eagles, and is one of the best-selling albums of all time. The title track is one of the bands biggest hits and one of rocks most famous songs.', 1976),
('The Wall', 'Pink Floyd', 29.99, 'the_wall.jpg', 'Rock', 'The Wall is the eleventh studio album by English rock band Pink Floyd, released as a double album on 30 November 1979 by Harvest and Columbia Records. It is based on the 1979 Pink Floyd tour and the alienation felt by singer/bassist Roger Waters.', 1979),
('25', 'Adele', 29.99, 'adele_25.jpg', 'Pop', '25 is the third studio album by British singer-songwriter Adele. It was released on November 20, 2015, by XL Recordings. The album was a commercial success, reaching number one in more than 25 countries, and was certified diamond in the United States, the United Kingdom, Australia, and other countries.', 2015),
('Use Your Illusion I', 'Guns N'' Roses', 19.99, 'your_illusion_1.jpg', 'Hard Rock', 'Use Your Illusion I is the third studio album by American rock band Guns NRoses. It was released on the same day as its counterpart Use Your Illusion II.', 1991),
('The Birth of the Cool', 'Miles Davis', 29.99, 'the_birth_of_the_cool.jpg', 'Jazz', 'The Birth of the Cool is a compilation album by American jazz musician Miles Davis, released in 1957. It compiles twelve tracks recorded by Daviss nonet for the Capitol Records label between 1949 and 1950.', 1957),
('At Fillmore East', 'The Allman Brothers Band', 34.99, 'at_fillmore_east.jpg', 'Southern Rock', 'At Fillmore East is a live album by the American rock band the Allman Brothers Band. It was released in 1971 by Atco and Capricorn Records. The album was recorded on March 12 and 13, 1971, at the Fillmore East in New York City.', 1971),
('L.A. Woman', 'The Doors', 24.99, 'la_woman.jpg', 'Rock', 'L.A. Woman is the sixth studio album by American rock band the Doors, released on April 19, 1971, by Elektra Records. It was the last to feature lead singer Jim Morrison, who died three months after its release.', 1971),
('Exile on Main St.', 'The Rolling Stones', 19.99, 'exile_on_main_st.jpg', 'Rock', 'Exile on Main St. is a double album by English rock band the Rolling Stones, released on May 12, 1972. It is the bands tenth studio album and was released while they were on tour in Europe.', 1972),
('Hotter Than July', 'Stevie Wonder', 24.99, 'hotter_than_july.jpg', 'Funk', 'Hotter Than July is the fifteenth studio album by American singer-songwriter Stevie Wonder, released on Motowns Tamla label on September 29, 1980.', 1980),
('Born to Run', 'Bruce Springsteen', 24.99, 'born_to_run.jpg', 'Rock', 'Born to Run is the third studio album by American singer-songwriter Bruce Springsteen. It was released on August 25, 1975, by Columbia Records.', 1975),
('21', 'Adele', 34.99, 'adele_21.jpg', 'Pop', '21 is the second studio album by British singer-songwriter Adele. It was released on January 24, 2011, in most of Europe, and on February 22, 2011, in North America. The album was named after the age of the singer during its production. 21 is the follow-up to Adele''s critically acclaimed, commercially successful debut album 19 (2008).', 2011),
('Are You Experienced?', 'The Jimi Hendrix Experience', 29.99, 'jimi_hendrix_experienced.jpg', 'Rock', 'Are You Experienced? is the debut studio album by American rock band the Jimi Hendrix Experience. It was released in 1967 by Track and Reprise Records.', 1967),
('The Miseducation of Lauryn Hill', 'Lauryn Hill', 19.99, 'lauryn_hill_miseducation.jpg', 'R&B', 'The Miseducation of Lauryn Hill is the debut studio album by American singer and rapper Lauryn Hill. It was released on August 25, 1998, by Ruffhouse and Columbia Records.', 1998),
('The Color Purple', 'Original Broadway Cast', 29.99, 'color_purple_broadway.jpg', 'Musical', 'The Color Purple is a musical with a book by Marsha Norman and music and lyrics by Brenda Russell, Allee Willis, and Stephen Bray. It is based on the Pulitzer Prize-winning 1982 novel of the same name by Alice Walker.', 2005),
('The Rise and Fall of Ziggy Stardust and the Spiders from Mars', 'David Bowie', 19.99, 'david_bowie_ziggy.jpg', 'Rock', 'The Rise and Fall of Ziggy Stardust and the Spiders from Mars is the fifth studio album by English musician David Bowie, released on June 6, 1972, in the United Kingdom. It was produced by Bowie and Ken Scott and features Bowies alter ego Ziggy Stardust.', 1972),
('Born in the U.S.A.', 'Bruce Springsteen', 29.99, 'bruce_springsteen_born.jpg', 'Rock', 'Born in the U.S.A. is the seventh studio album by American rock singer-songwriter Bruce Springsteen. It was released by Columbia Records on June 4, 1984.', 1984),
('The Dark Side of the Moon', 'Pink Floyd', 24.99, 'dark_side_of_the_moon.jpg', 'Progressive Rock', 'The Dark Side of the Moon is the eighth studio album by English rock band Pink Floyd, released on March 1, 1973, by Harvest and Capitol Records' , 1973),

('Thriller', 'Michael Jackson', 19.99, 'thriller.jpg', 'Pop', 'Thriller is the sixth studio album by American singer Michael Jackson, released on November 30, 1982, in the United States by Epic Records and internationally by CBS Records. It is the follow-up to Jacksons critically and commercially successful 1979 album Off the Wall.', 1982),
('The Bodyguard Soundt', 'Whitney Houston', 29.99, 'the_bodyguard.jpg', 'R&B', 'The Bodyguard: Original Soundtrack Album is the soundtrack from the film of the same name, released on November 17, 1992, by Arista Records. The albums first side features songs by Whitney Houston, while side two features the work of other artists. The album was produced by Whitney Houston and Clive Davis.', 1992),
('The Eagles Greatest Hits', 'The Eagles', 34.99, 'the_eagles.jpg', 'Rock', 'The Eagles Greatest Hits is the first compilation album by the Eagles, released in 1976. It contains a selection of songs from the Eagles first four albums released in the 1970s: Eagles, Desperado, On the Border, and One of These Nights.', 1976),
('Back in Black', 'AC/DC', 19.99, 'back_in_black.jpg', 'Rock', 'Back in Black is the seventh studio album by Australian rock band AC/DC. It was released on July 25, 1980 by Albert Productions and Atlantic Records. It is the bands first album to feature vocalist Brian Johnson, following the death of Bon Scott.', 1980),

('The Thrill is Gone', 'B.B. King', 19.99, 'bb_king_thrill.jpg', 'Blues', '"The Thrill Is Gone" is a blues song performed by B.B. King and written by Rick Darnell and Roy Hawkins. It was first recorded by Hawkins in 1951 and became a hit in the Blues charts in 1969 when King covered it.', 1969),
('My Life', 'Mary J. Blige', 24.99, 'mary_j_blige_my_life.jpg', 'R&B', 'My Life is the second studio album by American singer Mary J. Blige. It was released on November 29, 1994, by Uptown Records and distributed by MCA Records. The album was produced by Sean Combs and Puff Daddy.', 1994),
('Graceland', 'Paul Simon', 24.99, 'paul_simon_graceland.jpg', 'Rock', 'Graceland is the seventh solo studio album by American singer-songwriter Paul Simon, released on August 25, 1986, by Warner Bros. Records. The albums title and lyrics reference Graceland, the mansion in Memphis, Tennessee, which was home to Elvis Presley.', 1986),

('Jagged Little Pill', 'Alanis Morissette', 24.99, 'alanis_morissette_jagged.jpg', 'Alternative rock', 'Jagged Little Pill is the third studio album, and international debut, by Canadian singer-songwriter Alanis Morissette, released on June 13, 1995, through Maverick. It was her first album to be released worldwide as her first two albums were released only in Canada.', 1995),
('The Chronic', 'Dr. Dre', 19.99, 'dr_dre_chronic.jpg', 'G-funk', 'The Chronic is the debut studio album by American hip hop recording artist Dr. Dre. It was released on December 15, 1992, by his own record label Death Row Records and distributed by Interscope Records. The record was produced by Dr. Dre and Snoop Dogg.', 1992),
('Off the Wall', 'Michael Jackson', 29.99, 'michael_jackson_off_wall.jpg', 'Disco', 'Off the Wall is the fifth studio album by American singer Michael Jackson. It was released on August 10, 1979, by Epic Records. It was the first of Jacksons albums produced by Quincy Jones, whom he met while working on the 1978 film The Wiz.', 1979),
('Bad', 'Michael Jackson', 24.99, 'michael_jackson_bad.jpg', 'Pop', 'Bad is the seventh studio album by American singer Michael Jackson. It was released on August 31, 1987, by Epic Records. It was produced by Quincy Jones. Michael Jackson wrote a total of nine songs for the album.', 1987),

('Bat Out of Hell', 'Meat Loaf', 29.99, 'meat_loaf_bat_out_of_hell.jpg', 'Rock', 'Bat Out of Hell is the debut studio album by American rock singer Meat Loaf and songwriter Jim Steinman. The album was released in September 1977 on Cleveland International/Epic Records. It is one of the best-selling albums of all time, having sold more than 43 million copies worldwide.', 1977),
('Blue Skies', 'Ella Fitzgerald', 19.99, 'blue_skies.jpg', 'Jazz', 'Blue Skies is a 1946 album by the American jazz singer Ella Fitzgerald, featuring songs written by Irving Berlin. The album was reissued on CD in 1998 by Verve Records.', 1946),
('The Very Best of Blues', 'Various Artists', 24.99, 'best_of_blues.jpg', 'Blues', 'The Very Best of Blues is a compilation album featuring some of the best known blues songs by various artists. The album includes classic blues tracks such as "Cross Road Blues" by Robert Johnson, "Sweet Home Chicago" by Blues Brothers, and "Stormy Monday" by T-Bone Walker.', null),
('The Definitive Jazz Collection', 'Louis Armstrong', 29.99, 'definitive_jazz.jpg', 'Jazz', 'The Definitive Jazz Collection is a compilation album by Louis Armstrong, featuring some of his best known jazz tracks. The album includes classic songs such as "What a Wonderful World", "Mack the Knife", and "Hello, Dolly!".', null),
('Songs in the Key of Life', 'Stevie Wonder', 24.99, 'songs_in_the_key_of_life.jpg', 'Soul', 'Songs in the Key of Life is the seventeenth studio album by American singer, songwriter, and multi-instrumentalist Stevie Wonder. It was released on September 28, 1976, by Motown Records. It was the culmination of his ',1976),
('A Love Supreme', 'John Coltrane', 19.99, 'a_love_supreme.jpg', 'Jazz', 'A Love Supreme is a studio album by American jazz saxophonist John Coltrane. It was released by Impulse! Records in January 1965 and recorded in December 1964. The album is divided into four parts: "Acknowledgement", "Resolution", "Pursuance", and "Psalm".', 1965),
('Kind of Blue', 'Miles Davis', 29.99, 'kind_of_blue.jpg', 'Jazz', 'Kind of Blue is a studio album by American jazz trumpeter Miles Davis, released on August 17, 1959, by Columbia Records. It has been described as one of the best-selling jazz records of all time, and the best-selling jazz album of the 1950s. The album features Daviss ensemble sextet consisting of pianist Bill Evans, drummer Jimmy Cobb, bassist Paul Chambers, and saxophonists John Coltrane and Julian "Cannonball" Adderley.', 1959),
('The Greatest Hits', 'Elvis Presley', 24.99, 'elvis_presley.jpg', 'Rock', 'The Greatest Hits is a compilation album by American singer Elvis Presley, released by RCA Records in 2005. The album features a selection of Presleys most popular songs from the 1950s to the 1970s, including "Hound Dog", "Jailhouse Rock", "Love Me Tender", "Heartbreak Hotel", "All Shook Up", and "Suspicious Minds".', null),
('The Complete Recordings', 'Robert Johnson', 34.99, 'robert_johnson.jpg', 'Blues', 'The Complete Recordings is a compilation album by American blues musician Robert Johnson, released in 1990 on Columbia Records. The album features all of Johnsons recordings, including alternate takes and previously unreleased tracks. Johnson is credited as a major influence on the development of the blues and rock and roll music genres.', null),


('Sticky Fingers', 'The Rolling Stones', 19.99, 'sticky_fingers.jpg', 'Rock', 'Sticky Fingers is the ninth British and 11th American studio album by the English rock band The Rolling Stones, released in April 1971. It is the bands first album of the 1970s and its first release on the bands newly formed label, Rolling Stones Records, after having been contracted since 1963 with Decca Records in the UK and London Records in the US. It is also the bands first album to feature Ronnie Wood as a full-time member. The albums cover art is among the most famous of all time, featuring a close-up shot of a man''s zipper fly, with the title cleverly incorporating the zipper''s metal tag.', 1971),
('The Jackson 5 Greatest Hits', 'The Jackson 5', 24.99, 'jackson_5.jpg', 'Pop', 'The Jackson 5 Greatest Hits is a compilation album by the American family group The Jackson 5, released in 1971 by Motown Records. It features the Jackson 5''s biggest hits from their first four studio albums released between 1969 and 1971, including "I Want You Back", "ABC", "The Love You Save", and "I''ll Be There". The album was released after the Jackson 5 left Motown for CBS Records and became known as the Jacksons.', 1971),

('Saturday Night Fever Soundtrack', 'Various Artists', 24.99, 'saturday_night_fever.jpg', 'Disco', 'Saturday Night Fever is the soundtrack album from the 1977 film Saturday Night Fever starring John Travolta. It was released on November 15, 1977, by the Bee Gees''s manager Robert Stigwood''s record label RSO Records, and remains one of the best-selling soundtracks of all time with over 50 million copies sold worldwide. The album was certified 15× Platinum for shipments of over 15 million copies in the United States.', 1977),
('Led Zeppelin IV', 'Led Zeppelin', 19.99, 'led_zeppelin_iv.jpg', 'Rock', 'Led Zeppelin IV is the fourth studio album by the English rock band Led Zeppelin, released on 8 November 1971 by Atlantic Records. The album is variously referred to as Four Symbols, The Fourth Album, and Untitled, due to having no title printed on its cover. Led Zeppelin IV is a rock album with a blend of blues and folk influences, featuring elements of mysticism and folklore. The songs "Black Dog", "Rock and Roll", "Stairway to Heaven", and "The Battle of Evermore" have become Led Zeppelin staples and are among the bands most famous songs' ,1971),

('Physical Graffiti', 'Led Zeppelin', 29.99, 'physical_graffiti.jpg', 'Rock', 'Physical Graffiti is the sixth studio album by English rock band Led Zeppelin, released on 24 February 1975 as a double album by Swan Song Records. It was recorded during sessions at Headley Grange, Olympic Studios, and Electric Lady Studios in New York City, New York and Chicago, Illinois, in 1974.', 1975),
('The River', 'Bruce Springsteen', 19.99, 'the_river.jpg', 'Rock', 'The River is the fifth studio album by Bruce Springsteen. It was released on October 17, 1980, by Columbia Records. The album was Springsteen''s first to go #1 on the Billboard 200 chart.', 1980),

('Appetite for Destruction', 'Guns N'' Roses', 24.99, 'appetite_for_destruction.jpg', 'Hard Rock', 'Appetite for Destruction is the debut studio album by American hard rock band Guns N'' Roses. It was released on July 21, 1987, by Geffen Records.', 1987),
('Black Sabbath', 'Black Sabbath', 19.99, 'black_sabbath.jpg', 'Heavy Metal', 'Black Sabbath is the eponymous debut studio album by the English rock band Black Sabbath. Released on 13 February 1970 in the United Kingdom and on 1 June 1970 in the United States, the album reached number eight on the UK Albums Charts and number 23 on the Billboard charts.', 1970),
('Electric Ladyland', 'The Jimi Hendrix Experience', 24.99, 'electric_ladyland.jpg', 'Psychedelic Rock', 'Electric Ladyland is the third and final studio album by the English-American rock band the Jimi Hendrix Experience. Released by Reprise Records in October 1968, it was the only Hendrix album produced and released by the band''s original line-up. It peaked at number six in the UK and number one in the US, where it was certified four times platinum.', 1968),

('Master of Puppets', 'Metallica', 'Metal', 'Master of Puppets is the third studio album by American heavy metal band Metallica, released on March 3, 1986, by Elektra Records. The album was recorded at the Sweet Silence Studios with producer Flemming Rasmussen', 1986, 29.99, 'master_of_puppets.jpg'),
('Parallel Lines', 'Blondie', 'New wave', 'Parallel Lines is the third studio album by American rock band Blondie. It was released on September 23, 1978, by Chrysalis Records. The album was a commercial success and was certified Platinum in the United States, selling 10 million copies worldwide.', 1978, 24.99, 'parallel_lines.jpg'),
('Kenza', 'Cheb Khaled', 'Raï', 'Kenza is the debut studio album by Algerian raï singer Cheb Khaled, released in 1992. It includes the hit single "Didi", which was popular in the Middle East and in European clubs in 1992 and 1993.', 1992, 29.99, 'cheb_khaled_kenza.jpg'),
('Dellali', 'Cheb Mami', 'Raï', 'Dellali is the fifth studio album by Algerian raï singer Cheb Mami, released on April 26, 2011. It features the hit single "Dellali", which became popular in the Middle East and in European clubs in 2011 and 2012.', 2011, 29.99, 'cheb_mami_dellali.jpg'),

('A Night at the Opera', 'Queen', 24.99, 'a_night_at_the_opera.jpg', 'Rock', 'A Night at the Opera is the fourth studio album by the British rock band Queen, released in November 1975. The album was recorded at several locations in London and produced by Roy Thomas Baker and Queen.', 1975),
('The Healer', 'John Lee Hooker', 34.99, 'john_lee_hooker_healer.jpg', 'Blues', 'The Healer is an album by blues musician John Lee Hooker, released in 1989. It features collaborations with artists such as Carlos Santana, Bonnie Raitt, and Robert Cray.', 1989),
('Born Under a Bad Sign', 'Albert King', 29.99, 'albert_king.jpg', 'Blues', 'Born Under a Bad Sign is a 1967 album by blues musician Albert King. The album features Kings hit title track, as well as other notable tracks such as "Personal Manager" and "Laundromat Blues".', 1967),
('Howlin Wolf', 'hubert_sumlin', 19.99, 'hubert_sumlin.jpg', 'Blues', 'This album features blues musician Hubert Sumlin performing with Howlin Wolf. It includes tracks such as "How Many More Years" and "Smoke Stack Lightning".', 1971),
('Electric Mud', 'Muddy Waters', 19.99, 'muddy_waters.jpg', 'Blues', 'Electric Mud is a studio album by Muddy Waters, released in 1968. It features a mix of blues and rock music, and was produced by Marshall Chess, son of Chess Records founder Leonard Chess. The album was a commercial and critical success, and is considered a pioneering record in the fusion of blues and rock music.', 1968),
('Live at the Regal', 'B.B. King', 24.99, 'bb_king_regal.jpg', 'Blues', 'Live at the Regal is a live album by B.B. King, recorded at the Regal Theater in Chicago in 1964. It is considered one of the greatest blues albums of all time, and features some of Kings most iconic performances, including "Sweet Little Angel" and "How Blue Can You Get?". The album was a commercial and critical success, and helped to establish King as one of the leading blues musicians of his time.', 1964),
('Damn Right, Ive Got the Blues', 'Buddy Guy', 29.99, 'buddy_guy.jpg', 'Blues', 'Damn Right, Ive Got the Blues is a studio album by Buddy Guy, released in 1991. It features a mix of blues and rock music, and was produced by John Porter. The album was a commercial and critical success, and won a Grammy Award for Best Traditional Blues Album. It includes some of Guys most well-known songs, including "Mustang Sally" and "Damn Right, Ive Got the Blues".', 1991),

('The Velvet Underground & Nico', 'The Velvet Underground', 24.99, 'velvet_underground_nico.jpg', 'Rock', 'The Velvet Underground & Nico is the debut album by American rock band The Velvet Underground, released in March 1967 by Verve Records. It was recorded in 1966 while the band were featured on Andy Warhol''s Exploding Plastic Inevitable tour, which gained attention for its experimental performance sensibilities and controversial lyrical topics, including drug abuse, prostitution, sadomasochism and homoeroticism.', 1967),
('Superfly', 'Curtis Mayfield', 19.99, 'curtis_mayfield_superfly.jpg', 'Soul', 'Superfly is a 1972 soundtrack album by American soul musician Curtis Mayfield for the Blaxploitation film of the same name. The album features Mayfield''s socially conscious lyrics, which were specific to the film''s protagonist, Youngblood Priest, a Harlem drug dealer who is trying to retire from the business.', 1972),
('Desert Rose', 'Sting', 29.99, 'sting_desert_rose.jpg', 'Rock', 'Desert Rose is a song by British musician Sting, from his album Brand New Day. It was released as a single in 1999 and became a hit, reaching the top 40 in multiple countries. The song features guest vocals from Algerian raï singer Cheb Mami.', 1999),
('Couldnt Stand the Weather', 'Stevie Ray Vaughan', 24.99, 'stevie_ray_vaughan_couldnt_stand.jpg', 'Blues', 'Couldn''t Stand the Weather is the second studio album by American blues rock band Stevie Ray Vaughan and Double Trouble, released in May 1984 by Epic Records. The album features several blues standards and the title track, which was co-written by Vaughan''s older brother, Jimmie.', 1984),

('The Joshua Tree', 'U2', 29.99, 'u2_joshua_tree.jpg', 'Rock', 'The Joshua Tree is the fifth studio album by Irish rock band U2. It was produced by Daniel Lanois and Brian Eno, and was released on 9 March 1987 by Island Records. The album features spiritual and political themes, inspired by American tour experiences, and reflects the band''s love of American music.', 1987),
('From the Cradle', 'Eric Clapton', 24.99, 'eric_clapton_from_the_cradle.jpg', 'Blues', 'From the Cradle is the twelfth solo studio album by Eric Clapton, released in 1994 by Duck Records/Warner Bros. Records. The album features classic blues tracks, and was recorded live in the studio with minimal overdubs.', 1994),
('The Freewheelin'' Bob Dylan', 'Bob Dylan', 19.99, 'bob_dylan_freewheelin.jpg', 'Folk', 'The Freewheelin'' Bob Dylan is the second studio album by American singer-songwriter Bob Dylan, released on May 27, 1963, by Columbia Records. The album features playfully personal lyrics and marked Dylan''s departure from his earlier songwriting approach of writing simple, spare folk songs.', 1963),

('The Sun Sessions', 'Elvis Presley', 29.99, 'elvis_presley_sun_sessions.jpg', 'Rock and Roll', 'A compilation album by Elvis Presley, released in 1976', 1976),
('Exodus', 'Bob Marley', 19.99, 'exodus.jpg', 'Reggae', 'The ninth studio album by Bob Marley and the Wailers, released in 1977', 1977),
('Legend', 'Bob Marley', 24.99, 'legend.jpg', 'Reggae', 'A compilation album by Bob Marley and the Wailers, released in 1984', 1984),

('Catch a Fire', 'Bob Marley', 29.99, 'catch_a_fire.jpg', 'reggae', 'Catch a Fire is the fifth studio album by Bob Marley and the Wailers. It was released in 1973 and includes hits like "Stir It Up" and "Concrete Jungle".', 1973),
('Aladdin Sane', 'David Bowie', 19.99, 'aladdin_sane.jpg', 'rock', 'Aladdin Sane is the sixth studio album by David Bowie. It was released in 1973 and features the hit single "The Jean Genie".', 1973),
('Machine Head', 'Deep Purple', 24.99, 'machine_head.jpg', 'rock', 'Machine Head is the sixth studio album by Deep Purple. It was released in 1972 and includes the classic rock anthem "Smoke on the Water".', 1972),
('In Rock', 'Deep Purple', 19.99, 'in_rock.jpg', 'rock', 'In Rock is the fourth studio album by Deep Purple. It was released in 1970 and includes the song "Child in Time".', 1970),

('Made in Japan', 'Deep Purple', 29.99, 'made_in_japan.jpg', 'Rock', 'Made in Japan is a live album by the English rock band Deep Purple, recorded during their first tour of Japan in August 1972. It was originally released in December 1972 and is the sixth studio album by the band.', 1972),
('Help!', 'The Beatles', 24.99, 'help.jpg', 'Rock', 'Help! is the fifth studio album by the English rock band the Beatles and the soundtrack from their film of the same name. It was released on 6 August 1965. Produced by George Martin, it was the fifth UK album release by the band.', 1965),
('A Hard Days Night', 'The Beatles', 19.99, 'a_hard_days_night.jpg', 'Rock', 'A Hard Day''s Night is the third studio album by the English rock band the Beatles, released on 10 July 1964, with side one containing songs from the soundtrack to their film of the same name. The American version of the album was released two weeks earlier, on 26 June 1964 by United Artists Records, with a different track listing.', 1964),
('Sgt. Peppers Lonely Hearts Club Band', 'The Beatles', 29.99, 'sgt_peppers.jpg', 'Rock', 'Sgt. Pepper''s Lonely Hearts Club Band is the eighth studio album by the English rock band the Beatles. Released on 26 May 1967, it spent 27 weeks at number one on the Record Retailer chart in the United Kingdom and 15 weeks at number one on the Billboard Top LPs chart in the United States.', 1967),
('Purple Rain', 'Prince', 29.99, 'purple_rain.jpg', 'Pop', 'Purple Rain is the sixth studio album by American recording artist Prince, the first to feature his band the Revolution, and is the soundtrack to the 1984 film of the same name. It was released on June 25, 1984 by Warner Bros. Records.', 1984),

('The Police Greatest Hits', 'The Police', 29.99, 'the_police_greatest_hits.jpg', 'Rock', 'The Police Greatest Hits is a compilation album by the English rock band The Police, released in 1992. It features most of the band''s biggest hit singles, including "Every Breath You Take", "Roxanne", "Message in a Bottle", "Walking on the Moon", and "Don''t Stand So Close to Me".', 1992),
('Dirty Dancing Soundtrack', 'Various Artists', 19.99, 'dirty_dancing_soundtrack.jpg', 'Pop', 'Dirty Dancing is the original soundtrack of the 1987 film Dirty Dancing. The album became a huge commercial success. It went on to sell 32 million copies worldwide and is one of the best-selling albums of all time. The album spent 18 weeks at number one on the Billboard 200 chart and went multi-platinum.', 1987),
('Slippery When Wet', 'Bon Jovi', 29.99, 'slippery_when_wet.jpg', 'Rock', 'Slippery When Wet is the third studio album by American rock band Bon Jovi, released on August 18, 1986, by Mercury Records. The album features hit singles "You Give Love a Bad Name", "Livin'' on a Prayer", and "Wanted Dead or Alive". It was produced by Bruce Fairbairn and recorded at Little Mountain Sound Studios in Vancouver, British Columbia.', 1986),
('Hysteria', 'Def Leppard', 24.99, 'hysteria.jpg', 'Rock', 'Hysteria is the fourth studio album by English rock band Def Leppard, released on 3 August 1987 through Mercury Records and reissued on 1 January 2000. It is Def Leppard''s best-selling album to date, selling over 25 million copies worldwide, including 12 million in the US, and spawning seven hit singles.', 1987),
('The Black Parade', 'My Chemical Romance', 29.99, 'my_chemical_romance.jpg', 'Rock', 'The Black Parade is the third studio album by American rock band My Chemical Romance. Released on October 23, 2006, through Reprise Records, it was produced by Rob Cavallo, known for having produced multiple albums for Goo Goo Dolls and Green Day. It is a rock opera centering on a dying character with cancer known as "The Patient".', 2006),
('American Idiot', 'Green Day', 24.99, 'american_idiot.jpg', 'Rock', 'American Idiot is the seventh studio album by American rock band Green Day. Released on September 21, 2004, by Reprise Records, it was the first album to be recorded following the band''s suspension from touring. The album was produced by Rob Cavallo and recorded in Oakland, California.', 2004),

('Use Your Illusion II', 'Guns N'' Roses', 29.99, 'illusion_2.jpg', 'Rock', 'Use Your Illusion II is the fourth studio album by American rock band Guns N'' Roses. It was one of two albums released in conjunction with the Use Your Illusion Tour, the other being Use Your Illusion I. It was released on September 17, 1991, the same day as its counterpart album. Both albums were released in conjunction with the Use Your Illusion Tour.', 1991),
('Appeal to Reason', 'Rise Against', 24.99, 'appeal_to_reason.jpg', 'Punk', 'Appeal to Reason is the fifth studio album by American rock band Rise Against. It was released on October 6, 2008, through DGC/Interscope. It was produced by Bill Stevenson, Jason Livermore and the band, and was recorded at The Blasting Room in Fort Collins, Colorado.', 2008),
('The Sufferer & the Witness', 'Rise Against', 19.99, 'sufferer_witness.jpg', 'Punk', 'The Sufferer & the Witness is the third studio album by American rock band Rise Against. It was released on July 4, 2006, through Geffen Records. It is the band''s first album to feature Joe Principe on bass, replacing former member Todd Mohney. The album was produced by Bill Stevenson and Jason Livermore, and recorded at the Blasting Room in Fort Collins, Colorado.', 2006),
('So Far, So Good... So What!', 'Megadeth', 29.99, 'so_far_so_good.jpg', 'Metal', 'So Far, So Good... So What! is the third studio album by American heavy metal band Megadeth, released on January 19, 1988, by Capitol Records. It was the band''s only album recorded with Chuck Behler and Jeff Young, who were fired before the album''s subsequent tour. The album was certified platinum in the United States and Canada.', 1988),

('Ride the Lightning', 'Metallica', 29.99, 'ride_the_lightning.jpg', 'Metal', 'Ride the Lightning is the second studio album by American heavy metal band Metallica, released on July 27, 1984, by the independent record label Megaforce Records. The album was recorded in three weeks with producer Flemming Rasmussen at the Sweet Silence Studios in Copenhagen, Denmark.', 1984),
('The Eminem Show', 'Eminem', 24.99, 'eminem_show.jpg', 'Rap', 'The Eminem Show is the fourth studio album by American rapper Eminem, released on May 28, 2002, by Aftermath Entertainment, Shady Records, and Interscope Records. The Eminem Show was the best-selling album of 2002, and was certified Diamond by the Recording Industry Association of America (RIAA) for shipping 10 million copies in the United States.', 2002),
('Come Away With Me', 'Norah Jones', 19.99, 'come_away.jpg', 'Jazz', 'Come Away With Me is the debut studio album by American singer-songwriter Norah Jones. It was released on February 26, 2002, by Blue Note Records. The album is a blend of country, jazz, and pop with lyrics that revolve around themes of love and heartbreak.', 2002),




('461 Ocean Boulevard', 'Eric Clapton', 19.99, 'clapton_461_ocean.jpg', 'Rock', '461 Ocean Boulevard is the second solo studio album by Eric Clapton, released in 1974.', 1974),
('Theres One in Every Crowd', 'Eric Clapton', 29.99, 'clapton_theres_one.jpg', 'Rock', "There's One in Every Crowd is the third solo studio album by Eric Clapton, released in 1975.", 1975),
('No Reason to Cry', 'Eric Clapton', 34.99, 'clapton_no_reason.jpg', 'Rock', 'No Reason to Cry is a studio album by Eric Clapton, released in 1976.', 1976),
('Slowhand', 'Eric Clapton', 19.99, 'clapton_slowhand.jpg', 'Rock', 'Slowhand is a 1977 album by Eric Clapton, named after his nickname of Slowhand.', 1977),
('Another Ticket', 'Eric Clapton', 24.99, 'clapton_another_ticket.jpg', 'Rock', 'Another Ticket is a 1981 album by Eric Clapton.', 1981),
('Money and Cigarettes', 'Eric Clapton', 29.99, 'clapton_money_cigarettes.jpg', 'Rock', 'Money and Cigarettes is a 1983 album by Eric Clapton.', 1983),

('Behind the Sun', 'Eric Clapton', 24.99, 'clapton_behind_the_sun.jpg', 'Rock', 'Behind the Sun is a 1985 album by Eric Clapton.', 1985),
('Journeyman', 'Eric Clapton', 29.99, 'clapton_journeyman.jpg', 'Rock', 'Journeyman is a 1989 album by Eric Clapton.', 1989),
('Reptile', 'Eric Clapton', 24.99, 'clapton_reptile.jpg', 'Rock', 'Reptile is a 2001 album by Eric Clapton.', 2001),
('Me and Mr. Johnson', 'Eric Clapton', 29.99, 'clapton_me_mr_johnson.jpg', 'Blues', 'Me and Mr. Johnson is a 2004 album by Eric Clapton that consists of covers of songs written and recorded by blues musician Robert Johnson.', 2004),
('Back Home', 'Eric Clapton', 24.99, 'clapton_back_home.jpg', 'Rock', 'Back Home is a 2005 album by Eric Clapton.', 2005),
('The Chronic 2', 'Dr. Dre', 19.99, 'dr_dre_chronic_2.jpg', 'Hip Hop', 'The Chronic 2 is a 1999 album by Dr. Dre.', 1999),
('All Eyez on Me', 'Tupac', 24.99, 'tupac_alleyezonme.jpg', 'Hip Hop', 'All Eyez on Me is a 1996 album by Tupac Shakur.', 1996),
('The Doors', 'The Doors', 19.99, 'the_doors.jpg', 'Rock', 'The Doors is the self-titled debut album by the American rock band The Doors, released in 1967.', 1967),

('Morrison Hotel', 'The Doors', 29.99, 'morrison_hotel.jpg', 'Rock', 'Morrison Hotel is the fifth studio album by the American rock band The Doors, released in 1970.', 1970),
('The Soft Parade', 'The Doors', 34.99, 'the_soft_parade.jpg', 'Rock', 'The Soft Parade is the fourth studio album by the American rock band The Doors, released in 1969.', 1969),
('Waiting for the Sun', 'The Doors', 19.99, 'waiting_for_the_sun.jpg', 'Rock', 'Waiting for the Sun is the third studio album by the American rock band The Doors, released in 1968.', 1968),
('Brothers in Arms', 'Dire Straits', 19.99, 'dire_straits_brothers_in_arms.jpg', 'Rock', 'Brothers in Arms is the fifth studio album by the British rock band Dire Straits, released in 1985.', 1985),
('On Every Street', 'Dire Straits', 24.99, 'dire_straits_on_every_street.jpg', 'Rock', 'On Every Street is the sixth and final studio album by the British rock band Dire Straits, released in 1991.', 1991),
('Making Movies', 'Dire Straits', 19.99, 'dire_straits_making_movies.jpg', 'Rock', 'Making Movies is the third studio album by the British rock band Dire Straits, released in 1980.', 1980),
('Love Over Gold', 'Dire Straits', 24.99, 'dire_straits_love_over_gold.jpg', 'Rock', 'Love Over Gold is the fourth studio album by the British rock band Dire Straits, released in 1982.', 1982),
('The White Album', 'The Beatles', 24.99, 'beatles_white_album.jpg', 'Rock', 'The White Album, also known as The Beatles, is the ninth studio album by the English rock band The Beatles, released in 1968.', 1968),
('Revolver', 'The Beatles', 19.99, 'beatles_revolver.jpg', 'Rock', 'Revolver is the seventh studio album by the English rock band The Beatles, released in 1966.', 1966),
('Rubber Soul', 'The Beatles', 24.99, 'beatles_rubber_soul.jpg', 'Rock', 'Rubber Soul is the sixth studio album by the English rock band The Beatles, released in 1965.', 1965),
('Let it Bleed', 'The Rolling Stones', 24.99, 'rolling_stones_let_it_bleed.jpg', 'Rock', 'Let it Bleed is the eighth British and tenth American studio album by the English rock band The Rolling Stones, released in 1969.', 1969),
('Beggars Banquet', 'The Rolling Stones', 19.99, 'rolling_stones_beggars_banquet.jpg', 'Rock', 'Beggars Banquet is the seventh British and ninth American studio album by the English rock band The Rolling Stones, released in 1968.', 1968),
('Ten', 'Pearl Jam', 19.99, 'pearl_jam_ten.jpg', 'Rock', 'Ten is the debut studio album by the American rock band Pearl Jam, released in 1991.', 1991),
('Vs.', 'Pearl Jam', 24.99, 'pearl_jam_vs.jpg', 'Rock', 'Vs. is the second studio album by the American rock band Pearl Jam, released in 1993.', 1993),
('Discovery', 'Daft Punk', 24.99, 'daft_punk_discovery.jpg', 'Electronica', 'Discovery is the second studio album by the French electronic music duo Daft Punk, released in 2001.', 2001),
('Get a Grip', 'Aerosmith', 29.99, 'Get_a_Grip.jpg', 'Rock', 'Get a Grip is the eleventh studio album by American rock band Aerosmith, released in 1993.', 1993),
('Blues Breakers with Eric Clapton', 'John Mayall', 29.99, 'mayall_clapton_blues_breakers.jpg', 'Blues', 'Blues Breakers with Eric Clapton is a 1966 album by John Mayall & the Bluesbreakers, featuring Eric Clapton as lead guitarist.', 1966),
('OK Computer', 'Radiohead', 24.99, 'radiohead_ok_computer.jpg', 'Alternative Rock', 'OK Computer is the third studio album by the English rock band Radiohead, released in 1997.', 1997),
('In Rainbows', 'Radiohead', 29.99, 'radiohead_in_rainbows.jpg', 'Alternative Rock', 'In Rainbows is the seventh studio album by the English rock band Radiohead, released in 2007.', 2007);

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
INSERT INTO `users` VALUES (2,'frank','frank@mail.com','123456');
INSERT INTO `users` VALUES (3,'test','test@mail.com','123456');
INSERT INTO `users` VALUES (4,'sean','sean@mail.com','123456');
INSERT INTO `users` VALUES (5,'ismail','ismail@admin.ca','123456');
INSERT INTO `users` VALUES (6,'frank','frank@admin.ca','123456');
INSERT INTO `users` VALUES (7,'test','test@admin.ca','123456');
INSERT INTO `users` VALUES (8,'sean','sean@admin.ca','123456');
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
SELECT * FROM USERS;




UPDATE PRODUCTS
SET YEAR = 1950
WHERE year IS NULL;


 
