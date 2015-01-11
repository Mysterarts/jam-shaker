-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Client :  mysql51-93.perso
-- Généré le :  Dim 11 Janvier 2015 à 23:26
-- Version du serveur :  5.1.73-2+squeeze+build1+1-log
-- Version de PHP :  5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jamshakemod1`
--

-- --------------------------------------------------------

--
-- Structure de la table `js_events`
--

CREATE TABLE IF NOT EXISTS `js_events` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `url` varchar(40) COLLATE utf8_bin NOT NULL,
  `date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `descr` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- Contenu de la table `js_events`
--

INSERT INTO `js_events` (`id`, `url`, `date_start`, `date_end`, `name`, `descr`) VALUES
(1, 'gcj_2014', '2014-05-02 00:38:39', '2014-05-03 22:00:00', 'La Grande Confiture de Jeux 2014', 'La GCJ 2014 : un grand évènement à l’échelle de la France ! Superatis Tauri montis verticibus qui ad solis ortum sublimius attolluntur, Cilicia spatiis porrigitur late distentis dives bonis omnibus terra, eiusque lateri dextro adnexa Isauria, pari sorte uberi palmite viget et frugibus minutis, quam mediam navigabile flumen Calycadnus interscindit.'),
(2, 'mozilla_2014', '2014-03-21 12:53:39', '2014-03-22 23:00:00', 'Mozilla Jam 2014', 'Venez jamer dans les locaux de Mozilla France !'),
(3, 'cite_2013', '2013-12-13 22:50:37', '2013-12-14 23:00:00', 'Cité des Sciences Jam 2013', ''),
(4, 'ggj_2014', '2014-01-23 23:01:21', '2014-01-25 23:00:00', 'Global Gam Jam 2014', ''),
(5, '42jam_2014', '2014-06-20 21:57:26', '2014-06-21 22:00:00', '42 Jam 2014', '*roulement de tambours* Attention attention, la prochaine jam est imminente ! Et cette fois-ci, c''est la mystérieuse (*le* mystérieux ? C''est trop mystérieux) 42 qui nous accueille ! (merci à Matthieu Maudet de leur club Jeux Vidéo, qui nous a arrangé le coup)\r\n\r\nLes inscriptions >>> http://jamshaker.com/paris/\r\n\r\nC''est dans 3 semaines (le vendredi 20 juin) et ça va être dans des conditions bien détendues, parce que bon, c''est l''été quand même.\r\n\r\nAmenez vos lunettes de non-soleil !'),
(6, 'cite_2014', '2014-12-12 18:00:00', '2014-12-13 23:00:00', 'Cité des Sciences Jam 2014', ''),
(7, 'red_wire_2014', '2014-07-24 23:01:15', '2014-07-26 22:00:00', 'RedWire Jam', ''),
(8, 'plein_air_2014', '2014-08-30 23:02:24', '2014-08-30 22:00:00', 'Jeux de plein air', ''),
(9, 'desert_bus_2014', '2014-11-21 00:03:19', '2014-11-22 23:00:00', 'Desert Bus Jam', ''),
(10, 'shaker_1', '2013-08-23 22:00:00', '2013-08-24 22:00:00', '"10 seconds" Ludum Dare', ''),
(11, 'shaker_2', '2013-09-27 22:00:00', '2013-09-28 22:00:00', '"Random" Jam', ''),
(12, 'skaker_3', '2013-11-22 23:00:00', '2013-11-23 23:00:00', '"Space Opera" Jam', ''),
(13, 'spark', '2014-12-02 23:00:00', '2014-12-03 23:00:00', 'Jam Spark', ''),
(14, 'ggj_2015', '2015-01-22 23:01:21', '2015-01-24 23:00:00', 'Global Gam Jam 2015', '');

-- --------------------------------------------------------

--
-- Structure de la table `js_games`
--

CREATE TABLE IF NOT EXISTS `js_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_event` mediumint(9) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  `descr` text COLLATE utf8_bin NOT NULL,
  `participants` text COLLATE utf8_bin NOT NULL,
  `home` smallint(6) NOT NULL,
  `url` varchar(200) COLLATE utf8_bin NOT NULL,
  `img_min` varchar(50) COLLATE utf8_bin NOT NULL,
  `img_max` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- Contenu de la table `js_games`
