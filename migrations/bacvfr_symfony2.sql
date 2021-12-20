-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 18 déc. 2021 à 18:05
-- Version du serveur :  5.7.36-cll-lve
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bacvfr_symfony2`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `name`, `content`, `start_date`, `end_date`, `slug`) VALUES
(3, 'Vacances Fev 2020', 'Badminton Lundi 10/02 : 21h -23h au Jeu de paume, Mercredi 12/02 : 20h-22h30 à Mimoun et Vendredi 14/02 : 20h- 22h30 à Mimoun. Désolé, pas de badminton pour les jeunes et les loisirs Mardi 11/02', '2020-02-05 00:00:00', '2020-02-12 13:00:00', 'vacances-fev-2020'),
(4, '2ème message vacances', 'Pour rappel, les gymnases sont fermés cette semaine', '2020-02-17 09:00:00', '2020-02-21 22:00:00', '2me-message-vacances'),
(5, 'Coronavirus', 'Saison 2019-2020 terminée... Rdv le 05 Septembre 2020 pour le Forum des Associations', '2020-05-13 15:58:00', '2020-09-05 16:58:00', 'coronavirus'),
(6, 'Covid19 - v2', 'Désolé, les gymnases sont fermés pour tous les créneaux SAUF pour les jeunes qui pourront venir jouer de 19h à 20h20 !', '2020-10-18 11:24:00', '2020-11-01 11:24:00', 'covid19-v2'),
(7, 'Nouvelles mesures sanitaires', 'En raison des nouvelles mesures sanitaires, l’ensemble des créneaux de badminton doivent désormais être suspendus dans les établissements sportifs couverts, y compris le créneau jeune du mardi. Pas de badminton jusqu\'à nouvel ordre !', '2020-11-02 18:12:00', '2020-12-01 18:12:00', 'nouvelles-mesures-sanitaires'),
(8, 'Fermeture temporaire Jeu de Paume', 'Le gymnase du Jeu de Paume est temporairement fermé. Pas de badminton Jeunes et Loisirs ce Mardi 21/09 !', '2021-09-20 22:15:00', '2021-09-22 08:15:00', 'fermeture-temporaire-jeu-de-paume'),
(9, 'Reprise sept 21', 'Réouverture du gymnase du Jeu de Paume pour les Lundi 27 et Mardi 28 Septembre', '2021-09-25 14:05:00', '2021-09-27 22:05:00', 'reprise-sept-21'),
(10, 'Fermeture Gymnase', 'Gymnases fermés pendant les congés scolaires (à partir de Lundi 20/12). RDV le 03/01/2022 !', '2021-12-16 17:57:00', '2022-01-03 23:00:00', 'fermeture-gymnase');

-- --------------------------------------------------------

--
-- Structure de la table `age_category`
--

CREATE TABLE `age_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `age_category`
--

INSERT INTO `age_category` (`id`, `name`) VALUES
(0, 'Inconnue'),
(1, 'MiniBad'),
(2, 'Poussin'),
(3, 'Benjamin'),
(4, 'Minime'),
(5, 'Cadet'),
(6, 'Junior'),
(7, 'Sénior'),
(8, 'Vétéran 1'),
(9, 'Vétéran 2'),
(10, 'Vétéran 3');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `publication_date` datetime DEFAULT NULL,
  `last_update_date` datetime NOT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `auteur_id` int(11) DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pictures` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)',
  `src_images` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)',
  `image2filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipients` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notif` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `picture`, `title`, `slug`, `content`, `publication_date`, `last_update_date`, `is_published`, `auteur_id`, `excerpt`, `pictures`, `src_images`, `image2filename`, `image_filename`, `recipients`, `notif`) VALUES
(2, NULL, 'Nouveau site web', 'nouveau-site-web', '<p>Nouveau&nbsp;site, nouvelles fonctionnalit&eacute;s</p>\r\n\r\n<p>A noter un tournoi de Simple les 29/02 et 01/03 &agrave; Carri&egrave;res sous Poissy</p>\r\n\r\n<p>=&gt; Inscription via la page des <a href=\"https://www.bacv78.fr/tournois\">Tournois</a></p>', '2020-01-12 00:00:00', '2020-01-13 10:48:02', 1, 32, 'Nouveau site', 'N;', 'a:0:{}', NULL, NULL, NULL, NULL),
(8, NULL, 'Tournoi à Fontenay le fleury + Maurepas (Doubles)', 'tournoi-a-fontenay-le-fleury-maurepas-doubles', '<p>Les 18 et 19 Avril 2020, le club de Maurepas organise un tournoi de Doubles.</p>\r\n\r\n<p>Les 16 et 17 Mai 2020, le club de Fontenay-le-Fleury organise son tournoi.</p>\r\n\r\n<p>RDV sur la&nbsp;<a href=\"https://www.bacv78.fr/tournois/\" target=\"_blank\">liste des tournois</a>&nbsp;pour les inscriptions.</p>', '2019-11-04 13:02:00', '2020-01-02 15:12:00', 1, 32, 'News Tournoi', NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'Les Poussins à La Queue-lez-Yvelines', 'les-poussins-la-queue-lez-yvelines', '<p>Samedi 25 janvier s&#39;&eacute;tait d&eacute;roul&eacute;e, &agrave; la Queue-lez-Yvelines, une comp&eacute;tition de badminton r&eacute;serv&eacute;e aux poussins.&nbsp;</p>\r\n\r\n<p><strong>Thomas C</strong>, heureux et impatient d&#39;y effectuer sa toute premi&egrave;re comp&eacute;tition de badminton, s&#39;est tr&egrave;s bien d&eacute;fendu en gagnant 3 matchs sur 4. Bravo Thomas pour ces d&eacute;buts tr&egrave;s prometteurs...</p>', '2020-01-26 11:45:22', '2020-01-29 14:03:39', 1, 32, 'Poussins Queue-lez-Yvelines', 'a:0:{}', 'a:0:{}', 'thomas2-5e2d7caa44e61.jpeg', 'thomas-5e2d7caa44caa.jpeg', NULL, NULL),
(19, NULL, 'badminton ce soir', 'badminton-ce-soir', '<p>Bonjour &agrave; tous,&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>le <strong>gymnase du jeu de paume</strong> est disponible d&egrave;s <strong>19h30 ce soir</strong> pour le bad.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A vos raquettes !!</p>', '2020-01-27 11:59:50', '2020-01-29 14:03:08', 0, 24, '19h30 ce soir', 'a:0:{}', 'a:0:{}', NULL, NULL, NULL, NULL),
(20, NULL, 'ANNULÉ : 19ème TOURNOI DE VILLEPREUX', 'annul-19me-tournoi-de-villepreux', '<p>Bonjour &agrave; toutes et &agrave; tous,</p>\r\n\r\n<p>Le club de VILLEPREUX organise son traditionnel tournoi, le&nbsp;19&egrave;me,&nbsp; les<strong> 04 &amp; 05 avril 2020.</strong></p>\r\n\r\n<p>Merci de r&eacute;server le week-end. Nous avons besoin d&#39;aide pour tenir la buvette, pour alimenter la buvette par des pr&eacute;parations salades, tartes sal&eacute;es ou sucr&eacute;e, g&acirc;teaux,...</p>\r\n\r\n<p>Pour pr&eacute;parer les salles le vendredi</p>\r\n\r\n<p>Nous reviendrons vers vous tr&egrave;s prochainement pour compl&eacute;ter des doodles et y inscrire vos disponibilit&eacute;s via les doodle envoy&eacute;s par email.</p>\r\n\r\n<p>Possibilit&eacute; de s&#39;inscrire sur <strong>1 tableau adulte</strong>, l&#39;inscription &agrave; un&nbsp;2&egrave;me tableau se fera en fonction des places disponibles.</p>\r\n\r\n<p>Tableaux de simple, mixte, double hommes et double dames</p>\r\n\r\n<p>Pour tous les joueurs <u>hors BACV</u>, merci de t&eacute;l&eacute;charger et compl&eacute;ter le&nbsp;<strong><a download=\"\" href=\"https://www.bacv78.fr/public/uploads/Inscription_BACV_2020.xls\" target=\"_blank\">fichier d&#39;inscription</a></strong>.</p>\r\n\r\n<p>N&#39;h&eacute;sitez pas &agrave; partager autour de vous ;)</p>\r\n\r\n<p>A bient&ocirc;t sur les terrains !</p>', '2020-02-15 10:31:09', '2020-03-13 20:41:21', 1, 24, 'Le club de VILLEPREUX organise son tournoi, les 04 & 05 avril 2020', 'a:0:{}', 'a:0:{}', NULL, NULL, NULL, NULL),
(21, NULL, 'Doubles autorisés !', 'doubles-autoriss', '<p>Bonjour,</p>\r\n\r\n<p>La f&eacute;d&eacute;ration vient de diffuser le message suivant :</p>\r\n\r\n<p>Nouvel assouplissement dans les mesures &eacute;dict&eacute;es par le Minist&egrave;re des Sports : la pratique du double est d&eacute;sormais autoris&eacute;e. Une excellente nouvelle pour les adeptes de cette pratique !</p>\r\n\r\n<p>Article complet sur le site de la FFBAD</p>\r\n\r\n<p>--&gt;&nbsp;http://www.ffbad.org/actus-24/2020/le-double-est-de-nouveau-autorise</p>\r\n\r\n<p>Le club du BACV</p>', '2020-06-29 11:41:36', '2020-06-29 11:44:05', 1, 32, 'Pratique du double est désormais autorisée', 'a:0:{}', 'a:0:{}', NULL, NULL, NULL, NULL),
(22, NULL, 'Reprise du Badminton', 'reprise-du-badminton', '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Bonsoir,&nbsp;</span></span></span></span></p>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-family:Arial,Helvetica,sans-serif\">L<span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">a reprise du badminton aura lieu la semaine suivant le&nbsp;<strong>forum des associations,&nbsp;</strong>soit&nbsp;<strong>le lundi 07/09</strong></span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Rappel des cr&eacute;neaux&nbsp; (horaires et lieux) :&nbsp;</span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#ff0000\">lundi de 21h &agrave; 23 h</span>&nbsp;</strong>au<strong>&nbsp;gymnase du jeu de paume</strong>&nbsp;(<span style=\"color:#0000ff\">adultes en jeu libre</span>)</span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#ff0000\">mardi de 19h &agrave; 20h30</span></strong>&nbsp;au&nbsp;<strong>gymnase du jeu de paume</strong>&nbsp;(<span style=\"color:#0000ff\">entra&icirc;nement jeunes</span>)&nbsp;</span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\">\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#ff0000\">mardi de 20h45 &agrave; 22h30</span></strong>&nbsp;au&nbsp;<strong>gymnase du jeu de paume</strong>&nbsp;(<span style=\"color:#0000ff\">entra&icirc;nement adultes loisirs</span>)&nbsp;</span></span></span></span></div>\r\n\r\n<div>\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#ff0000\">mercredi de 20h &agrave; 22h30</span></strong>&nbsp;au&nbsp;<strong>gymnase Mimoun</strong>&nbsp;(<span style=\"color:#0000ff\">entra&icirc;nement comp&eacute;titeurs adultes</span>)&nbsp;</span></span></span></span></div>\r\n\r\n<div>\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#ff0000\">vendredi de 20h &agrave; 21h15</span></strong>&nbsp;au&nbsp;<strong>gymnase Mimoun&nbsp;</strong>&nbsp;(<span style=\"color:#0000ff\">jeu libre jeunes hors p&eacute;riode d&#39;interclubs</span>)&nbsp;</span></span></span></span></div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#ff0000\">vendredi de 20h &agrave; 22h30</span></strong>&nbsp;au&nbsp;<strong>gymnase Mimoun&nbsp;</strong>&nbsp;(<span style=\"color:#0000ff\">jeu libre adultes hors p&eacute;riode d&#39;interclubs</span>)&nbsp; &nbsp;</span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:12px\"><strong>Prix des Cotisations</strong></span></div>\r\n\r\n<div><span style=\"font-size:12px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Jeunes Villepreux : 95&euro; / Autres villes : 100&euro;</span></span></div>\r\n\r\n<div><span style=\"font-size:12px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Adultes Loisirs Villepreux : 125&euro; / Autres : 130&euro;</span></span></div>\r\n\r\n<div><span style=\"font-size:12px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Adultes Comp&eacute;titeurs Villepreux : 175&euro; / Autres : 180&euro;</span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:12px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Gymnase Mimoun</span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:12px\">=&gt; Avenue du G&eacute;n&eacute;ral&nbsp;de Gaulle, 78450 Villepreux</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:12px\"><span style=\"color:#1d2228; font-family:Arial,Helvetica,sans-serif\">Gymnase du Jeu de Paume</span></span></div>\r\n\r\n<div><span style=\"font-size:12px\">=&gt;&nbsp;3 All&eacute;e du Hameau de la Reine, 78450 Villepreux</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><strong>La reprise du badminton se fait selon les derni&egrave;res recommandations sanitaires de la f&eacute;d&eacute;ration fran&ccedil;aise:</strong></span></span></span></span></span></div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Le jeu en simple et double est autoris&eacute;.&nbsp;</span></span></span></span></div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Il n&#39;y a pas de limite de joueurs&nbsp;dans le gymnase.&nbsp;</span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Les gestes barri&egrave;res et le respect de la distanciation restent cependant &agrave; appliquer&nbsp;:&nbsp;</span></span></span></strong></span></div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Dans les grandes lignes,</span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">- chacun arrive masqu&eacute; et retire ensuite le masque pour aller jouer.</span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">- chacun utilise son mat&eacute;riel.</span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">- Les raquettes pr&ecirc;t&eacute;es seront d&eacute;sinfect&eacute;es avant et apr&egrave;s utilisation.&nbsp;&nbsp;</span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">- Chacun utilise son propre volant sans toucher &agrave; celui d&#39;un autre joueur.</span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">- Pas de serrage de main.&nbsp;</span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">A tr&egrave;s vite sur les terrains</span></span></span></span></div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"background-color:#ffffff\">Sandrine</span></span></span></span></div>\r\n</div>\r\n</div>\r\n</div>', '2020-08-28 09:50:17', '2020-09-05 17:59:19', 1, 32, 'Reprise du Badminton le Lundi 07/09', 'a:0:{}', 'a:0:{}', NULL, NULL, NULL, NULL),
(23, NULL, 'Nouveaux tournois', 'nouveaux-tournois', '<p>Bonjour,</p>\r\n\r\n<p>De nouveaux tournois sont disponibles sur notre page d&eacute;di&eacute;e aux <a href=\"https://www.bacv78.fr/tournois\"><strong><u>Tournois</u></strong></a>.</p>\r\n\r\n<p>Pour s&#39;inscrire &agrave; un Tournoi, une feuille d&#39;inscription est &agrave; votre disposition mais <strong>il faut &ecirc;tre connect&eacute; au site</strong> au pr&eacute;alable.</p>\r\n\r\n<p>Pour toute assistance, merci d&#39;envoyer un email &agrave; bacv78.villepreux@gmail.com</p>\r\n\r\n<p>Merci de rester vigilant aux annonces &eacute;ventuelles pour cause de Covid (annulations, reports etc...)</p>\r\n\r\n<p>Sportivement,<br />\r\nArnaud</p>', '2020-09-24 13:57:21', '2020-09-24 14:19:10', 1, 32, 'Nouveaux tournois', 'a:0:{}', 'a:0:{}', NULL, NULL, NULL, NULL),
(25, NULL, 'Fermeture du créneau badminton jeunes', 'fermeture-du-crneau-badminton-jeunes', '<p>Mesdames, messieurs et chers jeunes badistes,&nbsp;</p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">En raison des nouvelles mesures sanitaires, l&rsquo;ensemble des activit&eacute;s associatives doivent d&eacute;sormais &ecirc;tre suspendues dans les &eacute;tablissements sportifs couverts, y compris celles qui concernent exclusivement des mineurs.&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><strong><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Le cr&eacute;neau badminton du mardi soir pour les jeunes est donc&nbsp;suspendu &eacute;galement.&nbsp;</span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"color:#222222; font-family:Arial,Helvetica,sans-serif; font-size:small\">Prenez soin de vous,&nbsp;</span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"color:#222222; font-family:Arial,Helvetica,sans-serif; font-size:small\">En esp&eacute;rant vous revoir sur les terrains au plus vite.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"color:#222222; font-family:Arial,Helvetica,sans-serif; font-size:small\">Sandrine</span></p>', '2020-11-02 18:12:17', '2020-11-15 13:58:55', 1, 24, 'Le créneau badminton du mardi soir pour les jeunes est suspendu', 'a:0:{}', 'a:0:{}', NULL, NULL, 'jeunes', 0),
(26, NULL, 'Reprise Juin 2021', 'reprise-juin-2021', '<blockquote>Bonjour &agrave; tous !\r\n<p>Depuis la semaine du 27 Mai, nos jeunes ont pu reprendre le chemin des terrains, encore un peu de patience, votre tour arrive ...!&nbsp;😃</p>\r\n\r\n<p><u>Quelques dates &agrave; retenir :</u></p>\r\n\r\n<p>* D&rsquo;apr&egrave;s les annonces gouvernementales, les adultes pourront reprendre le badminton en salle d&egrave;s le 09 juin.&nbsp;</p>\r\n\r\n<p>La reprise des entra&icirc;nements se fera donc le mercredi 09 juin pour les comp&eacute;titeurs au gymnase Mimoun, de 20h &agrave; 22h30.&nbsp;</p>\r\n\r\n<p>Pour les adultes loisirs, la reprise des entra&icirc;nements se fera le mardi 15 juin au gymnase du jeu de Paume, de 20h45 &agrave; 22h30.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pour rappel, les cr&eacute;neaux de jeu libre du vendredi &agrave; Mimoun (20h -22h30) et du lundi au jeu de paume (21h-22h30) sont ouverts &agrave; tous les joueurs adultes du club et accessibles d&egrave;s le 09 juin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>*Le traditionnel barbecue du club se fera le dimanche 27 juin en ext&eacute;rieur. Des terrains de badminton et de Airbadminton seront &agrave; disposition tout au long de la journ&eacute;e ...</p>\r\n\r\n<p>* L&rsquo;assembl&eacute;e g&eacute;n&eacute;rale du club se tiendra le dimanche 27 juin en matin&eacute;e. La pr&eacute;sence de tous y est primordiale.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nous vous tiendrons inform&eacute;s, d&egrave;s que possible, des mesures sanitaires qui nous seront impos&eacute;es pour la reprise du 09 juin.&nbsp;</p>\r\n\r\n<p>En attendant, pr&eacute;parez vos raquettes&nbsp;🏸 !</p>\r\n\r\n<p>&Agrave; tr&egrave;s vite sur les terrains ...</p>\r\n\r\n<p>Sandrine</p>\r\n</blockquote>', '2021-06-04 23:49:12', '2021-06-04 23:50:42', 1, 32, 'Reprise Juin 2021', 'a:0:{}', 'a:0:{}', NULL, NULL, 'all', 0),
(27, NULL, 'Rentrée Saison 2021-2022', 'rentre-saison-2021-2022', '<div style=\"text-align:left\">\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">Bonjour &agrave; tous !</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">Voici quelques informations pratiques pour notre&nbsp;reprise :&nbsp;</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">-&nbsp;<span style=\"color:#ff0000\">URGENT</span>&nbsp;: pour ceux qui ne l&#39;ont pas encore fait, merci de compl&eacute;ter le dossier d&#39;inscription si possible directement en ligne</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">- La reprise s&#39;effectuera pour tous les adultes (Loisirs et Comp&eacute;titeurs)&nbsp;le&nbsp;<span style=\"color:#ff0000\">lundi 06/09 de 21h &agrave; 22h30 au gymnase du jeu de paume&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">-&nbsp;<span style=\"color:#ff0000\">CONTR&Ocirc;LE du PASS SANITAIRE et signature du registre d&#39;appel &agrave; l&#39;entr&eacute;e de la salle.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\">Afin de fluidifier l&#39;entr&eacute;e des joueurs<strong>, pensez &agrave; pr&eacute;parer &agrave; l&#39;avance votre pass sanitaire.&nbsp;</strong></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\"><strong>ATTENTION, nous fermerons les portes de la salle&nbsp;<u>15 minutes</u>&nbsp;apr&egrave;s le d&eacute;but de la s&eacute;ance,&nbsp;</strong>soyez rigoureux sur le respect des horaires.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\">En effet, ce sont des joueurs du club qui, volontairement, donneront de leur temps&nbsp; pour effectuer le contr&ocirc;le des pass. Nous ne souhaitons pas que quelques-uns d&#39;entre nous sacrifient leurs s&eacute;ances d&#39;entra&icirc;nements&nbsp;pour attendre les retardataires.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\">- Cette ann&eacute;e, nous remettons en place l&#39;aide aux loisirs. U</span>n roulement est organis&eacute; pour donner un coup de main pour l&#39;encadrement des entra&icirc;nements adultes&nbsp;loisirs&nbsp;du mardi.</span></span></span></span></span></p>\r\n\r\n<div>\r\n<div>\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">Une liste sera &eacute;tablie, chaque comp&eacute;titeur devra participer 1 &agrave; 2 fois dans l&#39;ann&eacute;e. Petite nouveaut&eacute;, 1 seul comp&eacute;titeur sera utile par mardi.&nbsp;<br />\r\nVous recevrez bient&ocirc;t un planning qui d&eacute;butera le mardi 14 Septembre</span></span></span></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">- vous serez toujours relanc&eacute; par mail &quot;C&#39;est ton tour....&quot;</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">- le RDV est chaque Mardi&nbsp;&agrave; 20h45 au Gymnase du Jeu de Paume (jusqu&#39;&agrave; 22h30)<br />\r\nEn cas d&#39;indisponibilit&eacute;, l&#39;&eacute;change de cr&eacute;neau est possible avec un autre joueur, cependant il est &agrave; organiser par la personne qui devait &ecirc;tre pr&eacute;sente le mardi</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">Nous comptons sur votre compr&eacute;hension</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">A tr&egrave;s vite</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2228\"><span style=\"font-family:YahooSans,&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\">Sandrine</span></span></span></span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2021-09-06 11:57:56', '2021-09-06 12:32:38', 1, 32, 'Nouvelle Saison 2021-2022', 'a:0:{}', 'a:0:{}', NULL, NULL, 'all', 0),
(28, NULL, 'Avis de décès', 'avis-de-dcs', '<p>C&#39;est avec une grande &eacute;motion que je vous fait part du d&eacute;c&egrave;s de <strong>Fr&eacute;deric Hurtevent</strong> survenu le 12 novembre 2021.</p>\r\n\r\n<p>Pr&eacute;sident du club du Perray en Yvelines, entraineur de nos jeunes et des comp&eacute;titeurs de notre club. Il a largement &oelig;uvr&eacute; pour le d&eacute;veloppement du badminton et surtout chez les jeunes dans le d&eacute;partement.</p>\r\n\r\n<p>Nous garderons de lui sa g&eacute;n&eacute;rosit&eacute; et sa bonne humeur qu&#39;il savait nous faire partager, et c&#39;est une profonde tristesse qui nous envahit aujourd&#39;hui.</p>\r\n\r\n<p>Fr&eacute;d&eacute;ric, tu nous manques d&eacute;j&agrave;.....</p>\r\n\r\n<address>Eric Perret</address>\r\n\r\n<p>Une c&eacute;r&eacute;monie religieuse sera c&eacute;l&eacute;br&eacute;e le vendredi 19 novembre 2021 &agrave; 15h00 en l&#39;Eglise du Perray en Yvelines.</p>\r\n\r\n<p>L&#39;inhumation se d&eacute;roulera &agrave; 16h00 au nouveau cimeti&egrave;re du Perray en Yvelines.</p>\r\n\r\n<p>Un hommage lui sera ensuite rendu &agrave; 17h00 au Gymnase des Sports de la ville &ndash; 1 rue des Lauriers.</p>\r\n\r\n<p>Une cagnotte est ouverte via ce lien :&nbsp;https://www.leetchi.com/c/merci-fred-lbom86zw</p>\r\n\r\n<p>La somme r&eacute;colt&eacute;e sera int&eacute;gralement revers&eacute;e pour lui d&eacute;dicacer une pierre tombale &agrave; l&#39;effigie du badminton.</p>', '2021-11-19 12:08:17', '2021-11-19 12:10:52', 1, 32, 'Avis de décès de Fréderic Hurtevent', 'a:0:{}', 'a:0:{}', '09062019cfv20191889-619785a110a1c.jpeg', '0_fredcopie-619785a11072c.jpeg', 'all', 0),
(29, NULL, 'Nouveaux tournois', 'nouveaux-tournois', '<p>Bonjour &agrave; tous,</p>\r\n\r\n<p>Dans la rubrique <strong>Tournois</strong>, vous trouverez 7 nouveaux tournois avec des inscriptions via une feuille Excel partag&eacute;e ou via badnet.org en direct.</p>\r\n\r\n<p>Soyez rapides afin d&#39;optimiser vos chances d&#39;&ecirc;tre inscrit !</p>\r\n\r\n<p>Sportivement,</p>\r\n\r\n<p>Arnaud</p>', '2021-11-30 13:11:08', '2021-11-30 13:11:08', 1, 32, NULL, 'a:0:{}', 'a:0:{}', NULL, NULL, 'competiteurs', 1),
(30, NULL, 'Tournoi Jeunes D3/J3 des 11&12 Décembre', 'tournoi-jeunes-d3-j3-des-11-12-dcembre', '<p>Nos 17 jeunes pr&eacute;sents sur la comp&eacute;tition d&eacute;partementale ce we ont su rendre le plus bel hommage &agrave; leur entraineur FREDERIC H.</p>\r\n\r\n<p>Pour leur premi&egrave;re comp&eacute;tition, ils ont fi&egrave;rement port&eacute; les couleurs du club ce week-end du 11&amp;12 D&eacute;cembre 2021.</p>\r\n\r\n<p>Ils se sont brillamment battus dans un fabuleux &eacute;tat d&#39;esprit et avec beaucoup de fair-play.</p>\r\n\r\n<p>Ils remportent 4 victoires en simple homme :</p>\r\n\r\n<p>Thomas CALVET en benjamin A, Axel LEDOUARON en benjamin B, Thomas DABEL et Matys BONALDI en cadet</p>', '2021-12-16 17:31:48', '2021-12-16 17:32:05', 1, 32, 'Tournoi Jeunes D3/J3 des 11&12 Décembre', 'a:0:{}', 'a:0:{}', NULL, 'jeunes-61bb69f4bffe6.jpeg', 'all', 0),
(31, NULL, 'Photos Tournoi Jeunes', 'photos-tournoi-jeunes', '<div style=\"text-align:left\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:comic sans ms,sans-serif\">BRAVO &agrave;&nbsp;<strong>Thomas Dabel</strong>,&nbsp;<strong>Matys Bonaldi</strong>,&nbsp;<strong>Thomas Calvet</strong>&nbsp;et&nbsp;<strong>Axel Ledouaron</strong>&nbsp;qui remportent leur poule respective (photos ci-apr&egrave;s) .</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:comic sans ms,sans-serif\">De tr&egrave;s beaux matchs et bons r&eacute;sultats pour l&#39;ensemble des joueurs.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:comic sans ms,sans-serif\"><span style=\"color:#0000ff\"><strong>Un grand MERCI aux petites mains venues aider</strong></span>&nbsp;&agrave; l&#39;installation, &agrave; la tenue de la buvette et la gestion du pass ou encore en nous pr&eacute;parant des plats sucr&eacute;s et sal&eacute;s ...</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:left\"><span style=\"font-size:13px\"><span style=\"color:#1d2228\"><span style=\"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\">Gr&acirc;ce &agrave; vous, ce tournoi est une belle r&eacute;ussite !&nbsp;</span></span></span></span></div>', '2021-12-16 17:39:32', '2021-12-16 17:47:02', 0, 32, NULL, 'a:0:{}', 'a:0:{}', 'img_6347-61bb6bc4f346f.jpeg', 'photos-61bb6d316ed15.png', 'all', 0),
(32, NULL, 'Autres photos Tournoi Jeunes', 'autres-photos-tournoi-jeunes', '<p>BRAVO &agrave;&nbsp;<strong>Thomas Dabel</strong>,&nbsp;<strong>Matys Bonaldi</strong>,&nbsp;<strong>Thomas Calvet</strong>&nbsp;et&nbsp;<strong>Axel Ledouaron</strong>&nbsp;qui remportent leur poule respective (photos ci-apr&egrave;s) .</p>\r\n\r\n<p>De tr&egrave;s beaux matchs et bons r&eacute;sultats pour l&#39;ensemble des joueurs.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Un grand MERCI aux petites mains venues aider</strong>&nbsp;&agrave; l&#39;installation, &agrave; la tenue de la buvette et la gestion du pass ou encore en nous pr&eacute;parant des plats sucr&eacute;s et sal&eacute;s ...</p>\r\n\r\n<p>Gr&acirc;ce &agrave; vous, ce tournoi est une belle r&eacute;ussite !&nbsp;</p>', '2021-12-16 17:47:37', '2021-12-16 17:47:47', 1, 32, NULL, 'a:0:{}', 'a:0:{}', NULL, 'photos-61bb6da90d260.png', 'all', 0);

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(8, 1),
(17, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `label`, `description`) VALUES
(1, 'General', 'Infos générales qui concernent tout le monde'),
(2, 'Interclub', 'Tout sujet autour des Interclubs');

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

