-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 déc. 2024 à 18:02
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `controle_biologique`
--

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `stade_application` varchar(255) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `nombre_applications` int(11) DEFAULT NULL,
  `niveau_satisfaction` varchar(255) DEFAULT NULL,
  `periode_experimentation` varchar(255) DEFAULT NULL,
  `methode_id` int(11) DEFAULT NULL,
  `projet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `applications`
--

INSERT INTO `applications` (`id`, `stade_application`, `dose`, `nombre_applications`, `niveau_satisfaction`, `periode_experimentation`, `methode_id`, `projet_id`) VALUES
(1, 'Limitation de populations de nématodes ', 'observation toutes les semaines seuils ', 0, 'Bon', '2012-2017', NULL, NULL),
(2, 'incorporation dans le sol pré-semis ', '4 kg/ha', 1, 'Aucun avis émis', '2013-2017', NULL, NULL),
(3, 'incorporation dans le sol pré-semis ', '4 kg/ha', 1, 'Aucun avis émis', '2013-2017', NULL, NULL),
(4, '? ', ' ', 2, 'Bon', '2013-2018', NULL, NULL),
(5, '? ', '5 l/ha', 2, 'Bon', '2013-2019', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cibles`
--

CREATE TABLE `cibles` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `groupe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cibles`
--

INSERT INTO `cibles` (`id`, `nom`, `groupe`) VALUES
(1, 'Botrytis cinerea ', 'Ascomycètes'),
(2, 'Sclérotinia', 'Ascomycètes'),
(3, 'Mineuses', 'Lépidoptères'),
(4, 'Aleurodes', 'Hémiptères'),
(5, 'Noctuelles', 'Lépidoptères'),
(6, 'Limaces', 'Mollusques'),
(7, 'Pucerons', 'Hémiptères'),
(8, 'Chenilles', 'Lépidoptères'),
(9, 'Pucerons', 'Pucerons'),
(10, 'Mildiou', 'Oomycètes'),
(11, 'Oïdium', 'Ascomycètes'),
(12, 'Acariens', 'Acariens '),
(13, 'Thrips', 'Thrips'),
(14, 'Acariens', 'Acariens'),
(15, 'Fusariose', 'Deutéromycète'),
(16, 'Carpocapse', 'Lépidoptères'),
(17, 'Nématodes', 'Nématodes '),
(18, 'Forficules', 'Dermaptères'),
(19, 'Psylles', 'Hémiptères'),
(20, 'Mouches', 'Diptères'),
(21, 'Tordeuses', 'Lépidoptères'),
(22, 'Campagnols', 'Vertébrés'),
(23, 'Moniliose', 'Ascomycètes'),
(24, 'Tavelure', 'Ascomycètes'),
(25, 'Empoasca vitis', 'Hémiptères'),
(26, 'Cochenilles', 'Hémiptères'),
(27, 'Metcalfa pruinosa', 'Hémiptères'),
(28, 'Défanage', 'Végétaux'),
(29, 'Mineuses', 'Hémiptères'),
(30, 'Punaises phyotphages', 'Hémiptères'),
(31, 'Pythium', 'Oomycètes'),
(32, 'Adventices', 'Végétaux'),
(33, 'Eudemis', 'Lépidoptères'),
(34, 'Méligèthes', 'Coloéptères'),
(35, 'Corky-root (Pyrenochaeta lycopersici )', 'Ascomycètes'),
(36, 'Rhizoctonia', 'Basidiomycètes'),
(37, 'Maladies telluriques ', 'Maladies telluriques '),
(38, 'Nématodes', 'Maladies telluriques '),
(39, 'Maladies telluriques ', 'Nématodes '),
(40, 'Big vein', 'Ascomycètes'),
(41, 'Aleurodes', 'Pucerons'),
(42, 'Maladies telluriques', 'Maladies telluriques '),
(43, 'Phytophthora', 'Oomycètes'),
(44, 'Rouille blanche', 'Basidiomycètes'),
(45, 'Piétin échaudage', 'Ascomycètes'),
(46, 'Altises', 'Coloéptères'),
(47, 'Acariens', 'Lépidoptères'),
(48, 'Charançon de la tige', 'Coloéptères'),
(49, 'Maladies du pois ', 'Maladies aériennes'),
(50, 'Nématodes', 'Nématodes'),
(51, 'Pyrale', 'Lépidoptères'),
(52, 'Ralstonia solanacearum', 'Bactériose'),
(53, 'Doryphore', 'Coloéptères'),
(54, 'Sclérotinia', 'Champignons');

-- --------------------------------------------------------

--
-- Structure de la table `familles`
--

CREATE TABLE `familles` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `familles`
--

