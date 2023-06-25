-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 01:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discoverdraatafilalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `photoprofile` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date-adding` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom`, `prenom`, `email`, `username`, `photoprofile`, `password`, `date-adding`) VALUES
(16, 'dnv', 'nd', 'ttet@fk.cj', 'dhd', 'img/profile/Web capture_30-5-2023_18938_localhost.jpeg', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-01'),
(18, 'fdmv', 'vddb', 'sjkdf@d.coi', 'fg', 'img/profile/man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888 (1).png', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `chamber`
--

CREATE TABLE `chamber` (
  `id-chamber` int(11) NOT NULL,
  `num` int(255) NOT NULL,
  `type` enum('partagé','seul') NOT NULL,
  `prix` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date-adding` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `email`, `password`, `date-adding`) VALUES
(7, 'fast', '     admin', 'admin@test.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26'),
(21, 'yyyqf', 'abnvb', 'test@hhg.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-02'),
(22, 'ahsh', 'vbd', 'barrimeed@dd.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id-des` int(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(90) NOT NULL,
  `province` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(5000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date_modification` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id-des`, `nom`, `ville`, `province`, `description`, `location`, `img1`, `img2`, `img3`, `date_modification`) VALUES
(16, 'Les Dunes de Merzouga', 'Merzouga', 'Merzouga', '<p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"font-weight: bolder;\">Un cadre splendide aux mille nuances</span><br></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les dunes de Merzouga atteignent parfois une hauteur de 150 mètres, à partir de laquelle on découvre un paysage sauvage et éblouissant, dévoilant ainsi une étendue de sable dont la forme change au fil du vent.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les édifices de sable sont drapés d’une couleur jaune ou ocre qui évoluera tout au long de la journée. A midi le soleil endort les reliefs et jaunit les paysages. À l’inverse, en matinée et en fin d’après-midi, les rayons obliques réveillent les ombres qui renforcent les contrastes, et donnent toute leur splendeur aux dunes orangées. Les vues du coucher et du lever du soleil sont quant à elles indescriptibles.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Outre les dunes, le lac Dayet Sriji est aussi un lieu intéressant à visiter. Selon la saison, il accueille des flamands roses et une grande biodiversité d’oiseaux migrateurs. Les photos des dunes depuis le lac sont iconiques.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Le soir, les dunes s’assombrissent et la voute céleste prend le relais. Le ciel est illuminé d’autant d’étoiles qu’il y a de grains de sable dans les dunes. Commence alors le rituel du feu de camp au bivouac, rythmé par les chants des troupes folkloriques.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\">Une panoplie d’activités</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les dunes de Merzouga sont propices à la relaxation, à la quiétude et à la découverte de décors sensationnels. Elles sont aussi le lieu idéal pour vivre des sensations fortes à travers des activités atypiques.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Toujours accompagné par un professionnel local, voici 9 activités à essayer pour vivre pleinement l’expérience :</p><ul style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><li style=\"-webkit-font-smoothing: antialiased;\">Passer la soirée bivouac en profitant d’un spectacle folklorique et en dégustant des mets locaux, puis dormir à la belle étoile ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Partir en balade à dos de chameaux à la façon des Touareg ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Prendre un bain de sable, appelé sablothérapie ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Vivre un coucher de soleil en haut des dunes et contempler le changement des couleurs au crépuscule ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Faire des randonnées pédestres au milieu des dunes et dans les environs du village ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Partir en virée en quad ou en excursion en buggy ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Dévaler les dunes en Sandboarding ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Faire du kitesurf entre les dunes ;</li><li style=\"-webkit-font-smoothing: antialiased;\">Survoler Erg Chebbi en parapente ;</li></ul><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Des excursions en 4X4 partent aussi de Merzouga pour découvrir les gravures rupestres préhistoriques de Taouz et les mines M’ifis de Quartz, Khôl, barytine et cuivre situées à 11 Km de du village.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d54672.4248579576!2d-4.092193823125791!3d31.081188362512158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd973c279834dfe5%3A0x5639fab2b5de4a44!2sMerzouga!5e0!3m2!1sen!2sma!4v1687546782382!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Errachida-Web-94.jpg', 'Errachida-Web-92.jpg', 'Errachida-Web-53.jpg', '2023-06-23'),
(17, 'Ksar Tamnougalt', 'Ouarzazate', 'Ouarzazate', '<p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Ancienne capitale de la tribu Mezguita, le Ksar Tamnougalt est l’un des plus anciens ksour encore en bon état au sein de la vallée du Drâa. Fondé il y a déjà plus de trois siècles par une famille de caïds, qui représentait le sultan dans la zone, Ksar Tamnougalt occupait une position stratégique.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\"></span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Le ksar Tamnougalt avait à cette époque où les rivalités entre tribus amazighes étaient vives, une double fonction, défensive pour protéger la vallée du Drâa contre les attaques de groupes adverses, et commerciale, étant situé sur la route des caravanes allant de Marrakech à Tombouctou.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\">Une destination fascinante et inspirante</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Ksar Tamnougalt fait partie de ces trésors qui, surplombant la vallée du Drâa, affichent un point de vue à couper le souffle. Il domine depuis des siècles l’oasis de toute sa magnificence. Si vous vous laissez subjuguer par sa porte monumentale et le superbe panorama, vous tomberez définitivement sous le charme après avoir parcouru le dédale des couloirs et des ruelles semi-couvertes.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">De nombreux bâtiments de Tamnougalt ont des décorations murales distinctives et des tours effilées. Outre les résidences spectaculaires des caïds, le sanctuaire d’un marabout (Sidi Abdellah ben Ali), une école coranique, 2 mosquées, un hammam, une synagogue et l’ancien mellah (quartier juif), le ksar historique est une étape agréable à découvrir. On y rentre par une des 4 portes qui fermaient Tamnougalt à l’époque.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Toutes les maisons sont reliées par des passages couverts qui les gardent fraîches pour contrer la chaleur féroce. Ces ruelles débouchent sur des placettes où avaient lieu auparavant les célébrations, les mariages et autres réunions entre les villageois.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">La majorité des maisons familiales sont construites sur deux niveaux. Les chambres sont situées autour d’une cour centrale, l’étage est utilisé lorsque le rez-de-chaussée devient trop chaud et le toit est une invitation permanente à la détente contemplative. La vue sur la vallée du Drâa est à couper le souffle&nbsp;!</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Restaurée, l’une des kasbahs de Tamnougalt est devenue un intéressant musée. Y sont exposés nombre d’objets de la vie courante. En particulier, une forme en bois pour modeler les briques de terre. Ou d’anciennes serrures en bois. Une promenade dans la palmeraie permet de découvrir les cultures typiques des oasis : dattes , grenades , henné… et aussi quelques puits .</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Chaque première semaine d’octobre, s’y tient le Moussem Ellama, manifestation culturelle et religieuse qui réunit des participants des&nbsp; différents villages des environs. En amazigh, Tamnougalt signifie « lieu de rencontre ».</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.5464448376038!2d-6.390935589216424!3d30.67489787450633!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbc7f2c514f11e9%3A0xc44079d4d177b25!2sKsar%20Tamnougalt!5e0!3m2!1sen!2sma!4v1687546814593!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Zagora-Web-151-1024x640-1.jpg', 'Zagora-Web-37-1024x684-1.jpg', 'Zagora-Web-148-1024x576-1.jpg', '2023-06-23'),
(18, 'Cirque de Jaafar', 'Ait Ayach, Midelt', 'Midelt', '<p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\">Amphithéâtre naturel</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Le trajet depuis Midelt emprun te une longue piste rocailleuse qui sillonne une vaste plaine avec comme horizon la jonction du Haut Atlas et du Moyen Atlas. Après quatre heures de route, le décor change et les falaises se font de plus en plus abruptes. L’arrivée à une bergerie marque le début de l’aventure</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"color: grey; font-size: 14px; font-weight: 600;\">&nbsp; &nbsp; &nbsp; &nbsp;Afin de profiter de l’expérience, il est préférable de descendre de voiture pour effectuer une randonnée pédestre et se rapprocher de la nature.</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Le Cirque de Jaafar offre des points de vue étourdissants, pour profiter et photographier des paysages prodigieux, observer les aigles qui planent au-dessus des collines, et suivre les pistes muletières qui mènent à des vallées jalonnées d’occasionnelles kasbahs. Les amoureux de la nature pourront profiter d’un cadre sauvage encore intact avec des reliefs de falaises aux pentes raides. Il est aussi possible de jouir de la beauté des forêts de cèdres, verdoyantes et offrant un magnifique cadre.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les vues sur le Haut Atlas oriental sont inouïes, et la route périlleuse procure un sentiment d’aventure unique.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\">Pure adrénaline, à consommer avec précaution</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Falaises vertigineuses, pistes improbables, changement brusque d’altitude, pentes de 20 à 45 degrés… Que des appels à l’aventure qui ne laisseront aucun amateur de sensations fortes indifférent.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les explorateurs peuvent parcourir le Cirque et ses environs en VTT, en motos ou à pied, en suivant des circuits diversifiés et sauvages. Plusieurs randonnées sont disponibles, notamment celle pédestres vers Jbel Ayachi.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3362.7949744353805!2d-4.915876089133313!3d32.558316673646246!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd9899943b9563b5%3A0xed925d19121642a0!2sCirco%20de%20Jaafar!5e0!3m2!1sen!2sma!4v1687547758321!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Tinghir-Web-28.jpg', 'Tinghir-Web-21.jpg', 'Tinghir-Web-26.jpg', '2023-06-23'),
(19, 'Kasbah Amridil', 'skoura ,Ouarzazate', 'Ouarzazate ', '<p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">La beauté du lieu suffit à imaginer la richesse de cette kasbah. Seul ou avec guide, vous comprendrez ou devinerez davantage certaines règles de la vie en communauté il y a 300 ans. Chaque palier de la maison à sa fonction. La visite de la cour intérieure et des appartements permet de comprendre l’architecture avec un premier étage dédié au bétail, un deuxième étage réservé au personnel,&nbsp;à la cuisine et au grenier, et enfin un troisième étage réservé pour le Caid et ses invités. Les murs en terre font 1,20 m de large à la base et 30 cm de large au dernier étage.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Sa façade richement travaillée est de toute beauté et l’intérieur renferme un musée où sont exposés des costumes traditionnels, des pièces de monnaie en or et des manuscrits. Vous verrez également les anciens puits, les fours à pain et même un ancien pressoir à huile d’olive. Flânez à votre rythme dans les nombreuses pièces et terrasses de cette forteresse authentique. Il y a tout pour vous intéresser et vous captiver.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Sur le toit de la Kasbah Amridil garde toujours un ancien cadran solaire dont le rôle principal était de déterminer l’horaire des prières du lever au coucher du soleil. En fin de journée et avec les couleurs du soleil couchant, un magnifique point de vue sur toute la palmeraie Skoura est juste imprenable&nbsp;!</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3418.279729380114!2d-6.583839789200385!3d31.04631137432788!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb688102720453%3A0xe9b87f82206129d7!2sKasbah%20Amridil!5e0!3m2!1sen!2sma!4v1687551436480!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Ouarzazate-Web-251-1-1024x683-1-1.jpg', 'Ouarzazate-Web-251-1-1024x683-1.jpg', 'R.jpeg', '2023-06-23'),
(20, 'Les Gorges du Todgha', 'Tinghir', 'Tinghir', '<p><span style=\"color: rgb(33, 37, 41); font-family: Lato; font-size: 16px; text-align: justify;\">Les Gorges du Todgha occupent une place primordiale dans la vallée, d’une part en protégeant le cours de la rivière qui irrigue les champs et les palmeraies paradisiaques, mais aussi de par leur fonction symbolique et identitaire pour la population de la région depuis la nuit des temps.</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\">Le grand canyon du Maroc</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les gorges du Todgha créent une gigantesque faille verdoyante au milieu d’une zone aride et que les populations ont réussi à mettre en valeur grâce à la mise en place d’ingénieux et ancestraux systèmes d’irrigation, appelés tirgiwin, c’est-à-dire canaux en amazigh ou seguias en arabe. Depuis la rivière, ils alimentent la vallée et les villages qui s’y trouvent, permettant d’entretenir une polyculture à base d’oliviers, de pommiers, d’amandiers, d’abricotiers, de céréales et de luzerne. La vallée a conservé, par ailleurs, de nombreux ksours et kasbahs centenaires, qui s’étendent le long de l’oued. Bref un véritable patrimoine culturel rappelant le passé glorieux de la région.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les cimes des gorges quant à elles offrent des décors dignes des films Western. Depuis les hauteurs, les panoramas s’étendent à des centaines de kilomètres, jusqu’aux confins du désert au sud, et du Haut Atlas au nord. Depuis la route qui surplombe la magnifique oasis, on peut capturer de précieuses images des magnifiques paysages, rivalisant de contrastes, allant du rouge ocre des parois au vert bleu de la vallée.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder;\">Des randonnées à couper le souffle&nbsp;</span></p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Souvent appelée le Grand Canyon du Maroc, la vallée du Todgha est réputée pour ses falaises vertigineuses et ses sentiers difficiles. A pied ou en VTT, de nombreuses randonnées sont proposées, allant de la balade de quelques heures autour et dans les vallées, au trek de plusieurs jours dans les confins de la région.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Entre parois, ravins et rivière, les aventuriers exploreront une nature grandiose et spectaculaire, et découvriront la diversité culturelle des populations paysannes locales, dont notamment celles des tribus nomades. Aussi, plusieurs spots d’escalades sont équipés, mais il est nécessaire d’être accompagné d’un professionnel pour les négocier.</p><p style=\"-webkit-font-smoothing: antialiased; margin-bottom: 1rem; text-align: justify; color: rgb(33, 37, 41); font-family: Lato; font-size: 16px;\">Les lieux incontournables restent Ait Tizgui qui domine l’entrée des gorges, le col Agart Noro haut de 2100m et le village de Tamtatoucht, la Rose du Todgha.</p><p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d108832.80003078251!2d-5.610220083472469!3d31.523473280869656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbd333073ecf085%3A0xa44fdd883982eb80!2sTodra%20River!5e0!3m2!1sen!2sma!4v1687552559875!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Tinghir-Web-46.jpg', 'Tinghir-Web-26 (1).jpg', 'd.jpeg', '2023-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id-hotel` int(255) NOT NULL,
  `nom` varchar(90) NOT NULL,
  `ville` varchar(90) NOT NULL,
  `carte` varchar(10000) NOT NULL,
  `chambre` int(50) NOT NULL,
  `classe` int(30) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `prix` decimal(60,0) DEFAULT 350,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id-hotel`, `nom`, `ville`, `carte`, `chambre`, `classe`, `location`, `prix`, `img1`, `img2`, `img3`, `date-add`) VALUES
(18, 'Dar Daif', 'Ouarzazate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3423.3073615479484!2d-6.8824570892064765!3d30.90603177439486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb102d99a35225%3A0x934c5438b96f5143!2zSMO0dGVsIFJpYWQgRGFyIERhw69m!5e0!3m2!1sen!2sma!4v1686490352947!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 15, 4, 'Douar Talmasla, Ouarzazate 45000 Morocco', '350', 'photo4jpg.jpg', 'dar-daif.jpg', 'courtyard-with-pool.jpg', '2023-06-11'),
(19, 'Sanmao Desert Luxury Camp', 'Merzouga', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3416.941688001958!2d-3.9804931891987616!3d31.083548974310144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd973bfff24ee0d5%3A0x9c5663027213191c!2sSanmao%20Desert%20Luxury%20Camp!5e0!3m2!1sen!2sma!4v1686911488177!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 10, 5, 'Merzouga dunes, Merzouga 52450', '350', 'sanmao-desert-luxury.jpg', '6v50kxx9.png', 'kvv5svvi.png', '2023-06-16'),
(22, 'IGHIZ INN HPACI', 'Errachidia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3386.658525830125!2d-4.455711389777908!3d31.915874127388715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd984a761e8ffac5%3A0x52a61f42ea968a12!2sIGHIZ%20INN%20Hotel%20de%20plein%20air%20Camping%20international!5e0!3m2!1sen!2sma!4v1687540280210!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 15, 5, 'Zone Touristique, Errachidia 52000 Morocco', '336', '392385367.jpg', '395578328.jpg', '392390704.jpg', '2023-06-23'),
(23, 'Auberge Tinit', 'Errachidia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3386.6429037957882!2d-4.459402161389644!3d31.916298470302582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd984a75e7fbeb29%3A0x6a39f1a600c1bc30!2sAuberge%20TINIT!5e0!3m2!1sen!2sma!4v1687539586179!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 18, 5, 'Route De Goulmima, 52000 Er Rachidia, Morocco ', '500', '4391322.jpg', '4391378.jpg', '25207396.jpg', '2023-06-23'),
(24, 'Kasbat Aferdou', 'errachidia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3386.6929468672124!2d-4.465594789777945!3d31.914939127435503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd984a0a746e674d%3A0xf7cd3203b5d9a174!2sKasbat%20Aferdou!5e0!3m2!1sen!2sma!4v1687539838207!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 17, 4, ' Zone Touristique Route de Goulmima., 52000 Er Rachidia, Morocco', '700', '459303346.jpg', '458962192.jpg', '460908147.jpg', '2023-06-23'),
(25, 'Gite D\'étape Gorges De Ziz', 'errachidia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27029.21752161194!2d-4.390343231158683!3d32.13269416717054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd99ad4f2c12ba5b%3A0x98851ed00894ff52!2sGite%20D&#39;etape%20%3A%20Gorges%20De%20Ziz!5e0!3m2!1sen!2sma!4v1687540644060!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 8, 5, 'KSAR IFRI COMMUNE EL KHENG, 52000 Er Rachidia, Morocco ', '760', '436943435.jpg', '436958046.jpg', '436957723.jpg', '2023-06-23'),
(26, 'Gite d étape Khettara Oasis', 'errachidia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3384.907540021612!2d-4.447831161376537!3d31.963404967902274!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd984bab77a61da9%3A0x574a384c24c4c688!2sGite%20d%20%C3%A9tape%20Khettara%20Oasis!5e0!3m2!1sen!2sma!4v1687541479417!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 5, 5, 'Km 5 Ksar jdid commune Elkheng Errachidia, Kasba Jdid 52000, 52000 Er Rachidia, Morocco ', '400', '374514814.jpg', '374515111.jpg', '374516108.jpg', '2023-06-23'),
(27, 'Kasbah Tamsna', 'Ouarzazate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.3407254513263!2d-6.974923989822652!3d30.933047075819466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb1b06c853d2f1%3A0x524de6b0869fea03!2sKasbah%20Tamsna!5e0!3m2!1sen!2sma!4v1687542149269!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 40, 4, ' HAY TAMASSINTE, 45000 Ouarzazate, Morocco', '1000', '241523463.jpg', '379114513.jpg', '379115296.jpg', '2023-06-23'),
(28, 'Al Baraka des loisirs', 'Ouarzazate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.100223012899!2d-6.98675768982231!3d30.9397652754929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb1ba1c996fb95%3A0xa45f2a6844db18ed!2sAl%20Baraka%20des%20Loisirs!5e0!3m2!1sen!2sma!4v1687542379882!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 50, 4, 'Route de Marrakech, 45000 Ouarzazate, Morocco', '700', '467347296.jpg', '218929139.jpg', '344548485.jpg', '2023-06-23'),
(29, 'Kasbah Dar Daif', 'Ouarzazate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3423.3071969219623!2d-6.882457089823889!3d30.906036377131787!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb102d99a35225%3A0x934c5438b96f5143!2zSMO0dGVsIFJpYWQgRGFyIERhw69m!5e0!3m2!1sen!2sma!4v1687542621824!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 40, 5, 'Douar Talmasla, 45000 Ouarzazate, Morocco', '1000', '103986661.jpg', '414725702.jpg', '414725676.jpg', '2023-06-23'),
(30, 'Hotel Riad Amlal', 'Ouarzazate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.7728936590106!2d-6.919992289823192!3d30.920971576406227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb10745ab97215%3A0x96660fc238807529!2sH%C3%B4tel%20Riad%20Amlal!5e0!3m2!1sen!2sma!4v1687543091879!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 20, 5, 'Lotissement du centre ville n 24 - 25 , 45000 Ouarzazate, Morocco', '600', '346453644.jpg', '299354662.jpg', '218702590.jpg', '2023-06-23'),
(31, 'RiadSuerteloca Merzouga', 'Merzouga', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3415.482518083222!2d-4.014385289814039!3d31.124111866507615!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd973e96eee73f23%3A0xce62f2fe79b15f0b!2sChez%20Tihri%20-%20Suerte%20Loca!5e0!3m2!1sen!2sma!4v1687544068861!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 20, 5, 'ksar merzouga, 52202 Merzouga, Morocco ', '920', '374197395.jpg', '373995861.jpg', '373837859.jpg', '2023-06-23'),
(32, 'Beldi Camp', 'Merzouga', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.7022520260193!2d-3.940484389810585!3d31.20126806273305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd977b0db88960ed%3A0x99c4dcf9b9457337!2sLuxury%20Beldi%20camp!5e0!3m2!1sen!2sma!4v1687544272809!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 8, 5, 'dunes erg chebbi 31°12\'01.7\"N 3°56\'15.0\"W, 52202 Merzouga, Morocco', '1300', '435426065.jpg', '435424886.jpg', '358076044.jpg', '2023-06-23'),
(33, 'Kasbah Mohayut', 'Merzouga', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3415.233118603389!2d-4.019661689813738!3d31.13104006616889!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd973eed5d5d5bc1%3A0xe32dd30a5988b09e!2sKasbah%20Mohayut!5e0!3m2!1sen!2sma!4v1687544392940!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 14, 5, 'Merzouga, 52202 Merzouga, Morocco', '800', '291543454.jpg', '293652911.jpg', '291543460.jpg', '2023-06-23'),
(34, 'Merzouga Sahara Luxury Camp', 'Merzouga', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3415.880821385262!2d-4.010550161609725!3d31.11304431079238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd973f9570557b49%3A0x125220d3f5574bcd!2sMerzouga%20Sahara%20Luxury%20Camp!5e0!3m2!1sen!2sma!4v1687544819792!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 17, 5, 'N13 31.113077, -4.005273, 52202 Merzouga, Morocco ', '960', '344099769.jpg', '344099681.jpg', '300484682.jpg', '2023-06-23'),
(35, 'Villa Pomme d\'OrVilla Pomme d\'Or', 'Midelt', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3358.2745152104058!2d-4.743158289127845!3d32.678744973595165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd98bf77275283cb%3A0xa10876c5f2af2abb!2sVilla%20Pomme%20d&#39;Or!5e0!3m2!1sen!2sma!4v1687602813529!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 8, 5, 'Rue Tanger Quartier Administatif Midelt, 54350 Midelt, Morocco ', '600', '84024503.jpg', '84167294.jpg', '147210955.jpg', '2023-06-24'),
(36, 'Riad Villa Midelt', 'Midelt', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3358.6409094272462!2d-4.740029489128279!3d32.66899867359922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd98bf83509a7637%3A0xce5d4c0efeeaf296!2sRiad%20Villa%20Midelt!5e0!3m2!1sen!2sma!4v1687603128517!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 10, 4, 'Place Verte, N°1, 54350 Midelt, Morocco ', '674', '33775920.jpg', '12080323.jpg', '98116355.jpg', '2023-06-24'),
(37, 'Kasbah Izoran', 'Midelt', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3359.33208691573!2d-4.763842554353287!3d32.650605906154205!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd98bfc801aa593f%3A0xa7c0c084eee81a8c!2sKasbah%20IZORAN!5e0!3m2!1sen!2sma!4v1687603217058!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 8, 5, 'Ksar tabenattout Midelt Ksar tabenattout, 54350 Midelt, Morocco', '882', '116178023.jpg', '156302138.jpg', '169829266.jpg', '2023-06-24'),
(38, 'Hotel Kasbah Asmaa', 'Midelt', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3358.179952639142!2d-4.715801289127738!3d32.68125997359415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd98c081f331fd9f%3A0x1a80a1d8c967bdd5!2zSMO0dGVsIEthc2JhaCBBc21hYSBtaWRlbHQg2YHZhtiv2YIg2YLYtdio2Kkg2KPYs9mF2KfYoSDZhdmK2K_ZhNiq!5e0!3m2!1sen!2sma!4v1687603424488!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 5, 5, 'Route D\'Errachidia km 3, 54350 Midelt, Morocco', '761', '83516364.jpg', '83516716.jpg', '92036688.jpg', '2023-06-24'),
(39, 'Hotel Safari Week-end', 'Midelt', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3358.1990987922754!2d-4.738780889127772!3d32.680750773594475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd98bf9714160f99%3A0x171e13285c301b1b!2sHotel%20safari%20week-end%20midelt!5e0!3m2!1sen!2sma!4v1687603577104!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 7, 5, '118 BD palestine, 54530 Midelt, Morocco', '326', '404688324.jpg', '403295434.jpg', '403295946.jpg', '2023-06-24'),
(40, 'Restaurant La Petite Gorge', 'Tinghir', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3399.1695022361087!2d-5.586480689177274!3d31.57439937408151!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda2d241d1a2c8d3%3A0xa0ab49c4e8e1262!2sRestaurant%20La%20Petite%20Gorge!5e0!3m2!1sen!2sma!4v1687604608339!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 15, 5, '2 km avant les gorges de toudgha, 45800 Tinerhir, Morocco', '571', '278051080.jpg', '278108283.jpg', '408379498.jpg', '2023-06-24'),
(41, 'Guesthouse Panorama Todra', 'Tinghir', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3400.108126306161!2d-5.583580989178395!3d31.548647074093402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda2d28b1120d9fb%3A0xf558d1db5996a5e8!2sPanorama%20Todra!5e0!3m2!1sen!2sma!4v1687604755574!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 5, 5, 'Ait snane Todra gorges, 45800 Tinerhir, Morocco', '300', '401835324.jpg', '401896307.jpg', '326221903.jpg', '2023-06-24'),
(42, 'Riad Sephora', 'Tinghir', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3399.038901445642!2d-5.585374189177121!3d31.577981074080114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda2d35ee8b9f333%3A0x8a8a4780c3010a72!2sRiad%20sephora!5e0!3m2!1sen!2sma!4v1687604858284!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 14, 5, 'tizgui toudgha tizgui 500 m avant gorge de toudgha, 45800 Tinerhir, Morocco', '395', '218370796.jpg', '199238495.jpg', '221271535.jpg', '2023-06-24'),
(43, 'Auberge Camping Atlas', 'Tinghir', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3399.9531013060055!2d-5.587899989178221!3d31.552901674091363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda2d25f82baac87%3A0xe0cec2169f21e367!2sAuberge%20Camping%20Atlas!5e0!3m2!1sen!2sma!4v1687604962054!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 14, 5, 'Km 9, route des gorges du Todra, 45800 Tinerhir, Morocco', '481', '245455747.jpg', '370698293.jpg', '232412169.jpg', '2023-06-24'),
(44, 'Riad Dar Bab Todra', 'Tinghir', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3400.9781896185245!2d-5.548007889179475!3d31.524758974104323!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda2cd46a5422e25%3A0x42baac353e5aae60!2sRIAD%20DAR%20BAB%20TODRA!5e0!3m2!1sen!2sma!4v1687605090842!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 18, 5, 'RIAD DAR BAB TODRA, Tinghir, Maroc, 45800 Tinerhir, Morocco', '882', '184413470.jpg', '124669174.jpg', '455097797.jpg', '2023-06-24'),
(45, 'Gite Elkhorbat', 'Tinejdad', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3402.0781274907613!2d-5.088068989180808!3d31.494536274118285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbd5511d5fa1b41%3A0xd2b962100e702e58!2sGite%20Elkhorbat!5e0!3m2!1sen!2sma!4v1687606438812!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 8, 5, ' Asrir oued Ferkla, 52002 Tinejdad, Morocco ', '642', '195761138.jpg', '251167882.jpg', '380664619.jpg', '2023-06-24'),
(46, 'Muxu Berbere Auberge', 'Tinejdad', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3402.0493915777583!2d-5.090535689180774!3d31.495326174117956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbd550fca7433f1%3A0xe73e6172e8235ae6!2sMuxu%20Berbere%20Auberge!5e0!3m2!1sen!2sma!4v1687606620631!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 5, 4, 'Ksar Ekhorbat Amlal Ferkla El Oulia, 52002 Asrir, Morocco', '402', '114498659.jpg', '114498459.jpg', '114498670.jpg', '2023-06-24'),
(47, 'Maison La Berberina', 'Tinejdad', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3395.2458842160704!2d-4.980226354644339!3d31.681845407667094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd9805d86821a3e1%3A0xb1cffe5fa4dae85e!2sLA%20BERBERINA!5e0!3m2!1sen!2sma!4v1687606842675!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 14, 4, 'Gheris El Ouloui, Ksar Hart, 52250 Goulmima, Morocco ', '300', '86750126.jpg', '326489754.jpg', '361952431.jpg', '2023-06-24'),
(48, 'Dar Pienatcha', 'Zagora', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3443.5093699548697!2d-5.828959389230867!3d30.336470474672566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbc3690c2014b3f%3A0x83281ac4f869b003!2sDar%20Pienatcha!5e0!3m2!1sen!2sma!4v1687607538600!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 8, 5, 'Tancita n\'chachda, 47900 Zagora, Morocco', '600', '68397935.jpg', '34081936.jpg', '44255590.jpg', '2023-06-24'),
(49, 'Paradis Touareg', 'Zagora', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13773.745602622863!2d-5.847546706835032!3d30.33854509474177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbc3695a827248b%3A0x30cf6e8ec52be31e!2sParadis%20Touareg%20Auberge%20-%20Camping%20-%20Restaurant!5e0!3m2!1sen!2sma!4v1687607663909!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 15, 5, 'Hay Draa Zagora Hay Draa Zagora souss masa draa, 47900 Zagora, Morocco', '381', 'ssd.jpg', '459323394.jpg', '456790145.jpg', '2023-06-24'),
(50, 'Riad Soleil du Monde', 'Zagora', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3444.348672794579!2d-5.834387889231881!3d30.31259867468454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbc36ea1e331e79%3A0xd35081d4c07604bc!2sMaison%20d&#39;h%C3%B4tes%20soleil%20du%20monde!5e0!3m2!1sen!2sma!4v1687607857107!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 14, 4, 'Amezrou, 45900 Zagora, Morocco', '441', '79447335.jpg', '432921670.jpg', '429501712.jpg', '2023-06-24'),
(51, 'Oasis Tilogui', 'Zagora', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3444.998940974605!2d-5.766616989232644!3d30.29409177469379!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbc33685a349cc1%3A0x296fee450e09e0bb!2sOasis%20Tilogui%20Hotel!5e0!3m2!1sen!2sma!4v1687607962131!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 12, 5, 'Tilogui, 47900, 45900 Zagora, Morocco', '439', '412858705.jpg', '412858721.jpg', '419681054.jpg', '2023-06-24'),
(52, 'La Petite Kasbah', 'Zagora', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3444.337780925728!2d-5.830779089231858!3d30.312908574684343!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbc36b171d34c77%3A0x9b4f5f70c1d09182!2sLa%20Petite%20Kasbah!5e0!3m2!1sen!2sma!4v1687608208403!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 18, 5, 'Hay Amezrou 2Km Route De M\'hamid, 45900 Zagora, Morocco', '413', '229837401.jpg', '349248490.jpg', '229837398.jpg', '2023-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_mess` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date_sending` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id_mess`, `name`, `email`, `sujet`, `content`, `date_sending`) VALUES
(2, '0', 'fb@ede.com', 'vnc', 'fdnhebgh ', '2023-05-29'),
(3, '0', 'test@gmail.com', 'hdhd', 'mshbdvsadvsa j', '2023-05-29'),
(4, 'chsc', 'names@d.xin', 'dsjf', 'asjvcajcsbusahbhasjvc\r\n', '2023-05-29'),
(5, 'hshfasjf', 'xcvjkhsdvb@dd.com', 'jckvsdnv', 'ahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh ahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh\r\nahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh\r\nahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh', '2023-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `moussem`
--

CREATE TABLE `moussem` (
  `id-mous` int(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `date-debut` date NOT NULL,
  `date-fin` date NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moussem`
--

INSERT INTO `moussem` (`id-mous`, `nom`, `ville`, `description`, `location`, `date-debut`, `date-fin`, `img1`, `img2`, `img3`, `date-add`) VALUES
(3, 'test', 'test', '<p>ttetettet</p>', 'djj', '2023-06-23', '2023-06-11', 'WhatsApp Image 2023-04-27 at 11.25.06.jpg', 'EntergyLogo-white.png', 'WhatsApp Image 2023-04-27 at 11.24.04.jpg', '2023-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `plat`
--

CREATE TABLE `plat` (
  `id-plat` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plat`
--

INSERT INTO `plat` (`id-plat`, `nom`, `description`, `img1`, `img2`, `img3`, `date-add`) VALUES
(3, 'test hello', '<p>test test</p>', 'logo (3).png', 'School Notes Workbook .png', 'logo (1).png', '2023-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `reserver-hotel`
--

CREATE TABLE `reserver-hotel` (
  `id-resh` int(11) NOT NULL,
  `id-hotel` int(30) NOT NULL,
  `id-client` int(11) NOT NULL,
  `phone` varchar(90) NOT NULL,
  `type` enum('partagé','seul') NOT NULL,
  `nmbre-perssone` int(30) NOT NULL,
  `date-debut` date NOT NULL,
  `date-fin` date NOT NULL,
  `date-reservartion` date NOT NULL,
  `statu` enum('En cours','Acceptée','Refusée') NOT NULL DEFAULT 'En cours'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserver-hotel`
--

INSERT INTO `reserver-hotel` (`id-resh`, `id-hotel`, `id-client`, `phone`, `type`, `nmbre-perssone`, `date-debut`, `date-fin`, `date-reservartion`, `statu`) VALUES
(10, 18, 7, '4875', 'seul', 2, '2023-07-06', '2023-06-07', '2023-06-15', 'Acceptée');

-- --------------------------------------------------------

--
-- Table structure for table `reserver-voyage`
--

CREATE TABLE `reserver-voyage` (
  `id_voya` int(11) NOT NULL,
  `id-cleint` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `date-reservartion` date NOT NULL,
  `id-cer` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserver-voyage`
--

INSERT INTO `reserver-voyage` (`id_voya`, `id-cleint`, `email`, `phone`, `date-reservartion`, `id-cer`) VALUES
(9, 7, 'cnss@ff.co', 478, '2023-06-15', 6);

-- --------------------------------------------------------

--
-- Table structure for table `restau`
--

CREATE TABLE `restau` (
  `id-rest` int(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `carte` varchar(1000) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restau`
--

INSERT INTO `restau` (`id-rest`, `nom`, `ville`, `province`, `description`, `location`, `img1`, `img2`, `img3`, `carte`, `date-add`) VALUES
(6, 'La Rose Des Sables Restaurant Pizzeria', 'Ouarzazate', 'Ouarzazate', 'LA ROSE DES SABLES Restaurant-Pizzeria is located km1 from the center of Ouarzazate on the national road (N9) from Zagora to Tabounte (CR Tarmigte), which offers Italian, local Moroccan and international cuisine and which has 2 rooms including a Moroccan lounge and 3 terraces including an exterior at the edge of the street and 2 sheer and sunny roof terrace overlooking the whole city on the 3rd and 4th floor giving a panoramic view of the gardens, the palm grove and Lake Ouarzazate as well as the Atlas Mountains.<br>', 'Km1 Route de zagora (N 9) Tabounte CR Tarmigte, Ouarzazate 45000', 'la-rose-des-sables.jpg', 'la-rose-des-sables-restaurant (1).jpg', 'la-rose-des-sables-restaurant.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3423.4103481253233!2d-6.914090189823995!3d30.903152277271882!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb1004e7571593%3A0x715bc75ee572efbc!2sLa%20Rose%20Des%20Sables%20Restaurant%20Pizzeria!5e0!3m2!1sen!2sma!4v1687686351654!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2023-06-25'),
(7, 'Le Relais de Saint-Exupery', 'Ouarzazate', 'Ouarzazate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"64\" style=\"width: 48pt;\"><tbody><tr height=\"50\" style=\"mso-height-source:userset;height:37.5pt\">\r\n  <td height=\"50\" class=\"xl65\" width=\"64\" style=\"height:37.5pt;width:48pt\">Details<br>\r\n    PRICE RANGE<br>\r\n    MAD 130- MAD440<br>\r\n    CUISINES<br>\r\n    Mediterranean,French,European,MEALS<br>\r\n    Lunch, Dinner</td></tr></tbody></table>', 'Av. Moulay Abdellah, Ouarzazate 45000', 'el-mejor-lugar-k-no-he.jpg', 'relais-saint-exupery.jpg', 'salle-1.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.550866339094!2d-6.895773161659941!3d30.92717592004236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb1044f6ee6efd%3A0xdd1dbb3f833dbf9e!2sRestaurant%20Relais%20Saint%20Exup%C3%A9ry!5e0!3m2!1sen!2sma!4v1687686691259!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2023-06-25'),
(8, 'Restaurant Chez Talout', 'Ouarzazate', 'Ouarzazate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"64\" style=\"width: 48pt;\"><tbody><tr height=\"45\" style=\"mso-height-source:userset;height:33.75pt\">\r\n  <td height=\"45\" class=\"xl65\" width=\"64\" style=\"height:33.75pt;width:48pt\">\r\n  <div style=\"flex-grow: 1;\">\r\n  <div style=\"margin-right:0px;padding-bottom:0px;padding-top:0px\">\r\n  <div style=\"color:var(--black)\"><span style=\"font-weight: bold;\">Details<br></span>\r\n    PRICERANGE<br>\r\n    </div><div style=\"color:var(--black)\"><span style=\"color: var(--black); background-color: transparent;\">MAD 98 -MAD 327</span><br></div><div style=\"color:var(--black)\">\r\n    CUISINES<br>\r\n    Moroccan<br>\r\n    MEALS<br>\r\n    Breakfast, Lunch, Dinner</div></div></div></td></tr></tbody></table>&nbsp;', 'Av. Moulay Abdellah, Ouarzazate 45000', 'restaurant-chez-talout (1).jpg', 'restaurant-chez-talout.jpg', 'vue-d-ensemble.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3418.412022164274!2d-6.608837246284605!3d31.042627491208513!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb68f4081f279f%3A0xd0fc1f00d80b4aca!2sAuberge%20Chez%20Talout!5e0!3m2!1sen!2sma!4v1687686872117!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2023-06-25'),
(9, 'Restaurant Glacier 3 Mars', 'Ouarzazate', 'Ouarzazate', '<p>Details </p><p>CUISINES Italian, French, Moroccan, Mediterranean</p><p> SPECIAL DIETS Vegetarian </p><p>Friendly MEALS </p><p>Breakfast, Lunch, Dinner, Brunch, Drinks\"<br></p>', '7 - 8 place 3 Mars، 45000', 'restaurant-glacier-3 (2).jpg', 'restaurant-glacier-3 (1).jpg', 'restaurant-glacier-3.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.739658376002!2d-6.926806889823127!3d30.921900376361165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb1a9e8e357fb5%3A0xb7d0f74ce0230a95!2sCaf%C3%A9%20Restaurant%203%20Mars!5e0!3m2!1sen!2sma!4v1687687433592!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2023-06-25'),
(10, 'Restaurant Manar du Sud', 'Ouarzazate', 'Ouarzazate', '<p><span style=\"font-weight: bold;\">Details</span></p><p><span style=\"font-weight: bold;\"> </span>CUISINES Moroccan, Mediterranean </p><p>SPECIAL DIETS Vegetarian Friendly</p><p> MEALS Dinner, Lunch, Late Night<br></p>', 'Av. Mohammed V, Ouarzazate 45000', 'restaurant-manar-du-sud (1).jpg', 'restaurant-manar-du-sud.jpg', 'terasse.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.7933217474!2d-6.900493789823218!3d30.920400676434074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb1040268de30b%3A0x1aea95c894fdd729!2sLe%20Manar%20du%20sud!5e0!3m2!1sen!2sma!4v1687687645752!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2023-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE `voyage` (
  `id-cer` int(11) NOT NULL,
  `ville-depart` varchar(255) NOT NULL,
  `ville-arrive` varchar(255) NOT NULL,
  `trajet` varchar(10000) NOT NULL,
  `date-depart` date NOT NULL,
  `heure-depart` time NOT NULL,
  `dure` int(255) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `carte` varchar(1000) NOT NULL,
  `prix` decimal(65,0) NOT NULL,
  `date-res` date NOT NULL,
  `date-creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`id-cer`, `ville-depart`, `ville-arrive`, `trajet`, `date-depart`, `heure-depart`, `dure`, `img`, `carte`, `prix`, `date-res`, `date-creation`) VALUES
(5, '1', 'sdnmfvb', '<p>nbfnv</p>', '2023-05-11', '14:07:00', 5, 'man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', 'ffsf', '58', '2023-05-25', '2023-06-23'),
(6, '2', 'sdnmfvb', '<p>nbfnv</p>', '2023-05-11', '14:07:00', 5, 'man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', 'ffsf', '58', '2023-05-25', '2023-05-31'),
(7, '3', 'sdnmfvb', '<p>nbfnv</p>', '2023-05-11', '14:07:00', 5, 'man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', 'ffsf', '58', '2023-05-25', '2023-05-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `chamber`
--
ALTER TABLE `chamber`
  ADD PRIMARY KEY (`id-chamber`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id-des`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id-hotel`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_mess`);

--
-- Indexes for table `moussem`
--
ALTER TABLE `moussem`
  ADD PRIMARY KEY (`id-mous`);

--
-- Indexes for table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id-plat`);

--
-- Indexes for table `reserver-hotel`
--
ALTER TABLE `reserver-hotel`
  ADD PRIMARY KEY (`id-resh`),
  ADD KEY `id-hotel` (`id-hotel`),
  ADD KEY `id-client` (`id-client`);

--
-- Indexes for table `reserver-voyage`
--
ALTER TABLE `reserver-voyage`
  ADD PRIMARY KEY (`id_voya`),
  ADD KEY `id-cer` (`id-cer`),
  ADD KEY `id-cleint` (`id-cleint`);

--
-- Indexes for table `restau`
--
ALTER TABLE `restau`
  ADD PRIMARY KEY (`id-rest`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id-cer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chamber`
--
ALTER TABLE `chamber`
  MODIFY `id-chamber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id-des` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id-hotel` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_mess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `moussem`
--
ALTER TABLE `moussem`
  MODIFY `id-mous` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plat`
--
ALTER TABLE `plat`
  MODIFY `id-plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reserver-hotel`
--
ALTER TABLE `reserver-hotel`
  MODIFY `id-resh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reserver-voyage`
--
ALTER TABLE `reserver-voyage`
  MODIFY `id_voya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `restau`
--
ALTER TABLE `restau`
  MODIFY `id-rest` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id-cer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reserver-hotel`
--
ALTER TABLE `reserver-hotel`
  ADD CONSTRAINT `reserver-hotel_ibfk_1` FOREIGN KEY (`id-hotel`) REFERENCES `hotel` (`id-hotel`),
  ADD CONSTRAINT `reserver-hotel_ibfk_2` FOREIGN KEY (`id-client`) REFERENCES `client` (`id_client`);

--
-- Constraints for table `reserver-voyage`
--
ALTER TABLE `reserver-voyage`
  ADD CONSTRAINT `reserver-voyage_ibfk_1` FOREIGN KEY (`id-cer`) REFERENCES `voyage` (`id-cer`),
  ADD CONSTRAINT `reserver-voyage_ibfk_2` FOREIGN KEY (`id-cleint`) REFERENCES `client` (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