CREATE TABLE `club` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`id`, `name`, `slug`) VALUES
(0, '-- Aucun --', 'DEF'),
(3, 'Villepreux', 'BACV'),
(4, 'Maurecourt', 'maurecourt'),
(5, 'Montigny', 'montigny'),
(6, 'Gargenville', 'gargenville'),
(7, 'Limay', 'limay'),
(8, 'Vélizy', 'velizy'),
(9, 'Chambourcy', 'chambourcy'),
(10, 'Fontenay le Fleury', 'fontenay'),
(11, 'Maisons-laffitte', 'Maisons-laffitte'),
(12, 'Elancourt', 'Elancourt'),
(13, 'Villennes-sur-Seine', 'Villennes-sur-Seine'),
(14, 'Chatou', 'Chatou'),
(15, 'Le Mesnil-le-Roi', 'Mesnil-le-roi'),
(16, 'Voisins', 'Voisins'),
(17, 'Rambouillet', 'Rambouillet'),
(18, 'Carrières-sur-Seine', 'Carrieres-sur-Seine'),
(20, 'St Cyr', 'StCyr'),
(21, 'Les Essarts le roi', 'Essarts'),
(22, 'Maurepas', 'CBM'),
(23, 'Les Clayes sous bois', 'clayes'),
(24, 'Méré', 'mere'),
(25, 'Saint Arnoult', 'saintarnoult'),
(26, 'Poissy', 'poissy'),
(27, 'Sartrouville', 'sartrouville'),
(28, 'La-Queue-lez-Yvelines', 'laqueuelezyvelines'),
(29, 'Magny Les Hameaux', 'magny');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doodle`
--

CREATE TABLE `doodle` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_personnes` int(11) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doodle`
--

INSERT INTO `doodle` (`id`, `name`, `description`, `max_personnes`, `begin_date`, `end_date`, `active`, `type`) VALUES
(1, 'Présence pour jouer à Mimoun', '10 personnes maximum - Jeu en Simple uniquement', 10, NULL, NULL, 1, 'checkbox'),
(2, 'Idée', 'Idée', NULL, NULL, NULL, 1, 'text'),
(3, 'Test Number', 'Yo !', 20, NULL, NULL, 1, 'number'),
(4, 'Doodle pour QCM', 'Yo !', NULL, NULL, NULL, 1, 'qcm');

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `category` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `begin_at`, `end_at`, `titre`, `description`, `category`) VALUES
(8, '2020-01-06 20:00:00', '2020-01-06 22:30:00', 'Reprise du Bad !', NULL, 'Autre'),
(10, '2019-12-06 20:00:00', '2019-12-06 20:00:00', 'J05 - Villepreux 1 / Voisins 4', 'Evénement créé par la création de la rencontre J05 - Villepreux 1 / Voisins 4', 'Interclub'),
(11, '2020-01-17 19:45:00', '2020-01-17 19:45:00', 'J08 - Elancourt 3 / Villepreux 1', 'Evénement créé par la création de la rencontre J08 - Elancourt 3 / Villepreux 1', 'Interclub Mixte'),
(12, '2020-01-24 20:00:00', '2020-01-24 20:00:00', 'J09 - Villepreux 1 / Carrières 5', 'Evénement créé par la création de la rencontre J09 - Villepreux 1 / Carrières 5', 'Interclub Mixte'),
(13, '2019-11-08 18:45:00', '2019-11-08 18:45:00', 'J01 - Elancourt 6 / Villepreux 3', 'Evénement créé par la création de la rencontre J01 - Elancourt 6 / Villepreux 3', 'Interclub Mixte'),
(14, '2020-01-09 20:20:00', '2020-01-09 22:30:00', 'J07 - St Cyr 2 / Villepreux 3', 'Evénement créé par la création de la rencontre J07 - St Cyr 2 / Villepreux 3', 'Interclub'),
(15, '2020-01-13 21:00:00', '2020-01-13 21:00:00', 'J08 - Villepreux 3 / Elancourt 6', 'Evénement créé par la création de la rencontre J08 - Villepreux 3 / Elancourt 6', 'Interclub Mixte'),
(16, '2020-01-20 20:00:00', '2020-01-20 20:00:00', 'J09 - Les Essarts le roi / Villepreux 3', 'Evénement créé par la création de la rencontre J09 - Les Essarts le roi / Villepreux 3', 'Interclub Mixte'),
(17, '2020-01-10 20:00:00', '2020-01-10 22:30:00', 'J07 - Villepreux 1 / Villennes 1', NULL, 'Interclub'),
(18, '2020-02-29 00:00:00', '2020-03-01 00:00:00', 'Départemental Sénior Simple', 'Evénement créé par la création du tournoi Départemental Sénior Simple', 'Tournoi'),
(19, '2020-02-27 21:00:00', '2020-02-27 21:00:00', 'J10 - Villepreux 3 / Rambouillet 5', 'Evénement créé par la création de la rencontre J10 - Villepreux 3 / Rambouillet 5', 'Interclub'),
(20, '2020-02-28 20:00:00', '2020-02-28 22:45:00', 'J11 - Montigny 7 / Villepreux 3', 'Evénement créé par la création de la rencontre J11 - Montigny 7 / Villepreux 3', 'Interclub'),
(21, '2020-03-02 21:00:00', '2020-03-02 21:00:00', 'J12 - Villepreux 3 / Vélizy 2', 'Evénement créé par la création de la rencontre J12 - Villepreux 3 / Vélizy 2', 'Interclub'),
(22, '2020-01-29 20:30:00', '2020-01-29 22:30:00', 'J10 - Rambouillet 2 / Villepreux 1', 'Evénement créé par la création de la rencontre J10 - Rambouillet 2 / Villepreux 1', 'Interclub'),
(23, '2020-02-28 20:00:00', '2020-02-28 20:00:00', 'J11 - Villepreux 1 / Montigny 3', 'Evénement créé par la création de la rencontre J11 - Villepreux 1 / Montigny 3', 'Interclub'),
(24, '2020-03-02 20:30:00', '2020-03-02 20:30:00', 'J12 - Voisins 4 / Villepreux 1', 'Evénement créé par la création de la rencontre J12 - Voisins 4 / Villepreux 1', 'Interclub'),
(25, '2020-02-08 08:00:00', '2020-02-23 22:59:00', 'Vacances Scolaires Fev 2020', NULL, 'Fermeture Gymnases'),
(26, '2020-04-04 08:00:00', '2020-04-05 21:00:00', 'Tournoi de Villepreux 2020', 'Tournoi officiel de Villepreux', 'Tournoi'),
(27, '2020-04-24 20:00:00', '2020-04-24 23:00:00', 'Tournoi amical ouvert à tous', NULL, 'Tournoi'),
(28, '2020-06-05 20:00:00', '2020-06-05 23:00:00', 'Interclub Amical', 'Interclub interne proposé contre 2 équipes de clubs voisins (sûrement Les Clayes + Chgambourcy), pour les joueurs des équipes 1-2-3-4 , au gymnase Mimoun', 'Interclub'),
(29, '2020-06-14 12:00:00', '2020-06-14 18:00:00', 'Barbecue du Club !', 'barbecue du club avec jeu libre sur les terrains . Ouvert à tous les joueurs du club (jeunes / loisirs / compétiteurs)  et leurs familles au gymnase Mimoun.', 'Fête du Club'),
(30, '2020-04-11 00:00:00', '2020-04-12 00:00:00', 'Tournoi national', 'Evénement créé par la création du tournoi Tournoi national', 'Tournoi'),
(31, '2020-03-28 00:00:00', '2020-03-29 00:00:00', 'DÉPARTEMENTAL SENIORS DE DOUBLES 20', 'Evénement créé par la création du tournoi DÉPARTEMENTAL SENIORS DE DOUBLES 20', 'Tournoi'),
(32, '2020-02-17 20:00:00', '2020-02-21 22:45:00', 'Gymnases fermés', NULL, 'Fermeture Gymnases'),
(33, '2020-02-24 21:00:00', '2020-02-24 23:00:00', 'J11 - Villepreux 4 / Chatou 3', NULL, 'Interclub'),
(34, '2020-03-13 20:00:00', '2020-03-13 20:00:00', 'J13 - Villepreux 1 / Maurepas 2', 'Evénement créé par la création de la rencontre J13 - Villepreux 1 / Maurepas 2', 'Interclub'),
(35, '2020-03-20 20:15:00', '2020-03-20 20:15:00', 'J14 - Villennes 1 / Villepreux 1', 'Evénement créé par la création de la rencontre J14 - Villennes 1 / Villepreux 1', 'Interclub'),
(36, '2020-03-09 20:00:00', '2020-03-09 20:00:00', 'J13 - Les Clayes 1 / Villepreux 3', 'Evénement créé par la création de la rencontre J13 - Les Clayes 1 / Villepreux 3', 'Interclub'),
(37, '2020-03-16 21:00:00', '2020-03-16 21:00:00', 'J14 - Villepreux 3 / St-Cyr 2', 'Evénement créé par la création de la rencontre J14 - Villepreux 3 / St-Cyr 2', 'Interclub'),
(38, '2020-03-09 21:00:00', '2020-03-09 21:00:00', 'J13 - Villepreux 4 / Mesnil le roi 3', 'Evénement créé par la création de la rencontre J13 - Villepreux 4 / Mesnil le roi 3', 'Interclub'),
(39, '2020-03-20 20:00:00', '2020-03-20 20:00:00', 'J14 - Chatou 2 / Villepreux 4', 'Evénement créé par la création de la rencontre J14 - Chatou 2 / Villepreux 4', 'Interclub'),
(40, '2020-04-04 00:00:00', '2020-04-05 00:00:00', 'Tournoi de Villepreux', 'Evénement créé par la création du tournoi Tournoi de Villepreux', 'Tournoi'),
(41, '2020-05-01 00:00:00', '2020-05-03 00:00:00', 'Tournoi de Méré (Vétérans)', 'Evénement créé par la création du tournoi Tournoi de Méré (Vétérans)', 'Tournoi'),
(42, '2020-06-08 00:00:00', '2020-06-10 00:00:00', 'Tournoi de Chartres', 'Evénement créé par la création du tournoi Tournoi de Chartres', 'Tournoi'),
(44, '2020-10-31 07:00:00', '2020-11-01 17:00:00', 'Sky\' Bad12', 'Evénement créé par la création du tournoi Sky\' Bad12', 'Tournoi'),
(46, '2020-11-14 00:00:00', '2020-11-15 00:00:00', 'Bad O\'Village IV', 'Evénement créé par la création du tournoi Bad O\'Village IV', 'Tournoi'),
(47, '2020-11-14 00:00:00', '2020-11-15 00:00:00', 'Les Jupettes 9', 'Evénement créé par la création du tournoi Les Jupettes 9', 'Tournoi'),
(48, '2020-11-21 00:00:00', '2020-11-22 00:00:00', 'Poissy Bad Cup - 4e édition', 'Evénement créé par la création du tournoi Poissy Bad Cup - 4e édition', 'Tournoi'),
(49, '2021-01-16 00:00:00', '2021-01-17 00:00:00', '20ème tournoi de doubles des Volants d\'Elancourt', 'Evénement créé par la création du tournoi 20ème tournoi de doubles des Volants d\'Elancourt', 'Tournoi'),
(50, '2020-11-14 07:00:00', '2020-11-15 18:00:00', 'Tournoi de Villepreux Nov 2020', 'Evénement créé par la création du tournoi Tournoi de Villepreux Nov 2020', 'Tournoi'),
(51, '2020-10-17 07:30:00', '2020-10-18 18:00:00', 'Stage de rentrée Badminton', NULL, 'Autre'),
(53, '2020-12-06 14:45:00', '2020-12-06 14:45:00', 'test IC2', 'Evénement créé par la création de la rencontre test IC2', 'Interclub'),
(54, '2021-02-06 00:00:00', '2021-02-07 00:00:00', 'tournoi national Chambourcy', 'Evénement créé par la création du tournoi tournoi national Chambourcy', 'Tournoi'),
(143, '2021-03-04 00:00:00', '2021-03-04 00:00:00', '', '', 'Interclub'),
(144, '2021-03-14 20:00:00', '2021-03-14 22:00:00', 'Zozo test', '', 'Interclub'),
(147, '2021-03-19 20:00:00', '2021-03-19 22:00:00', 'test Tournoi', '', 'Tournoi'),
(148, '2021-06-27 11:00:00', '2021-06-27 15:00:00', 'Assemblée générale et Barbecue', 'Assemblée générale du club le matin à 11h puis Barbecue tous ensemble !', 'Fête du Club'),
(149, '2021-11-06 00:00:00', '2021-11-07 00:00:00', 'SkyBad\'13', 'Evénement créé par la création du tournoi SkyBad\'13', 'Tournoi'),
(150, '2021-11-27 00:00:00', '2021-11-28 00:00:00', 'Jupettes 9', 'Evénement créé par la création du tournoi Jupettes 9', 'Tournoi'),
(152, '2021-11-19 20:15:00', '2021-11-19 20:15:00', 'J01 - Villepreux 2 / Montigny 6', 'Evénement créé par la création de la rencontre J01 - Villepreux 2 / Montigny 6', 'Interclub'),
(153, '2021-11-26 20:00:00', '2021-11-26 20:00:00', 'J02 - Carrières sur Seine 6 / Villepreux', 'Evénement créé par la création de la rencontre J02 - Carrières sur Seine 6 / Villepreux', 'Interclub'),
(154, '2021-12-03 20:00:00', '2021-12-03 20:00:00', 'J03 - Villepreux 2 / Poissy 3', 'Evénement créé par la création de la rencontre J03 - Villepreux 2 / Poissy 3', 'Interclub'),
(155, '2021-12-10 20:00:00', '2021-12-10 20:00:00', 'J04 Villepreux 2 / Sartrouville 2', 'Evénement créé par la création de la rencontre J04 Villepreux 2 / Sartrouville 2', 'Interclub'),
(156, '2021-12-15 20:00:00', '2021-12-15 20:00:00', 'J05 - Bad en Seine 5 / Villepreux 2', 'Evénement créé par la création de la rencontre J05 - Bad en Seine 5 / Villepreux 2', 'Interclub'),
(157, '2022-01-14 20:00:00', '2022-01-14 20:00:00', 'J06 - Villepreux 2 / Vélizy 1', 'Evénement créé par la création de la rencontre J06 - Villepreux 2 / Vélizy 1', 'Interclub'),
(158, '2022-01-20 20:00:00', '2022-01-20 20:00:00', 'J07 - St Cyr 1 - Villepreux 2', 'Evénement créé par la création de la rencontre J07 - St Cyr 1 - Villepreux 2', 'Interclub'),
(159, '2022-01-28 20:30:00', '2022-01-28 20:30:00', 'J08 - Montigny 6 : Villepreux 2', 'Evénement créé par la création de la rencontre J08 - Montigny 6 : Villepreux 2', 'Interclub'),
(160, '2022-02-04 20:00:00', '2022-02-04 20:00:00', 'J09 - Villepreux 2 / Carrières sur Seine', 'Evénement créé par la création de la rencontre J09 - Villepreux 2 / Carrières sur Seine', 'Interclub'),
(161, '2022-02-07 20:30:00', '2022-02-07 20:30:00', 'J10 - Poissy 3 - Villepreux 2', 'Evénement créé par la création de la rencontre J10 - Poissy 3 - Villepreux 2', 'Interclub'),
(162, '2022-03-09 20:30:00', '2022-03-09 20:30:00', 'J11 - Sartrouville 2 / Villepreux 2', 'Evénement créé par la création de la rencontre J11 - Sartrouville 2 / Villepreux 2', 'Interclub'),
(163, '2022-03-18 20:00:00', '2022-03-18 20:00:00', 'J12 - Villepreux 2 / Bad en Seine 5', 'Evénement créé par la création de la rencontre J12 - Villepreux 2 / Bad en Seine 5', 'Interclub'),
(164, '2022-03-24 20:00:00', '2022-03-24 20:00:00', 'J13 - Vélizy 1 / Villepreux 2', 'Evénement créé par la création de la rencontre J13 - Vélizy 1 / Villepreux 2', 'Interclub'),
(165, '2022-04-01 20:00:00', '2022-04-01 20:00:00', 'J14 - Villepreux 2 / St Cyr 1', 'Evénement créé par la création de la rencontre J14 - Villepreux 2 / St Cyr 1', 'Interclub'),
(167, '2021-11-29 20:30:00', '2021-11-29 20:30:00', 'J03', 'Evénement créé par la création de la rencontre J03', 'Interclub'),
(168, '2021-12-08 20:30:00', '2021-12-08 20:30:00', 'J04', 'Evénement créé par la création de la rencontre J04', 'Interclub'),
(169, '2021-12-17 20:00:00', '2021-12-17 20:00:00', 'J05', 'Evénement créé par la création de la rencontre J05', 'Interclub'),
(170, '2022-01-10 20:30:00', '2022-01-10 20:30:00', 'J06', 'Evénement créé par la création de la rencontre J06', 'Interclub'),
(171, '2022-01-21 20:00:00', '2022-01-21 20:00:00', 'J07', 'Evénement créé par la création de la rencontre J07', 'Interclub'),
(172, '2022-01-28 20:00:00', '2022-01-28 20:00:00', 'J08', 'Evénement créé par la création de la rencontre J08', 'Interclub'),
(173, '2022-01-31 20:30:00', '2022-01-31 20:30:00', 'J09', 'Evénement créé par la création de la rencontre J09', 'Interclub'),
(174, '2022-02-11 20:00:00', '2022-02-11 20:00:00', 'J10', 'Evénement créé par la création de la rencontre J10', 'Interclub'),
(175, '2022-03-11 20:00:00', '2022-03-11 20:00:00', 'J11', 'Evénement créé par la création de la rencontre J11', 'Interclub'),
(176, '2022-03-18 20:15:00', '2022-03-18 20:15:00', 'J12', 'Evénement créé par la création de la rencontre J12', 'Interclub'),
(177, '2022-03-25 20:00:00', '2022-03-25 20:00:00', 'J13', 'Evénement créé par la création de la rencontre J13', 'Interclub'),
(178, '2022-03-28 20:00:00', '2022-03-28 20:00:00', 'J14', 'Evénement créé par la création de la rencontre J14', 'Interclub'),
(179, '2022-01-22 00:00:00', '2022-01-23 00:00:00', 'Championnats Départemental CD95 Vétérans - 21-22', 'Evénement créé par la création du tournoi Championnats Départemental CD95 Vétérans - 21-22', 'Tournoi'),
(180, '2022-02-05 00:00:00', '2022-01-06 00:00:00', '24ème tournoi National Carrières', 'Evénement créé par la création du tournoi 24ème tournoi National Carrières', 'Tournoi'),
(181, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'Tounoi BCV 2022', 'Evénement créé par la création du tournoi Tounoi BCV 2022', 'Tournoi'),
(182, '2022-02-05 00:00:00', '2022-02-06 00:00:00', 'Cambo 12', 'Evénement créé par la création du tournoi Cambo 12', 'Tournoi'),
(183, '2022-02-12 00:00:00', '2022-02-13 00:00:00', 'Tournoi des Licornes de Triel', 'Evénement créé par la création du tournoi Tournoi des Licornes de Triel', 'Tournoi'),
(184, '2022-02-19 00:00:00', '2022-02-20 00:00:00', '15eme tournoi des Mousquetaires', 'Evénement créé par la création du tournoi 15eme tournoi des Mousquetaires', 'Tournoi'),
(185, '2022-03-26 00:00:00', '2022-01-27 00:00:00', 'TOURNOI DE DOUBLES D\'ELANCOURT', 'Evénement créé par la création du tournoi TOURNOI DE DOUBLES D\'ELANCOURT', 'Tournoi'),
(186, '2022-02-05 00:00:00', '2022-02-06 00:00:00', '3ÈME TOURNOI DE LIMAY', 'Evénement créé par la création du tournoi 3ÈME TOURNOI DE LIMAY', 'Tournoi'),
(187, '2016-01-01 00:00:00', '2016-01-01 00:00:00', '3ÈME TOURNOI DE LIMAY', 'Evénement créé par la création du tournoi 3ÈME TOURNOI DE LIMAY', 'Tournoi'),
(188, '2021-12-17 20:30:00', '2021-12-17 20:30:00', 'J1 Le Mesnil le Roi 3 Vs Villepreux 4', 'Evénement créé par la création de la rencontre J1 Le Mesnil le Roi 3 Vs Villepreux 4', 'Interclub'),
(189, '2021-11-25 21:00:00', '2021-11-25 21:00:00', 'J2 - Exempt', 'Evénement créé par la création de la rencontre J2 - Exempt', 'Interclub'),
(190, '2021-11-29 20:00:00', '2021-11-29 20:00:00', 'J3 - Maisons-Laffitte 5 / Villepreux 4', 'Evénement créé par la création de la rencontre J3 - Maisons-Laffitte 5 / Villepreux 4', 'Interclub'),
(191, '2021-12-06 21:00:00', '2021-12-06 21:00:00', 'J4 - Villepreux 4 / Vélizy 3', 'Evénement créé par la création de la rencontre J4 - Villepreux 4 / Vélizy 3', 'Interclub'),
(192, '2021-12-17 20:30:00', '2021-12-17 20:30:00', 'J5 - Poissy 5 / Villepreux 4', 'Evénement créé par la création de la rencontre J5 - Poissy 5 / Villepreux 4', 'Interclub'),
(193, '2022-01-10 21:00:00', '2022-01-10 21:00:00', 'J6 - Villepreux 4 / Chatou 2', 'Evénement créé par la création de la rencontre J6 - Villepreux 4 / Chatou 2', 'Interclub'),
(194, '2022-01-17 21:00:00', '2022-01-17 21:00:00', 'J7 - Villepreux 4 / Bad en Seine 6', 'Evénement créé par la création de la rencontre J7 - Villepreux 4 / Bad en Seine 6', 'Interclub'),
(195, '2022-01-24 21:00:00', '2022-01-24 21:00:00', 'J8 - Villepreux 4 / Le Mesnil le roi 3', 'Evénement créé par la création de la rencontre J8 - Villepreux 4 / Le Mesnil le roi 3', 'Interclub'),
(196, '2022-01-31 21:00:00', '2022-01-31 21:00:00', 'J9 - Exempt', 'Evénement créé par la création de la rencontre J9 - Exempt', 'Interclub'),
(197, '2022-02-07 21:00:00', '2022-02-07 21:00:00', 'J10 - Villepreux 4 / Maisons-Laffitte 5', 'Evénement créé par la création de la rencontre J10 - Villepreux 4 / Maisons-Laffitte 5', 'Interclub'),
(198, '2021-03-08 20:00:00', '2021-03-08 20:00:00', 'J11 - Vélizy 3 / Villepreux 4', 'Evénement créé par la création de la rencontre J11 - Vélizy 3 / Villepreux 4', 'Interclub'),
(199, '2022-03-08 20:00:00', '2022-03-08 20:00:00', 'J11 - Vélizy 3 / Villepreux 4', 'Evénement créé par la création de la rencontre J11 - Vélizy 3 / Villepreux 4', 'Interclub'),
(200, '2022-03-14 21:00:00', '2022-03-14 21:00:00', 'j12 Villepreux 4 / Poissy 5', 'Evénement créé par la création de la rencontre j12 Villepreux 4 / Poissy 5', 'Interclub'),
(201, '2022-03-25 20:00:00', '2022-03-25 20:00:00', 'J13 - Chatou 2 / Villepreux 4', 'Evénement créé par la création de la rencontre J13 - Chatou 2 / Villepreux 4', 'Interclub'),
(202, '2022-03-30 20:00:00', '2022-03-30 20:00:00', 'J14 - Bad en Seine 6 / Villepreux 4', 'Evénement créé par la création de la rencontre J14 - Bad en Seine 6 / Villepreux 4', 'Interclub'),
(203, '2021-11-17 20:30:00', '2021-11-17 20:30:00', 'J01 - Le Mesnil 3 / Villepreux 4', 'Evénement créé par la création de la rencontre J01 - Le Mesnil 3 / Villepreux 4', 'Interclub'),
(204, '2021-12-27 11:22:00', '2021-12-27 11:22:00', 'J05 - Poissy 5 / Villepreux 4', 'Evénement créé par la création de la rencontre J05 - Poissy 5 / Villepreux 4', 'Interclub'),
(205, '2021-12-27 11:25:00', '2021-12-27 11:25:00', 'J09 - Exempt', 'Evénement créé par la création de la rencontre J09 - Exempt', 'Interclub'),
(206, '2022-03-07 20:00:00', '2022-03-07 20:00:00', 'J11 - Vélizy 3 / Villepreux 4', 'Evénement créé par la création de la rencontre J11 - Vélizy 3 / Villepreux 4', 'Interclub'),
(207, '2022-03-30 20:00:00', '2022-03-30 20:00:00', 'J14 - Bad en Seine 6 / Villepreux 4', 'Evénement créé par la création de la rencontre J14 - Bad en Seine 6 / Villepreux 4', 'Interclub'),
(208, '2021-11-15 21:00:00', '2021-11-15 21:00:00', 'J01 - Villepreux 3 / St Arnoult 2', 'Evénement créé par la création de la rencontre J01 - Villepreux 3 / St Arnoult 2', 'Interclub'),
(209, '2021-12-27 12:43:00', '2021-12-27 12:43:00', 'J02 - Magny 2 / Villepreux 3', 'Evénement créé par la création de la rencontre J02 - Magny 2 / Villepreux 3', 'Interclub'),
(210, '2021-11-22 20:15:00', '2021-11-22 20:15:00', 'J02 - Magny 2 / Villepreux 3', 'Evénement créé par la création de la rencontre J02 - Magny 2 / Villepreux 3', 'Interclub'),
(211, '2021-11-29 21:00:00', '2021-11-29 21:00:00', 'J03 - Villepreux 3 /', 'Evénement créé par la création de la rencontre J03 - Villepreux 3 /', 'Interclub'),
(212, '2021-12-27 12:50:00', '2021-12-27 12:50:00', 'J04 - Mybad4 / Villepreux 3', 'Evénement créé par la création de la rencontre J04 - Mybad4 / Villepreux 3', 'Interclub'),
(213, '2021-12-28 18:06:00', '2021-12-28 18:06:00', 'J05 - Exempt', 'Evénement créé par la création de la rencontre J05 - Exempt', 'Interclub'),
(214, '2021-12-28 18:06:00', '2021-12-28 18:06:00', 'J06 -', 'Evénement créé par la création de la rencontre J06 -', 'Interclub'),
(215, '2021-01-14 20:00:00', '2021-01-14 20:00:00', 'J06 - Elancourt 6 / Villepreux 3', 'Evénement créé par la création de la rencontre J06 - Elancourt 6 / Villepreux 3', 'Interclub'),
(216, '2022-01-17 20:30:00', '2022-01-17 20:30:00', 'J07 - Voisins 6 / Villepreux 3', 'Evénement créé par la création de la rencontre J07 - Voisins 6 / Villepreux 3', 'Interclub'),
(217, '2022-01-24 20:30:00', '2022-01-24 20:30:00', 'J08 - St Arnoult 2 / Villepreux 3', 'Evénement créé par la création de la rencontre J08 - St Arnoult 2 / Villepreux 3', 'Interclub'),
(218, '2022-01-31 21:00:00', '2022-01-31 21:00:00', 'J09 - Villepreux 3 / Magny 2', 'Evénement créé par la création de la rencontre J09 - Villepreux 3 / Magny 2', 'Interclub'),
(219, '2022-02-11 20:30:00', '2022-02-11 20:30:00', 'J10 - Montigny 8 / Villepreux 3', 'Evénement créé par la création de la rencontre J10 - Montigny 8 / Villepreux 3', 'Interclub'),
(220, '2022-03-07 21:00:00', '2022-03-07 21:00:00', 'J11 - Villepreux 3 / My Bad 4', 'Evénement créé par la création de la rencontre J11 - Villepreux 3 / My Bad 4', 'Interclub'),
(221, '2022-03-18 20:30:00', '2022-03-18 20:30:00', 'J12 - Exempt', 'Evénement créé par la création de la rencontre J12 - Exempt', 'Interclub'),
(222, '2022-03-21 21:00:00', '2022-03-21 21:00:00', 'J13 - Villepreux 3 / Elancourt 6', 'Evénement créé par la création de la rencontre J13 - Villepreux 3 / Elancourt 6', 'Interclub'),
(223, '2022-03-28 21:00:00', '2022-03-28 21:00:00', 'J14 - Villepreux 3 / Voisins 6', 'Evénement créé par la création de la rencontre J14 - Villepreux 3 / Voisins 6', 'Interclub');

-- --------------------------------------------------------

--
-- Structure de la table `interclub`
--

CREATE TABLE `interclub` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_rencontre` datetime NOT NULL,
  `team_home_id` int(11) DEFAULT NULL,
  `team_ext_id` int(11) DEFAULT NULL,
  `saison_id` int(11) DEFAULT NULL,
  `score` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lieu_id` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sh1_id` int(11) DEFAULT NULL,
  `sh2_id` int(11) DEFAULT NULL,
  `sh3_id` int(11) DEFAULT NULL,
  `sh4_id` int(11) DEFAULT NULL,
  `sd_id` int(11) DEFAULT NULL,
  `ddjoueuse1_id` int(11) DEFAULT NULL,
  `ddjoueuse2_id` int(11) DEFAULT NULL,
  `dh1joueur1_id` int(11) DEFAULT NULL,
  `dh1joueur2_id` int(11) DEFAULT NULL,
  `dh2joueur1_id` int(11) DEFAULT NULL,
  `dh2joueur2_id` int(11) DEFAULT NULL,
  `dmxjoueur_id` int(11) DEFAULT NULL,
  `dmxjoueuse_id` int(11) DEFAULT NULL,
  `team_bacv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `interclub`
--

INSERT INTO `interclub` (`id`, `name`, `date_rencontre`, `team_home_id`, `team_ext_id`, `saison_id`, `score`, `lieu_id`, `location`, `sh1_id`, `sh2_id`, `sh3_id`, `sh4_id`, `sd_id`, `ddjoueuse1_id`, `ddjoueuse2_id`, `dh1joueur1_id`, `dh1joueur2_id`, `dh2joueur1_id`, `dh2joueur2_id`, `dmxjoueur_id`, `dmxjoueuse_id`, `team_bacv_id`) VALUES
(1, 'J01 - Maurecourt 1 / Villepreux 2', '2019-11-08 16:23:00', 3, 2, 1, '4 - 3', 3, '3', 12, 32, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, 'J02 - Villepreux 2 / Bad en Seine 7', '2019-11-15 00:00:00', 2, 6, 1, '5 - 2', 1, '1', 30, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(4, 'J01 - Villepreux 1 / Elancourt 3', '2019-11-08 20:00:00', 1, 22, 1, NULL, 1, '1', 23, 25, 26, 12, 24, 24, 27, 23, 25, 12, 12, 23, 27, 1),
(7, 'J07 - Villepreux 1 / Villennes 1', '2020-01-10 20:00:00', 1, 23, 1, NULL, 1, '1', 23, 26, 32, NULL, 28, 24, 28, 23, 26, NULL, NULL, 32, 27, 1),
(8, 'J03 - Villepreux 1 / Rambouillet 2', '2019-11-22 20:30:00', 1, 24, 1, NULL, 2, '2', 12, 12, 12, 12, 24, 27, 28, 12, 12, 12, 12, NULL, NULL, 1),
(10, 'J08 - Villepreux 2 / Maurecourt 1', '2020-01-17 20:00:00', 2, 3, 1, '2 - 5', 1, '1', 37, 35, 12, NULL, 39, 36, 39, 37, 38, NULL, NULL, 12, 36, 2),
(11, 'J03 - Vélizy 1 / Villepreux 2', '2019-11-21 20:00:00', 11, 2, 1, '5 - 2', 6, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(12, 'J04 - Villepreux 2 / Montigny 5', '2019-11-29 20:00:00', 2, 9, 1, '1 - 6', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(13, 'J05 - Chambourcy 3 / Villepreux 2', '2019-12-04 20:15:00', 12, 2, 1, '6 - 1', 7, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(14, 'J06 - Villepreux 2 / Fontenay 4', '2019-12-11 20:00:00', 2, 10, 1, '2 - 5', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(15, 'J09 - Bad en Seine 7 / Villepreux 2', '2020-01-24 20:45:00', 6, 2, 1, '1 - 6', 21, '21', 32, 12, 40, NULL, 49, 31, 49, 12, 40, NULL, NULL, 38, 31, 2),
(17, 'J10 - Villepreux 2 / Vélizy 1', '2020-01-29 20:00:00', 2, 11, 1, '2 - 5', 1, '1', 32, 12, 48, NULL, 49, 39, 49, 12, 32, NULL, NULL, 48, 31, 2),
(18, 'J07 - Limay 1 / Villepreux 2', '2020-02-06 20:30:00', 13, 2, 1, '4 - 3', 5, '5', 50, 12, 48, NULL, 39, 31, 39, 12, 48, NULL, NULL, 38, 31, 2),
(19, 'J12 - Villepreux 2 / Chambourcy 3', '2020-03-06 20:00:00', 2, 12, 1, '4 - 3', 1, '1', 37, 35, 32, NULL, 49, 39, 49, 12, 40, NULL, NULL, 40, 31, 2),
(20, 'J13 - Fontenay 4 / Villepreux 2', '2020-03-09 20:00:00', 10, 2, 1, '3 - 4', 10, '10', 32, 12, 48, NULL, 49, 39, 49, 40, 48, NULL, NULL, 40, 39, 2),
(21, 'J11 - Montigny 5 / Villepreux 2', '2020-02-28 20:30:00', 9, 2, 1, '4 - 3', 9, '9', 32, 37, 35, NULL, 49, 31, 36, 40, 12, NULL, NULL, 40, 39, 2),
(22, 'J14 - Villepreux 2 / Limay 1', '2020-03-20 20:00:00', 2, 13, 1, '', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(23, 'J01 - Villepreux 4 / Elancourt 7', '2020-01-03 16:35:00', 5, 15, 1, '0 / 6', 2, '2', 10, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(27, 'J03 - Villepreux 4 / Maisons-Lafitte 5', '2020-01-03 16:35:00', 5, 14, 1, '0 / 6', 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(28, 'J07 - Villepreux 4 / Villennes 3', '2020-01-06 21:00:00', 5, 16, 1, '1 / 5', 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(29, 'J08 - Elancourt 7 / Villepreux 4', '2020-01-17 19:45:00', 15, 5, 1, '6 / 0', 12, '12', NULL, NULL, 46, 11, NULL, NULL, NULL, 34, 10, 11, 29, NULL, NULL, 5),
(30, 'J05 - Villepreux 1 / Voisins 4', '2019-12-06 20:00:00', 1, 21, 1, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(31, 'J08 - Elancourt 3 / Villepreux 1', '2020-01-17 19:45:00', 22, 1, 1, NULL, 12, '12', 23, 26, 32, NULL, 28, 24, 47, 23, 26, NULL, NULL, 32, 27, 1),
(32, 'J09 - Villepreux 1 / Carrières 5', '2020-01-24 20:00:00', 1, 25, 1, NULL, 1, '1', 23, 26, 25, NULL, 28, 28, 24, 23, 26, NULL, NULL, 25, 27, 1),
(33, 'J10 - Maisons-Laffitte 5 / Villepreux 4', '2020-01-27 20:15:00', 14, 5, 1, NULL, 11, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(34, 'J01 - Elancourt 6 / Villepreux 3', '2019-11-08 18:45:00', 26, 4, 1, NULL, 12, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(35, 'J07 - St Cyr 2 / Villepreux 3', '2020-01-09 20:20:00', 27, 4, 1, '3 - 4', 19, '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(36, 'J08 - Villepreux 3 / Elancourt 6', '2020-01-13 21:00:00', 4, 26, 1, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(37, 'J09 - Les Essarts le roi / Villepreux 3', '2020-01-20 20:00:00', 28, 4, 1, NULL, 20, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(38, 'J10 - Villepreux 3 / Rambouillet 5', '2020-01-27 21:00:00', 4, 29, 1, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(39, 'J11 - Montigny 7 / Villepreux 3', '2020-02-28 20:30:00', 30, 4, 1, NULL, 9, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(40, 'J12 - Villepreux 3 / Vélizy 2', '2020-03-02 21:00:00', 4, 31, 1, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(41, 'J10 - Rambouillet 2 / Villepreux 1', '2020-01-29 20:30:00', 24, 1, 1, NULL, 17, '17', 23, 26, 40, NULL, 28, 24, 28, 23, 40, NULL, NULL, 26, 47, 1),
(42, 'J11 - Villepreux 1 / Montigny 3', '2020-02-28 20:00:00', 1, 9, 1, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(43, 'J12 - Voisins 4 / Villepreux 1', '2020-03-02 20:30:00', 21, 1, 1, NULL, 16, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(44, 'J11 - Villepreux 4 / Chatou 3', '2020-02-24 21:00:00', 5, 18, 1, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(45, 'J12 - Bad en Seine 10 / Villepreux 4', '2020-03-06 20:15:00', 17, 5, 1, NULL, 8, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(46, 'J13 - Villepreux 1 / Maurepas 2', '2020-03-13 20:00:00', 1, 33, 1, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(47, 'J14 - Villennes 1 / Villepreux 1', '2020-03-20 20:15:00', 23, 1, 1, NULL, 15, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(48, 'J13 - Les Clayes 1 / Villepreux 3', '2020-03-09 20:00:00', 34, 4, 1, NULL, 22, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(49, 'J14 - Villepreux 3 / St-Cyr 2', '2020-03-16 21:00:00', 4, 27, 1, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(50, 'J13 - Villepreux 4 / Mesnil le roi 3', '2020-03-09 21:00:00', 5, 19, 1, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(51, 'J14 - Chatou 2 / Villepreux 4', '2020-03-20 20:00:00', 35, 5, 1, NULL, 13, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(52, 'J01 - Villepreux 1 / Chambourcy 3', '2021-02-06 20:30:00', 1, 12, 2, NULL, 1, '1', 23, 26, NULL, NULL, 47, 24, 47, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(53, 'J02 - Maurecourt 1 / Villepreux 1', '2021-04-06 20:30:00', 3, 1, 2, NULL, 3, '3', 26, 23, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(54, 'test IC3', '2021-04-04 14:48:00', 2, 33, 2, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(55, 'J01 - Montigny 4 / Villepreux 1', '2021-11-19 20:30:00', 36, 1, 3, '5 - 2', 9, '9', 23, 32, 126, NULL, 49, 24, 125, 26, 32, NULL, NULL, 126, 49, 1),
(56, 'J01 - Villepreux 2 / Montigny 6', '2021-11-15 21:00:00', 2, 37, 3, '5 - 2', 2, '2', 51, 35, 38, NULL, 28, 28, 39, 122, 12, NULL, NULL, 50, 27, 2),
(57, 'J02 - Carrières sur Seine 6 / Villepreux', '2021-11-26 20:00:00', 25, 2, 3, '5 - 2', 18, '18', 48, 35, 50, NULL, 49, 49, 31, 48, 50, NULL, NULL, 26, 27, 2),
(58, 'J03 - Villepreux 2 / Poissy 3', '2021-12-01 20:00:00', 2, 40, 3, '2 - 5', 1, '1', 25, 51, 35, NULL, 28, 27, 31, 12, 25, NULL, NULL, 48, 39, 2),
(59, 'J04 - Villepreux 2 / Sartrouville 2', '2021-12-10 20:00:00', 2, 41, 3, '4 - 3', 1, '1', 23, 12, 35, NULL, 49, 49, 39, 38, 48, NULL, NULL, 50, 27, 2),
(60, 'J05 - Bad en Seine 5 / Villepreux 2', '2021-12-15 20:00:00', 42, 2, 3, NULL, 24, '24', 12, 38, 35, NULL, 28, 31, 39, 12, 38, NULL, NULL, 26, 27, 2),
(61, 'J06 - Villepreux 2 / Vélizy 1', '2022-01-14 20:00:00', 2, 11, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(62, 'J07 - St Cyr 1 - Villepreux 2', '2022-01-20 20:00:00', 43, 2, 3, NULL, 19, '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(63, 'J08 - Montigny 6 / Villepreux 2', '2022-01-28 20:30:00', 37, 2, 3, NULL, 9, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(64, 'J09 - Villepreux 2 / Carrières sur Seine', '2022-02-04 20:00:00', 2, 25, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(65, 'J10 - Poissy 3 - Villepreux 2', '2022-02-07 20:30:00', 40, 2, 3, NULL, 23, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(66, 'J11 - Sartrouville 2 / Villepreux 2', '2022-03-09 20:30:00', 41, 2, 3, NULL, 26, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(67, 'J12 - Villepreux 2 / Bad en Seine 5', '2022-03-18 20:00:00', 2, 42, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(68, 'J13 - Vélizy 1 / Villepreux 2', '2022-03-24 20:00:00', 11, 2, 3, NULL, 25, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(69, 'J14 - Villepreux 2 / St Cyr 1', '2022-04-01 20:00:00', 2, 43, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(70, 'J02 - Villepreux 1 / MyBad 2', '2021-11-26 20:00:00', 1, 38, 3, '3 - 4', 1, '1', 23, 126, 32, NULL, NULL, 24, 125, NULL, NULL, NULL, NULL, 122, 125, 1),
(71, 'J03 - St Arnoult 1 / Villepreux 1', '2021-11-29 20:30:00', 39, 1, 3, '2 - 5', 27, '27', 23, 126, 40, NULL, 49, 125, 49, 122, 23, NULL, NULL, 122, 125, 1),
(72, 'J04 - Rambouillet 2 / Villepreux 1', '2021-12-08 20:30:00', 24, 1, 3, '5 - 2', 17, '17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(73, 'J05 - Villepreux 1 / Villennes 1', '2021-12-17 20:00:00', 1, 23, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(74, 'J06 - Voisins 4 / Villepreux 1', '2022-01-10 20:30:00', 21, 1, 3, NULL, 16, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(75, 'J07 - Villepreux 1 / Maurepas 2', '2022-01-21 20:00:00', 1, 33, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(76, 'J08 - Villepreux 1 / Montigny 4', '2022-01-28 20:00:00', 1, 36, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(77, 'J09 - MyBad2 / Villepreux 1', '2022-01-31 20:30:00', 38, 1, 3, NULL, 29, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(78, 'J10 - Villepreux 1 / St Arnoult 1', '2022-02-11 20:00:00', 1, 39, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(79, 'J11 - Villepreux 1 / Rambouillet 2', '2022-03-11 20:00:00', 1, 24, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(80, 'J12 - Villennes 1 / Villepreux 1', '2022-03-18 20:15:00', 23, 1, 3, NULL, 15, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(81, 'J13 - Villepreux 1 / Voisins 4', '2022-03-25 20:00:00', 1, 21, 3, NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(82, 'J14 - Maurepas 2 / Villepreux 1', '2022-03-28 20:00:00', 33, 1, 3, NULL, 28, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(83, 'J01 - Le Mesnil le Roi 3 / Villepreux 4', '2021-11-17 20:30:00', 19, 5, 3, '6 / 0', 14, '14', 56, 44, 11, 29, NULL, NULL, NULL, 56, 11, 46, 44, NULL, NULL, 5),
(84, 'J02 - Exempt', '2021-11-25 21:00:00', 5, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(85, 'J03 - Maisons-Laffitte 5 / Villepreux 4', '2021-11-29 20:00:00', 14, 5, 3, '6 / 0', 31, '31', 44, 11, 34, 29, NULL, NULL, NULL, 11, 56, NULL, NULL, NULL, NULL, 5),
(86, 'J04 - Villepreux 4 / Vélizy 3', '2021-12-06 21:00:00', 5, 47, 3, '5 / 1', 2, '2', 44, 56, 34, 29, NULL, NULL, NULL, 44, 29, 56, 11, NULL, NULL, 5),
(88, 'J06 - Villepreux 4 / Chatou 2', '2022-01-10 21:00:00', 5, 35, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(89, 'J07 - Villepreux 4 / Bad en Seine 6', '2022-01-17 21:00:00', 5, 46, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(90, 'J08 - Villepreux 4 / Le Mesnil le roi 3', '2022-01-24 21:00:00', 5, 19, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(92, 'J10 - Villepreux 4 / Maisons-Laffitte 5', '2022-02-07 21:00:00', 5, 14, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(95, 'J12 - Villepreux 4 / Poissy 5', '2022-03-14 21:00:00', 5, 48, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(96, 'J13 - Chatou 2 / Villepreux 4', '2022-03-25 20:00:00', 18, 5, 3, NULL, 30, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(99, 'J05 - Poissy 5 / Villepreux 4', '2021-12-17 20:30:00', 48, 5, 3, '5 / 1', 32, '32', 56, 11, 10, 29, NULL, NULL, NULL, 11, 56, 44, 29, NULL, NULL, 5),
(100, 'J09 - Exempt', '2022-01-31 21:00:00', NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(101, 'J11 - Vélizy 3 / Villepreux 4', '2022-03-08 20:00:00', 47, 5, 3, NULL, 25, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(102, 'J14 - Bad en Seine 6 / Villepreux 4', '2022-03-30 20:00:00', 46, 5, 3, NULL, 33, '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(103, 'J01 - Villepreux 3 / St Arnoult 2', '2021-11-15 21:00:00', 4, 49, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(105, 'J02 - Magny 2 / Villepreux 3', '2021-11-22 20:15:00', 50, 4, 3, NULL, 34, '34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(106, 'J03 - Villepreux 3 / Montigny 8', '2021-11-29 21:00:00', 4, 51, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(107, 'J04 - Mybad4 / Villepreux 3', '2021-12-06 20:30:00', 52, 4, 3, NULL, 29, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(108, 'J05 - Exempt', '2021-12-28 18:06:00', 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(110, 'J06 - Elancourt 6 / Villepreux 3', '2022-01-14 20:00:00', 26, 4, 3, NULL, 12, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(111, 'J07 - Voisins 6 / Villepreux 3', '2022-01-17 20:30:00', 53, 4, 3, NULL, 16, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(112, 'J08 - St Arnoult 2 / Villepreux 3', '2022-01-24 20:30:00', 49, 4, 3, NULL, 27, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(113, 'J09 - Villepreux 3 / Magny 2', '2022-01-31 21:00:00', 4, 50, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(114, 'J10 - Montigny 8 / Villepreux 3', '2022-02-11 20:30:00', 51, 4, 3, NULL, 9, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(115, 'J11 - Villepreux 3 / My Bad 4', '2022-03-07 21:00:00', 4, 52, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(116, 'J12 - Exempt', '2022-03-18 20:30:00', NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(117, 'J13 - Villepreux 3 / Elancourt 6', '2022-03-21 21:00:00', 4, 26, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(118, 'J14 - Villepreux 3 / Voisins 6', '2022-03-28 21:00:00', 4, 53, 3, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Structure de la table `interclub_user`
--

CREATE TABLE `interclub_user` (
  `id` int(11) NOT NULL,
  `interclub_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `interclub_user`