--

INSERT INTO `js_games` (`id`, `id_event`, `name`, `descr`, `participants`, `home`, `url`, `img_min`, `img_max`) VALUES
(1, 1, 'Death Dodgers', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.', 'Bibi<br>\r\nBubu<br>\r\nBaba', 0, 'http://www.venez_jouer.com', 'small/1.jpg', 'big/img.jpg'),
(2, 1, 'Tantum Locus', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.', 'Bibi<br>\r\nBubu<br>\r\nBaba', 0, 'http://www.venez_jouer.com', 'small/2.jpg', 'big/img.jpg'),
(3, 2, 'LabRatz', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne ''inquam'' et ''inquit'' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.', 'Doudou<br>\r\nDoudoushka<br>\r\nLa Bidouille', 1, '', 'small/3.jpg', 'big/img.jpg'),
(4, 2, 'Kittens for science', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne ''inquam'' et ''inquit'' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.', 'Doudou<br>\r\nDoudoushka<br>\r\nLa Bidouille', 1, 'http://www.venez_jouer.com', 'small/4.jpg', 'big/img.jpg'),
(5, 1, 'Fastback', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne ''inquam'' et ''inquit'' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.', 'Arthur Prudent<br>\r\nTiffouille', 1, 'http://www.venez_jouer.com', 'small/2.jpg', 'big/img.jpg'),
(6, 1, 'Pixel Surgeon', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.', 'Moi<br>\r\nToi<br>\r\nLui<br>\r\nMais pas elle', 0, 'http://www.venez_jouer.com', 'small/1.jpg', 'big/img.jpg'),
(7, 1, 'Hexagrow', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne ''inquam'' et ''inquit'' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.', 'Arthur Prudent<br>\r\nTiffouille', 0, 'http://www.venez_jouer.com', 'small/2.jpg', 'big/img.jpg'),
(8, 1, 'Homebound', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.', 'Moi<br>\r\nToi<br>\r\nLui<br>\r\nMais pas elle', 0, 'http://www.venez_jouer.com', 'small/1.jpg', 'big/img.jpg'),
(9, 2, 'EugenCorp', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne ''inquam'' et ''inquit'' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.', 'Hollande<br>\r\nSarco<br>\r\nChirac<br>', 1, 'http://www.venez_jouer.com', 'small/3.jpg', 'big/img.jpg'),
(10, 2, 'God is Against You', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.', 'Joyeux<br>\r\nGrincheux<br>\r\nAtchoum<br>\r\nTimide<br>\r\nSimplet<br>\r\nDormeur<br>\r\nProf', 0, 'http://www.venez_jouer.com', 'small/4.jpg', 'big/img.jpg'),
(11, 2, 'In the Stream', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.', 'Hollande<br>\r\nSarco<br>\r\nChirac<br>', 0, 'http://www.venez_jouer.com', 'small/3.jpg', 'big/img.jpg'),
(12, 2, 'Shmurp', 'Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne ''inquam'' et ''inquit'' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.', 'Joyeux<br>\r\nGrincheux<br>\r\nAtchoum<br>\r\nTimide<br>\r\nSimplet<br>\r\nDormeur<br>\r\nProf', 0, 'http://www.venez_jouer.com', 'small/4.jpg', 'big/img.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `js_home`
--

CREATE TABLE IF NOT EXISTS `js_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `js_home`
--

INSERT INTO `js_home` (`id`, `text`) VALUES
(1, 'L''association Jam Shaker organise des game jams en région parisienne tout au long de l''année.<br/>\r\nAlors venez créer des jeux avec nous ! (et nous dire bonjour sur le groupe <a href="https://www.facebook.com/groups/jamshaker/">Facebook</a>)');

-- --------------------------------------------------------

--
-- Structure de la table `js_participants`
--

CREATE TABLE IF NOT EXISTS `js_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_places` mediumint(9) NOT NULL,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `mail` varchar(80) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `xp` varchar(120) COLLATE utf8_bin NOT NULL,
  `r_gd` smallint(6) NOT NULL,
  `r_prog` smallint(6) NOT NULL,
  `r_graph` smallint(6) NOT NULL,
  `r_sound` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=73 ;

--
-- Contenu de la table `js_participants`
--

INSERT INTO `js_participants` (`id`, `id_places`, `name`, `mail`, `phone`, `xp`, `r_gd`, `r_prog`, `r_graph`, `r_sound`) VALUES
(1, 11, 'Aloïs Bourguenolle', 'a.bourguenolle@gmail.com', '06 59 36 57 06', '5', 1, 0, 0, 0),
(2, 11, 'Valentin Michalak', 'valentinmichalak@gmail.com', '0663936294', '0+4', 0, 1, 0, 0),
(3, 11, 'Paul Fasola', 'paul.fasola@gmail.com', '0665380190', '5 (Hackathon Intel/Microsoft/SG ... + Game Jam Jamshaker à 42!)', 0, 1, 0, 0),
(4, 11, 'Mathéa Fieschi', 'matheaa.fieschi@outlook.com', '0663289781', 'Etudes Game Design ', 0, 0, 1, 0),
(5, 11, 'Anne-Sophie Bach', 'anne-sophie.bach@outlook.com', '(065) 181-4757', 'apprenti Développeuse chez Saint Gobain', 0, 1, 0, 0),
(6, 11, 'Benjamin Sarda ', 'benjamin.sarda@free.fr', '0635387417', 'Apprenti réseau et télécom chez LVMH', 0, 0, 1, 0),
(7, 11, 'Nathan Lemaire', 'nathan.lemairegd@gmail.com', '06 85 95 08 76', '3ème ISART Digital (Game Design) - Plus d''un an de stage en Game/Level Design + Projets d''études - 4 Jams réalisées', 1, 0, 0, 0),
(8, 11, 'Matthieu Vienot', 'ilambda@hotmail.fr', '0688212085', 'Plusieurs jam shakers, 5 ans de jeu vidéo', 1, 1, 0, 0),
(9, 11, 'tahir', 'vicotahir@hotmail.fr', '0669797054', '2 ans, au moins 11 jams', 1, 0, 1, 0),
(10, 11, 'Julien Noble', 'penguzine@gmail.com', '0633300618', 'maitrise de Unity3D, gameplay programmer et sound designer sur le jeu W8 Ecosya + nombreuses missions pour des tiers pri', 1, 1, 0, 1),
(11, 11, 'Paul Baptiste', 'paul.baptiste3@orange.fr', '0689256071', '0', 1, 0, 0, 0),
(12, 11, 'Birgé-Cotte', 't.totota@gmail.com', '0679509250', '2 jams dont celle de gamelier le mois dernier (jeu Run Crystal Run)', 1, 1, 0, 0),
(13, 11, 'Bodin Maxime', 'm.bodin@student.isartdigital.com', '0618950226', 'Etudiant en Game Design, 2 jams', 1, 0, 1, 0),
(14, 11, 'Nicolas DUVAL', 'geekoval@gmail.com', '0665659258', 'Level Design sur jeu de logique', 1, 0, 0, 0),
(15, 11, 'Jules Briquet', 'jules.briquet@gmail.com', '0632910384', '0', 0, 1, 0, 0),
(16, 11, 'AITCHESON Alistair', 'a.g.aitcheson@gmail.com', '00447891595607', 'Full-time indie since 2010, hobbyist developer since 2001. About 20 jams participated in!', 1, 1, 1, 0),
(17, 11, 'Rafael Lopes', 'r.lopes@student.isartdigital.com', '0601591836', 'Ecole game design première année, aucune jam', 1, 0, 0, 0),
(18, 11, 'Rafael Lopes', 'r.lopes@student.isartdigital.com', '0601591836', 'Graphiste professionnel + Etudiant Game Design, stagiaire Game Designer (première jam) ancienne inscription invalide je ', 1, 0, 1, 0),
(19, 11, 'MISIAK Benjamin', 'misiak.benjamin@gmail.com', '06.36.93.07.13', 'étudiant', 1, 1, 0, 0),
(20, 11, 'Romain Soual', 'romain.soual.pro@gmail.com', '0640571616', '6', 1, 1, 0, 0),
(21, 11, 'Rémi leblanc', 'rmi.remi@hotmail.fr', '06 52 89 29 11', 'LD Cyanide + 4 jams', 1, 1, 0, 0),
(22, 11, 'Pierre-Emmanuel OILLIC', 'oillic.p@gmail.com', '06 48 29 74 87', 'Diplômé d''ISART Digital, First Jam', 1, 1, 0, 0),
(23, 11, 'benjamin winckell', 'winckell.benjamin.isart@gmail.com', '0614419519', '1 ans developper front full js + 10 game  jam en tout genre.... :3', 0, 1, 0, 0),
(24, 11, 'Marion Allard', 'marion.allard@gmx.fr', '0681820003', 'Producer associée à Ubisoft (bonne connaissance de la structure d''un jeu). GD &amp; 3D en amateure, + un peu de prog sur', 1, 0, 1, 0),
(25, 11, 'Benjamin Gattet', 'bgattet@gmail.com', '+33684141226', 'Ex etudiant master Head Geneve. 1 jam', 1, 1, 1, 0),
(26, 11, 'Thomas Salliou', 'thsalliou@gmail.com', '0627497119', 'Zéro (développeur mais pas dans le JV)', 0, 1, 0, 0),
(27, 11, 'Leon Denise', 'lowpolygonum@gmail.com', '0632398893', '2.5 ans pro + Moulti game jams', 0, 1, 1, 0),
(28, 11, 'Jeremie Thomas', 'jeremie.thomas@daydreamerstudio.fr', '0628013146', '3', 1, 1, 0, 0),
(29, 11, 'VERGEOT Gaëtan', 'ultima.vergeot@gmail.com', '0625631283', '1 an + 2 jams', 0, 1, 0, 0),
(30, 11, 'Alexandre Doyen', 'a.doyen77@gmail.com', '0666089258', 'Aucune jams a mon actif, je suis etudiant chef de projet jeu video a l''IIM de la defense', 1, 0, 0, 0),
(31, 11, 'Brian pitet ', 'pitet.brian@gmail.com', '06714366887 ', '3 ans + 8 jam', 1, 0, 0, 0),
(32, 11, 'Brian pitet ', 'pitet.brian@gmail.com', '06714366887 ', '3 ans + 8 jam', 1, 0, 0, 0),
(33, 11, 'Mourdjen Bari', 'liaroc13@gmail.com', '0642609761', 'Freelance developpeur + 12 jams', 1, 1, 0, 0),
(34, 11, 'Benjamin Ramauge', 'ramauge.benjamin@gmail.com', '0689926646', '1 jam + étudiant en game design', 1, 0, 0, 0),
(35, 11, 'Adrien Jouannet', 'adri.jouannet@gmail.com', '0619435538', '2 jams', 1, 0, 1, 0),
(36, 11, 'Antoine ROBERT', 'truiton_sakey@hotmail.fr', '0689246404', '3 ans réalisateur/illustrateur/storyboarder ; 0 jam au compteur', 0, 0, 1, 0),
(37, 11, 'Paul-Emile Boucher', 'boucher.pe@gmail.com', '0674499465', 'Toute première Jam! XP Pro : Environment &amp; FX Artist @Ubisoft depuis 2011 (Ghost Recon Future Soldier, JD4, Watch Do', 0, 0, 1, 0),
(38, 11, 'Thomas De Mot', 'thomasdemot@gmail.com', '0787825809', 'Game Designer (2 ans) + 0 jam', 1, 1, 0, 0),
(39, 11, 'Augustin BONNE', 'forkmotion@gmail.com', '0663880978', 'Première jam + Petit scarabée graph 2D jeu mobile', 0, 0, 1, 0),
(40, 11, 'Monika Bak Sienkiewicz', 'nastka_p@op.pl', '0660101246', 'membre d''équipe de Cristal''Eau (Gagnants de la Game Jam Cristallo : voyage au coeur de la matière à La Casemate / Grenob', 1, 0, 0, 0),
(41, 11, 'Himmelstein Jesse', 'jesse@heavenstone.net', '0625300793', '+2', 0, 1, 0, 0),
(42, 11, 'Augustin BONNE', 'forkmotion@gmail.com', '0663880978', 'Première jam + Petit scarabée graph 2D jeu mobile', 0, 0, 1, 0),
(43, 11, 'Aurélien JOLLY', 'xefantion.lyo@gmail.com', '0611525831', 'J''ai déjà fait 1 ou 2 Jam, et je suis étudiant en programmation', 0, 1, 0, 0),
(44, 11, 'Loïc Huck', 'contact@huckloic.fr', '0672236826', 'Graphiste web / développeur front pro depuis 2 ans, et une global gamejam', 0, 1, 1, 0),
(45, 11, 'Camille LE CORFF', 'lecorffcamille@hotmail.fr', '0683674148', 'XP : (junior) travaille actuellement dans la préproduction et développement visuel (Cinéma d''animation et pubs) et aucun', 0, 0, 1, 0),
(46, 11, 'Alexandre Abellan', 'abellan.alexandre@live.fr', '', 'étudiant 1ere année GD, aucune Game Jam à ce jour', 1, 0, 0, 0),
(47, 11, 'Thevenard', 'q.thevenard@rubika-edu.com', '0675191609', '3 années d''étude école de jeu vidéo et 5 jam', 0, 0, 1, 0),
(48, 11, 'Sylvain Terlutte', 'terlutte.sylvain@gmail.com', '0652697066', '0 Expérience pro', 1, 1, 0, 0),
(49, 11, 'Kaméron Argis', 'kameron.argis@gmail.com', '0652656947', 'Game Developpeur + 9 jams', 0, 1, 1, 0),
(50, 11, 'Anaïs Simonnet', 'simonnet.anais@gmail.com', '0781516216', '4', 1, 0, 1, 0),
(51, 11, 'Raphaël Sfeir', 'raph.sfeir@gmail.com', '0642796541', 'Environ 7 ou 8 jams', 0, 1, 0, 0),
(52, 11, 'Stéphane Laffargue', 'gigawatt@hotmail.fr', '06 20 35 34 85', '1 game jam jeu de plateau', 1, 0, 0, 0),
(53, 11, 'Hugo SOBEZYNSKI', 'h.sobezynski@student.isartdigital.com', '0624842192', 'Isart Digital GD1', 1, 0, 0, 0),
(54, 11, 'Camille Giraudeau', 'powaviolenza@gmail.com', '0685468011', '2 ans + 5 jams', 0, 0, 0, 1),
(55, 11, 'Emilie Brusseaux', 'e.bruuseaux@gmail.com', '0699453602', '3 jams', 0, 0, 1, 0),
(56, 11, 'Christopher Deschamps', 'christopher.deschamps-pro@laposte.net', '06 31 24 12 20', '3 Game Jam', 1, 0, 0, 0),
(57, 11, 'Clément Lardenois', 'clement.lardenois@gmx.fr', '0671080599', '0', 0, 0, 1, 0),
(58, 11, 'Clément Lardenois', 'clement.lardenois@gmx.fr', '0671080599', '00', 0, 0, 1, 0),
(59, 11, 'William Dyce', 'wilbefast@gmail.com', '0638891902', 'Le Cortex, 20+ jams', 1, 1, 1, 1),
(60, 11, 'William Dyce', 'wilbefast@gmail.com', '0638891902', '+3 ans pro / dizaine de game jams', 1, 1, 0, 1),
(61, 11, 'Florian Nicollet', 'fnicollet.acfa@gmail.com', '0621304981', 'Sound designer en cours de formation, expériences : bruitages et musiques sur trailers de JV et film, prise de son sur t', 0, 0, 0, 1),
(62, 11, 'Joseph Reichenbach', 'j.reichenbach@student.isartdigital.com', '0687721275', '1ere année de Game design (isart digital) + stage QA mobile (Pixtel)', 1, 0, 0, 0),
(63, 11, 'Derevyanko Georgy', 'georgy.derevyanko@gmail.com', '07 85 50 94 02', 'Programming, 1 game jam', 0, 1, 0, 0),
(64, 11, 'Quentin danos', 'quentin.danos@gmail.com', '0660658338', '0', 0, 0, 0, 1),
(65, 11, 'shannah', 'shannah.santucci@gmail.com', '0781016302', 'Langage C++', 0, 1, 0, 0),
(66, 11, 'Raphaël Joffres', 'ww777jd@hotmail.fr', '0647771762', '3', 0, 0, 0, 1),
(67, 19, 'Jean Fauquenot', 'jean.fauquenot@gmail.com', '0645897909', 'étudiant au laboratoire de jeux vidéo de son école', 0, 1, 0, 0),
(68, 19, 'Alexis Moroz', 'alexis.moroz@gmail.com', '0622770498', 'Grande expérience.', 1, 0, 0, 0),
(69, 19, 'Damien Vezant', 'damien.vezant@gmail.com', '0662285051', '7', 1, 1, 0, 0),
(70, 19, 'Sarah Schneider', 'sa.schndr@gmail.co.jp', '+1 (438) 933-0552', '1 + 1', 1, 1, 0, 0),
(71, 19, 'Rémi leblanc', 'rmi.remi@hotmail.fr', '0652892911', 'LD Cyanide + 5 jams', 1, 1, 0, 0),
(72, 19, 'Marcin Polakowski', 'marcinpolakowski@yahoo.com', '0617839400', '4 ans + 4 Jams', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `js_places`
--

CREATE TABLE IF NOT EXISTS `js_places` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `url` varchar(40) COLLATE utf8_bin NOT NULL,
  `id_event` mediumint(9) NOT NULL,
  `location` varchar(50) COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `location_lat` varchar(12) COLLATE utf8_bin NOT NULL,
  `location_lng` varchar(12) COLLATE utf8_bin NOT NULL,
  `location_zoom` varchar(3) COLLATE utf8_bin NOT NULL,
  `timetable` text COLLATE utf8_bin NOT NULL,
  `descr` text COLLATE utf8_bin NOT NULL,
  `online` smallint(6) NOT NULL,
  `nb_places` smallint(6) NOT NULL,
  `r_gd` smallint(6) NOT NULL,
  `r_prog` smallint(6) NOT NULL,
  `r_graph` smallint(6) NOT NULL,
  `r_sound` smallint(6) NOT NULL,
  `location_short` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- Contenu de la table `js_places`
--

INSERT INTO `js_places` (`id`, `url`, `id_event`, `location`, `address`, `location_lat`, `location_lng`, `location_zoom`, `timetable`, `descr`, `online`, `nb_places`, `r_gd`, `r_prog`, `r_graph`, `r_sound`, `location_short`) VALUES
(1, 'paris', 1, 'Paris - Epitech', '', '48.815794', '2.362832', '14', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'La GCJ ?... C''est la Grande Confiture de Jeux, bien sûr !<br/>\r\n<br/>\r\nUne jam nationale annuelle se déroulant dans plusieurs villes françaises (Paris, Nantes et Nancy pour le moment) et dont les jeux les plus cools seront présentés deux semaines plus tard lors du festival Geekopolis, au palais des exposition de Versailles parce que créer, c''est bien mais se la donner entre jammeurs de toute la France, c''est encore mieux.', 0, 0, 0, 0, 0, 0, 'Paris'),
(2, 'nantes', 1, 'Nantes', '', '47.216773', '-1.553241', '12', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'La GCJ ?... C''est la Grande Confiture de Jeux, bien sûr !<br/>\r\n<br/>\r\nUne jam nationale annuelle se déroulant dans plusieurs villes françaises (Paris, Nantes et Nancy pour le moment) et dont les jeux les plus cools seront présentés deux semaines plus tard lors du festival Geekopolis, au palais des exposition de Versailles parce que créer, c''est bien mais se la donner entre jammeurs de toute la France, c''est encore mieux.', 0, 0, 0, 0, 0, 0, 'Nantes'),
(3, 'paris', 2, 'Paris - Locaux Mozilla', '', '48.872340', '2.341229', '13', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'Pour cette 6ème édition, nous avons la chance d''avoir Mozilla comme partenaire, qui nous permet de profiter de leurs somptueux locaux au coeur de Paris. (Attention, on parle d''un bâtiment classé historique là, carrément)\r\n<br/><br/>\r\nUne jam qui sera totalement open source, pour respecter les valeurs de la célèbre société ! (pas obligé de faire du jeu web, ceci dit ^_^)\r\n<br/><br/>\r\nTechniquement les places sont limitées mais s''il y a une grosse demande nous mettrons en place le système parallèle d''hosting chez les Jammers, qui a régulièrement fait ses preuves l''année dernière.', 0, 0, 0, 0, 0, 0, 'Paris - Mozilla'),
(6, 'nancy', 1, 'Nancy', '', '48.693690', '6.188543', '13', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'La GCJ ?... C''est la Grande Confiture de Jeux, bien sûr !<br/>\r\n<br/>\r\nUne jam nationale annuelle se déroulant dans plusieurs villes françaises (Paris, Nantes et Nancy pour le moment) et dont les jeux les plus cools seront présentés deux semaines plus tard lors du festival Geekopolis, au palais des exposition de Versailles parce que créer, c''est bien mais se la donner entre jammeurs de toute la France, c''est encore mieux.', 0, 0, 0, 0, 0, 0, 'Nancy'),
(8, 'paris', 3, 'Paris - La Villette', '', '48.895775', '2.387900', '15', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'Un grand Jam Shaker "hors série" à la Cité des Sciences, en partenariat avec le C.R.I.<br>\r\n<br>\r\nJammez ensemble et en public, avec des technologies innovantes mises à dispo, un jury de pros et des prix à remporter ! ', 0, 0, 0, 0, 0, 0, 'Paris - La Villette'),
(9, 'paris', 4, 'Paris - Epitech', '', '48.815794', '2.362832', '15', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'Le 24 Janvier prochain, c''est la Global Game Jam ! Le gros rendez-vous annuel des jammers, une fusion d''énergie créatrice sans pareille ! Et le Jam Shaker en partenariat avec Epitech vous invite à y participer dans les meilleures conditions possibles.\r\n<br/><br/>\r\nLa Global Game Jam, c''est vraiment *the* event qui a popularisé le concept, et pour lequel nous n''avons pas besoin du Jam Shaker pour jammer les uns chez les autres, alors profitez-en, ça n''est qu''une fois par an !', 0, 0, 0, 0, 0, 0, 'Paris - Epitech'),
(10, 'paris', 5, 'Paris - 42', '', '48.896553', '2.318408', '14', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', '*roulement de tambours* Attention attention, la prochaine jam est imminente ! Et cette fois-ci, c''est la mystérieuse (*le* mystérieux ? C''est trop mystérieux) 42 qui nous accueille ! (merci à Matthieu Maudet de leur club Jeux Vidéo, qui nous a arrangé le coup)\r\n<br/><br/>\r\nC''est dans 3 semaines (le vendredi 20 juin) et ça va être dans des conditions bien détendues, parce que bon, c''est l''été quand même.\r\n<br/><br/>\r\nAmenez vos lunettes de non-soleil !', 0, 0, 0, 0, 0, 0, 'Paris'),
(11, 'paris', 6, 'Paris - La Villette', '', '48.895775', '2.387900', '15', 'Vendredi 17h-00h<br>Samedi 10h-00h<br>Dimanche 00h-18h', 'L''année dernière, à l''occasion du iGam4ER 2013, le Jam Shaker était invité par le CRI à organiser une game jam pour le moins expérimentale, au Carrefour Numérique² de la Cité des sciences.\r\n<br/><br/>\r\nNous remettons ça cette année pendant l''iGame4ER 2014 ! Mêmes partenaires (CRI, Gamelier) et bien sûr toujours à la Cité des sciences.\r\n<br/><br/>\r\nEt cette fois, nous sortons le grand jeu en terme de matériel, jugez plutôt :\r\n<ul>\r\n<li>Oculus Rift DK1 et DK2</li>\r\n<li>Muscle stimulation controller (x5) (<a href="https://www.youtube.com/watch?v=swmGaGT8lvs&list=UUBp2zmHIIwjCzwByu0QG2Fg">vidéo</a> et <a href="https://www.poppy-project.org/?lang=fr">lien</a>)</li>\r\n<li>Tout l''équipement du fab lab du carrefour numérique (notamment imprimantes 3D, Movuino, Ergobot) (<a href="http://www.cite-sciences.fr/fr/au-programme/lieux-ressources/carrefour-numerique2/presentation/fab-lab/">lien</a>)</li> \r\n<li>La techno des éditions volumiques (<a href="https://www.youtube.com/watch?v=tl2qmYmVpk0">vidéo</a>)</li>\r\n</ul>\r\n<br/>\r\nAlors inscrivez-vous vite, il y a environ 60 places !\r\n<br/><br/>\r\n(Bonus Stage : Pour les gens disponibles dès le vendredi après-midi, nos camarades du CRI organise des petits workshop, pour vous préparer à l''utilisation des techno les moins connues (genre le muscle stimulation controller, qui est un device assez fou), n''hésitez pas à vous inscrire : <a href="http://igam4er2014.sched.org/">igam4er</a>)', 0, 0, 0, 0, 0, 0, 'Paris'),
(12, 'paris', 7, 'Paris - Locaux Mozilla', '', '48.872340', '2.341229', '13', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'Retrouvons nous dans les locaux de Mozilla pour développer des jeux à l''aide de l''outil RedWire conçu par des membres du C.R.I. !', 0, 0, 0, 0, 0, 0, 'Paris - Mozilla'),
(13, 'paris', 8, 'Paris - Parc André-Citroën', '', '48.840359', '2.275554', '14', 'Journée de Dimanche', 'Rendez-vous au parc André-Citroën pour fêter la première année d''existence du Jam Shaker et créer plein de jeux de plein air. On va prendre le soleil !', 0, 0, 0, 0, 0, 0, 'Paris'),
(14, 'paris', 9, 'Paris - 42', '', '48.896553', '2.318408', '15', 'Vendredi 19h-22h<br>Samedi 9h30-00h<br>Dimanche 9h30-18h', 'Des jammeurs vétérans se sont retrouvés dans les locaux de 42 afin de jammer au profit du secours populaire, en parallèle au marathon caritatif "Desert Bus de l''espoir 2014".', 0, 0, 0, 0, 0, 0, 'Paris'),
(15, 'paris', 10, 'Paris - Dernier Bar Avant La Fin Du Monde', '', '48.858063', '2.346401', '14', 'Samedi\r\nDimanche 18h', 'Nous nous sommes rencontré au Dernier Bar avant la Fin du Monde pour composer des équipes et jammer sur le thème de la 24ème Ludum Dare "10 secondes".', 0, 0, 0, 0, 0, 0, 'Paris'),
(16, 'paris', 11, 'Paris - ISART', 'Nous nous sommes retrouvé à l''ISART pour composer des équipes et jammer sur le thème "Random", choisi par les jammers.', '48.853286', '2.372304', '14', 'Samedi\r\nDimanche', 'Nous nous sommes retrouvé à l''ISART pour composer des équipes et jammer sur le thème "Random", choisi par les jammers.', 0, 0, 0, 0, 0, 0, 'Paris'),
(17, 'paris', 12, 'Paris - ISART', '', '48.853286', '2.372304', '14', 'Samedi\r\nDimanche', 'Nous nous sommes retrouvé à l''ISART pour composer des équipes et jammer sur le thème "Space Opera", choisi par les jammers.', 0, 0, 0, 0, 0, 0, 'Paris'),
(18, 'paris', 13, 'Paris - Microsoft', '', '48.833960', '2.265498', '13', 'Mercredi 18h - 24h\r\nJeudi 00h - 18h', 'Nous avons invité 6 binômes à se rendre dans les locaux de Microsoft afin de se frotter au jeu / moteur Project Spark et tenter de remporter des X-box One. Les résultats sont visibles ici : <a href="http://youtube.com/watch?t=1m45s&v=m-WsgbKHlms&feature=youtu.be">youtube</a>.', 0, 0, 0, 0, 0, 0, 'Paris'),
(19, 'paris', 14, 'Paris - Epitech', '', '48.815548', '2.362984', '14', 'Ouvert pendant les 48h', 'On ne la présente plus, la global game jam est tout simplement la plus grosse game jam de l''année.<br/>\r\nPour cette édition 2015, l''Epitech nous invite à nouveau dans ses chouettes locaux pour jammer aux côtés de ses talentueux étudiants en programmation.\r\n<br/><br/>\r\nVenez avec plein d''idées !\r\n<br/><br/>\r\nPS: cette page d''inscription permet d''avoir un aperçu des ratios de chaque rôle, mais vous êtes invités à vous inscrire en parallèle sur la page du site officiel Global Game Jam, histoire de bien prouver votre détermination : <a href="http://globalgamejam.org/2015/jam-sites/epitech-paris">http://globalgamejam.org/2015/jam-sites/epitech-paris</a>', 0, 0, 0, 0, 0, 0, 'Paris - Epitech');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