INSERT INTO `familles` (`id`, `nom`, `description`) VALUES
(1, 'Micro-organismes', NULL),
(2, 'Substances naturelles', NULL),
(3, 'Macro-organismes', NULL),
(4, 'Autres méthodes', NULL),
(5, 'Médiateurs chimiques', NULL),
(6, 'Plantes de service ', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `methodes`
--

CREATE TABLE `methodes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `type_traitement` varchar(255) DEFAULT NULL,
  `partie_traitee` varchar(255) DEFAULT NULL,
  `mode_d_action` varchar(255) DEFAULT NULL,
  `sous_famille_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methodes`
--

INSERT INTO `methodes` (`id`, `nom`, `type_traitement`, `partie_traitee`, `mode_d_action`, `sous_famille_id`) VALUES
(1, 'Bacillus subtilis', 'Fongicides', 'Aérienne ', 'Antagonisme et stimulateur de défense des plantes ', NULL),
(2, 'Bacillus thuringiensis', 'Insecticides', 'Aérienne ', 'Ingestion ', NULL),
(3, 'Lecanicillium muscarium', 'Insecticides', 'Aérienne ', 'Parasitisme', NULL),
(4, 'Phosphate ferrique ', 'Molluscicides', 'Sol', 'Ingestion', NULL),
(5, 'Savon ', 'Insecticides', 'Aérienne ', 'Asphyxies', NULL),
(6, 'Encarsia formosa', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(7, 'Eretmocerus erimicus', 'Insecticides', 'Aérienne ', 'Parasitoïdes ', NULL),
(8, 'Trichogrammes', 'Insecticides', 'Aérienne ', 'Parasites des oeufs de pyrale', NULL),
(9, 'Macrolophus pygmaeus', 'Insecticides', 'Aérienne ', 'Prédateurs ', NULL),
(10, 'Laminarine ', 'Fongicides', 'Aérienne ', 'Stimulateur des défenses des plantes', NULL),
(11, 'Bacillus subtilis', 'Fongicides', 'Aérienne ', 'Antagonisme et Stimulateur de défense des plantes contre sclérotinose', NULL),
(12, 'Bacillus thuringiensis', 'Insecticides', 'Aérienne ', 'Ingestion', NULL),
(13, 'Coniothyrium minitans', 'Fongicides', 'Sol', 'Parasites des sclérotes', NULL),
(14, 'Hydrogénocarbonate de potassium', 'Fongicides', 'Aérienne ', 'Fongicide de contact multi-sites', NULL),
(15, 'Soufre', 'Fongicides', 'Aérienne ', 'Fongicide de contact multi-sites', NULL),
(16, 'Stimulateur des défenses', 'Fongicides', 'Aérienne ', 'Stimulateur des défenses des plantes', NULL),
(17, 'Phéromone lépidoptères ', 'Insecticides', 'Aérienne ', 'Détection/piégeages de masse ', NULL),
(18, 'Syrphes', 'Insecticides', 'Aérienne ', 'Prédateurs ', NULL),
(19, 'Aphidius colemani', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(20, 'Alysson maritime ', 'Favorise les auxilaires', 'Aérienne ', 'Plantes attractives', NULL),
(21, 'Bacillus amyloliquefaciens ', 'Fongicides', 'Aérienne ', 'Antagonisme et stimulateur de défense des plantes ', NULL),
(22, 'Eleusine ', 'Favorise les auxilaires', 'Aérienne ', 'Plantes relais', NULL),
(23, 'Neoseiulus californicus', 'Acaricides', 'Aérienne ', 'Acariens prédateurs', NULL),
(24, 'Phosphonates de potassium', 'Fongicides', 'Aérienne ', 'Fongicide de contact multi-sites', NULL),
(25, 'Phytoseiulus persimilis', 'Acaricides', 'Aérienne ', 'Acariens prédateurs', NULL),
(26, 'Trichoderma asperellum', 'Fongicides', 'Sol', 'Fongicide de contact multi-sites', NULL),
(27, 'Granulovirus', 'Insecticides', 'Aérienne ', 'Parasitisme', NULL),
(28, 'Huiles diverses ', 'Insecticides', 'Aérienne ', 'Asphyxies', NULL),
(29, 'Kaolin', 'Insecticides', 'Aérienne ', 'Effet barrières', NULL),
(30, 'Phéromone lépidoptères ', 'Insecticides', 'Aérienne ', 'Confusion sexuelle', NULL),
(31, 'Steinernema carpocapsae', 'Insecticides', 'Aérienne ', 'Parasitisme', NULL),
(32, 'Tagètes et romarin', 'Insecticides', 'Aérienne ', 'Plantes répulsives', NULL),
(33, 'Phosphonates de potassium', 'Fongicides', 'Aérienne ', 'Fongicides sytémique vis-à-vis des oomycètes', NULL),
(34, 'Canavalia ensiformis (Fabacées)', 'Nématicides', 'Sol', 'Biofumigation ', NULL),
(35, 'Glu', 'Insecticides', 'Aérienne ', 'Effet barrières', NULL),
(36, 'Phéromone diptères', 'Insecticides', 'Aérienne ', 'Piégeage massif par phéromone', NULL),
(37, 'Kaolin', 'Insecticides', 'Aérienne ', 'Effet Barrières', NULL),
(38, 'Nichoir', 'Insecticides', 'Aérienne ', 'Piégeages massifs ', NULL),
(39, 'Nichoir', 'Insecticides', 'Aérienne ', 'Abris pour faune auxiliaire', NULL),
(40, 'Perchoir', 'Favorise les auxilaires', 'Aérienne ', 'Abris pour faune auxiliaire', NULL),
(41, 'Glycine-bétaïne', 'Fongicides', 'Aérienne ', 'Effet physiologique', NULL),
(42, 'Huiles diverses ', 'Acaricides', 'Aérienne ', 'Asphyxies', NULL),
(43, 'Anagrus atomus ', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(44, 'Coccinelles, rhizobius lophantae', 'Insecticides', 'Aérienne ', 'Prédateurs ', NULL),
(45, 'Encarsia berlesei', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(46, 'Neodryinus typhlocibae', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(47, 'Aphytis melinus', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(48, 'Nichoir', 'Insecticides', 'Aérienne ', 'Piégeages massifs ', NULL),
(49, 'Tagètes ', 'Nématicides', 'Sol', 'Biofumigation ', NULL),
(50, 'Ail', 'Nématicides', 'Sol', 'Répulsif', NULL),
(51, 'Trichoderma atroviride ', 'Nématicides', 'Sol', 'Antagonisme', NULL),
(52, 'Sorgho anti nématodes', 'Nématicides', 'Sol', 'Fumigation ', NULL),
(53, 'Acide pélargonique', 'Herbicides', 'Sol', 'Herbicides', NULL),
(54, 'Hyménoptères parasitoïdes', 'Insecticides', 'Aérienne ', 'Prédateurs et parasitoïdes ', NULL),
(55, 'Chrysoperla carnea', 'Insecticides', 'Aérienne ', 'Prédateurs ', NULL),
(56, 'Neoseiulus cucumeris', 'Insecticides', 'Aérienne ', 'Acariens prédateurs', NULL),
(57, 'Amblyseius swirskii', 'Insecticides', 'Aérienne ', 'Acariens prédateurs', NULL),
(58, 'Chitosan et pectine', 'Fongicides', 'Aérienne ', 'Stimulateur des défenses des plantes', NULL),
(59, 'Feltiella acarisuga ', 'Acaricides', 'Aérienne ', 'Parasitoïdes', NULL),
(60, 'Huile essentielle d\'agrumes', 'Insecticides', 'Aérienne ', 'Déssechement de la cuticule des insectes  déshydratation  des  structures  externes du champignon (mycélium spores)', NULL),
(61, 'Oligota spp.', 'Acaricides', 'Aérienne ', 'Prédateurs ', NULL),
(62, 'Orius laevigatus ', 'Insecticides', 'Aérienne ', 'Prédateurs', NULL),
(63, 'Orius spp.', 'Insecticides', 'Aérienne ', 'Prédateurs', NULL),
(64, 'Stethorus spp.', 'Acaricides', 'Aérienne ', 'Prédateurs ', NULL),
(65, 'Hyménoptères parasitoïdes', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(66, 'Aphidoletes aphidimyza', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(67, 'Chrysoperla carnea', 'Insecticides', 'Aérienne ', 'Prédations ', NULL),
(68, 'Maltodextrine', 'Insecticides', 'Aérienne ', 'Asphyxies', NULL),
(69, 'Bacillus subtilis', 'Fongicides', 'Aérienne ', 'Antagonisme et stimulateur de défense des plantes contre sclérotinose', NULL),
(70, 'Aphidius sp.', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(71, 'Trichoderma atroviride ', 'Fongicides', 'Sol', 'Antagonisme', NULL),
(72, 'Encarsia formosa', 'Insecticides', 'Aérienne ', 'Parasitoïdes ', NULL),
(73, 'Eretmocerus mundus ', 'Insecticides', 'Aérienne ', 'Parasitoïdes ', NULL),
(74, 'Granulovirus', 'Insecticides', 'Aérienne ', 'Ingestion ', NULL),
(75, 'Gestion de la vigueur et aération de la végétation ', 'Fongicides', 'Aérienne ', 'Effet aération', NULL),
(76, 'Huile essentielle d\'agrumes', 'Fongicides', 'Aérienne ', 'Asphyxies', NULL),
(77, 'Mélange vesce avoine graminées et matière organique', 'Insecticides', 'Aérienne ', 'Plantes attractives', NULL),
(78, 'Propolis avec Cu', 'Fongicides', 'Aérienne ', 'Fongicides mutli sites', NULL),
(79, 'Purins', 'Fongicides', 'Aérienne ', 'Répulsif', NULL),
(80, 'Purins', 'Fongicides', 'Aérienne ', 'Fongicide de contact multi-sites', NULL),
(81, 'Bacillus pumilus', 'Fongicides', 'Aérienne ', 'Antagonisme et stimulateur de défense des plantes contre sclérotinose', NULL),
(82, 'Colza précoce en mélange', 'Insecticides', 'Aérienne ', 'Plantes pièges', NULL),
(83, 'Aphelinus mali', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(84, 'Apport de fumier ', 'Fongicides', 'Sol', 'Antagonisme', NULL),
(85, 'Hyménoptères parasitoïdes', 'Insecticides', 'Aérienne ', 'Parastoïdes ', NULL),
(86, 'Macrolophus pygmaeus', 'Insecticides', 'Aérienne ', 'Prédateurs', NULL),
(87, 'Aphidius matricariae', 'Insecticides', 'Aérienne ', 'Parastoïdes ', NULL),
(88, 'Ail', 'Nématicides', 'Sol', 'Répulsif ', NULL),
(89, 'Sorgho anti nématodes', 'Fongicides', 'Sol', 'Fumigation ', NULL),
(90, 'Apport de fumier ', 'Nématicides', 'Sol', 'Antagonisme', NULL),
(91, 'Canavalia ensiformis (Fabacées)', 'Fongicides', 'Sol', 'Biofumigation ', NULL),
(92, 'Amblydromalus limonicus ', 'Insecticides', 'Aérienne ', 'Acariens prédateurs', NULL),
(93, 'Extraits hydroalcooliques de plantes + argile + soufre + lithothamme', 'Fongicides', 'Aérienne ', 'Fongicide de contact multi-sites', NULL),
(94, 'Lipopeptides ', 'Fongicides', 'Aérienne ', 'Stimulateur des défenses des plantes', NULL),
(95, 'Trichoderma harzianum', 'Fongicides', 'Sol', 'Antagonisme', NULL),
(96, 'Aphidius ervi', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(97, 'Macrocheles robustus', 'Insecticides', 'Aérienne ', 'Prédateurs', NULL),
(98, 'Bacillus pumilus', 'Fongicides', 'Sol', 'Antagonisme et stimulateur de défense des plantes contre sclérotinose', NULL),
(99, 'Pythium oligandrum', 'Fongicides', 'Sol', 'Parasite de oomycètes', NULL),
(100, 'Anthocoris nemoralis ', 'Insecticides', 'Aérienne ', 'Prédateurs ', NULL),
(101, 'Tamarixia upis', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(102, 'Coccinelles ', 'Insecticides', 'Aérienne ', 'Prédateurs ', NULL),
(103, 'Hymémoptères parasitoïdes', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(104, 'Micro-organismes pour biotisation des substrats', 'Fongicides', 'Sol', 'Antagonisme', NULL),
(105, 'Nématodes (contre sciarides)', 'Insecticides', 'Aérienne ', 'Parasites', NULL),
(106, 'Aubergines ', 'Favorise les auxilaires', 'Aérienne ', 'Plantes attractives', NULL),
(107, 'Euseius gallicus ', 'Insecticides', 'Aérienne ', 'Acariens prédateurs', NULL),
(108, 'Acibenzolar-s-methyl', 'Fongicides', 'Aérienne ', 'Stimulateur des défenses des plantes', NULL),
(109, 'Potentilles ', 'Insecticides', 'Aérienne ', 'Plantes attractives', NULL),
(110, 'Tagètes ', 'Insecticides', 'Aérienne ', 'Biofumigation ', NULL),
(111, 'Colza précoce en mélange', 'Insecticides', 'Aérienne ', 'Evitement', NULL),
(112, 'Moutarde en interculture courte', 'Fongicides', 'Sol', 'Fumigation ', NULL),
(113, 'Légumineuses associées au colza', 'Insecticides', 'Aérienne ', 'Effet évitement', NULL),
(114, 'Trichogrammes', 'Insecticides', 'Aérienne ', 'Parasitoïdes', NULL),
(115, 'Moutarde anti-nématodes', 'Nématicides', 'Sol', 'Fumigation ', NULL),
(116, 'Couvert d\'orge', 'Fongicides', 'Aérienne ', 'Effet aération', NULL),
(117, 'Moutarde anti-nématodes', 'Insecticides', 'Sol', 'Plantes pièges', NULL),
(118, 'Mélange fleuri et ligne de maïs', 'Favorise les auxilaires', 'Aérienne ', 'Effet attractif', NULL),
(119, 'Phéromone diptères', 'Insecticides', 'Aérienne ', 'Détection/piégeages de masse ', NULL),
(120, 'Spinosad appat', 'Insecticides', 'Aérienne ', 'Ingestion ', NULL),
(121, 'Crotalaire', 'Bactéricides', 'Sol', 'Biofumigation ', NULL),
(122, 'Bandes de navettes', 'Insecticides', 'Sol', 'Plantes attractives', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `methodes_cibles`
--

CREATE TABLE `methodes_cibles` (
  `methode_id` int(11) NOT NULL,
  `cible_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methodes_cibles`
--

INSERT INTO `methodes_cibles` (`methode_id`, `cible_id`) VALUES
(4, 6),
(5, 13),
(10, 10),
(14, 11),
(14, 24),
(15, 11),
(15, 24),
(16, 10),
(16, 11),
(21, 1),
(26, 15),
(31, 16),
(35, 18),
(40, 22),
(41, 23),
(43, 25);

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `site_experimental` varchar(255) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `lien_fiche` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `nom`, `site_experimental`, `code_postal`, `lien_fiche`) VALUES
(1, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_4SYSLEG_Alenya_T22DivAB.pdf'),
(2, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_4SYSLEG_Alenya_T25DivRed.pdf'),
(3, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_4SYSLEG_Al%C3%A9nya_T23LongAB.pdf'),
(4, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66202', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_4SYSLEG_Al%C3%A9nya_T23LongAB.pdf'),
(5, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66201', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_4SYSLEG_Al%C3%A9nya_T23LongAB.pdf'),
(6, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche_SYSTEME_4SYSLEG_Alenya_T26LongRed.pdf'),
(7, 'BioREco', 'INRAE Gotheron', '26320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BioREco_BIO%20Ariane.pdf'),
(8, 'BioREco', 'INRAE Gotheron', '26320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BioREco_BIO%20Melrose.pdf\r\n'),
(9, 'BioREco', 'INRAE Gotheron', '26320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BioREco_BIO%20Smoothee.pdf'),
(10, 'BioREco', 'INRAE Gotheron', '26320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BioREco_ECO%20Ariane.pdf\r\n'),
(11, 'BioREco', 'INRAE Gotheron', '26320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BioREco_ECO%20Melrose.pdf'),
(12, 'BioREco', 'INRAE Gotheron', '26320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BioREco_ECO%20Smoothee.pdf\r\n'),
(13, 'BREIZLEG', 'SECL-Terre d\'essais', '22740', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_BREIZLEG_SECL_-50%25.pdf'),
(14, 'CanécoH', 'Saint Marie', '97438', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_CanecoH_Plante%20de%20services%20intercalaire.pdf'),
(15, 'CAP ReD', 'Sica CENTREX', '66440', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME-Arbo_CapREd_Centrex%20ECO%202.pdf'),
(16, 'CAP ReD', 'CTIFL de Balandran', '30127', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_CAP%20ReD_Balandran_Eco-50%25.pdf'),
(17, 'CAP ReD', 'INRA/BIP', '47320', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_CAP%20ReD_INRA-BIP_Eco-50%25.pdf'),
(18, 'CAP ReD', 'AREFE', '55210', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_CAP%20ReD_Arefe_Eco.pdf'),
(19, 'CAP ReD', 'SERFEL', '30800', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_CAP%20ReD_Serfel_Eco%20Innovant.pdf'),
(20, 'CAP ReD', 'INRA de Gotheron', '26320', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_CAP%20ReD_Gotheron_Eco%204.pdf'),
(21, 'EcoViti Val de Loire-Centre', 'Lycée Amboise', '37402', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_EcoViti%20Val%20de%20Loire-Centre_Amboise.pdf'),
(22, 'Cors\'Expé', 'AREFLEC San Giuliano', '20230', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Cors%27Exp%C3%A9_Areflec_Kiwi-50%25.pdf'),
(23, 'Cors\'Expé', 'Lycée agricole de Borgo', '20290', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Cors%27Exp%C3%A9_Borgo_SRA85-50%25.pdf'),
(24, 'DEPHY Carotte', 'INVENIO Commensacq', '40210', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHYCarotte_Commensacq_Ecophyto_Invenio.pdf'),
(25, 'DEPHY Carotte', 'INVENIO Ychoux', '40160', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHYCarotte_Ychoux_Ecophyto_Invenio_VF.pdf'),
(26, 'DEPHY Carotte', 'SILEBAN Créances', '50710', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20Carotte_Cr%C3%A9ances_Ecophyto%2B.pdf'),
(27, 'DEPHY Carotte', 'SILEBAN Montfarville', '50760', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20Carotte_Montfarville_Ecophyto%2B.pdf'),
(28, 'DEPHY EXP NPDC', 'Pôle légumes', '62840', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_DEPHY%20EXPE%20NPDC_PL_IFT%2050.pdf'),
(29, 'DEPHY Fraise ', 'Tour en sologne', '41250', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHY%20FRAISE_LCA_IFT50.pdf'),
(30, 'DEPHY Fraise ', 'INVENIO Douville', '24140', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHY%20FRAISE_Invenio%20Douville.pdf'),
(31, 'DEPHY Fraise ', 'INVENIO Ste Livrade sur Lot', '47110', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHY%20FRAISE_Invenio%20St%20Livrade.pdf'),
(32, 'DEPHY Fraise ', 'Producteur - APREL - VERQUIERES', '13670', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHY%20FRAISE_APREL_PBI.pdf'),
(33, 'DEPHY Fraise ', 'Producteur - SAVEOL - PLOUGUERNEAU', '29880', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_DEPHY%20Fraise_Prod%20Saveol_Dephy.pdf'),
(34, 'DEPHY Serre ', 'APREL - Saint Rémy de provence ', '13210', 'http://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20Serre_L%C3%A9gumes_APREL.pdf'),
(35, 'DEPHY Serre ', 'APREL - Saint Rémy de provence ', '13211', 'http://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20Serre_L%C3%A9gumes_APREL.pdf'),
(36, 'DEPHY Serre ', 'APREL - Saint Rémy de provence ', '13212', 'http://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20Serre_L%C3%A9gumes_APREL.pdf'),
(37, 'DEPHY Serre ', 'ARELPAL Site B - Pont Saint martin', '44860', 'http://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20SERRE_Arelpal%20site%20B_Tomate%20Dephy.pdf'),
(38, 'DEPHY Serre ', 'Producteur LCA/CVETMO - Saint Denis en Val', '45560', 'http://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20SERRE_Prod%20LCA_Concombre%20Dephy.pdf'),
(39, 'DEPHY Serre ', 'SAVEOL Site A - GUIPAVAS', '29490', 'http://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_DEPHY%20SERRE_Saveol%20site%20A.pdf'),
(40, 'DEPHY Serre ', 'SAVEOL Site B - GUIPAVAS', '29490', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_DEPHY%20SERRE_Saveol%20site%20B_Serre%20B%20Dephy.pdf'),
(41, 'ECOLEG', 'Sica CENTREX - Torreilles', '66440', 'http://ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_ECOLEG_Sica%20CENTREX_Ecoleg.pdf'),
(42, 'EcoPêche', 'SERFEL', '30800', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_ECOPECHE_SERFEL_bas%20intrants.pdf'),
(43, 'EcoPêche', 'SERFEL', '30800', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_ECOPECHE_SERFEL_Eco-Innov.pdf'),
(44, 'EcoPêche', 'SEFRA', '26800', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_EcoP%C3%AAche_SEFRA_Faibles%20intrants.pdf'),
(45, 'EcoPêche', 'INRA - Domaine Saint Paul', '84914', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_ECOPECHE_INRA%20Avignon_Eco2.pdf'),
(46, 'EcoViti Alsace', 'INRA Ribeauvillé', '68150', 'http://www.ecophytopic.fr/sites/default/files/Fiche_SYSTEME_EcoViti%20Alsace_Ribeauville_AB.pdf'),
(47, 'EcoViti Val de Loire-Centre', 'Domaine le Colombier', '49230', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_EcoViti%20Val%20de%20Loire-Centre_Domaine%20du%20Colombie_Syst%C3%A8me%C2%A0DEPHY1.pdf'),
(48, 'EcoViti Arc Méditerranéen', 'Lycée agricole de Rivesaltes', '66600', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_EcoViti%20Arc%20M%C3%A9diterran%C3%A9en_Rivesaltes_Innobio.pdf'),
(49, 'EcoViti Alsace', 'INRA Wintzenheim', '68920', 'http://www.ecophytopic.fr/sites/default/files/Fiche_SYSTEME_EcoViti%20Alsace_Wintzenheim_AB.pdf'),
(50, 'EcoViti Alsace', 'OPABA - Chatenois', '67730', 'http://www.ecophytopic.fr/sites/default/files/Fiche_SYSTEME_EcoViti%20Alsace_Chatenois_AB.pdf'),
(51, 'Cors\'Expé', 'Domaine Terra Vecchia (CRVI)', '20270', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Cors%27EXPE_CRVI.pdf'),
(52, 'EcoViti Arc Méditerranéen', 'Station de Tresserre', '66300', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_EcoViti%20Arc%20M%C3%A9diterran%C3%A9en_Rivesaltes_Innobio.pdf'),
(53, 'EcoViti Aquitaine', 'Château Grand Baril', '33570', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_Ecoviti%20Aquitaine_Gd%20Baril_Ecoviti.pdf'),
(54, 'EcoViti Arc Méditerranéen', 'SERFEL (SudExpé)', '30800', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_EcoViti%20Arc%20M%C3%A9diterran%C3%A9en_SudExp%C3%A9_IPM-50%25.pdf'),
(55, 'EcoViti Alsace', 'OPABA - Ingersheim', '68040', 'http://www.ecophytopic.fr/sites/default/files/Fiche_SYSTEME_EcoViti%20Alsace_Chatenois_AB.pdf'),
(56, 'EcoViti Aquitaine', 'INRA - La Grande Ferrade', '33140', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Ecoviti%20Aquitaine_INRA_INT.pdf'),
(57, 'EcoViti Aquitaine', 'Château les Vergnes', '33220', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Ecoviti%20Aquitaine_Les%20Vergnes_Les%20L%C3%A8ves%20Mn.pdf'),
(58, 'EcoViti Arc Méditerranéen', 'Domaine du Chapitre', '34750', 'https://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Ecoviti%20Arc%20Med_Chapitre_IPM-50%25.pdf'),
(59, 'EXPE Ecophyto Lorrain', 'Haroué', '54740', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Ecophyto%20Lorrain_Harou%C3%A9_Int%C3%A9gr%C3%A9%205%20ans.pdf'),
(60, 'EXPE Ecophyto Pomme', 'CEFEL', '82000', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_EXPE%20Ecophyto%20Pomme_Cefel.pdf'),
(61, 'DEPHY EXP NPDC', 'EPL D\'ARRAS', '62217', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_DEPHY%20EXPE%20NPDC_EPLEFPA-Arras_IFT%2050.pdf'),
(62, 'EXPE systèmes GC Berry', 'Ferme du Chaumoy LE SUBDRAY', '18570', 'http://ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_EXPE%20syst%C3%A8mes%20GC%20Berry_Chaumoy_S3_0.pdf'),
(63, 'EXPE systèmes GC Berry', 'Ferme du Chaumoy LE SUBDRAY', '18570', 'http://ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_EXPE%20syst%C3%A8mes%20GC%20Berry_Chaumoy_S2_1.pdf'),
(64, 'GEDUBAT', 'CTIFL Carquefou', '44470', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_L%C3%A9gumes_CTIFL%20Carquefou.pdf'),
(65, 'GEDUBAT', 'INRA Alenya', '66200', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_GEDUBAT_Al%C3%A9nya_T5.pdf'),
(66, 'GEDUBAT', 'APREL Saint remy de provence', '13210', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_GEDUBAT_APREL_C3.pdf'),
(67, 'GEDUBAT', 'INRA Alenya', '66200', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_GEDUBAT_Al%C3%A9nya_T6.pdf'),
(68, 'GEDUBAT', 'GRAB Marguerites', '30320', 'http://ecophytopic.fr/sites/default/files/Fiche%20Systeme_GRAB_GEDUBAT_T2.pdf'),
(69, 'GEDUBAT', 'INVENIO - Lycée agricole Ste Livrade', '47110', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_GEDUBAT_Invenio_T3Aubergine.pdf'),
(70, 'GEDUBAT', 'INRA Alenya', '66200', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_GEDUBAT_Al%C3%A9nya_T7.pdf\r\n'),
(71, 'GEDUBAT', 'CTIFL Balandran - Bellegarde', '30127', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_GEDUBAT_CTIFL%20Balandran_TM12%20Apport%20de%20MO.pdf'),
(72, 'HORTIFLOR', 'SCRADH - Hyeres', '83400', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_Hortiflor_Scradh_Gerbera%20Innovant.pdf'),
(73, 'HORTIFLOR', 'CREAT - La Gaude', '6610', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Hortiflor_CREAT_Renoncule%20Innovant.pdf'),
(74, 'HORTIFLOR', 'Caté - St Pol de Léon', '29250', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_HORTIFLOR_CATE_Syst%C3%A8me%20pleine%20terre_livret.pdf'),
(75, 'HORTIPEPI', 'Arexhor Seine-Manche', '78100', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_HORTIPEPI_Arexhor%20Seine-Manche_Choisya.pdf\r\n'),
(76, 'HORTIPEPI', 'GIE Fleurs et Plantes du Sud-Ouest', '33882', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_HORTIPEPI_GIE%20FPSO_Eleaegnus.pdf'),
(77, 'HORTIPEPI', 'CDHR - Centre Val de Loire', '45590', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_HORTIPEPI_CDHR_Viburnum.pdf'),
(78, 'HORTIPEPI', 'CATE', '29250', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_HORTIPEPI_CATE_Photinia.pdf'),
(79, 'HORTIPOT', 'Arexhor Grand Est', '88700', 'http://ecophytopic.fr/sites/default/files/Fiche%20syst%C3%A8me_HORTIPOT_Arexhor%20Grand%20Est_Pelargonium.pdf'),
(80, 'HORTIPOT', 'Arexhor Pays de Loire', '49130', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me%20HORTIPOT_Astredhor%20Pays%20de%20Loire_Poinsettia.pdf'),
(81, 'HORTIPOT', 'CDHR', '45590', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me%20HORTIPOT_CDHR_Hibiscus.pdf'),
(82, 'HORTIPOT', 'GIE Fleurs et Plantes du Sud-Ouest', '33883', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_HORTIPOT_GIE%20FPSO_Poinsettia.pdf'),
(83, 'HORTIPOT', 'GIE Fleurs et Plantes du Sud-Ouest', '33884', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_HORTIPOT_GIE%20FPSO_Poinsettia.pdf'),
(84, 'HORTIPOT', 'Stepp Bretagne', '22360', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_HORTIPOT_Stepp_Chrysantheme.pdf'),
(85, 'INNOViPEST', 'CA 58', '58310', 'https://ecophytopic.fr/sites/default/files/2020-11/Fiche%20SYSTEME_Innovipest_Bouhy.pdf'),
(86, 'INNOViPEST', 'CA 17', '17400', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_InnoviPest_SdCi%20Loir%C3%A9_CA17.pdf'),
(87, 'INNOViPEST', 'CA 53', '53200', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_Innovipest_CA%2053_SdCi.pdf'),
(88, 'Otelho', 'Station SCRADH', '83400', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_OTELHO_SCRADH_Gerbera.pdf'),
(89, 'Otelho', 'Station GIE Fleurs et Plantes du Sud-Ouest', '33882', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_OTELHO_GIE_FPSO_Gerbera.pdf'),
(90, 'PHYTO-SOL', 'Doignies', '62147', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_PHYTO-SOL_Doignies_YNO.pdf'),
(91, 'PHYTO-SOL', 'Villedieu-sur-Indre', '36320', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_PHYTO-SOL_Villedieu_YAC.pdf\r\n'),
(92, 'PHYTO-SOL', 'Villedieu-sur-Indre', '36321', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_PHYTO-SOL_Villedieu_YAC.pdf\r\n'),
(93, 'PHYTO-SOL', 'Murs', '36700', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_PHYTO-SOL_Murs_YLI.pdf\r\n'),
(94, 'PHYTO-SOL', 'MURS', '36700', 'http://ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_PHYTO-SOL_Murs_YLI.pdf\r\n'),
(95, 'Rés0Pest ', 'Le Rheu ', '35327', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_R%C3%A9s0Pest_Le%20Rheu.pdf'),
(96, 'RESCAM', 'ARMEFLHOR', '97410', 'http://www.ecophytopic.fr/sites/default/files/Fiche_SYSTEME_RESCAM_Armeflhor_Rescam.pdf'),
(97, 'RESCAM', 'EPLEFPA Saint-Paul', '97460', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_RESCAM_St%20Paul.pdf'),
(98, 'RESCAM', 'Saint Joseph', '97480', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_RESCAM_St%20Joseph.pdf'),
(99, 'Reseau PI ', 'Rouffach', '68250', 'http://ecophytopic.fr/sites/default/files/Fiche%20Syst%C3%A8me_R%C3%A9seau%20PI_Rouffach_SdCi.pdf'),
(100, 'Rés0Pest ', 'Bretenière', '21110', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_R%C3%A9s0Pest_Breteni%C3%A8re.pdf'),
(101, 'Rés0Pest ', 'Lusignan ', '86600', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_R%C3%A9s0Pest_Lusignan.pdf'),
(102, 'Rés0Pest ', 'Mauguio', '34130', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_R%C3%A9s0Pest_Mauguio.pdf'),
(103, 'Rés0Pest ', 'Estrées-Mons', '80200', 'https://ecophytopic.fr/sites/default/files/2020-06/Fiche%20SYSTEME_R%C3%A9s0Pest_Mons.pdf'),
(104, 'Rés0Pest ', 'Thiverval-Grignon', '78850', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME_Res0Pest_Grignon.pdf'),
(105, 'SGC Bretagne', 'Crécom', '22480', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_SGC%20Bretagne_Cr%C3%A9com_SdC%20Mixte.pdf'),
(106, 'System-Eco-Puissance4', 'Toulouse-Lamothe', '31600', 'http://www.ecophytopic.fr/sites/default/files/Fiche%20SYSTEME__System-Eco-Puissance4_Lamothe_MMli.pdf'),
(107, 'System-Eco-Puissance4', 'Dijon-Epoisses', '21110', 'https://ecophytopic.fr/sites/default/files/2019-12/Fiche%20SYSTEME_Eco4_Epoisses_S4_PIC%20typique.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `sous_familles`
--

CREATE TABLE `sous_familles` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `famille_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sous_familles`
--

INSERT INTO `sous_familles` (`id`, `nom`, `famille_id`) VALUES
(1, 'Préparation bactérienne', 1),
(2, 'Préparation fongique', 1),
(3, 'Origine minérale', 2),
(4, 'Origine végétale', 2),
(5, 'Insectes parasitoïdes', 3),
(6, 'Insectes prédateurs', 3),
(7, 'Stimulateur des défenses', 4),
(8, 'Phéromones', 5),
(9, 'Plantes attractives', 6),
(10, 'Acariens  prédateurs ', 3),
(11, 'Préparation virale', 1),
(12, 'Nématodes parasites d\'insectes', 3),
(13, 'Plantes répulsives', 6),
(14, 'Plantes nématicides', 6),
(15, 'Barrières', 4),
(16, 'Piégeages', 4),
(17, 'Refuge perchoir', 4),
(18, 'Origine végétale et animale', 2),
(19, 'Effeuillages', 4),
(20, 'Origine animale', 2),
(21, 'Plantes pièges ', 6),
(22, 'Amendement organique', 4),
(23, 'Plantes de biofumigation ', 6),
(24, 'Origine bactérienne ', 2),
(25, 'Préparation bactérienne et fongique', 1),
(26, 'Plantes associées', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `methode_id` (`methode_id`),
  ADD KEY `projet_id` (`projet_id`);

--
-- Index pour la table `cibles`
--
ALTER TABLE `cibles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `familles`
--
ALTER TABLE `familles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `methodes`
--
ALTER TABLE `methodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sous_famille_id` (`sous_famille_id`);

--
-- Index pour la table `methodes_cibles`
--
ALTER TABLE `methodes_cibles`
  ADD PRIMARY KEY (`methode_id`,`cible_id`),
  ADD KEY `cible_id` (`cible_id`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `famille_id` (`famille_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `cibles`
--
ALTER TABLE `cibles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `familles`
--
ALTER TABLE `familles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `methodes`
--
ALTER TABLE `methodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`methode_id`) REFERENCES `methodes` (`id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`projet_id`) REFERENCES `projets` (`id`);

--
-- Contraintes pour la table `methodes`
--
ALTER TABLE `methodes`
  ADD CONSTRAINT `methodes_ibfk_1` FOREIGN KEY (`sous_famille_id`) REFERENCES `sous_familles` (`id`);

--
-- Contraintes pour la table `methodes_cibles`
--
ALTER TABLE `methodes_cibles`
  ADD CONSTRAINT `methodes_cibles_ibfk_1` FOREIGN KEY (`methode_id`) REFERENCES `methodes` (`id`),
  ADD CONSTRAINT `methodes_cibles_ibfk_2` FOREIGN KEY (`cible_id`) REFERENCES `cibles` (`id`);

--
-- Contraintes pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
  ADD CONSTRAINT `sous_familles_ibfk_1` FOREIGN KEY (`famille_id`) REFERENCES `familles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