--

INSERT INTO `interclub_user` (`id`, `interclub_id`, `user_id`, `type`, `value`) VALUES
(1, 20, 49, 'Présence', 'Oui'),
(2, 20, 32, 'Présence', 'Oui'),
(3, 20, 12, 'Présence', 'Oui'),
(4, 20, 31, 'Présence', 'Oui'),
(5, 20, 40, 'Présence', 'Oui'),
(6, 52, 47, 'Présence', 'Oui'),
(7, 52, 23, 'Présence', 'Oui'),
(8, 52, 27, 'Présence', 'Non'),
(9, 52, 28, 'Présence', 'Non'),
(10, 52, 26, 'Présence', 'Oui'),
(11, 52, 24, 'Présence', 'Oui'),
(12, 55, 32, 'Présence', 'Oui'),
(13, 55, 31, 'Présence', '?'),
(14, 55, 12, 'Présence', '?'),
(15, 55, 28, 'Présence', '?'),
(16, 55, 125, 'Présence', 'Oui'),
(17, 55, 126, 'Présence', 'Oui'),
(18, 55, 24, 'Présence', 'Oui'),
(19, 55, 47, 'Présence', 'Oui'),
(20, 56, 28, 'Présence', 'Oui'),
(21, 56, 31, 'Présence', '?'),
(22, 56, 12, 'Présence', 'Oui'),
(23, 56, 26, 'Présence', '?'),
(24, 56, 38, 'Présence', 'Oui'),
(25, 56, 27, 'Présence', 'Oui'),
(26, 56, 42, 'Présence', 'Non'),
(27, 56, 39, 'Présence', 'Oui'),
(28, 56, 48, 'Présence', '?'),
(29, 56, 50, 'Présence', 'Oui'),
(30, 56, 35, 'Présence', 'Oui'),
(31, 56, 51, 'Présence', 'Oui'),
(32, 55, 40, 'Présence', 'Non'),
(33, 55, 49, 'Présence', 'Oui'),
(34, 55, 122, 'Présence', 'Oui'),
(35, 55, 23, 'Présence', 'Oui'),
(36, 55, 26, 'Présence', 'Oui'),
(37, 56, 122, 'Présence', 'Oui'),
(38, 70, 23, 'Présence', 'Oui'),
(39, 70, 49, 'Présence', 'Oui'),
(40, 70, 25, 'Présence', 'Non'),
(41, 70, 40, 'Présence', '?'),
(42, 70, 32, 'Présence', 'Oui'),
(43, 70, 47, 'Présence', 'Non'),
(44, 70, 24, 'Présence', 'Oui'),
(45, 70, 122, 'Présence', 'Oui'),
(46, 70, 126, 'Présence', 'Oui'),
(47, 70, 125, 'Présence', 'Oui'),
(48, 57, 49, 'Présence', 'Oui'),
(49, 57, 31, 'Présence', 'Oui'),
(50, 57, 12, 'Présence', 'Oui'),
(51, 57, 27, 'Présence', 'Oui'),
(52, 57, 42, 'Présence', 'Non'),
(53, 57, 35, 'Présence', 'Oui'),
(54, 57, 51, 'Présence', 'Non'),
(55, 57, 39, 'Présence', 'Non'),
(56, 57, 26, 'Présence', 'Oui'),
(57, 57, 38, 'Présence', 'Non'),
(58, 57, 48, 'Présence', 'Oui'),
(59, 57, 50, 'Présence', 'Oui'),
(60, 83, 11, 'Présence', 'Oui'),
(61, 83, 56, 'Présence', 'Oui'),
(62, 83, 44, 'Présence', 'Oui'),
(63, 83, 46, 'Présence', 'Oui'),
(64, 83, 34, 'Présence', 'Non'),
(65, 83, 10, 'Présence', 'Non'),
(66, 83, 54, 'Présence', 'Non'),
(67, 85, 11, 'Présence', 'Oui'),
(68, 85, 10, 'Présence', 'Non'),
(69, 71, 32, 'Présence', 'Non'),
(70, 72, 32, 'Présence', 'Oui'),
(71, 73, 32, 'Présence', 'Oui'),
(72, 74, 32, 'Présence', 'Oui'),
(73, 75, 32, 'Présence', 'Oui'),
(74, 71, 23, 'Présence', 'Oui'),
(75, 71, 49, 'Présence', 'Oui'),
(76, 71, 40, 'Présence', 'Oui'),
(77, 71, 47, 'Présence', 'Non'),
(78, 71, 24, 'Présence', 'Non'),
(79, 71, 122, 'Présence', 'Oui'),
(80, 71, 126, 'Présence', 'Oui'),
(81, 71, 125, 'Présence', 'Oui'),
(82, 85, 44, 'Présence', 'Oui'),
(83, 85, 56, 'Présence', 'Oui'),
(84, 85, 127, 'Présence', 'Non'),
(85, 85, 34, 'Présence', 'Oui'),
(86, 83, 29, 'Présence', 'Oui'),
(87, 86, 34, 'Présence', 'Oui'),
(88, 85, 29, 'Présence', 'Oui'),
(89, 85, 54, 'Présence', 'Non'),
(90, 58, 28, 'Présence', 'Oui'),
(91, 58, 31, 'Présence', 'Oui'),
(92, 58, 12, 'Présence', 'Oui'),
(93, 58, 27, 'Présence', 'Oui'),
(94, 58, 42, 'Présence', '?'),
(95, 58, 35, 'Présence', 'Oui'),
(96, 58, 51, 'Présence', 'Oui'),
(97, 58, 39, 'Présence', 'Oui'),
(98, 58, 26, 'Présence', 'Oui'),
(99, 58, 38, 'Présence', 'Non'),
(100, 58, 48, 'Présence', 'Oui'),
(101, 58, 50, 'Présence', 'Oui'),
(102, 58, 25, 'Présence', 'Oui'),
(103, 86, 11, 'Présence', 'Oui'),
(104, 86, 56, 'Présence', 'Oui'),
(105, 86, 29, 'Présence', 'Oui'),
(106, 86, 127, 'Présence', 'Non'),
(107, 86, 44, 'Présence', 'Oui'),
(108, 86, 46, 'Présence', 'Non'),
(109, 86, 54, 'Présence', 'Non'),
(110, 86, 10, 'Présence', 'Non'),
(111, 59, 28, 'Présence', 'Non'),
(112, 59, 31, 'Présence', 'Non'),
(113, 59, 12, 'Présence', 'Oui'),
(114, 59, 27, 'Présence', 'Oui'),
(115, 59, 42, 'Présence', 'Oui'),
(116, 59, 35, 'Présence', 'Oui'),
(117, 59, 51, 'Présence', 'Non'),
(118, 59, 39, 'Présence', 'Oui'),
(119, 59, 26, 'Présence', 'Non'),
(120, 59, 38, 'Présence', 'Oui'),
(121, 59, 48, 'Présence', 'Oui'),
(122, 59, 50, 'Présence', 'Oui'),
(123, 59, 49, 'Présence', 'Oui'),
(124, 59, 23, 'Présence', 'Oui'),
(125, 60, 28, 'Présence', 'Oui'),
(126, 60, 31, 'Présence', 'Oui'),
(127, 60, 27, 'Présence', 'Oui'),
(128, 60, 12, 'Présence', 'Oui'),
(129, 60, 51, 'Présence', 'Non'),
(130, 60, 39, 'Présence', 'Oui'),
(131, 60, 26, 'Présence', 'Oui'),
(132, 60, 38, 'Présence', 'Oui'),
(133, 60, 48, 'Présence', 'Non'),
(134, 60, 50, 'Présence', 'Non'),
(135, 60, 35, 'Présence', 'Oui'),
(136, 60, 25, 'Présence', 'Oui'),
(137, 99, 11, 'Présence', 'Oui'),
(138, 99, 44, 'Présence', 'Oui'),
(139, 99, 46, 'Présence', 'Non'),
(140, 99, 127, 'Présence', 'Non'),
(141, 99, 29, 'Présence', 'Oui'),
(142, 99, 54, 'Présence', 'Non'),
(143, 99, 34, 'Présence', 'Non'),
(144, 99, 10, 'Présence', 'Oui'),
(145, 99, 56, 'Présence', 'Oui');

-- --------------------------------------------------------

--
-- Structure de la table `interclub_veteran`
--

CREATE TABLE `interclub_veteran` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_rencontre` date DEFAULT NULL,
  `saison_id` int(11) DEFAULT NULL,
  `score` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_home_id` int(11) DEFAULT NULL,
  `team_ext_id` int(11) DEFAULT NULL,
  `lieu_id` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `interclub_veteran_user`
--

CREATE TABLE `interclub_veteran_user` (
  `id` int(11) NOT NULL,
  `interclub_veteran_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `doodle_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `doodle_id`, `name`, `description`) VALUES
(1, 1, 'Lundi 15 Juin<br>21h00-22h30', 'Adultes (Compétiteurs + Loisirs)'),
(2, 1, 'Mardi 16 Juin<br>19h00-20h30', 'Jeunes'),
(3, 1, 'Mardi 16 Juin<br>20h45-22h30', 'Adultes Loisirs'),
(4, 1, 'Mercredi 17 Juin<br>20h00-22h30', 'Compétiteurs'),
(5, 1, 'Vendredi 19 Juin<br>20h00-22h30', 'Tous'),
(6, 2, 'Fonctionnalité', 'Nouvelle fonctionnalité sur le site ?'),
(7, 2, 'test autre', NULL),
(8, 3, 'item test number', 'Yo !'),
(9, 4, 'Tu kiffes le badminton ?', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lien_doodle`
--

CREATE TABLE `lien_doodle` (
  `id` int(11) NOT NULL,
  `doodle_id` int(11) NOT NULL,
  `personne_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lien_doodle`
--

INSERT INTO `lien_doodle` (`id`, `doodle_id`, `personne_id`, `item_id`, `value`, `updated_dt`) VALUES
(2, 1, 6, 1, '0', '2020-06-29 09:25:54'),
(3, 1, 6, 2, '1', '2020-06-29 09:25:54'),
(4, 1, 6, 3, '1', '2020-06-29 09:25:54'),
(5, 1, 6, 4, '0', '2020-06-29 09:25:54'),
(6, 1, 6, 5, '0', '2020-06-29 09:25:54'),
(12, 1, 9, 1, '0', '2020-06-18 20:55:42'),
(13, 1, 9, 2, '0', '2020-06-18 20:55:42'),
(14, 1, 9, 3, '1', '2020-06-18 20:55:42'),
(15, 1, 9, 4, '1', '2020-06-18 20:55:42'),
(16, 1, 9, 5, '0', '2020-06-18 20:55:42'),
(17, 1, 10, 1, '0', '2020-06-18 20:55:17'),
(18, 1, 10, 2, '1', '2020-06-18 20:55:17'),
(19, 1, 10, 3, '1', '2020-06-18 20:55:17'),
(20, 1, 10, 4, '1', '2020-06-18 20:55:17'),
(21, 1, 10, 5, '0', '2020-06-18 20:55:17'),
(37, 1, 12, 1, '1', '2020-06-18 22:30:32'),
(38, 1, 12, 2, '0', '2020-06-18 22:30:32'),
(39, 1, 12, 3, '0', '2020-06-18 22:30:32'),
(40, 1, 12, 4, '0', '2020-06-18 22:30:32'),
(41, 1, 12, 5, '0', '2020-06-18 22:30:32'),
(42, 1, 13, 1, '1', '2020-06-20 08:29:13'),
(43, 1, 13, 2, '0', '2020-06-20 08:29:13'),
(44, 1, 13, 3, '0', '2020-06-20 08:29:13'),
(45, 1, 13, 4, '0', '2020-06-20 08:29:13'),
(46, 1, 13, 5, '0', '2020-06-20 08:29:13'),
(47, 1, 14, 1, '0', '2020-06-20 08:39:53'),
(48, 1, 14, 2, '1', '2020-06-20 08:39:53'),
(49, 1, 14, 3, '0', '2020-06-20 08:39:53'),
(50, 1, 14, 4, '0', '2020-06-20 08:39:53'),
(51, 1, 14, 5, '0', '2020-06-20 08:39:53'),
(57, 1, 16, 1, '1', '2020-06-20 08:40:38'),
(58, 1, 16, 2, '0', '2020-06-20 08:40:38'),
(59, 1, 16, 3, '0', '2020-06-20 08:40:38'),
(60, 1, 16, 4, '0', '2020-06-20 08:40:38'),
(61, 1, 16, 5, '0', '2020-06-20 08:40:38'),
(62, 1, 17, 1, '1', '2020-06-20 08:41:59'),
(63, 1, 17, 2, '0', '2020-06-20 08:41:59'),
(64, 1, 17, 3, '0', '2020-06-20 08:41:59'),
(65, 1, 17, 4, '0', '2020-06-20 08:41:59'),
(66, 1, 17, 5, '0', '2020-06-20 08:41:59'),
(67, 1, 18, 1, '0', '2020-06-20 08:42:59'),
(68, 1, 18, 2, '1', '2020-06-20 08:42:59'),
(69, 1, 18, 3, '0', '2020-06-20 08:42:59'),
(70, 1, 18, 4, '0', '2020-06-20 08:42:59'),
(71, 1, 18, 5, '0', '2020-06-20 08:42:59'),
(72, 1, 19, 1, '0', '2020-06-20 14:11:23'),
(73, 1, 19, 2, '1', '2020-06-20 14:11:23'),
(74, 1, 19, 3, '0', '2020-06-20 14:11:23'),
(75, 1, 19, 4, '0', '2020-06-20 14:11:23'),
(76, 1, 19, 5, '0', '2020-06-20 14:11:23'),
(77, 1, 20, 1, '0', '2020-06-20 14:13:54'),
(78, 1, 20, 2, '0', '2020-06-20 14:13:54'),
(79, 1, 20, 3, '0', '2020-06-20 14:13:54'),
(80, 1, 20, 4, '1', '2020-06-20 14:13:54'),
(81, 1, 20, 5, '0', '2020-06-20 14:13:54'),
(82, 1, 21, 1, '0', '2020-06-25 19:28:51'),
(83, 1, 21, 2, '0', '2020-06-25 19:28:51'),
(84, 1, 21, 3, '0', '2020-06-25 19:28:51'),
(85, 1, 21, 4, '0', '2020-06-25 19:28:51'),
(86, 1, 21, 5, '0', '2020-06-25 19:28:51'),
(87, 1, 22, 1, '0', '2020-06-25 19:43:53'),
(88, 1, 22, 2, '0', '2020-06-25 19:43:53'),
(89, 1, 22, 3, '0', '2020-06-25 19:43:53'),
(90, 1, 22, 4, '0', '2020-06-25 19:43:53'),
(91, 1, 22, 5, '0', '2020-06-25 19:43:53'),
(92, 1, 23, 1, '0', '2020-06-25 19:45:14'),
(93, 1, 23, 2, '0', '2020-06-25 19:45:14'),
(94, 1, 23, 3, '0', '2020-06-25 19:45:14'),
(95, 1, 23, 4, '0', '2020-06-25 19:45:14'),
(96, 1, 23, 5, '0', '2020-06-25 19:45:14'),
(97, 1, 24, 1, '1', '2020-06-25 20:00:54'),
(98, 1, 24, 2, '0', '2020-06-25 20:00:54'),
(99, 1, 24, 3, '0', '2020-06-25 20:00:54'),
(100, 1, 24, 4, '1', '2020-06-25 20:00:54'),
(101, 1, 24, 5, '0', '2020-06-25 20:00:54'),
(102, 1, 25, 1, '0', '2020-06-25 20:21:42'),
(103, 1, 25, 2, '0', '2020-06-25 20:21:42'),
(104, 1, 25, 3, '1', '2020-06-25 20:21:42'),
(105, 1, 25, 4, '0', '2020-06-25 20:21:42'),
(106, 1, 25, 5, '1', '2020-06-25 20:21:42'),
(107, 1, 26, 1, '0', '2020-06-29 10:14:29'),
(108, 1, 26, 2, '0', '2020-06-29 10:14:29'),
(109, 1, 26, 3, '1', '2020-06-29 10:14:29'),
(110, 1, 26, 4, '0', '2020-06-29 10:14:29'),
(111, 1, 26, 5, '0', '2020-06-29 10:14:29'),
(112, 2, 14, 6, 'titi', '2020-07-06 15:23:57'),
(113, 2, 27, 6, 'yes', '2020-07-08 11:04:22'),
(114, 2, 27, 7, 'no', '2020-07-08 11:04:22'),
(115, 3, 28, 8, '3', '2020-07-14 13:03:00'),
(116, 4, 28, 9, 'yes', '2020-07-14 14:03:45'),
(117, 4, 10, 9, 'no !', '2020-07-14 14:04:01'),
(118, 4, 14, 9, 'yes', '2020-07-14 14:28:13');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`id`, `name`, `rue`, `code_postal`, `ville`, `club_id`) VALUES
(1, 'Mimoun', 'Avenue Charles de Gaulle', '78450', 'Villepreux', 3),
(2, 'Jeu de Paume', '3 Allée du Hameau de la Reine', '78450', 'Villepreux', 3),
(3, 'Stade Yannick Noah', 'Rue Jean Jaurès', '78780', 'Maurecourt', 4),
(5, 'Complexe sportif Guy Moquet', 'Rue Charles Tellier', '78520', 'Limay', 7),
(6, 'Gymnase Mozart', '14 Rue de la Division Leclerc', '78140', 'Vélizy-Villacoublay', 8),
(7, 'Georges Galliène', '5 rue du Mur du Parc', '78240', 'Chambourcy', 9),
(8, 'Gymnase Montesquieu', 'Rue Montesquieu', '78440', 'Gargenville', 6),
(9, 'Gymnase Maréchal', '6, rue Victor Hugo', '78180', 'Montigny le Bretonneux', 5),
(10, 'Gymnase du Levant', 'Rue Messiaen', '78330', 'Fontenay le Fleury', 10),
(11, 'Centre Sportif et Culturel', '99 Rue de la Muette', '78600', 'Maisons-Laffitte', 11),
(12, 'Gymnase Pierre de Coubertin', '31 Avenue de la Petite Villedieu', '78990', 'Élancourt', 12),
(13, 'CORBIN', '80 Rue Auguste Renoir', '78400', 'Chatou', 14),
(14, 'Complexe sportif du Mesnil le Roi', '12 Rue des Grands Champs', '78600', 'Le Mesnil-le-Roi', 15),
(15, 'Centre sportif ASV Badminton', '157 Rue du Pré aux Moutons', '78670', 'Villennes-sur-Seine', 13),
(16, 'Gymnase les Pyramides', '4 mail de Schenefeld', '78960', 'VOISINS LE BRETONNEUX', 16),
(17, 'Gymnase VIVONNE', 'rue de Clairefontaine', '78120', 'RAMBOUILLET', 17),
(18, 'Complexe Sportif des Amandiers', '156 route de Bezons', '78420', 'Carrières sur Seine', 18),
(19, 'JEAN MACE', 'Rue Jean Pierre Timbaud', '78210', 'SAINT CYR L ECOLE', 20),
(20, 'Gymnase des molières', '22 Rue des Molières', '78690', 'Les essarts le roi', 21),
(21, 'Gymnase des Prés l’abbé', '16 Rue des Prés l\'Abbé', '78440', 'Gargenville', 6),
(22, 'Gymnase Guimier', 'Rue Pablo Neruda', '78340', 'Les Clayes-sous-bois', 23),
(23, 'La halle des sports', '76 avenue Blanche de Castille', '78300', 'Poissy', 26),
(24, 'Gymnase Davot', 'Av. louis Tibaldi', '78440', 'Porcheville', 6),
(25, 'Centre Sportif Jean Borotra', '13 rue de la Division Leclerc', '78140', 'Vélizy-Villacoublay', 8),
(26, 'Joliot Curie', '78 Bd de Bezons', '78500', 'Sartrouville', 27),
(27, 'Gymnase de St Arnoult', '51 Rue de Nuisement', '78730', '51 Rue de Nuisement, 78730 St ', 25),
(28, 'Gymnase de la Malmedonne', 'Av de Rouergue', '78310', 'Maurepas', 22),
(29, 'Lieutel', 'place de l\'Europe', '78940', 'la Queue lez Yvelines', 28),
(30, 'Gymnase Finaltéri', '191 rue des Landes', '78400', 'Chatou', 14),
(31, 'Gymnase Jules Verne', '6 Quai de Seine', '78500', 'Sartrouville', 11),
(32, 'Gymnase Patrick Caglione', '5 rue des Fauvettes', '78300', 'Poissy', 26),
(33, 'Gymnase Davot', 'Av. Louis Tibaldi', '78440', 'Porcheville', 6),
(34, 'Chantal Mauduit', '14 rue Hodebourg', '78114', 'Magny les Hameaux', 29);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190930142152', '2019-09-30 14:22:24'),
('20190930220946', '2019-09-30 22:11:47'),
('20191002145723', '2019-10-13 10:34:50'),
('20191002150041', '2019-10-13 10:36:32'),
('20191004152434', '2019-10-04 15:33:01'),
('20191013102715', '2019-10-13 10:46:17'),
('20191013104019', '2019-10-13 10:47:54'),
('20191013153957', '2019-10-13 15:46:04'),
('20191013154506', '2019-10-13 15:46:04'),
('20191014100202', '2019-10-14 10:03:51'),
('20191014172705', '2019-10-14 17:31:56'),
('20191014173025', '2019-10-14 17:31:56'),
('20191014173947', '2019-10-14 17:39:54'),
('20191014174430', '2019-10-14 17:44:36'),
('20191014174704', '2019-10-14 17:47:10'),
('20191014175116', '2019-10-14 17:51:20'),
('20191014175904', '2019-10-14 17:59:09'),
('20191014214435', '2019-10-14 21:44:40'),
('20191014215224', '2019-10-14 21:52:29'),
('20191014215651', '2019-10-14 21:56:56'),
('20191014215859', '2019-10-14 21:59:03'),
('20191014220351', '2019-10-14 22:03:55'),
('20191014220930', '2019-10-14 22:09:35'),
('20191014221552', '2019-10-14 22:15:56'),
('20191016150915', '2019-10-16 15:09:26'),
('20191018131227', '2019-10-18 13:12:33'),
('20191104162612', '2019-11-04 16:30:04'),
('20191105092322', '2019-11-05 09:24:23'),
('20191105143743', '2019-11-05 14:37:48'),
('20191105155703', '2019-11-05 15:57:09'),
('20191108154912', '2019-11-08 15:49:22'),
('20191111213612', '2019-11-11 21:36:17'),
('20191113143226', '2019-11-16 21:31:21'),
('20191116213113', '2019-11-16 21:31:22'),
('20191116220411', '2019-11-16 22:04:22'),
('20191116234208', '2019-11-17 00:02:20'),
('20191117000020', '2019-11-17 00:02:20'),
('20191117000729', '2019-11-17 00:07:39'),
('20191117001705', '2019-11-17 00:17:11'),
('20191122163222', '2019-11-22 16:34:53'),
('20191125161902', '2019-11-25 16:19:15'),
('20191129144446', '2019-11-29 14:45:00'),
('20191202110020', '2019-12-02 11:00:28'),
('20191207204927', '2019-12-07 20:50:54'),
('20191209112928', '2019-12-09 11:29:39'),
('20191209143716', '2019-12-09 14:37:21'),
('20191212134913', '2019-12-12 13:49:23'),
('20191214220319', '2019-12-14 22:03:24'),
('20191216150029', '2019-12-16 15:00:34'),
('20191216150556', '2019-12-16 15:06:00'),
('20191216150638', '2019-12-16 15:07:38'),
('20191217145701', '2019-12-17 14:57:08'),
('20191221133701', '2019-12-21 13:37:07'),
('20191228131528', '2019-12-28 13:15:48'),
('20191230163719', '2019-12-30 16:37:26'),
('20191231102820', '2019-12-31 10:28:24'),
('20191231104550', '2019-12-31 10:45:54'),
('20200102151018', '2020-01-02 15:10:22'),
('20200106144528', '2020-01-06 14:45:33'),
('20200111161510', '2020-01-11 16:15:19'),
('20200112111911', '2020-01-12 11:19:17'),
('20200112152920', '2020-01-12 15:29:26');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `doodle_id` int(11) DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bureau` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `doodle_id`, `pseudo`, `bureau`) VALUES
(6, 1, 'Zozo', NULL),
(9, 1, 'Matéo', NULL),
(10, 1, 'Georges', NULL),
(12, 1, 'Méline', NULL),
(13, 1, 'Max', NULL),
(14, 1, 'toto', NULL),
(16, 1, 'dd', NULL),
(17, 1, 'tt', NULL),
(18, 1, 'uu', NULL),
(19, 1, 'pioupiou', 0),
(20, 1, 'plouplou', NULL),
(21, 1, 'torotoro', NULL),
(22, 1, 'montest', NULL),
(23, 1, 'matestouiile', NULL),
(24, 1, 'oipiop', NULL),
(25, 1, 'poliopoi', NULL),
(26, 1, 'test', NULL),
(27, 2, 'tutu', NULL),
(28, 3, 'Arnaud', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `population`
--

CREATE TABLE `population` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `population_user`
--

CREATE TABLE `population_user` (
  `population_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `valid` tinyint(1) NOT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `image` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `qcm_value`
--

CREATE TABLE `qcm_value` (
  `id` int(11) NOT NULL,
  `doodle_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `qcm_value`
--

INSERT INTO `qcm_value` (`id`, `doodle_id`, `name`, `value`) VALUES
(1, 4, 'Yes', 'yes'),
(2, 4, 'Oh no', 'no !'),
(3, 4, 'Bof', 'bof');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choix` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `name`, `type`, `active`, `label`, `choix`) VALUES
(3, 'Gymnase ?', 'radio', 1, 'Souhaitez-vous revenir jouer dans le Gymnase ?', 'a:2:{i:0;s:3:\"Oui\";i:1;s:3:\"Non\";}'),
(4, 'Soir', 'checkbox', 1, 'Quel(s) soir(s) ?', 'a:5:{i:0;s:5:\"Aucun\";i:1;s:5:\"Lundi\";i:2;s:5:\"Mardi\";i:3;s:8:\"Mercredi\";i:4;s:8:\"Vendredi\";}');

-- --------------------------------------------------------

--
-- Structure de la table `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `id` int(11) NOT NULL,
  `refresh_token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `refresh_token`, `username`, `valid`) VALUES
(1, 'f85d44519f7db67ed062607db87470fbcdd774818e24d2c7ce1f1aa412c30843583eb8d62aaea38142966d11cc062cf0f3d54363d02e77eb316ae7a1d8f0cbf3', 'arnaud.coste', '2021-09-12 19:44:22'),
(2, '616876494024997abd6586b39f08456dce0a5a46dae9d5564ecde0910510ce72f717cc02037b597c455719d769808ca9851ae465684b182f40c8073169fab888', 'arnaud.coste', '2021-09-13 10:27:58'),
(3, '17308685ca93380f460fad7e4ce1ea78d50b31314593ee2abe2dce64f1ff83a8090b665cac27d119857345ed3999b42463c47bd69453cd4ca9e819cfb7fb41b0', 'arnaud.coste', '2021-09-14 12:04:33'),
(4, '244f9fd65156fd36b0e1839392ae625558f98bf1de318358eceaa3fb2873fd4f0e9dd00af5d9559c57d5ed68bf7a1bee4a2b6fdccd7660e3f9a83363183beb33', 'arnaud.coste', '2021-09-14 16:47:31'),
(5, '87c7d75f1f9441202b300f91cfd1ef377de290a44dfd623a419943c33b38c81b16f9dc24e0ec387f5c5ee24c9463450240fa7979bdf5c8ce5388649b06f899b4', 'arnaud.coste', '2021-09-14 16:55:34'),
(6, '7256c320f03c5155c7f0006a5c79079ef7ea99536ea8aa24bc9356e3ee7d0e869ff009166feba23d1a36f76102e29d731ea61bbf583f377857b52622fc835b40', 'arnaud.coste', '2021-09-14 16:57:12'),
(7, '2668005cc618fba429bd84ff5bebc4105b0e28a8825f83b25519b6d65820170d59750e1096a888d6400cf875a5fe365be00f405cd8dcd6550ffe70eed08f0dc2', 'arnaud.coste', '2021-09-14 16:59:34'),
(8, '1f4cb9be043163d646b7b659abc6e09961d0a8c39259b22a4819e852a8800fc6afea9ff99c9b533ecbb85ce0f470051cd9f76a06df249f6ac06b35dd59981276', 'arnaud.coste', '2021-09-14 21:31:53'),
(9, '6e13a089bf87e43d8037a953608080d91e2adf2e31d9fa18d28e41c623527a6813ee2c329e8c8815624e7486fb7eaff4bc20a2ea02ebfd49ff92e7c3a53dc93c', 'arnaud.coste', '2021-09-14 21:52:48'),
(10, '6b465dfe80f81009bc29d2c50c3fc4fc36206d6990e9f7197b351fd7c30d042f910b94552f3892d410a6cc58311d09dcb9c095bd344b17f5eea0cca715c94e9d', 'arnaud.coste', '2021-09-16 19:27:24'),
(11, '1ae7071a2404be07e9df0ada32e49747ea2c03ef266b6c937447d268fdf607fa3a6fa006ec6267703e2c8023954ed1191a95ffca1df9d13797017b05c3cbe4b2', 'arnaud.coste', '2021-09-16 19:59:48'),
(12, '57716ccd9a1ecef362fbdeb43754881e02b6da95c713a1184dce438781a540b48b3aa2e1839eff0232a5f69468a64635d29626c6ff32f53ea9858417b85ae49f', 'arnaud.coste', '2021-09-17 11:36:36'),
(13, 'cff3b76a041b203f7ba0cb3294f147a47714368f987793f8a03f7f61c71d4adb0186a8f9e6f824ccf241dd5545eae7614ca902a36663fbddd863d86d560a16d4', 'arnaud.coste', '2021-09-17 12:12:54'),
(14, '2274957caaca363516ea8516e125306d2f67319ff85d77f36e82c3eacf230ea44aa528b5ffb6181c1461a64203ae2aee0796bfb70074b5869990274fb72bcd33', 'arnaud.coste', '2021-09-18 13:18:00'),
(15, 'c2339b542ac0404b92df00d05c326bdee8b83c246b710984d6b784d7cb7e6e8620cae7b20344dc6eea58bda9ec3b1ebd301eeafebf1735ea430fb142b02d9528', 'arnaud.coste', '2021-09-18 13:29:21'),
(16, 'c2bc272f53751e5391b6d71c0b5cb849df1043699e567823a19df2ed95e4fd2492842fa822ec43ac420115e0b5c2c69e5c8891cfcd9773869fea8f1c6158ecb8', 'arnaud.coste', '2021-09-18 18:05:34'),
(17, '578084e2fbfc8e43d00b3fe3b0474a0d44ad78efe09b6506bbd7f582118ad054e3bbf87f121bafb78c5ef278886a5f77351eb7a1b7c7d980b6f190d7a1746023', 'arnaud.coste', '2021-09-18 18:38:23'),
(18, 'ff7790ebfb14f24df2d21cd0e4bec98a66c24fdf6070195b7a16ce052415f6aeb029aa5287843dc355a9270fe5d9106de8edc2d2571b3ce2edad5006a289f427', 'arnaud.coste', '2021-09-20 10:56:21'),
(19, '08d1554070dfd8f792b61a43786b08385f4975003e1b479d1055d3fe02996f3577cd7822db55b35068f9012c079123cc2dfbb0767b55c96cd8cedb70698d2f7e', 'arnaud.coste', '2021-09-20 14:25:27'),
(20, '24794c666b5d0d36ab848f0984c5a098879906c6ce4a0f9c78600b97167c0beb6ae9f13782f1b091a650829ed460aa68dc0ed69c7118ad31ed62b759436e9936', 'arnaud.coste', '2021-09-21 18:07:27'),
(21, '88e2be11dfd1474ea6567ef531e6248bb36ec3bafd6cca9e1a095516daabb53f0153771c408875bdfc2d758265bcab47c50ef234d7b81229092e2d918da894be', 'arnaud.coste', '2021-09-21 18:08:13'),
(22, '2c94d0c99cb4b09dd7cd72f59317c000f966a9ad297b2f40032bfb2b15f7ef8dc642d98043ed4ac5cdab7fe6d9c6dbbdaf16bf7eda2f76596fc917f5a58bbf73', 'arnaud.coste', '2021-09-21 18:08:54'),
(23, '098c9a40bc8d0966b6c5b7ab0a4e3584f84ffe1bbc51c025bf4197f6c726c55ad08674a551f00ec57ea2b900cbe3c1ca5d53da255767775cedc9d4524952d887', 'arnaud.coste', '2021-09-21 18:30:18'),
(24, 'fcb405566da5db3a5f2348a49c6851b7442f97891a65d1c3f440545678ce6890a155a4a855aba42eff37becdd8393605934eb50c4af8956224cc4a679e741e22', 'arnaud.coste', '2021-09-21 18:39:45'),
(25, '5250d9ed4ea8fb880028d1d365ff29514d1aeffc2a665d51737ff70f3f324b491ef4c06768c929d1044f7d4dc94ce8db51a407da7d3cf31ebf45cd1b05414a55', 'arnaud.coste', '2021-09-22 15:49:37'),
(26, 'e13b36b2c54a22f1f564fc19c776bb92be348e27e14161c3e3ec49cc387ad342ac37d8a6ad3c06e39e6bccf3b20257063f9d202caeae2bf700bc411750e21fc3', 'arnaud.coste', '2021-09-22 15:53:27'),
(27, '3e6d0e8967810976538a8a4c569f159b19de5f90366037c3271289273490ea61a70defb1b90ae64ca4ceeafec9378631ec039818b6719d705b5d58f309f2f28f', 'arnaud.coste', '2021-09-22 15:59:23'),
(28, 'd164b1dcac80fc6672d5bac887332d05cf9ebde415772acf4dde8a72f17017aae7e92b9aaa37a58d716241a24c7ab5fa52e7f223adc037e6320cf4d10df7d75e', 'arnaud.coste', '2021-09-23 18:19:26'),
(29, '9f7175f8bbc21f536bf96ce93e5409591aee07dc51629f1a2c0bef2b30cf2fe4e7fb95693d59127f31c4a0f09d4fc7e9f0f6dd73cd068bac854b443d2da39cce', 'arnaud.coste', '2021-09-24 11:14:40'),
(30, '3655f8a823997b69b31b947ffa6f50bcd44cae7a8c5d0d06d77e884f8a034ae1cf2cea2c8070d9e9165e342e616ecaeb0c01c9f86e8bb9059bb7755e461b3132', 'arnaud.coste', '2021-09-25 12:30:50'),
(31, 'daa98fb82f974192ae0f0a73334a51022991a5187813f16a004fe84bfb283a5f186499df099630e72374d9886958c0acf13d83d13c06f65306bc725634157963', 'arnaud.coste', '2021-09-27 14:31:25'),
(32, '0072e6c54087005cdd7d09fdfdab31b92a80b9fbcd3c737cd7308ffdd71ca4e4bd446631bed4c7462ae8775860934950ccae20898bcad666acc1ef035e22fa27', 'arnaud.coste', '2021-09-27 16:57:30'),
(33, '37cdab608a3dbddb8f87b865dc12e813f9aa7c555bdde5dc201778bca6d30ca7fdbf3fefbed73ddaaf14fcf6ab44f5024257e36c47ebbb5ff9b30dbc453661e5', 'arnaud.coste', '2021-09-29 14:19:24'),
(34, 'bef9360fff2963edef3e91c1b043cc7dbd809e167e0531bf4c041bbf81610119e2099a9e34f82aaae13ab3ab288454584d700e75d91c8d2b792640963c9b61ba', 'arnaud.coste', '2021-09-30 14:35:25'),
(35, 'b45dc8c64a6ee5977e0056425f83d043020c62441f9868b62d733b37a7db7b3fbb73511a91dcd6e0581ed1565b7798f09c7ded6ef175305efc17c021802217fb', 'arnaud.coste', '2021-09-30 14:39:07'),
(36, '4e92a74d52fbeb275a65a2025c0492b4a91a107a47293daa6e96588dc5f6a5178baaab35c55197e67cb209333f3abe0c11d068b24bb7fe6d2d6e9717e3eeeac4', 'arnaud.coste', '2021-10-01 11:45:43'),
(37, '3d9bbbac22b4fa158e928be8d8a118fc44c686568ff14271a5992146b8048a8621b70956ead5c2fdfe775a867009faf5147e53a18683294e9976a58c0a1cadc0', 'arnaud.coste', '2021-10-02 22:24:23'),
(38, 'b6d28a642656c8c61a434e68f6c838a1402e0805840cffac62f56855d0231539a8724964e5c66d95982685fad11930c9aec24e0887b1153739cee4499bce03de', 'arnaud.coste', '2021-10-02 23:26:24'),
(39, '2f82bdea2ea7bac9188c92265acb4ccbe0b7c24efb3bad65af88685858ff64618faa1deb480387356a3ed925203e9fa4ecd201854670205ef89c5c38e6032762', 'arnaud.coste', '2021-10-05 15:36:13'),
(40, 'b325777c317feae4fa52ed70bc5872b1fb855cca811bb819222454ed43747fda324cfca4d99f7c49c9fd8999c97dee2d763feca2e3d64ddc02ccd6983f252997', 'arnaud.coste', '2021-10-06 17:59:30'),
(41, '4ceaf5224bcaa6609592fcdc54b607f5510182d69b2add24db2db6354e22773ae7f30df54670909bccb082d81c81204b1759488989620222b2a537ac2d7b911d', 'arnaud.coste', '2021-10-10 16:30:23'),
(42, 'ec18c063bdfc36808273e2cd369de6e80abee1370bcc6b3bd3889122d6187e1f7559e7f469bbd0b772522361c8ee538f249120c532126e4be88460e5641ab094', 'arnaud.coste', '2021-10-11 15:24:49'),
(43, '6cc6dccc24b0ff1f10421fcaff756696f4083ad737c26b9fe606edffbe2a4fe28bb533ab3138a1f82a11ac353fb7ef5d982e1b4c64166b6de73315d941e99888', 'arnaud.coste', '2021-10-12 14:22:39'),
(44, '62d34d0ea32205a8d86bb42e21aec235480db8f9758a194a83fb5d9e039e6b182fce76284e4fbda771109663e89972301d96f9706dc009d43b283161adad86fb', 'arnaud.coste', '2021-10-13 10:35:32'),
(45, 'de29542998cc4c4203c22cf21dcaadf1df4914bfd5933b603de290b9283838a3d6033a1f18df48e06949feddb76494cde67bbf3f7c9adef3c53836c6779e49db', 'arnaud.coste', '2021-10-26 18:49:35'),
(46, 'ff66a1d5b467f1f759d18136ef90f7c66869b9ff51bd0a0ea03f96548d7e7a7c40b272f694cb480cd15def53066fc69a168802b349366b719aa90d0469245356', 'arnaud.coste', '2021-10-26 19:12:20'),
(47, '095abddede635462b4db454f5190c13db348d11a20f52dd3a5073d4aca889067be4101f76839f014bebc99db8ce57173a4602c97ebf132b3d5a1b729647d8f3a', 'arnaud.coste', '2021-10-26 19:16:32'),
(48, 'cf12bba842a2f2ef1fb7d59167eef03980638bbc2d21fa0272bd5edf40b216e020542c1c4051fa903eae970a0b3b5292d477155e5fcbc4bfdd9770c9e194158a', 'arnaud.coste', '2021-10-27 13:35:37'),
(49, '9f3dbe71db5acb927c4ededadc5d1f50b2eaf3c4e8ef485345f42e4d13b3987471f1a9374a4bf7a0afb95ae11f088a41ab3cab7040c97941f5af83c77ebffc48', 'arnaud.coste', '2021-10-31 18:24:11'),
(50, 'c3feec6c4c7b8fd9d38334d054cebbfd700eebd6acbaacfc4a5270c3336fbfd566b6d96d8a71fd88621aa7cfe806614829e64f67b64afeb36f15bb10a185f711', 'arnaud.coste', '2021-10-31 18:52:54'),
(51, 'b3e428d1173707c05d92c34c86ad1b74f4087b3b68c024be16a17eb2a84d6c5f17a9f611a10a7929923337bd23742266a36c139696d846fc36b83587b182eb84', 'arnaud.coste', '2021-10-31 18:55:37'),
(52, 'a4cfe59c3305baa37e5ebe8b5825041d34028644ff4df54ba46a7d8c5e9a8dc0762ad9cb3cf2bf986b2883f51b10e9b2b2398d6fce056dbbe4f6d177ba72270c', 'arnaud.coste', '2021-10-31 19:03:56'),
(53, '0343ce1fd75f6ee1f1b54bb3076031d979dfdf3f5a5e6e263fc33681447ab8b80a978c2d02a15eaaca11ce8ffe2c92a06f60ad0a6a6ff42bdd52531e7a3fc6f9', 'arnaud.coste', '2021-10-31 19:09:49'),
(54, '5682b6cbc32a2cd46a7edb0b4b43dbea549f0971495a61e3decbef7740a8d28b18d44c6fbef54e49ecd2f16f2ea8626e33949db985af7a3d8c255678e9ed46f9', 'arnaud.coste', '2021-10-31 19:15:30'),
(55, 'b0be791baa63d17159e9630b7341df2b16ea9d2408b9a0bfb527094b6143d1151ff9a7beee9ffc4ee1916319971d7493cb2c9178d98f1b830576075319394d31', 'arnaud.coste', '2021-10-31 19:19:06'),
(56, '011b8845b8a5314221ea9d27cc3ffe607c72d87546dd3066a6f01733351c2d62ff16683ac92db42d4bb884ec753382d651246691b86758e9ba7ced33bf216ebe', 'arnaud.coste', '2021-11-01 10:36:18'),
(57, 'e562388277827a49b3e814093a072b6fe63a2f2552722c341113dfd2d0b33bf21ab4ea5ec0bc7b2374039f34d80981ac21c590bba8e40fcc28ed60746d196ac7', 'arnaud.coste', '2021-11-01 10:52:10'),
(58, 'f5bf804aac35bf806d9f41cff16d8118b356f63bce1c1e7d6665e520a01c144882ada1c868e73727fffb54829679f575ba98b790d87777331b5851cb790e2937', 'arnaud.coste', '2021-11-01 14:08:12'),
(59, 'c30d8c840451c0212f33d2982879dc2012ed4830a26526e51810d11edf5cdc3de20073c5006c4bdce8fd3803333086afb0261f5157d933816ec8405be891efca', 'arnaud.coste', '2021-11-01 14:17:03'),
(60, '251e535a701f81779fa17bd91f33da1fcfa3b6b18558a90ad44d78fbfca20694a165b79b816c03cbdaa4e3069bdaefde35889a7d30a9daeeadefd6e5c8daf499', 'arnaud.coste', '2021-11-01 14:18:33'),
(61, '66e7ae937036646c0c5321b554e8e17d6d5092565d79b7e754a013a19835d6980ecc0a4fc488df18babfe7f8bbcfb8e52a8913d5b31b5eb0c0d9d7b80504efec', 'arnaud.coste', '2021-11-01 14:19:47'),
(62, '335c185513ec81f4dc8052dd0db4f402262d74cfbae953f1e8582de31bc830d3f39ce2fdd13a1044862d41a7051de74193f0e67ea6a0ec6be4b2ed8391bf0e85', 'arnaud.coste', '2021-11-01 14:39:16'),
(63, '394d3541fb939d2b485078e9c3d2874376bdd279c9ac39a46f6e3cfbfa2d722911771e2255f3b1ee5c1d98a06714f980b39eb537bed9f51ff4aec42baa9bf619', 'arnaud.coste', '2021-11-01 14:42:20'),
(64, '4436d47d4609f5a38aec44a942eab8d35a9122e2846494dbfc027c1bb71ec71e1e7910ea363734b501924a25e214696471f84efdb47c6889b4fe35fd4eb03842', 'arnaud.coste', '2021-11-01 14:58:33'),
(65, 'b0bdb439678ba1a7772a3a4e608b27aa57026dfc94df9676cf1f414dbb9040d6aefc845e763f70c254d0c4a6a3a2951c0ad9e7afe3ddd46cb6711e4459f12592', 'arnaud.coste', '2021-11-01 16:59:55'),
(66, '712c43f29fd56d044bb358fb472ca69a8bdec9f32ff6f98f1c431a219cd913c34cbc1042915dd775b71624d86352793d55d2ae9279c23c87837c62610c14ba6f', 'arnaud.coste', '2021-11-01 18:22:58'),
(67, 'bd28a81ebdcfb673d0d7e1d8430e1cf7a146e951b7dbdf3bfeebb176f9441a73ea1094a4339a1808ac67014313a24eec678fc32e275cce606b4e126ea5459829', 'arnaud.coste', '2021-11-03 19:57:35'),
(68, '2d8c08bf1a5f1fa727b2a2110e343ff06b651cd89e7bd2bbc544d83f3fbf97f3530bb699359486cef21a8bd0e51c23187504d38a1b607fcd6ccc9d7c2182ce13', 'arnaud.coste', '2021-11-11 18:00:07'),
(69, '898e6c54616ec40da7a050bc59d94dfe638cd3da0d28fbf4543e56e3c752ffa4933f9bfde294fe46c7d0d55dba9251e38214bb8a290e375e4a42db067991d7f1', 'arnaud.coste', '2021-11-12 18:13:18'),
(70, '2c4efa03b1b2124200517cff52debb869dd0b870d3593f016d5189998e04690995e9514e5e24af0c0dab02ae0de18904cb0e70b97c0931d458e4021e001bed21', 'arnaud.coste', '2022-02-01 15:47:52');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `validated_at` datetime NOT NULL,
  `choix` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `sondage_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id`, `user_id`, `question_id`, `validated_at`, `choix`, `sondage_id`) VALUES
(3, 32, 3, '2020-06-08 16:36:03', 'a:1:{i:0;s:3:\"Oui\";}', 3),
(4, 32, 4, '2020-06-08 16:49:58', 'a:1:{i:0;s:5:\"Aucun\";}', 3);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`id`, `name`, `slug`) VALUES
(1, '2019 - 2020', '20'),
(2, '2020 - 2021', '21'),
(3, '2021 - 2022', '22'),
(4, '2022 - 2023', '23'),
(5, '2023 - 2024', '24');

-- --------------------------------------------------------

--
-- Structure de la table `sondage`
--

CREATE TABLE `sondage` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `categorie` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sondage`
--

INSERT INTO `sondage` (`id`, `title`, `description`, `active`, `categorie`, `created_date`) VALUES
(3, 'Reprise', 'Gestion réouverture des gymnases', 1, 'Gymnase', '2020-06-08');

-- --------------------------------------------------------

--
-- Structure de la table `sondage_question`
--

CREATE TABLE `sondage_question` (
  `sondage_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sondage_question`
--

INSERT INTO `sondage_question` (`sondage_id`, `question_id`) VALUES
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sondage_user`
--

CREATE TABLE `sondage_user` (
  `sondage_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sondage_user`
--

INSERT INTO `sondage_user` (`sondage_id`, `user_id`) VALUES
(3, 32);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id`, `code`, `label`) VALUES
(1, 'POT', 'Ancien joueur'),
(2, 'PRE', 'Préinscrit'),
(3, 'INS', 'Inscrit'),
(4, 'LAT', 'Liste d\'attente');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `capitaine_id` int(11) DEFAULT NULL,
  `mixte` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `name`, `slug`, `club_id`, `capitaine_id`, `mixte`) VALUES
(1, 'Villepreux 1', 'vip1', 3, 23, 1),
(2, 'Villepreux 2', 'vip2', 3, 12, 1),
(3, 'Maurecourt 1', 'maurecourt1', 4, NULL, 1),
(4, 'Villepreux 3', 'vip3', 3, 30, 0),
(5, 'Villepreux 4', 'vip4', 3, 11, 0),
(6, 'Bad en Seine 7', 'badenseine', 6, NULL, 1),
(9, 'Montigny 5', 'montigny5', 5, NULL, 1),
(10, 'Fontenay 4', 'fontenay4', 10, NULL, 1),
(11, 'Vélizy 1', 'velizy1', 8, NULL, 1),
(12, 'Chambourcy 3', 'chambourcy3', 9, NULL, 1),
(13, 'Limay 1', 'limay1', 7, NULL, 1),
(14, 'Maisons-Laffitte 5', 'BML 5', 11, NULL, 0),
(15, 'Elancourt 7', 'Elancourt7', 12, NULL, 0),
(16, 'Villennes-sur-Seine 3', 'ASV 3', 13, NULL, 0),
(17, 'Bad en Seine 10', 'badenseine10', 6, NULL, 0),
(18, 'Chatou 3', 'Chatou3', 14, NULL, 0),
(19, 'Le Mesnil-le-Roi 3', 'Mesnil-le-roi3', 15, NULL, 0),
(20, 'Villennes 3', 'Villennes3', 13, NULL, 0),
(21, 'Voisins 4', 'Voisins4', 16, NULL, 1),
(22, 'Elancourt 3', 'Elancourt3', 12, NULL, 1),
(23, 'Villennes 1', 'Villennes1', 13, NULL, 1),
(24, 'Rambouillet 2', 'Rambouillet2', 17, NULL, 1),
(25, 'Carrières sur Seine 6', 'carrieres6', 18, NULL, 1),
(26, 'Elancourt 6', 'Elancourt6', 12, NULL, 0),
(27, 'St Cyr 2', 'stcyr2', 20, NULL, 0),
(28, 'Les Essarts le roi', 'Essarts1', 21, NULL, 1),
(29, 'Rambouillet 5', 'rambouillet5', 17, NULL, 1),
(30, 'Montigny 7', 'montigny7', 5, NULL, 1),
(31, 'Vélizy 2', 'velizy2', 8, NULL, 1),
(32, 'Montigny 3', 'montigny3', 5, NULL, 1),
(33, 'Maurepas 2', 'CBM2', 22, NULL, 1),
(34, 'Les Clayes 1', 'clayes1', 23, NULL, 1),
(35, 'Chatou 2', 'chatou2', 14, NULL, 0),
(36, 'Montigny 4', 'montigny4', 5, NULL, 1),
(37, 'Montigny 6', 'montigny6', 5, NULL, 1),
(38, 'MyBad 2', 'mybad2', 28, NULL, 1),
(39, 'St Arnoult 1', 'starnoult1', 25, NULL, 1),
(40, 'Poissy 3', 'poissy3', 26, NULL, 1),
(41, 'Sartrouville 2', 'sartrouville2', 27, NULL, 1),
(42, 'Bad en Seine 5', 'badenseine5', 6, NULL, 1),
(43, 'St Cyr 1', 'stcyr1', 20, NULL, 1),
(44, 'Saint-Arnoult-les-Yvelines 1', 'saintarnoult1', 25, NULL, 1),
(45, 'La-Queue-lez-Yvelines 2', 'laqueuelezyvelines2', 28, NULL, 1),
(46, 'Bad en Seine 6', 'badenseine6', 6, NULL, 0),
(47, 'Vélizy 3', 'velizy3', 8, NULL, 0),
(48, 'Poissy 5', 'poissy5', 26, NULL, 0),
(49, 'St Arnoult 2', 'starnoult2', 25, NULL, 0),
(50, 'Magny 2', 'magny2', 29, NULL, 0),
(51, 'Montigny 8', 'montigny8', 5, NULL, 0),
(52, 'La-Queue-lez-Yvelines 4', 'laqueuelezyvelines4', 28, NULL, 0),
(53, 'Voisins 6', 'voisins6', 16, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `team_saison`
--

CREATE TABLE `team_saison` (
  `team_id` int(11) NOT NULL,
  `saison_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team_saison`
--

INSERT INTO `team_saison` (`team_id`, `saison_id`) VALUES
(1, 3),
(2, 3),
(3, 1),
(4, 3),
(5, 3),
(6, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(25, 3),
(27, 3),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3);

-- --------------------------------------------------------

--
-- Structure de la table `team_veteran`
--

CREATE TABLE `team_veteran` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_id` int(11) NOT NULL,
  `capitaine_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team_veteran`
--

INSERT INTO `team_veteran` (`id`, `name`, `slug`, `club_id`, `capitaine_id`) VALUES
(1, 'Villepreux One', 'VIP_One', 3, 11),
(2, 'Montigny One', 'montigny-one', 5, NULL),
(3, 'Villepreux Two', 'VIP_Two', 3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `team_veteran_saison`
--

CREATE TABLE `team_veteran_saison` (
  `team_veteran_id` int(11) NOT NULL,
  `saison_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team_veteran_saison`
--

INSERT INTO `team_veteran_saison` (`team_veteran_id`, `saison_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tournoi`
--

CREATE TABLE `tournoi` (
  `id` int(11) NOT NULL,
  `saison_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `lieu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien_inscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classements` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tableaux` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_inscription` date DEFAULT NULL,
  `lien_convocation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lien_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tournoi`
--

INSERT INTO `tournoi` (`id`, `saison_id`, `name`, `date_debut`, `date_fin`, `lieu`, `lien_inscription`, `classements`, `categories`, `tableaux`, `date_inscription`, `lien_convocation`, `lien_description`, `slug`, `club_id`) VALUES
(2, 1, 'Tournoi d\'Elancourt', '2020-01-25', '2020-01-26', 'Palais des Sports', NULL, 'N3/R4, R5/R6, D7/D8<br>D9/P10, P11/P12', NULL, 'DH, DD, DMx', '2015-01-01', NULL, NULL, NULL, NULL),
(3, 1, 'Tournoi de Doubles à Maurepas', '2020-04-18', '2020-04-19', 'Gymnase Malmédone', 'https://docs.google.com/spreadsheets/d/1ind3f-M2m-Uob4iCtVV-PdjyDx6GxDkzdzbh6D5aL4o/edit?usp=sharing', NULL, NULL, 'DH, DD, DMx', '2020-03-20', NULL, 'http://badiste.fr/tournoi-badminton/maurepas-voit-doubles-11811.html', 'maurepasD20', NULL),
(4, 1, 'Tournoi de Fontenay-le-fleury', '2020-05-16', '2020-05-17', 'Gymnase du LEVANT', 'https://docs.google.com/spreadsheets/d/1h2ivvXKT92lJjhuOwOctCtZT-3ggj0nn6uiT8A_CI8w/edit?usp=sharing', 'N,R,D,P', NULL, 'Simples N3/R4 -R5/R6<br>Doubles D7/D8 - D9/P', '2020-04-16', NULL, 'http://badiste.fr/tournoi-badminton/xviii-tournoi-de-fontenay-le-fleury-11825.html', 'fontenay20', NULL),
(7, 1, 'Tournoi SKYBAD11', '2019-11-09', '2019-11-10', 'Montigny le bretonneux', NULL, NULL, NULL, '?', NULL, NULL, NULL, NULL, 5),
(10, 1, 'Départemental Sénior Simple', '2020-02-29', '2020-03-01', 'Carrières sous Poissy', 'https://docs.google.com/spreadsheets/d/1EiMxQvkK521nOH7WgOCfuC6coYan9HREoEgMl7O227w/edit?usp=sharing', 'Tous', 'Cadet, Juniors, Seniors et Vétérans', 'SH, SD', '2020-01-31', NULL, 'https://www.badminton78.fr/saison-2019-2020/actualites-du-club/le-departemental-seniors-de-simples---29-fevrier-1er-mars-2020-814507', NULL, NULL),
(11, 1, 'Tournoi national', '2020-04-11', '2020-04-12', 'Carrières sur Seine', 'https://www.badnet.org/Src/index.php?ic_a=655616&eventId=11447', 'N2/N3 R4/R5/R6', NULL, 'DH DD DMx Simples Jeunes', '2020-03-12', NULL, 'http://badiste.fr/tournoi-badminton/23eme-tournoi-national-12050.html', NULL, NULL),
(12, 1, 'DÉPARTEMENTAL SENIORS DE DOUBLES 20', '2020-03-28', '2020-03-29', 'Fontenay le Fleury', 'https://docs.google.com/spreadsheets/d/1f0oVia2IdUkrD2jVyBfx74yoHBoprHYXDHoZbVpw4GQ/edit?usp=sharing', 'tous', 'tous', 'DD-DH-DMX', '2020-02-26', NULL, 'https://www.badminton78.fr/en-savoir-plus/le-departemental-seniors-de-doubles-2020-89655', NULL, NULL),
(13, 1, 'Tournoi de Villepreux', '2020-04-04', '2020-04-05', 'Gymnase Mimoun', 'https://docs.google.com/spreadsheets/d/1SObdKi7if3b8h6pC9ppYgZlT2ssdgP-ZVx_sopnPnWc/edit?usp=sharing', 'NC/P12, P11/P10, D9/D8, D7/R6', 'Junior, Sénior et Vétéran', 'SH, SD, DH, DD, DMx', '2020-03-26', NULL, NULL, NULL, NULL),
(14, 1, 'Tournoi de Méré (Vétérans)', '2020-05-01', '2020-05-03', 'Lieutel', 'https://docs.google.com/spreadsheets/d/1aMAwZvwSg5BVfRxIBwJwqIZXkXkdScd4JUnyBh7-zOs/edit?usp=sharing', 'R6 D7 D8 D9 P10 P11 P12', 'Vétéran', 'SD, SH, DD, DH, DMx', '2020-04-03', NULL, 'http://badiste.fr/tournoi-badminton/jeunes-plumes-et-vieux-volants-7-12183.html', NULL, NULL),
(15, 1, 'Tournoi de Chartres', '2020-06-13', '2020-06-14', 'HALLE Jean Cochet', 'https://docs.google.com/spreadsheets/d/1RWBdusp8IrZWFRqbGvKZflQoHdTy2CAvlZZStO5CBpY/edit?usp=sharing', 'N,R,D,P', 'Sénior, Vétéran', 'SH, SD, DH, DD, DMx', '2020-05-29', NULL, 'https://badiste.fr/tournoi-badminton/tournoi-national-du-bapama-12059.html', NULL, NULL),
(16, 2, 'Sky\' Bad12', '2020-10-31', '2020-11-01', 'Montigny le Bretonneux', 'https://docs.google.com/spreadsheets/d/1PlZrRwrWKHYm5R0lBxy9_QyZC6QROReyChhS5yP-VB4/edit?usp=sharing', 'toutes séries N3 max avec CPPH de 1500 max', 'cadets (minimum D8) à vétérans', 'DD, DH, DM', '2020-10-01', NULL, 'http://badiste.fr/tournoi-badminton/sky-bad12-12461.html', NULL, NULL),
(18, 2, 'Bad O\'Village IV', '2020-11-14', '2020-11-15', 'Maurecourt', 'https://docs.google.com/spreadsheets/d/14sdc-Igj7PaNipYKHX0tulAYNtrAuZidphuyIdG1lPI/edit?usp=sharing', 'NC à R4', 'cadets à vétérans', 'DD, DH, DM', '2020-10-16', NULL, 'http://badiste.fr/tournoi-badminton/bad-o-village-iv-12454.html', NULL, NULL),
(19, 2, 'Les Jupettes 9', '2020-11-14', '2020-11-15', 'Chambourcy', 'https://docs.google.com/spreadsheets/d/1tbtAf3OJv_Ja1iJ9ApS7lk8TjR5oE5_YogE-t0BlCZE/edit?usp=sharing', '5 séries de 0 à 511', 'jeune : de poussin à cadet et adulte : sénior et vétéran', 'SD et DD', '2020-10-16', NULL, 'http://badiste.fr/tournoi-badminton/les-jupettes-9-12573.html', NULL, NULL),
(20, 2, 'Poissy Bad Cup - 4e édition', '2020-11-21', '2020-11-22', 'Poissy', 'https://docs.google.com/spreadsheets/d/1iZTtiLkHU2pHbf3BiHc5ZsdRLK1UWRk5jyCCuzlaqSo/edit?usp=sharing', '5 séries : 0-5 ; 5-11 ; 11-25 ; 25-65 ; 65-150', 'cadet, junior, sénior, vétéran', 'DD, DH, DM', '2020-10-23', NULL, 'http://badiste.fr/tournoi-badminton/poissy-bad-cup-4e-edition-12570.html', NULL, NULL),
(21, 2, '20ème tournoi de doubles des Volants d\'Elancourt', '2021-01-16', '2021-01-17', 'Elancourt', 'https://docs.google.com/spreadsheets/d/1x9ZiPqaowfA-dAj3Lh3m1tXJyVmQ1qSljHFmnW1rVeA/edit?usp=sharing', 'N3,R4,R5,R6,D7,D8,D9,P10,P11,P12 avec un CPPH de 1500 max', 'de minime à vétéran', 'DD, DH, DM', '2020-12-16', NULL, 'http://badiste.fr/tournoi-badminton/20eme-tournoi-de-doubles-des-volants-d-elancourt-12598.html', NULL, NULL),
(22, 2, 'Villepreux 20e édition', '2020-11-14', '2020-11-15', 'Gymnase Mimoun', 'https://docs.google.com/spreadsheets/d/1WxtNRjSmzw0ibWjSu5mVkvKSth6nVTBasNKmYNaH8_k/edit?usp=sharing', 'R6-D7 / D8-D9 / P10-P11 / P12-NC', NULL, 'SH, SD, DH, DD, DM', '2020-10-23', NULL, NULL, NULL, NULL),
(23, 2, 'tournoi national Chambourcy', '2021-02-06', '2021-02-07', 'Chambourcy', NULL, '4 séries', 'cote de 2 à 400', 'SD-SH-DD-DH-DM', '2021-01-04', NULL, NULL, NULL, NULL),
(24, 3, 'SkyBad\'13', '2021-11-06', '2021-11-07', 'Montigny Le Bretonneux', 'https://docs.google.com/spreadsheets/d/1AjRVLhYS4jLABtUPcPsA0GMh3cIhioehr55_sTvi-YU/edit?usp=sharing', 'N3 -> P12', 'Cadet, Junior, Sénior, Vétéran', 'DH, DD, DX', '2021-10-07', NULL, 'https://myffbad.fr/tournoi/details/2100186', NULL, NULL),
(25, 3, 'Jupettes 9', '2021-11-27', '2021-11-28', 'Chambourcy', 'https://docs.google.com/spreadsheets/d/1nPi5K0IyZc19WR6bC94l1HhRir7-YcwWw8uG90SKfRQ/edit?usp=sharing', 'R4 -> P12', 'SD, DD', 'Poussin, Benjamin, Minimes, Cadet, Sénior', '2021-10-29', NULL, 'https://myffbad.fr/tournoi/details/2100819', NULL, NULL),
(27, 3, '24ème tournoi National Carrières', '2022-02-05', '2022-01-06', 'Carrières sur Seine', 'https://www.badnet.org/Src/index.php?ic_a=655616&eventId=13379', 'R4 --> NC', NULL, 'SH (?), SD, DH, DD, DM', '2022-01-05', NULL, 'https://www.myffbad.fr/tournoi/details/2101677', NULL, NULL),
(28, 3, 'Tounoi BCV 2022', '2022-02-19', '2022-02-20', 'Voisins le Bretonneux', 'https://docs.google.com/spreadsheets/d/1MuOfKbVv-AHzZHMgQkLNmqUdKXkenPCBS7egJokkCvg/edit?usp=sharing', 'N3 --> NC', NULL, 'SH, SD, DH, DD, DM', '2022-01-20', NULL, 'https://www.myffbad.fr/tournoi/details/2102109', NULL, NULL),
(29, 3, 'Cambo 12', '2022-02-05', '2022-02-06', 'Chambourcy', 'https://docs.google.com/spreadsheets/d/1CgraYZvB1pgKTdi2pw36HoQ9kplo8Rq4iEiK3GDBDoo/edit?usp=sharing', 'R4 --> P11', 'Sénior', 'SH, SD, DH, DD, DM', '2022-01-07', NULL, 'https://myffbad.fr/tournoi/details/2101054', NULL, NULL),
(30, 3, 'Tournoi des Licornes de Triel', '2022-02-12', '2022-02-13', 'Triel sur Seine', 'https://docs.google.com/spreadsheets/d/1xuKb_vOe_KBBwWFE-6Crd--OHBLkTo3xmuDToBhOHHQ/edit?usp=sharing', 'R5 --> NC', 'Sénior', 'DH, DD, DM', '2022-01-15', NULL, 'https://myffbad.fr/tournoi/details/2101594', NULL, NULL),
(31, 3, '15eme tournoi des Mousquetaires', '2022-02-19', '2022-02-20', 'Herblay', 'https://www.badnet.org/Src/index.php?ic_a=655616&eventId=13091', 'R5 --> NC', 'Sénior', 'SH (?), SD, DH, DD, DM', '2022-01-22', NULL, 'https://myffbad.fr/tournoi/details/2101503', NULL, NULL),
(32, 3, 'Tournoi de Doubles d\'Elancourt', '2022-03-26', '2022-03-27', 'Elancourt', 'https://docs.google.com/spreadsheets/d/1GCaHnIhZilFvFl9sb_MIrYMcCScvUrigRmPrsGNPFC8/edit?usp=sharing', 'N2 --> NC', 'Sénior', 'DH, DD, DM', '2022-02-25', NULL, 'https://myffbad.fr/tournoi/details/2101962', NULL, NULL),
(33, 3, '3ème Tournoi de Limay', '2022-02-05', '2022-02-06', 'Limay', 'https://docs.google.com/spreadsheets/d/1pHG2sKBR4xb8iWWBAX4zbVIHR04pGEpR4W_4ZJfD4zc/edit?usp=sharing', 'R5 --> P12', 'Sénior', 'DH, DD, DM', '2022-01-07', NULL, 'https://myffbad.fr/tournoi/details/2100614', NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `tournoi_user`
--

CREATE TABLE `tournoi_user` (
  `id` int(11) NOT NULL,
  `tournoi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `inscription` tinyint(1) DEFAULT NULL,
  `participation` tinyint(1) DEFAULT NULL,
  `resultat_simple` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partenaire_double_id` int(11) DEFAULT NULL,
  `partenaire_mixte_id` int(11) DEFAULT NULL,
  `resultat_double` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resultat_mixte` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_tableaux` int(11) DEFAULT NULL,
  `inscription_simple` tinyint(1) DEFAULT NULL,
  `inscription_double` tinyint(1) DEFAULT NULL,
  `inscription_mixte` tinyint(1) DEFAULT NULL,
  `participation_simple` tinyint(1) DEFAULT NULL,
  `participation_double` tinyint(1) DEFAULT NULL,
  `participation_mixte` tinyint(1) DEFAULT NULL,
  `inscription_confirmee` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `license` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classement_simple` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classement_double` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classement_mixte` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_postal` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_parent` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rue` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `category` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_veteran_id` int(11) DEFAULT NULL,
  `update_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `age_category_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `first_name`, `last_name`, `full_name`, `reset_token`, `club_id`, `mobile`, `birth_date`, `license`, `classement_simple`, `classement_double`, `classement_mixte`, `code_postal`, `mobile_parent`, `rue`, `ville`, `team_id`, `category`, `team_veteran_id`, `update_date`, `created_date`, `gender`, `active`, `age_category_id`, `status_id`) VALUES
(10, 'olivier.sanchis', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$TTNGQkpPWjlFVzZuZGcxMg$W5u0kwA1ar9tc1BRjKtaWyJQOY6Lb4z2RFqM1GVlAzc', 'olivier.sanchis@orange.fr', 'Olivier', 'Sanchis', 'Olivier Sanchis', NULL, 3, '0786014857', '1974-12-01', '06859295', 'P12', 'P11', 'P12', '78450', NULL, '3 Rue des Lyonnais', 'Villepreux', 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:27:34', '2019-11-30 21:22:53', 'H', 1, 10, 1),
(11, 'gerald.giraudon', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Qjd5clo4Ri5qSHdWQnBIRA$OQZZZaC2lCSWDhTCuAIXe3jJZOurqqy9LzDmVvBBt6Q', 'gerald.giraudon@orange.fr', 'Gérald', 'Giraudon', 'Gérald Giraudon', NULL, 3, '0682923459', NULL, '07064856', 'P11', 'P10', 'P11', '78450', NULL, '3 Impasse du jardin du Roi', 'Villepreux', 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:26:49', '2019-11-30 21:33:12', 'H', 1, 0, 2),
(12, 'arnaud.dardillac', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$b3JWVk9ZTkhRSWlvY1FMNQ$Ecq3A/k94DCKM/uwZYO7jdR4kE4oqNe7YGTaEfJbbjc', 'dardillac@free.fr', 'Arnaud', 'Dardillac', 'Arnaud Dardillac', NULL, 3, '0623079330', '1978-01-16', '06859297', 'P10', 'D9', 'P10', '78370', NULL, '24 rue du lieutenant Dunk', 'PLAISIR', 2, 'Compétiteur', 1, '2021-11-10 14:02:11', '2019-12-03 10:00:49', 'H', 1, 9, 2),
(23, 'stephane.robert', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$L0ZRZUNtTlJRMXljTDJHbQ$KAcQfWc0PRMikSnnHa5KotjdeF9QdMRtdqtlXQVjVRg', 'robertstephane.44@gmail.com', 'Stéphane', 'Robert', 'Stéphane Robert', NULL, 3, '0624230127', '1977-01-01', '06514884', 'D9', 'D9', 'D7', NULL, NULL, NULL, NULL, 1, 'Compétiteur', NULL, '2021-11-11 13:25:25', '2019-12-18 09:27:24', 'H', 1, 9, 2),
(24, 'sandrine.pouligny', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$a1dQS0cwOVVZVmV5SGo1dQ$se0qvDwQj5pRx1nDs8jrB5qf7hLkP0RTI+7eM0aooEQ', 'spouligny@gmail.com', 'Sandrine', 'Pouligny', 'Sandrine Pouligny', NULL, 3, '0674908559', '1976-03-02', '06632086', 'D9', 'D9', 'P10', NULL, NULL, NULL, NULL, 1, 'Compétiteur', NULL, '2021-11-11 13:25:09', '2019-12-18 09:28:51', 'F', 1, 10, 2),
(25, 'antoine.roze', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$eWJpOW5qM1dra0YyQnROcw$VtS6JbbczJKRpjUwIUiyFMagLsHS/sUpl3BGRzJq0r8', 'antoine.roze1976@yahoo.com', 'Antoine', 'Roze', 'Antoine Roze', NULL, 3, '0662225702', '1976-04-04', '00204183', 'D8', 'D9', 'D9', NULL, NULL, NULL, NULL, 1, 'Compétiteur', NULL, '2021-11-12 10:25:00', '2019-12-18 09:30:41', 'H', 1, 10, 1),
(26, 'eric.perret', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$R0dtNURielZwMXA3bC9DWQ$WfK4LCWkaSp2ibvdSYEh55rOvx3LOH00+JLrS0EjnL0', 'perret.jcde@wanadoo.fr', 'Eric', 'Perret', 'Eric Perret', NULL, 3, '0646250059', '1960-07-03', '00278626', 'P11', 'D9', 'P10', NULL, NULL, NULL, NULL, 2, 'Compétiteur', NULL, '2021-11-12 10:15:11', '2019-12-20 08:40:31', 'H', 1, NULL, 2),
(27, 'pascale.deparis', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$V3BnZGNsZDhZYUlnUXBPUg$OqLxnzLO6IuiIRxLOgMQz11+FCvknIqAmuutOZAopKU', 'deparis.pascale@gmail.com', 'Pascale', 'Deparis', 'Pascale Deparis', NULL, 3, '0672462952', '1961-11-15', '00215589', 'P11', 'D9', 'P11', NULL, NULL, NULL, NULL, 2, 'Compétiteur', NULL, '2021-11-27 01:19:21', '2019-12-20 08:41:53', 'F', 1, NULL, 2),
(28, 'odile.robert', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$SVRSaWpXTVEyWlVhQk9rYw$rSrvARM9jLV7nuLacHAVYC5Tq3bsGZ6WXpLSwdxXdpw', 'odilebillard@yahoo.fr', 'Odile', 'Robert', 'Odile Robert', NULL, 3, '0781309221', '1979-05-05', '06674862', 'D9', 'D9', 'D9', NULL, NULL, NULL, NULL, 2, 'Compétiteur', NULL, '2021-11-11 13:27:48', '2019-12-20 12:52:28', 'F', 1, 9, 2),
(29, 'dominique.mangani', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WY4EmiJTYDVYuYVOeGm51A$Pyr6xbRpCyhm51sWyL4CcrX+v68xRFlyME5aBZNdZJY', 'nornadominique@gmail.com', 'Dominique', 'Mangani', 'Dominique Mangani', NULL, 3, '0683529873', '1972-01-22', '06676194', 'P12', 'P12', 'P12', '78450', NULL, '54 avenue des clayes', 'Villepreux', 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:27:52', '2019-12-20 13:12:50', 'H', 1, 10, 2),
(30, 'philippe.harant', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$Zk1xL2R2ckxjSXlOSy9sNQ$ZDmibWDz8bdMQY7Xgvjh7rQxQIzBHqXIph4dUco0qYQ', 'phiphimini@gmail.com', 'Philippe', 'Harant', 'Philippe Harant', NULL, 3, '0675459457', '1968-03-07', '06872000', 'D9', 'P11', 'P11', '78340', NULL, '6 avenue Aristide Briand', 'Les Clayes sous Bois', 4, 'Compétiteur', NULL, '2021-11-11 15:36:40', '2019-12-20 15:12:39', 'H', 1, NULL, 2),
(31, 'catherine.linotte', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$ekU4VnN6cXN6MXY3VUcySw$yu9gOzsDCOpFPdY1zi0Uljx+g3tPNfmcVZOJJAIzgDU', 'catherine.linotte@sfr.fr', 'Cathy', 'Linotte', 'Cathy Linotte', NULL, 3, '0609898067', '1967-09-09', '00546953', 'P10', 'D9', 'D9', NULL, NULL, NULL, NULL, 2, 'Compétiteur', NULL, '2021-11-11 13:28:31', '2019-12-20 15:34:38', 'F', 1, NULL, 2),
(32, 'arnaud.coste', '[\"ROLE_SUPER_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$WVFaSVVHclp2U0dhMTUyOQ$TRx/faW8iJbZiI+w+Z53ooeO3b14fQr+2RaUp2y9bUc', 'nonokeeper@yahoo.fr', 'Arnaud', 'Coste', 'Arnaud Coste', NULL, 3, '0668118311', '1975-03-11', '06899607', 'P10', 'P10', 'D9', '78450', NULL, '15 Rue de la Gandonnerie', 'Villepreux', 1, 'Compétiteur', NULL, '2021-11-12 10:00:04', '2019-12-20 16:05:03', 'H', 1, 10, 2),
(33, 'gilles.bonaldi', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$Qmlick5RRmw2ZU9LVnUxZg$i1s5kQPWlZZDG57p5Qzv3wGyX9YjCOt3x40mvlPol0I', 'totobonaldi@gmail.com', 'Gilles', 'Bonaldi', 'Gilles Bonaldi', NULL, 3, '0607245319', '1959-12-19', '00044306', 'P12', 'P11', 'P11', '78370', NULL, '10 rue du Petit Bontemps,  Rés. Villiers', 'Plaisir', 4, 'Compétiteur', NULL, '2021-11-13 15:51:30', '2020-01-03 15:07:45', 'H', 1, NULL, 2),
(34, 'sebastien.boyer', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$eloxU3VLSjAvUUZXbFNzSw$lIVkDOBhv04TIOiRLLaACTWTUHl2huG2U/FtEhayzh0', 'boyer.seb@gmail.com', 'Sébastien', 'Boyer', 'Sébastien Boyer', NULL, 3, NULL, NULL, '07226578', 'P12', 'P12', 'P12', NULL, NULL, NULL, NULL, 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:27:06', '2020-01-03 15:24:24', 'H', 1, 0, 2),
(35, 'clement.skowronski', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$ISZOR57rUkIcxLKx4AKl1w$19TI8zhmOOaDbjbunQT3Bv72rv0zTc62e+kjWUiu7rM', 'clem.sko20@gmail.com', 'Clément', 'Skowronski', 'Clément Skowronski', NULL, 3, '0781775765', '2003-02-10', '06859299', 'P11', 'P11', 'P11', NULL, NULL, NULL, NULL, 2, 'Compétiteur', NULL, '2021-11-11 16:23:17', '2020-01-04 16:39:03', 'H', 1, 7, 1),
(36, 'karine.maggi', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$dmZjdTltb0JUakR2WUdCVg$c+9JF7q9INySJK9LCT+rLKxmi21lNQBjomk1z/eD57k', 'karinemaggi@free.fr', 'Karine', 'Maggi', 'Karine Maggi', NULL, 3, '0676674227', '1980-11-09', '00359331', 'P10', 'D7', 'P11', NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2020-10-08 11:54:48', '2020-01-04 16:43:59', 'F', 0, 9, 1),
(37, 'maxime.lecomte', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$Wm5UdDE4N1lMRkVkaDhHTA$i9HKwHmlmal2vD6/6UVhrELpeROjN8wL2d915NXIAX4', 'maxime99.lecomte@gmail.com', 'Maxime', 'Lecomte', 'Maxime Lecomte', NULL, 3, '0651539124', '1999-06-13', '07215594', 'P10', 'P10', 'P12', '78590', NULL, '9 rue Nicolas Boileau', 'Noisy-le-Roi', NULL, 'Compétiteur', NULL, '2021-11-11 15:37:46', '2020-01-04 16:50:00', 'H', 0, 7, 2),
(38, 'mickael.croizer', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$ODNNRVZ5R0JhY3RGd1lJeQ$AQuPkx7TIAJt02709YPnPDA5nbsIsCqXCroUonRBHV0', 'mickael.croizer@gmail.com', 'Mickaël', 'Croizer', 'Mickaël Croizer', NULL, 3, '0671179735', '1983-01-27', '06570488', 'P11', 'P10', 'P10', '78850', NULL, '5 bis rue des Templiers', 'Thiverval Grignon', 2, 'Compétiteur', NULL, '2021-11-11 13:30:29', '2020-01-04 16:56:33', 'H', 1, 8, 2),
(39, 'delphine', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZkkxSXBMQnZ6b1Z1NVkwUA$6IImS9gg0HQRtVGJisvnmE8IAvDBvYrHBGMELiVMgLI', 'delseb78@gmail.com', 'Delphine', 'Skowronski', 'Delphine Skowronski', 'pxneq2gMu9D8JoUmdBdozSqpsqagMMGBVB5mxvtgcBk', 3, '0630926714', '1974-08-27', '00344499', 'P10', 'D9', 'D9', '78450', NULL, '5 avenue du Landy', 'Villepreux', 2, 'Compétiteur', NULL, '2021-11-30 11:41:12', '2020-01-04 17:14:38', 'F', 1, 10, 2),
(40, 'philippe.gourlot', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$b3h1NVIuUmlQMVBUZjY4SQ$Ep0Lz3f2bHzk9WncyT836MXGfXFJbPn7TwVY/P82HBw', 'gourlot.philippe@neuf.fr', 'Philippe', 'Gourlot', 'Philippe Gourlot', NULL, 3, '0620344303', NULL, '00555846', 'P10', 'D9', 'D9', '78450', NULL, '86 chemin de Rambouillet', 'Villepreux', 1, 'Compétiteur', NULL, '2021-11-11 13:19:15', '2020-01-04 18:05:47', 'H', 1, 0, 2),
(41, 'charline.lepodras', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$V091T2ZVbnFQUFhPY2tKag$mpcMHfTQ1s7iHuKIS206IAEy9CIRgWdO46gkOhSSQ/k', 'TBD@free.fr', 'Charline', 'Le Podras', 'Charline Le Podras', NULL, 3, '0658645762', '1996-01-01', '06664304', 'P12', 'P12', 'P12', NULL, NULL, NULL, '?', NULL, 'Compétiteur', NULL, '2021-11-13 16:05:20', '2020-01-04 18:14:55', 'F', 0, 7, 1),
(42, 'isabelle.desjardins', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$eEdONU53OHA5T0tRQVZiUw$YH1KDvfPYu/V7hddDz337bRpHAsTxUd4jpF/TKb1+j4', 'isabelle.desjardins@laposte.fr', 'Isabelle', 'Desjardins', 'Isabelle Desjardins', NULL, 3, '0681499694', '1960-11-16', '00350038', 'P11', 'P10', 'P11', '78370', NULL, '448 Rue Jacques Tati', 'Plaisir', 2, 'Compétiteur', NULL, '2021-11-12 10:14:05', '2020-01-04 18:19:42', 'F', 1, NULL, 2),
(43, 'paul.jarrot', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$dWp4MmJ6cUo3ZU5PcmZkeg$EYagJDegJqhNIzPxT8fXMK7UyXumARjROkNwl5pgqPk', 'pauljarrot@yahoo.com', 'Paul', 'Jarrot', 'Paul Jarrot', NULL, 3, '0686120953', '1965-01-01', '00491381', 'P11', 'P10', 'P11', '78450', NULL, NULL, 'Villepreux', 5, 'Compétiteur', NULL, '2021-11-29 18:03:34', '2020-01-04 19:52:34', 'H', 0, NULL, 1),
(44, 'arnaud.leger', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$WlNWRGpjUjZLY2Y2NUxsOA$zTBB9ujm30GIrA3EK8ynyHdwc6VgadxtMfC7WuJGRBY', 'arnaud.leger78@gmail.com', 'Arnaud', 'Leger', 'Arnaud Leger', NULL, 3, '0632695315', '1972-08-06', '07066992', 'P11', 'P10', 'P11', '78340', NULL, '30 rue Maurice Jouet', 'Les Clayes sous Bois', 5, 'Compétiteur', NULL, '2021-11-24 21:49:04', '2020-01-04 19:59:34', 'H', 1, 10, 2),
(45, 'guillaume.deramaix', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$QXZ1T2JyVmNZZGlBREswaw$5oJ33SjwNnKaKbJwtD8iksn75iUVB0EMh65PIAR+Lfo', 'guideram@gmail.com', 'Guillaume', 'Deramaix', 'Guillaume Deramaix', NULL, 3, '0643655665', '1985-05-12', '00391710', 'P10', 'P11', 'P11', '78450', NULL, '1 square des dombes', 'Villepreux', 4, 'Compétiteur', NULL, '2021-11-13 15:54:05', '2020-01-04 20:02:09', 'H', 1, 8, 2),
(46, 'glenn.pezier', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$d6iNtxW2s0UNtX8xy42gyA$TU49GVXldmxXvuIkNLwT15ML2dNtRf14q5aiYhb56vE', 'glenn_pezier@hotmail.com', 'Glenn', 'Pezier', 'Glenn Pezier', NULL, 3, '0616992011', NULL, '06608211', 'P11', 'P11', 'P12', '78450', NULL, '4 Rue du Bosquet du Dauphin', 'Villepreux', 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:27:19', '2020-01-05 18:19:42', 'H', 1, 0, 2),
(47, 'sophie', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$UEI0TUoxWnpnTEhUWW02UA$cEeuDTZRaEfmP5zEDtwnhSfFCq3Ax3RvK4OgY23pxiU', 'sof357@ymail.com', 'Sophie', 'Slama', 'Sophie Slama', NULL, 3, '0617274395', '1974-03-02', '00045613', 'D9', 'D8', 'D9', '78280', NULL, '2 rue edmond Dantes', 'Guyancourt', 1, 'Compétiteur', NULL, '2021-11-12 10:12:34', '2020-01-06 14:35:25', 'F', 1, 10, 2),
(48, 'joseph.khairallah', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$L2twT2NmcnkxUllXdDFFdQ$NbnMCLx86n+IW+4HazJJ0NdXb6aGQcv9E8dcKbmkzXM', 'jkhairal@hotmail.com', 'Joseph', 'Khairallah', 'Joseph Khairallah', NULL, 3, '0678234764', '1971-09-16', '00546922', 'P11', 'P11', 'P10', NULL, NULL, NULL, NULL, 2, 'Compétiteur', NULL, '2021-11-12 10:14:36', '2020-01-06 14:43:38', 'H', 1, NULL, 2),
(49, 'chloe.boitier', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$+l/pbX3G2gu/fWVQhwi5LQ$vb+/cqoCzzGgtZirhFeBuPqzfpT2Vs5kj3npWowco7g', 'chloe.tondo@gmail.com', 'Chloé', 'Boitier', 'Chloé Boitier', NULL, 3, '0678611414', NULL, '00574755', 'D9', 'D9', 'P10', '78450', NULL, '81 avenue du grand parc', 'Villepreux', 1, 'Compétiteur', NULL, '2021-11-12 10:08:25', '2020-01-06 14:49:24', 'F', 1, 0, 2),
(50, 'jean-christophe.rouchon', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$amd4cU9XeDU3VlhtMTg3Rg$oKgUjHSXOSq4jreaxwM/DoTugozLd4wknbjZXrLzZDg', 'jcrouchon@gmail.com', 'Jean-Christophe', 'Rouchon', 'Jean-Christophe Rouchon', NULL, 3, '0671452520', NULL, '07028228', 'P11', 'P11', 'P11', '78450', NULL, '1 rue du Bosquet du Dauphin', 'Villepreux', 2, 'Compétiteur', NULL, '2021-12-01 14:58:17', '2020-01-06 14:52:19', 'H', 1, 0, 2),
(51, 'frederic.grosso', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$L7RGY/TdTDy2d5n3VWRvCQ$VCtp8dBGLVJZKVHTnTjTBdkkJHAjUgfJbbVKXtJsIhI', 'grosso.fred@gmail.com', 'Frédéric', 'Grosso', 'Frédéric Grosso', NULL, 3, '0603252228', '1980-05-09', '06739426', 'D9', 'P11', 'P11', '78450', NULL, '10 allée du Hameau de la Reine', 'Villepreux', 2, 'Compétiteur', NULL, '2021-11-11 13:29:53', '2020-01-06 14:59:26', 'H', 1, 9, 2),
(52, 'ludovic.boiste', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$V2N5b0czSWxweEQxRm1XNw$wq6RmzClEVr2XmUfHobIGZwelpsWxLUupgVkoGmA5O8', 'ludovic.boiste@gmail.com', 'Ludovic', 'Boiste', 'Ludovic Boiste', NULL, 3, '0688491427', '1980-03-31', '06482165', 'P11', 'P11', 'P11', '78370', NULL, '7 rue des peupliers', 'Plaisir', 4, 'Compétiteur', NULL, '2021-11-13 15:51:13', '2020-01-06 15:02:24', 'H', 1, 9, 2),
(53, 'julien.girardin', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$J4FWK1n2Dn3PpJlhpfSqwA$AdNhECNCxkP+z1Hxa4MPtRAYnLKU1pz2oios59jim70', 'julien.girardin@gmail.com', 'Julien', 'Girardin', 'Julien Girardin', NULL, 3, '0663066402', '1984-09-20', '07178352', 'P12', 'P12', 'P12', '78330', NULL, '3 chemin du grand chêne', 'Fontenay-le-fleury', NULL, 'Compétiteur', NULL, '2021-11-13 16:01:20', '2020-01-08 10:14:02', 'H', 0, 8, 1),
(54, 'herve.gautier', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$hINBPsE1aO12paOzsFhH/A$ZDMGl6KYaqXw7LBo8fp9CcBkvUmtJpjLyh0E0+Ebsas', 'herve.gautier@med.ge.com', 'Hervé', 'Gautier', 'Hervé Gautier', NULL, 3, NULL, NULL, '00444957', 'P12', 'P12', 'P12', NULL, NULL, NULL, NULL, 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:28:21', '2020-01-08 10:16:23', 'H', 1, 0, 2),
(55, 'alexandre.huet', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Od7sunpT9zCEBdLCTBZWig$/hvvDv8UQEFCFMfuvwmLtDEbNYrGES3mSiBk1vNMw6Y', 'huet.villepreux@gmail.com', 'Alexandre', 'Huet', 'Alexandre Huet', NULL, 3, NULL, '1995-02-02', '06679325', 'P12', 'P12', 'P12', NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-13 16:01:39', '2020-01-08 10:22:11', 'H', 0, 7, 2),
(56, 'eric.lecomte', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$UFBaZW5rTlZxUTZHR3VLbA$hG2jpJZVOkVstYgx50Zz7YBaI5CzgMNQZ6SmH9C4S6A', 'lecomtex4@gmail.com', 'Eric', 'Lecomte', 'Eric Lecomte', NULL, 3, '0616396474', '1969-07-19', '07212899', 'P11', 'P11', 'P11', NULL, NULL, NULL, NULL, 5, 'Compétiteur', NULL, '2021-11-24 21:42:23', '2020-01-08 15:59:43', 'H', 1, NULL, 2),
(57, 'ilona.bourjac', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$1wOfjktSA24xkVXFEmuVDQ$mJy8srQYALQsNLc/XeZFO6YSw7pAQyJowbj8CcLeCvI', 'ilona7729@hotmail.fr', 'Ilona', 'Bourjac', 'Ilona Bourjac', NULL, 3, '0658129006', '1990-05-29', '00448325', 'P10', 'D9', 'P11', NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-13 16:04:24', '2020-01-08 16:03:16', 'F', 0, 7, 1),
(58, 'thierry.azerot', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$2rhWCgDUHiKOSrlFxeFvCw$BovDFaBv8PV+5+ott08TAslpqoNiO5ztF0PpiVlrPvc', 'thierry_bad@orange.fr', 'Thierry', 'Azerot', 'Thierry Azerot', NULL, 3, '0630670815', '1962-09-25', '06630298', 'P12', 'P11', 'P11', '78450', NULL, '211 Avenue de Rambouillet', 'Villepreux', NULL, 'Compétiteur', NULL, '2021-11-24 21:42:58', '2020-01-08 16:06:20', 'H', 1, NULL, 2),
(59, 'stephane.dalens', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$fp+jhZPF9jLfYUhOB+uKWA$UNX7WFoG8J01/Crqn8CBIMkV4MMLGIPsvwvk73EpIcI', 'stephane.dalens@club.fr', 'Stéphane', 'Dalens', 'Stéphane Dalens', NULL, 3, '0673671321', '1973-07-17', '06899628', 'P11', 'P12', 'P12', '78450', NULL, '15 rue du potager', 'Villepreux', NULL, 'Compétiteur', NULL, '2021-11-13 16:04:49', '2020-01-08 16:09:52', 'H', 0, 10, 1),
(60, 'sarah.patricio', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$cHRXMnFzQy40aXNhenltSw$PMDv/LrmLXIbhkwIFvTpGl6dSzOTDFuR5OUbhmf3OvA', 'sarah.patricio@orange.fr', 'Sarah', 'Patricio', 'Sarah Patricio', NULL, 3, NULL, '1989-12-08', '07305404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-12 18:58:57', '2020-02-26 16:24:16', 'F', 0, 7, 1),
(61, 'Baptise.Benay', '[]', '$argon2id$v=19$m=65536,t=4,p=1$eFdtVmpEakhHbkdyMnRHTw$+zDGvrW7H5Hh5FsvmtzEQIbNz9HAE3MCxUViJtgAtb4', 'lydie.letourneau@laposte.net', 'Baptise', 'Benay', 'Baptise Benay', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0684104091', NULL, NULL, NULL, 'Jeune', NULL, '2020-08-01 18:27:47', '2020-07-31 13:28:19', 'H', 1, NULL, 2),
(62, 'Pierric.Bezon', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ZWM0Z1dISjNVL1FIZDhjVA$s4k89jLP2BVqIZu4jyOjsZv8Zh7giuiN1+v/3rcFX8M', 'delphinebezon@yahoo.fr', 'Pierric', 'Bezon', 'Pierric Bezon', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:23:20', '2020-07-31 13:29:48', 'H', 1, NULL, 2),
(63, 'Julia.Cacciaguerra', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dERaMzFJYmFyeHg4Vml2Vg$8+DtQwiynqtKmy1UzSvhzkHgyInZozYjH7N2YNd3deQ', 'isabelle.cacciaguerra@hotmail.fr', 'Julia', 'Cacciaguerra', 'Julia Cacciaguerra', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0762857213', NULL, NULL, NULL, 'Jeune', NULL, '2020-07-31 13:30:43', '2020-07-31 13:30:40', NULL, 1, NULL, 1),
(64, 'Thomas.Calvet', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SGtwSXZyM3FzUWl6YUJ2Lw$JKmNNja1FZ9qss5KPWaWxu569BmB2A4rFhK8biC0UkM', 'annecat.calvet@gmail.com', 'Thomas', 'Calvet', 'Thomas Calvet', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-08-01 18:27:59', '2020-07-31 13:31:17', 'H', 1, NULL, 2),
(65, 'Lucie.Chalimbaud', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Z095cU9KVVhsdHZIY3kzdQ$ZDvayTRZbAE7DkrJVKWA9SCcrE1sKuIgFA4+XDK2/7M', 'chalimbaud@gmail.com', 'Lucie', 'Chalimbaud', 'Lucie Chalimbaud', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0689801668', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:41:31', '2020-07-31 13:34:20', 'F', 1, 0, 2),
(66, 'Andréas.CARNERO', '[]', '$argon2id$v=19$m=65536,t=4,p=1$OXhTN005YUlxWDFLUkw3OQ$ZTU/q3BDpOHqOqpATk2RgOcXlLb77AZLTkIleXziSYg', '', 'Andréas', 'Carnero', 'Andréas Carnero', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0619230972', NULL, NULL, NULL, 'Jeune', NULL, '2020-08-01 18:28:05', '2020-07-31 13:35:08', 'H', 1, NULL, 2),
(67, 'Matheo.Carnero', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SWZPREc4b3IvU1AxWGlaMw$SxHhkp3t1j8uEZT9PhazZrk3QUr5ozPsLifj41hJMmQ', '', 'Mathéo', 'Carnero', 'Mathéo Carnero', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0619230972', NULL, NULL, NULL, 'Jeune', NULL, '2020-08-01 18:28:12', '2020-07-31 13:36:12', 'H', 1, NULL, 2),
(68, 'Marilou.BERNABE', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YjFQVE96L2hQT3Y1WGVDOA$C81967nuuaAQWr3r6S8jdd7q2h7jtK+150ZaVCneWeM', 'marilou.bernabe@gmail.com', 'Marilou', 'Bernabe', 'Marilou Bernabe', NULL, 3, '0646763003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2021-11-13 16:04:32', '2020-07-31 13:37:36', 'F', 1, 0, 1),
(69, 'Thibault.BERTOYE', '[]', '$argon2id$v=19$m=65536,t=4,p=1$T3ZzTkhDOVBjWlBvVzVaaA$EdCl6MoSmvBpEojy2Rfd/RbpxBhCDP/0CAjLmbZ4lg8', 'tbertoye@gmail.com', 'Thibault', 'Bertoye', 'Thibault Bertoye', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:53:14', '2020-07-31 13:38:16', 'H', 1, NULL, 1),
(72, 'Fanny.CHANDESRIS', '[]', '$argon2id$v=19$m=65536,t=4,p=1$b0NnTzRZT0g1cTRnSU5WQg$pfE31Htd20pKD4Tegypi125DudGq/Y2cBbesZ2OzzXQ', 'flemz@club.fr', 'Fanny', 'Chandesris', 'Fanny Chandesris', NULL, 3, '0683064386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:33:03', '2020-07-31 13:40:16', 'F', 1, NULL, 2),
(74, 'Mathis.Bonaldi', '[]', '$argon2id$v=19$m=65536,t=4,p=1$REFYLjhlMy9UZldkalV3Qw$XW2PU59PkFdCHzw/Fls5IT1rgeRHWGVJrRBMaa9cLaM', 'totobonaldi@gmail.com', 'Mathis', 'Bonaldi', 'Mathis Bonaldi', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0607245319', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:24:44', '2020-09-03 10:24:38', 'H', 1, NULL, 2),
(75, 'Thomas.Dabel', '[]', '$argon2id$v=19$m=65536,t=4,p=1$U2lTLk9SR21TNk9FN1lhSA$Rt8Ao2s8u1fj0zBOp7kKreUSH4FQfUsqWrqldWulsjw', 'olivierdabel72@gmail.com', 'Thomas', 'Dabel', 'Thomas Dabel', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0614154740', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:43:28', '2020-09-03 10:42:38', 'H', 1, NULL, 2),
(76, 'Nicolas.Dabel', '[]', '$argon2id$v=19$m=65536,t=4,p=1$RzlSNERJWFdUN2YuY3lNRQ$IUDE/pLQ0rneCdq+5JzXj87a4b+s3MDsI0gkER47eGI', 'olivierdabel72@gmail.com', 'Nicolas', 'Dabel', 'Nicolas Dabel', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0614154740', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:43:43', '2020-09-03 10:42:59', 'H', 1, NULL, 2),
(77, 'Maxence.DEQUIN', '[]', '$argon2id$v=19$m=65536,t=4,p=1$b2FVRGRpMjBkVmdBOWhxTA$Q70+4gNZwUL/IhmsYiRboBGbXgHQMPirvwYzKOTFqbk', 'mldequin@yahoo.fr', 'Maxence', 'Dequin', 'Maxence Dequin', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0661451160', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:55:07', '2020-09-03 10:45:10', 'H', 1, NULL, 2),
(78, 'Axel.Dupouy', '[]', '$argon2id$v=19$m=65536,t=4,p=1$MUZCWG9kLnNLTWtOcHg5Zg$diMJLLMakmI96ndLM/YNeAhiBl6rTzKliplM4RSbwIo', 'robineau-lucie@hotmail.com', 'Axel', 'Dupouy', 'Axel Dupouy', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0980710040', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:55:11', '2020-09-03 10:54:41', 'H', 1, NULL, 2),
(79, 'Dimitri.Fajal', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VjJ4ZC8zNHhPeTRxY0Z4WA$alJjBoFauc6SM0V68UMhGtjId4jawAu7RRwotPUmSak', 'nicolas.fajal@orange.fr', 'Dimitri', 'Fajal', 'Dimitri Fajal', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0642508619', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 10:57:24', '2020-09-03 10:57:24', 'H', 1, NULL, 1),
(80, 'Julien.Hauchard', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UXNrM0NUQTFpaFV1enNjaQ$EpCBuRsMIzogPB2c1XNR2kIiDNSkqd8tgAwZ7f6OTd4', 'cganh@free.fr', 'Julien', 'Hauchard', 'Julien Hauchard', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 11:00:28', '2020-09-03 11:00:22', 'H', 1, NULL, 2),
(81, 'Maxian.Keller', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TTFqU1B4VnFndG4yR0dVag$A9+zyNA5BMuW17gl8290Be4MvjI9WL09Vp73nWzBkls', 'keller.mathieu@orange.fr', 'Maxian', 'Keller', 'Maxian Keller', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0625463147', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:12:57', '2020-09-03 11:02:28', 'H', 1, NULL, 2),
(82, 'Alexandre.Lorin de la Grandmaison', '[]', '$argon2id$v=19$m=65536,t=4,p=1$RDRRY2hGYlp3NHdjQzRvcQ$eSdVNiu47vUPF0e0ZWjKPtw4+i3GVXyf+O1FAew+D8c', 'sophiecharlotte.lorin@gmail.com', 'Alexandre', 'Lorin de la Grandmaison', 'Alexandre Lorin de la Grandmaison', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0130809327', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:12:58', '2020-09-03 13:12:47', 'H', 1, NULL, 2),
(83, 'Lyne.Mangani', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Mklxa1NiWTlSdEN5bEJkWA$N1hntchOdlVA4cjy+5OOeBQjmM6d/ggC4wjg4NS2y1c', 'doume3478@gmail.com', 'Lyne', 'Mangani', 'Lyne Mangani', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0683529873', NULL, NULL, NULL, 'Jeune', NULL, '2021-11-11 15:41:20', '2020-09-03 13:14:25', 'F', 0, 0, 2),
(84, 'Thomas.Mary', '[]', '$argon2id$v=19$m=65536,t=4,p=1$d0JqQnE3Ykw5SEE1MW1Dbw$RNvJ6Ba15uCWuHzTD7pnV7UPiHoZ6ZzVGHZkZYNfuc4', 'stephanemary247@neuf.fr', 'Thomas', 'Mary', 'Thomas Mary', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0678536497', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:17:18', '2020-09-03 13:17:10', 'H', 1, NULL, 2),
(85, 'Ethan.Noiry', '[]', '$argon2id$v=19$m=65536,t=4,p=1$T0RjeEowYzI0RVpETHVPUA$9CZSyuXCYCU/F/oNfo0jiWRZN/TlBT3aUesbQ7FVHLo', 'magali.rosier@gmail.com', 'Ethan', 'Noiry', 'Ethan Noiry', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0637974504', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:30:14', '2020-09-03 13:29:51', 'H', 1, NULL, 2),
(86, 'Julie.Quignon', '[]', '$argon2id$v=19$m=65536,t=4,p=1$OWF5RkJINXdDTWgxU1AuYw$xhnSqVKJlmVAcOTlkoEIbZU0Rszz3H/wqs4q3WAP4Vs', 'constancequignon@gmail.com', 'Julie', 'Quignon', 'Julie Quignon', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0609873718', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:31:24', '2020-09-03 13:31:19', 'F', 1, NULL, 2),
(87, '?.Racle', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bjlycjEvZy5pODFBLktZYg$VueesPA8/RVEc33Kovr8acLS3vAXFOvHgadf7uT/H5E', '', '?', 'Racle', '? Racle', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:31:55', '2020-09-03 13:31:49', 'H', 1, NULL, 2),
(88, 'Tamara.Roudier', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Ny5lYUJVWE9MdlRwakc1dw$vgpQntKa5ixRWR3CvviGSGcy5fdfk5PHxhVuJ9aMKS0', 'severoudier@yahoo.fr', 'Tamara', 'Roudier', 'Tamara Roudier', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:32:39', '2020-09-03 13:32:30', 'F', 1, NULL, 2),
(89, 'Mickaël.Tarlet', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TmkwQjl6ZU02dC9ZRzJ2ag$W56RF/sDg1T0kUlxObrLW5BvKT+mO3laZd9b9qCixX0', '', 'Mickaël', 'Tarlet', 'Mickaël Tarlet', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:33:27', '2020-09-03 13:33:21', 'H', 1, NULL, 2),
(90, 'Johan.Tarlet', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dDdXY1RFSXRCM1lxNnpCdg$tc6a+e+Ww5Y6rG2NbPV7XbrlorQJtgb3acFBsdZv+Vs', '', 'Johan', 'Tarlet', 'Johan Tarlet', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:34:28', '2020-09-03 13:33:44', 'H', 1, NULL, 2),
(91, 'Ewan.Toulouch Destouesse', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dWpOZDdhLmwuQ2x6cjBPZQ$TbAkXBD5hO9UZWCKqP5bZ3umoYxQ0OHYB60k3AAgzpw', 'eric.touluch@mpsa.com', 'Ewan', 'Toulouch Destouesse', 'Ewan Toulouch Destouesse', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:34:51', '2020-09-03 13:34:24', 'H', 1, NULL, 2),
(92, 'Fille 1.Fuseau', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aGNyTmNYNFhyeVNaSExiUA$6Bf//MXVXtFBgCNqZHT5RfcJZDHXH7a6K5uqH5um8Og', 'severine.fuseau@gmail.com', 'Fille 1', 'Fuseau', 'Fille 1 Fuseau', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2021-06-27 21:24:47', '2020-09-03 13:35:31', 'F', 1, NULL, 4),
(93, 'Fille 2.Fuseau', '[]', '$argon2id$v=19$m=65536,t=4,p=1$T29xeDd1eTM2Q1Bad1VvYw$WBUwy8x5S5GrNgh8rynGZes2YYjWaQidCnCAYzN4bEo', 'severine.fuseau@gmail.com', 'Fille 2', 'Fuseau', 'Fille 2 Fuseau', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Jeune', NULL, '2020-09-03 13:36:05', '2020-09-03 13:35:43', 'F', 1, NULL, 4),
(94, 'damien.gregeois', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bldacWM1RUNwLnRxOHRvTA$pDL+5GQ7OXQ/Jjf5EiQb1ol2YNOfc248NcJtgEq2M6Q', 'gregeois.isabelle@orange.fr', 'Damien', 'Grégeois', 'Damien Grégeois', NULL, 3, '0682133771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jeune', NULL, '2020-09-15 21:49:54', '2020-09-03 13:38:15', 'H', 0, 0, 2),
(95, 'Erwan.Commun', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aW9hb1dqM3J4cEN5NGxlZg$WmXPw1M+RcwSKpLNldUj5sJwvxFd+3FGD8gJV0/Ip6U', 'scommun71@gmail.com', 'Erwan', 'Commun', 'Erwan Commun', NULL, 3, '0695220749', NULL, '7155673', 'P11', 'P12', 'P12', NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-13 15:53:15', '2020-09-03 14:26:31', 'H', 1, 0, 2),
(96, 'Richard.Besnier', '[]', '$argon2id$v=19$m=65536,t=4,p=1$elVMdFo3WE9FdkV0QWtuMQ$7PCo8ETLmh7QUjaVij8M8koNkNpNIgcPS1Y1vhxvhz4', 'besricha@gmail.com', 'Richard', 'Besnier', 'Richard Besnier', NULL, 3, NULL, NULL, '6892545', 'P11', 'P11', 'P11', NULL, NULL, NULL, NULL, 4, 'Compétiteur', NULL, '2021-11-13 15:50:40', '2020-09-03 15:08:08', 'H', 1, 0, 2),
(97, 'Vincent.Hache', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TWlxWWlveWY1bFBCczcwVQ$/hzFHTwJgkvBNoeM5LapsXOtSkFoZtM5M8QLxre+os4', 'vincent.hache@yahoo.fr', 'Vincent', 'Hache', 'Vincent Hache', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-11 11:38:31', '2020-09-03 15:10:46', 'H', 0, NULL, 2),
(98, 'william.butterworth', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Y0FBMi9sTjcucGVhOXRrcg$DKxwwMdSHcfTOZ2C2UxNO78vChKczq961D5fvRZaVKQ', 'william.butterworthwb@gmail.com', 'William', 'Butterworth', 'William Butterworth', NULL, 3, '0658253806', '2001-03-12', NULL, NULL, NULL, NULL, '78450', NULL, '2 sente du bois', 'Chavenay', NULL, 'Compétiteur', NULL, '2020-10-15 14:13:44', '2020-09-04 10:19:16', 'H', 1, 7, 2),
(99, 'Olivier.Cazenave', '[]', '$argon2id$v=19$m=65536,t=4,p=1$N2tvMmR2bUNCR1c4ZEhGdA$CGR5UfCVD0zuFB0ZVKjITSABYSx1473cuSMVbxqzGTo', 'cazenave_olivier@hotmail.fr', 'Olivier', 'Cazenave', 'Olivier Cazenave', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:30:13', '2020-09-04 10:29:44', 'H', 1, NULL, 2),
(100, 'Madame.Cazenave', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dGc0U3ZNLnNKU0VOQW1nTA$NgLCvZsUskK++PFpWpWBt8mRTle7yFwqx73vEp/Q3ok', '', 'Madame', 'Cazenave', 'Madame Cazenave', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:30:14', '2020-09-04 10:30:07', 'F', 1, NULL, 2),
(101, 'Jeremy.Duclos', '[]', '$argon2id$v=19$m=65536,t=4,p=1$OUVnMUFCckVuV1ZNUXlpSg$XzQFDjAeJS9apUnc5EuLC8zsLmtVnugwh5LMo9lvG9U', 'duclos.jeremy@gmail.com', 'Jérémy', 'Duclos', 'Jérémy Duclos', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:54:33', '2020-09-04 10:33:55', 'H', 1, NULL, 2),
(102, 'Stéphane.Guerveno', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SHpucThsVEIxQmIvN0EvSA$zlaX5r0Ru5aBTPyay7D/xl/Vwygb8dP/ggMlMdf1c/8', 'sguerveno@free.fr', 'Stéphane', 'Guerveno', 'Stéphane Guerveno', NULL, 3, '0643989981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:50:10', '2020-09-04 10:44:29', 'H', 1, NULL, 2),
(103, 'Véronique.Guillot', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Z0dOV2JxVTc0cXFGUUdLRQ$l1pvLJlmRzziAFlaGewWUTK14OwksKjM/3h6/X6nY8g', 'nicaguillot@aol.com', 'Véronique', 'Guillot', 'Véronique Guillot', NULL, 3, '0613374673', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:50:12', '2020-09-04 10:46:40', 'F', 1, NULL, 2),
(104, 'Céline.Haton', '[]', '$argon2id$v=19$m=65536,t=4,p=1$L0Y5Y1VYaEdhZjJUcXN0Zw$g3CF/mF02FfszgrWUivEHBKH1jsvWdSmXlalEKCI8Bc', 'vattebault.celine@neuf.fr', 'Céline', 'Haton', 'Céline Haton', NULL, 3, '0632157818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:50:13', '2020-09-04 10:49:51', 'F', 1, NULL, 2),
(105, 'Nicolas.Herstain', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UXpwb25peUk3Y2psaW9tWA$4+qSBlw9mG1B7bti9g45q0UtZvH5nJxHSJv0YzQMt0I', 'nicolas.herstain@free.fr', 'Nicolas', 'Herstain', 'Nicolas Herstain', NULL, 3, '0618032120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 10:51:28', '2020-09-04 10:51:22', 'H', 1, NULL, 2),
(106, 'Mathieu.Lehoux', '[]', '$argon2id$v=19$m=65536,t=4,p=1$djAyUDFsR0VjZzdpT2hSRA$999fYFE2EvQgDm3n9ImhARwy1aEfURaELN9eJ7dlLqY', 'annonces@chibi-neko.fr', 'Mathieu', 'Lehoux', 'Mathieu Lehoux', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:03:41', '2020-09-04 11:03:34', 'H', 1, NULL, 2),
(107, 'Xavier.Lemercier', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YTEwemxyaUpzRzZFNjdrNg$K74utAP6RJ17RtYnd2uopwMEl5ti2Xw3hgd1wa/1nQc', 'xlren11@gmail.com', 'Xavier', 'Lemercier', 'Xavier Lemercier', NULL, 3, '0611288260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:04:49', '2020-09-04 11:04:43', 'H', 1, NULL, 2),
(108, 'Agnès.Lenardon', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VnRKbTZPbXR6N0hGQmVVTw$hJ+4S+04xA1RlBo1Kbtu6W4m/XgMh+Y89jK+PehP6pk', 'alenardon@gmail.com', 'Agnès', 'Lenardon', 'Agnès Lenardon', NULL, 3, '0676493565', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:12:33', '2020-09-04 11:08:09', 'F', 1, NULL, 2),
(109, 'Karine.Robin', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UEN5M1B2ZEZoblpMUkZ6bw$oIHDaNuuWvqfSNtbytGN3TYC7GAi9zjEQASkZsClE08', '', 'Karine', 'Robin', 'Karine Robin', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:12:33', '2020-09-04 11:12:13', 'F', 1, NULL, 2),
(110, 'Monsieur.Robin', '[]', '$argon2id$v=19$m=65536,t=4,p=1$WWVIcWtiNUQ3WkphMVJKTg$PthPzr0JjBbZmzEc+2h6ZKz9w3fFw34wnNEgN7jKLOM', '', 'Monsieur', 'Robin', 'Monsieur Robin', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:12:34', '2020-09-04 11:12:22', 'H', 1, NULL, 2),
(111, 'Carine.Tarlet', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YXhBa1ZRODY4RWNCSzUxdg$B4XWH6AlsF3//7vsQMYG4kQwRprqdJ4ejuzuxbBVhdM', 'carineannelefevre@gmail.com', 'Carine', 'Tarlet', 'Carine Tarlet', NULL, 3, '0610013179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:14:35', '2020-09-04 11:13:32', 'F', 1, NULL, 2),
(112, 'Alexandre.Tarlet', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Q3UuV09FWEtFdzNKTVEuYQ$syXYNwih+4qiTpAp+lxds1ZmKzQGoCyn1gkiPx0MtmE', 'tarlet.alexandre@orange.fr', 'Alexandre', 'Tarlet', 'Alexandre Tarlet', NULL, 3, '0627804209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:14:36', '2020-09-04 11:14:08', 'H', 1, NULL, 2),
(113, 'Clément.Travaillard', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dlZ0VkJMUVZoVkVFRFdGdw$+a7fzNGOmwwZ2qp2NjULRbFrJfl3harOb+Zsm/5SXAM', 'clement.travaillard@gmail.com', 'Clément', 'Travaillard', 'Clément Travaillard', NULL, 3, '0662776929', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:15:50', '2020-09-04 11:15:27', 'H', 1, NULL, 2),
(114, 'Emilie.Pachecho-bruno', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ejdoS0VnaEJSVUhEcFpxOQ$85DsGxZU77QqfM6TBD6BoxR7roJTyJh6y7HqXrUdI08', 'alexandreemilie16@hotmail.fr', 'Emilie', 'Pachecho-bruno', 'Emilie Pachecho-bruno', NULL, 3, '0634072943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:23:07', '2020-09-04 11:18:42', 'F', 1, NULL, 2),
(115, 'Katarine.Javor', '[]', '$argon2id$v=19$m=65536,t=4,p=1$V2FLdlpNMlJZdW1DR253VA$xP9UMWySYGroMol3EoEhPw6rH4EzoN+7s/2GJGDsH0A', '', 'Katarine', 'Javor', 'Katarine Javor', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:22:57', '2020-09-04 11:22:37', 'F', 1, NULL, 4),
(116, 'Gergely.Javor', '[]', '$argon2id$v=19$m=65536,t=4,p=1$cy5nbEs0clNNa0J0SzZUbg$eSb9SWh/jNzVJYaT0P6lfQSB5ZAtx7+JaR3hEJH+7tY', '', 'Gergely', 'Javor', 'Gergely Javor', NULL, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Loisir', NULL, '2020-09-04 11:22:57', '2020-09-04 11:22:52', 'H', 1, NULL, 4),
(117, 'deborah.monfort', '[]', '$argon2id$v=19$m=65536,t=4,p=1$OXowTzlsajg0MVJ2bTd2TQ$2xUy+Yw7BjN8bNuBRCN5We1/m5vR/htZMB53/xEGSRs', 'deborah.monfort@hotmail.fr', 'Déborah', 'Monfort', 'Déborah Monfort', NULL, 3, '0632288067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-11 15:39:06', '2020-09-05 10:43:38', 'F', 0, 0, 2),
(118, 'maxence.brulez', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$eDFGMmo3U0YvZm9kcllkdA$ou/peyFy+Hz7P+0dwI7p0EWg/ZtZKUJrZEkI6htUbV0', 'marianne.brulez@sfr.fr', 'Maxence', 'Brulez', 'Maxence Brulez', NULL, 3, '0686710040', '2002-07-09', '7028195', 'P11', 'P12', 'P12', '78450', '0177040959', '3 Square Gatinais', 'Villepreux', 4, 'Compétiteur', NULL, '2021-11-13 16:04:02', '2020-09-12 18:42:58', 'H', 1, 7, 2),
(119, 'pascal.heraud', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$c1NPcmJHVm1UQ1d3NHN2cw$kLC/5u0nRz2NoJhJaTojgTA7X89sS8Kt2dVnz/yeI1U', 'heraud.famille@orange.fr', 'Pascal', 'Héraud', 'Pascal Héraud', NULL, 3, '0621576365', '1967-03-30', '555847', 'P11', 'P11', 'P10', '78450', NULL, '17 avenue Bicherel', 'Villepreux', 4, 'Compétiteur', NULL, '2021-11-13 15:55:50', '2020-09-12 18:53:55', 'H', 1, NULL, 2),
(120, 'rajeef.kumar', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$akx1ZEJqazN4a3FjZC9pTg$phVyxKK9k9JPmeigAqmTL1SkF48Q+Vkf/bExNgavFFY', 'rkbiocigh2013@gmail.com', 'Rajeef', 'Kumar', 'Rajeef Kumar', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-11 15:37:17', '2020-09-12 18:55:50', 'H', 0, 0, 2),
(121, 'thomas.letellier', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$akh1MWFmZGRQMjNuMDg3VA$fsDieXq4bylqWJXHubvnxV3R4xe7RlguIlCTGxjnM7I', 'th.letellier@gmail.com', 'Thomas', 'Letellier', 'Thomas Letellier', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-11 15:38:53', '2020-09-12 18:57:58', 'H', 0, 0, 2),
(122, 'vincent.poitrenaud', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$R0VlYmlnLlV4TVAxT1BwQw$4ptubjphamva0lumSmyIaZPxnPRQp4OthohfKjYuYsw', 'vpoitrenaud@hotmail.fr', 'Vincent', 'Poitrenaud', 'Vincent Poitrenaud', NULL, 3, '0663033149', NULL, '00321854', 'P10', 'D8', 'D7', NULL, NULL, NULL, NULL, 1, 'Compétiteur', NULL, '2021-11-11 15:58:57', '2020-09-12 19:01:32', 'H', 1, 0, 2),
(123, 'fabrice.ferrand', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$QVNEb3JsbDF1eXFTY0ZLUA$yrF2wZXiZorMjXib+xFY/jgzISXdLIUMQaoKlniieZk', 'fabfer@wanadoo.fr', 'Fabrice', 'Ferrand', 'Fabrice Ferrand', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-11 15:35:05', '2020-09-12 19:26:42', 'H', 0, 0, 2),
(124, 'flora.roussel', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dm5mT2t5VXdUNU1KZzhzaQ$CdWYrsMbJVW3jo/Ex4AqDQ7b4e1vowybJduSkFpn/9M', 'floraroussel34290@gmail.com', 'Flora', 'Roussel', 'Flora Roussel', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compétiteur', NULL, '2021-11-11 15:39:27', '2020-10-02 11:03:10', 'F', 0, 0, 2),
(125, 'isabelle.pinaud', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Uzl0akhTaUpWall1SWI1eA$SF+jbCGd5iheK4chGwmQEGCYQEUTP0kdmlDcQjTGtVA', 'pinaud.isabelle@neuf.fr', 'Isabelle', 'Pinaud', 'Isabelle Pinaud', NULL, 3, '0676082844', '1982-04-08', '00011726', 'P11', 'D9', 'P10', '78370', NULL, NULL, 'PLAISIR', 1, 'Compétiteur', NULL, '2021-11-20 10:03:42', '2021-09-02 15:08:24', 'F', 1, 8, 2),
(126, 'geoffroy.degoul', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZHJuUzZ3M0F5cExFa1J2RA$LERpthWRIIgiaKBjfMdCdxq0uSE+qp/6EnXiXAMwvJc', 'geoffroy.degoul@gmail.com', 'Geoffroy', 'Degoul', 'Geoffroy Degoul', NULL, 3, '0633138146', NULL, NULL, 'P10', 'D9', 'P10', NULL, NULL, NULL, NULL, 1, 'Compétiteur', NULL, '2021-11-15 21:35:20', '2021-11-11 12:59:43', 'H', 1, 0, NULL),
(127, 'philippe.lode', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Q3NJRXlXN0t4UW9NNS9LLw$b4wV19BwGfOwtHf2ckpmKjb8+BTMUDdUiHW3kQ7Ns6I', 'tbd@gmail.com', 'Philippe', 'Lode', 'Philippe Lode', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Loisir avec Interclub', NULL, '2021-11-28 11:28:06', '2021-11-27 10:59:20', 'H', 1, 0, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `age_category`
--
ALTER TABLE `age_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6660BB6FE6` (`auteur_id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_53A4EDAA7294869C` (`article_id`),
  ADD KEY `IDX_53A4EDAA12469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DA76ED395` (`user_id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`commande_id`,`produit_id`),
  ADD KEY `IDX_DF1E9E8782EA2E54` (`commande_id`),
  ADD KEY `IDX_DF1E9E87F347EFB` (`produit_id`);

--
-- Index pour la table `doodle`
--
ALTER TABLE `doodle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `interclub`
--
ALTER TABLE `interclub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_890EAFC8D7B4B9AB` (`team_home_id`),
  ADD KEY `IDX_890EAFC82B1FF874` (`team_ext_id`),
  ADD KEY `IDX_890EAFC8F965414C` (`saison_id`),
  ADD KEY `IDX_890EAFC86AB213CC` (`lieu_id`),
  ADD KEY `IDX_890EAFC844A161A6` (`sh1_id`),
  ADD KEY `IDX_890EAFC85614CE48` (`sh2_id`),
  ADD KEY `IDX_890EAFC8EEA8A92D` (`sh3_id`),
  ADD KEY `IDX_890EAFC8737F9194` (`sh4_id`),
  ADD KEY `IDX_890EAFC855141174` (`sd_id`),
  ADD KEY `IDX_890EAFC8E961E301` (`ddjoueuse1_id`),
  ADD KEY `IDX_890EAFC8FBD44CEF` (`ddjoueuse2_id`),
  ADD KEY `IDX_890EAFC877CFF221` (`dh1joueur1_id`),
  ADD KEY `IDX_890EAFC8657A5DCF` (`dh1joueur2_id`),
  ADD KEY `IDX_890EAFC8EE2D9420` (`dh2joueur1_id`),
  ADD KEY `IDX_890EAFC8FC983BCE` (`dh2joueur2_id`),
  ADD KEY `IDX_890EAFC861B44C89` (`dmxjoueur_id`),
  ADD KEY `IDX_890EAFC83B66131E` (`dmxjoueuse_id`),
  ADD KEY `IDX_890EAFC8B452C185` (`team_bacv_id`);

--
-- Index pour la table `interclub_user`
--
ALTER TABLE `interclub_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FC04021337DA8F60` (`interclub_id`),
  ADD KEY `IDX_FC040213A76ED395` (`user_id`);

--
-- Index pour la table `interclub_veteran`
--
ALTER TABLE `interclub_veteran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_21CAE2D4F965414C` (`saison_id`),
  ADD KEY `IDX_21CAE2D4D7B4B9AB` (`team_home_id`),
  ADD KEY `IDX_21CAE2D42B1FF874` (`team_ext_id`),
  ADD KEY `IDX_21CAE2D46AB213CC` (`lieu_id`);

--
-- Index pour la table `interclub_veteran_user`
--
ALTER TABLE `interclub_veteran_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C012F00DFB38E23D` (`interclub_veteran_id`),
  ADD KEY `IDX_C012F00DA76ED395` (`user_id`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251EC9EC860E` (`doodle_id`);

--
-- Index pour la table `lien_doodle`
--
ALTER TABLE `lien_doodle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4ABFED90C9EC860E` (`doodle_id`),
  ADD KEY `IDX_4ABFED90A21BD112` (`personne_id`),
  ADD KEY `IDX_4ABFED90126F525E` (`item_id`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2F577D5961190A32` (`club_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FCEC9EFC9EC860E` (`doodle_id`);

--
-- Index pour la table `population`
--
ALTER TABLE `population`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `population_user`
--
ALTER TABLE `population_user`
  ADD PRIMARY KEY (`population_id`,`user_id`),
  ADD KEY `IDX_524F2965C955D1E1` (`population_id`),
  ADD KEY `IDX_524F2965A76ED395` (`user_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qcm_value`
--
ALTER TABLE `qcm_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_93595C4EC9EC860E` (`doodle_id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9BACE7E1C74F2195` (`refresh_token`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5FB6DEC7A76ED395` (`user_id`),
  ADD KEY `IDX_5FB6DEC71E27F6BF` (`question_id`),
  ADD KEY `IDX_5FB6DEC7BAF4AE56` (`sondage_id`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sondage`
--
ALTER TABLE `sondage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sondage_question`
--
ALTER TABLE `sondage_question`
  ADD PRIMARY KEY (`sondage_id`,`question_id`),
  ADD KEY `IDX_647D4C9BAF4AE56` (`sondage_id`),
  ADD KEY `IDX_647D4C91E27F6BF` (`question_id`);

--
-- Index pour la table `sondage_user`
--
ALTER TABLE `sondage_user`
  ADD PRIMARY KEY (`sondage_id`,`user_id`),
  ADD KEY `IDX_39710E16BAF4AE56` (`sondage_id`),
  ADD KEY `IDX_39710E16A76ED395` (`user_id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C4E0A61F5E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_C4E0A61F2A10D79E` (`capitaine_id`),
  ADD KEY `IDX_C4E0A61F61190A32` (`club_id`);

--
-- Index pour la table `team_saison`
--
ALTER TABLE `team_saison`
  ADD PRIMARY KEY (`team_id`,`saison_id`),
  ADD KEY `IDX_B6CB925F296CD8AE` (`team_id`),
  ADD KEY `IDX_B6CB925FF965414C` (`saison_id`);

--
-- Index pour la table `team_veteran`
--
ALTER TABLE `team_veteran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_34A73E082A10D79E` (`capitaine_id`),
  ADD KEY `IDX_34A73E0861190A32` (`club_id`);

--
-- Index pour la table `team_veteran_saison`
--
ALTER TABLE `team_veteran_saison`
  ADD PRIMARY KEY (`team_veteran_id`,`saison_id`),
  ADD KEY `IDX_893236CF6125B98A` (`team_veteran_id`),
  ADD KEY `IDX_893236CFF965414C` (`saison_id`);

--
-- Index pour la table `tournoi`
--
ALTER TABLE `tournoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_18AFD9DFF965414C` (`saison_id`),
  ADD KEY `IDX_18AFD9DF61190A32` (`club_id`);

--
-- Index pour la table `tournoi_user`
--
ALTER TABLE `tournoi_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D0703ACDF607770A` (`tournoi_id`),
  ADD KEY `IDX_D0703ACDA76ED395` (`user_id`),
  ADD KEY `IDX_D0703ACD486735A1` (`partenaire_double_id`),
  ADD KEY `IDX_D0703ACD5691070C` (`partenaire_mixte_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD KEY `IDX_8D93D64961190A32` (`club_id`),
  ADD KEY `IDX_8D93D649296CD8AE` (`team_id`),
  ADD KEY `IDX_8D93D6496125B98A` (`team_veteran_id`),
  ADD KEY `IDX_8D93D649E1F4383B` (`age_category_id`),
  ADD KEY `IDX_8D93D6496BF700BD` (`status_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `age_category`
--
ALTER TABLE `age_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `doodle`
--
ALTER TABLE `doodle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT pour la table `interclub`
--
ALTER TABLE `interclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT pour la table `interclub_user`
--
ALTER TABLE `interclub_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `interclub_veteran`
--
ALTER TABLE `interclub_veteran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `interclub_veteran_user`
--
ALTER TABLE `interclub_veteran_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `lien_doodle`
--
ALTER TABLE `lien_doodle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `population`
--
ALTER TABLE `population`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `qcm_value`
--
ALTER TABLE `qcm_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `saison`
--
ALTER TABLE `saison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sondage`
--
ALTER TABLE `sondage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `team_veteran`
--
ALTER TABLE `team_veteran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tournoi`
--
ALTER TABLE `tournoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `tournoi_user`
--
ALTER TABLE `tournoi_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6660BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `FK_53A4EDAA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_53A4EDAA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `FK_DF1E9E8782EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DF1E9E87F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `interclub`
--
ALTER TABLE `interclub`
  ADD CONSTRAINT `FK_890EAFC82B1FF874` FOREIGN KEY (`team_ext_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_890EAFC83B66131E` FOREIGN KEY (`dmxjoueuse_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC844A161A6` FOREIGN KEY (`sh1_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC855141174` FOREIGN KEY (`sd_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC85614CE48` FOREIGN KEY (`sh2_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC861B44C89` FOREIGN KEY (`dmxjoueur_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC8657A5DCF` FOREIGN KEY (`dh1joueur2_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC86AB213CC` FOREIGN KEY (`lieu_id`) REFERENCES `lieu` (`id`),
  ADD CONSTRAINT `FK_890EAFC8737F9194` FOREIGN KEY (`sh4_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC877CFF221` FOREIGN KEY (`dh1joueur1_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC8B452C185` FOREIGN KEY (`team_bacv_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_890EAFC8D7B4B9AB` FOREIGN KEY (`team_home_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_890EAFC8E961E301` FOREIGN KEY (`ddjoueuse1_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC8EE2D9420` FOREIGN KEY (`dh2joueur1_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC8EEA8A92D` FOREIGN KEY (`sh3_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC8F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison` (`id`),
  ADD CONSTRAINT `FK_890EAFC8FBD44CEF` FOREIGN KEY (`ddjoueuse2_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_890EAFC8FC983BCE` FOREIGN KEY (`dh2joueur2_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `interclub_user`
--
ALTER TABLE `interclub_user`
  ADD CONSTRAINT `FK_FC04021337DA8F60` FOREIGN KEY (`interclub_id`) REFERENCES `interclub` (`id`),
  ADD CONSTRAINT `FK_FC040213A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `interclub_veteran`
--
ALTER TABLE `interclub_veteran`
  ADD CONSTRAINT `FK_21CAE2D42B1FF874` FOREIGN KEY (`team_ext_id`) REFERENCES `team_veteran` (`id`),
  ADD CONSTRAINT `FK_21CAE2D46AB213CC` FOREIGN KEY (`lieu_id`) REFERENCES `lieu` (`id`),
  ADD CONSTRAINT `FK_21CAE2D4D7B4B9AB` FOREIGN KEY (`team_home_id`) REFERENCES `team_veteran` (`id`),
  ADD CONSTRAINT `FK_21CAE2D4F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison` (`id`);

--
-- Contraintes pour la table `interclub_veteran_user`
--
ALTER TABLE `interclub_veteran_user`
  ADD CONSTRAINT `FK_C012F00DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_C012F00DFB38E23D` FOREIGN KEY (`interclub_veteran_id`) REFERENCES `interclub_veteran` (`id`);

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EC9EC860E` FOREIGN KEY (`doodle_id`) REFERENCES `doodle` (`id`);

--
-- Contraintes pour la table `lien_doodle`
--
ALTER TABLE `lien_doodle`
  ADD CONSTRAINT `FK_4ABFED90126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_4ABFED90A21BD112` FOREIGN KEY (`personne_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FK_4ABFED90C9EC860E` FOREIGN KEY (`doodle_id`) REFERENCES `doodle` (`id`);

--
-- Contraintes pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD CONSTRAINT `FK_2F577D5961190A32` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FK_FCEC9EFC9EC860E` FOREIGN KEY (`doodle_id`) REFERENCES `doodle` (`id`);

--
-- Contraintes pour la table `population_user`
--
ALTER TABLE `population_user`
  ADD CONSTRAINT `FK_524F2965A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_524F2965C955D1E1` FOREIGN KEY (`population_id`) REFERENCES `population` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `qcm_value`
--
ALTER TABLE `qcm_value`
  ADD CONSTRAINT `FK_93595C4EC9EC860E` FOREIGN KEY (`doodle_id`) REFERENCES `doodle` (`id`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `FK_5FB6DEC71E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `FK_5FB6DEC7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_5FB6DEC7BAF4AE56` FOREIGN KEY (`sondage_id`) REFERENCES `sondage` (`id`);

--
-- Contraintes pour la table `sondage_question`
--
ALTER TABLE `sondage_question`
  ADD CONSTRAINT `FK_647D4C91E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_647D4C9BAF4AE56` FOREIGN KEY (`sondage_id`) REFERENCES `sondage` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sondage_user`
--
ALTER TABLE `sondage_user`
  ADD CONSTRAINT `FK_39710E16A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_39710E16BAF4AE56` FOREIGN KEY (`sondage_id`) REFERENCES `sondage` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `FK_C4E0A61F2A10D79E` FOREIGN KEY (`capitaine_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_C4E0A61F61190A32` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`);

--
-- Contraintes pour la table `team_saison`
--
ALTER TABLE `team_saison`
  ADD CONSTRAINT `FK_B6CB925F296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B6CB925FF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `team_veteran`
--
ALTER TABLE `team_veteran`
  ADD CONSTRAINT `FK_34A73E082A10D79E` FOREIGN KEY (`capitaine_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_34A73E0861190A32` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`);

--
-- Contraintes pour la table `team_veteran_saison`
--
ALTER TABLE `team_veteran_saison`
  ADD CONSTRAINT `FK_893236CF6125B98A` FOREIGN KEY (`team_veteran_id`) REFERENCES `team_veteran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_893236CFF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `tournoi`
--
ALTER TABLE `tournoi`
  ADD CONSTRAINT `FK_18AFD9DF61190A32` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`),
  ADD CONSTRAINT `FK_18AFD9DFF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison` (`id`);

--
-- Contraintes pour la table `tournoi_user`
--
ALTER TABLE `tournoi_user`
  ADD CONSTRAINT `FK_D0703ACD486735A1` FOREIGN KEY (`partenaire_double_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_D0703ACD5691070C` FOREIGN KEY (`partenaire_mixte_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_D0703ACDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_D0703ACDF607770A` FOREIGN KEY (`tournoi_id`) REFERENCES `tournoi` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_8D93D64961190A32` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`),
  ADD CONSTRAINT `FK_8D93D6496125B98A` FOREIGN KEY (`team_veteran_id`) REFERENCES `team_veteran` (`id`),
  ADD CONSTRAINT `FK_8D93D6496BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_8D93D649E1F4383B` FOREIGN KEY (`age_category_id`) REFERENCES `age_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
