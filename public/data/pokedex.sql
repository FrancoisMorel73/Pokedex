--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` int NOT NULL,
  `attack` int NOT NULL,
  `defense` int NOT NULL,
  `spe_attack` int NOT NULL,
  `spe_defense` int NOT NULL,
  `speed` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `hp`, `attack`, `defense`, `spe_attack`, `spe_defense`, `speed`, `slug`) VALUES
(1, 'Bulbizarre', 45, 49, 49, 65, 65, 45, 'bulbizarre'),
(2, 'Herbizarre', 60, 62, 63, 80, 80, 60, 'herbizarre'),
(3, 'Florizarre', 80, 82, 83, 100, 100, 80, 'florizarre'),
(4, 'Salameche', 39, 52, 43, 60, 50, 65, 'salameche'),
(5, 'Reptincel', 58, 64, 58, 80, 65, 80, 'reptincel'),
(6, 'Dracaufeu', 78, 84, 78, 109, 85, 100, 'dracaufeu'),
(7, 'Carapuce', 44, 48, 65, 50, 64, 43, 'carapuce'),
(8, 'Carabaffe', 59, 63, 80, 65, 80, 58, 'carabaffe'),
(9, 'Tortank', 79, 83, 100, 85, 105, 78, 'tortank'),
(10, 'Chenipan', 45, 30, 35, 20, 20, 45, 'chenipan'),
(11, 'Chrysacier', 50, 20, 55, 25, 25, 30, 'chrysacier'),
(12, 'Papilusion', 60, 45, 50, 80, 80, 70, 'papilusion'),
(13, 'Aspicot', 40, 35, 30, 20, 20, 50, 'aspicot'),
(14, 'Coconfort', 45, 25, 50, 25, 25, 35, 'coconfort'),
(15, 'Dardargnan', 65, 80, 40, 45, 80, 75, 'dardargnan'),
(16, 'Roucool', 40, 45, 40, 35, 35, 56, 'roucool'),
(17, 'Roucoups', 63, 60, 55, 50, 50, 71, 'roucoups'),
(18, 'Roucarnage', 83, 80, 75, 70, 70, 91, 'roucarnage'),
(19, 'Rattata', 30, 56, 35, 25, 35, 72, 'rattata'),
(20, 'Rattatac', 55, 81, 60, 50, 70, 97, 'rattatac'),
(21, 'Piafabec', 40, 60, 30, 31, 31, 70, 'piafabec'),
(22, 'Rapasdepic', 65, 90, 65, 61, 61, 100, 'rapasdepic'),
(23, 'Abo', 35, 60, 44, 40, 54, 55, 'abo'),
(24, 'Arbok', 60, 85, 69, 65, 79, 80, 'arbok'),
(25, 'Pikachu', 35, 55, 30, 50, 40, 90, 'pikachu'),
(26, 'Raichu', 60, 90, 55, 90, 80, 100, 'raichu'),
(27, 'Sabelette', 50, 75, 85, 20, 30, 40, 'sabelette'),
(28, 'Sablaireau', 75, 100, 110, 45, 55, 65, 'sablaireau'),
(29, 'Nidoran F', 55, 47, 52, 40, 40, 41, 'nidoran-f'),
(30, 'Nidorina', 70, 62, 67, 55, 55, 56, 'nidorina'),
(31, 'Nidoqueen', 90, 82, 87, 75, 85, 76, 'nidoqueen'),
(32, 'Nidoran M', 46, 57, 40, 40, 40, 50, 'nidoran-m'),
(33, 'Nidorino', 61, 72, 57, 55, 55, 65, 'nidorino'),
(34, 'Nidoking', 81, 92, 77, 85, 75, 85, 'nidoking'),
(35, 'Melofee', 70, 45, 48, 60, 65, 35, 'melofee'),
(36, 'Melodelfe', 95, 70, 73, 85, 90, 60, 'melodelfe'),
(37, 'Goupix', 38, 41, 40, 50, 65, 65, 'goupix'),
(38, 'Feunard', 73, 76, 75, 81, 100, 100, 'feunard'),
(39, 'Rondoudou', 115, 45, 20, 45, 25, 20, 'rondoudou'),
(40, 'Grodoudou', 140, 70, 45, 75, 50, 45, 'grodoudou'),
(41, 'Nosferapti', 40, 45, 35, 30, 40, 55, 'nosferapti'),
(42, 'Nosferalto', 75, 80, 70, 65, 75, 90, 'nosferalto'),
(43, 'Mystherbe', 45, 50, 55, 75, 65, 30, 'mystherbe'),
(44, 'Ortide', 60, 65, 70, 85, 75, 40, 'ortide'),
(45, 'Rafflesia', 75, 80, 85, 100, 90, 50, 'rafflesia'),
(46, 'Paras', 35, 70, 55, 45, 55, 25, 'paras'),
(47, 'Parasect', 60, 95, 80, 60, 80, 30, 'parasect'),
(48, 'Mimitoss', 60, 55, 50, 40, 55, 45, 'mimitoss'),
(49, 'Aeromite', 70, 65, 60, 90, 75, 90, 'aeromite'),
(50, 'Taupiqueur', 10, 55, 25, 35, 45, 95, 'taupiqueur'),
(51, 'Triopikeur', 35, 80, 50, 50, 70, 120, 'triopikeur'),
(52, 'Miaouss', 40, 45, 35, 40, 40, 90, 'miaouss'),
(53, 'Persian', 65, 70, 60, 65, 65, 115, 'persian'),
(54, 'Psykokwak', 50, 52, 48, 65, 50, 55, 'psykokwak'),
(55, 'Akwakwak', 80, 82, 78, 95, 80, 85, 'akwakwak'),
(56, 'Ferosinge', 40, 80, 35, 35, 45, 70, 'ferosinge'),
(57, 'Colossinge', 65, 105, 60, 60, 70, 95, 'colossinge'),
(58, 'Caninos', 55, 70, 45, 70, 50, 60, 'caninos'),
(59, 'Arcanin', 90, 110, 80, 100, 80, 95, 'arcanin'),
(60, 'Ptitard', 40, 50, 40, 40, 40, 90, 'ptitard'),
(61, 'Tetarte', 65, 65, 65, 50, 50, 90, 'tetarte'),
(62, 'Tartard', 90, 85, 95, 70, 90, 70, 'tartard'),
(63, 'Abra', 25, 20, 15, 105, 55, 90, 'abra'),
(64, 'Kadabra', 40, 35, 30, 120, 70, 105, 'kadabra'),
(65, 'Alakazam', 55, 50, 45, 135, 85, 120, 'alakazam'),
(66, 'Machoc', 70, 80, 50, 35, 35, 35, 'machoc'),
(67, 'Machopeur', 80, 100, 70, 50, 60, 45, 'machopeur'),
(68, 'Mackogneur', 90, 130, 80, 65, 85, 55, 'mackogneur'),
(69, 'Chetiflor', 50, 75, 35, 70, 30, 40, 'chetiflor'),
(70, 'Boustiflor', 65, 90, 50, 85, 45, 55, 'boustiflor'),
(71, 'Empiflor', 80, 105, 65, 100, 60, 70, 'empiflor'),
(72, 'Tentacool', 40, 40, 35, 50, 100, 70, 'tentacool'),
(73, 'Tentacruel', 80, 70, 65, 80, 120, 100, 'tentacruel'),
(74, 'Racaillou', 40, 80, 100, 30, 30, 20, 'racaillou'),
(75, 'Gravalanch', 55, 95, 115, 45, 45, 35, 'gravalanch'),
(76, 'Grolem', 80, 110, 130, 55, 65, 45, 'grolem'),
(77, 'Ponyta', 50, 85, 55, 65, 65, 90, 'ponyta'),
(78, 'Galopa', 65, 100, 70, 80, 80, 105, 'galopa'),
(79, 'Ramoloss', 90, 65, 65, 40, 40, 15, 'ramoloss'),
(80, 'Flagadoss', 95, 75, 110, 100, 80, 30, 'flagadoss'),
(81, 'Magneti', 25, 35, 70, 95, 55, 45, 'magneti'),
(82, 'Magneton', 50, 60, 95, 120, 70, 70, 'magneton'),
(83, 'Canarticho', 52, 65, 55, 58, 62, 60, 'canarticho'),
(84, 'Doduo', 35, 85, 45, 35, 35, 75, 'doduo'),
(85, 'Dodrio', 60, 110, 70, 60, 60, 100, 'dodrio'),
(86, 'Otaria', 65, 45, 55, 45, 70, 45, 'otaria'),
(87, 'Lamantine', 90, 70, 80, 70, 95, 70, 'lamantine'),
(88, 'Tadmorv', 80, 80, 50, 40, 50, 25, 'tadmorv'),
(89, 'Grotadmorv', 105, 105, 75, 65, 100, 50, 'grotadmorv'),
(90, 'Kokiyas', 30, 65, 100, 45, 25, 40, 'kokiyas'),
(91, 'Crustabri', 50, 95, 180, 85, 45, 70, 'crustabri'),
(92, 'Fantominus', 30, 35, 30, 100, 35, 80, 'fantominus'),
(93, 'Spectrum', 45, 50, 45, 115, 55, 95, 'spectrum'),
(94, 'Ectoplasma', 60, 65, 60, 130, 75, 110, 'ectoplasma'),
(95, 'Onix', 35, 45, 160, 30, 45, 70, 'onix'),
(96, 'Soporifik', 60, 48, 45, 43, 90, 42, 'soporifik'),
(97, 'Hypnomade', 85, 73, 70, 73, 115, 67, 'hypnomade'),
(98, 'Krabby', 30, 105, 90, 25, 25, 50, 'krabby'),
(99, 'Krabboss', 55, 130, 115, 50, 50, 75, 'krabboss'),
(100, 'Voltorbe', 40, 30, 50, 55, 55, 100, 'voltorbe'),
(101, 'Electrode', 60, 50, 70, 80, 80, 140, 'electrode'),
(102, 'Noeunoeuf', 60, 40, 80, 60, 45, 40, 'noeufnoeuf'),
(103, 'Noadkoko', 95, 95, 85, 125, 65, 55, 'noadkoko'),
(104, 'Osselait', 50, 50, 95, 40, 50, 35, 'osselait'),
(105, 'Ossatueur', 60, 80, 110, 50, 80, 45, 'ossatueur'),
(106, 'Kicklee', 50, 120, 53, 35, 110, 87, 'kicklee'),
(107, 'Tygnon', 50, 105, 79, 35, 110, 76, 'tygnon'),
(108, 'Excelangue', 90, 55, 75, 60, 75, 30, 'excelangue'),
(109, 'Smogo', 40, 65, 95, 60, 45, 35, 'smogo'),
(110, 'Smogogo', 65, 90, 120, 85, 70, 60, 'smogogo'),
(111, 'Rhinocorne', 80, 85, 95, 30, 30, 25, 'rhinocorne'),
(112, 'Rhinoferos', 105, 130, 120, 45, 45, 40, 'rhinoferos'),
(113, 'Leveinard', 250, 5, 5, 35, 105, 50, 'leveinard'),
(114, 'Saquedeneu', 65, 55, 115, 100, 40, 60, 'saquedeneu'),
(115, 'Kangourex', 105, 95, 80, 40, 80, 90, 'kangourex'),
(116, 'Hypotrempe', 30, 40, 70, 70, 25, 60, 'hypotrempe'),
(117, 'Hypocean', 55, 65, 95, 95, 45, 85, 'hypocean'),
(118, 'Poissirene', 45, 67, 60, 35, 50, 63, 'poissirene'),
(119, 'Poissoroy', 80, 92, 65, 65, 80, 68, 'poissoroy'),
(120, 'Stari', 30, 45, 55, 70, 55, 85, 'stari'),
(121, 'Staross', 60, 75, 85, 100, 85, 115, 'staross'),
(122, 'M.Mime', 40, 45, 65, 100, 120, 90, 'm-mime'),
(123, 'Insecateur', 70, 110, 80, 55, 80, 105, 'insecateur'),
(124, 'Lippoutou', 65, 50, 35, 115, 95, 95, 'lippoutou'),
(125, 'Elektek', 65, 83, 57, 95, 85, 105, 'elektek'),
(126, 'Magmar', 65, 95, 57, 100, 85, 93, 'magmar'),
(127, 'Scarabrute', 65, 125, 100, 55, 70, 85, 'scarabrute'),
(128, 'Tauros', 75, 100, 95, 40, 70, 110, 'tauros'),
(129, 'Magicarpe', 20, 10, 55, 15, 20, 80, 'magicarpe'),
(130, 'Leviator', 95, 125, 79, 60, 100, 81, 'leviator'),
(131, 'Lokhlass', 130, 85, 80, 85, 95, 60, 'lokhlass'),
(132, 'Metamorph', 48, 48, 48, 48, 48, 48, 'metamorph'),
(133, 'Evoli', 55, 55, 50, 45, 65, 55, 'evoli'),
(134, 'Aquali', 130, 65, 60, 110, 95, 65, 'aquali'),
(135, 'Voltali', 65, 65, 60, 110, 95, 130, 'voltali'),
(136, 'Pyroli', 65, 130, 60, 95, 110, 65, 'pyroli'),
(137, 'Porygon', 65, 60, 70, 85, 75, 40, 'porygon'),
(138, 'Amonita', 35, 40, 100, 90, 55, 35, 'amonita'),
(139, 'Amonistar', 70, 60, 125, 115, 70, 55, 'amonistar'),
(140, 'Kabuto', 30, 80, 90, 55, 45, 55, 'kabuto'),
(141, 'Kabutops', 60, 115, 105, 65, 70, 80, 'kabutops'),
(142, 'Ptera', 80, 105, 65, 60, 75, 130, 'ptera'),
(143, 'Ronflex', 160, 110, 65, 65, 110, 30, 'ronflex'),
(144, 'Artikodin', 90, 85, 100, 95, 125, 85, 'artikodin'),
(145, 'Electhor', 90, 90, 85, 125, 90, 100, 'electhor'),
(146, 'Sulfura', 90, 100, 90, 125, 85, 90, 'sulfura'),
(147, 'Minidraco', 41, 64, 45, 50, 50, 50, 'minidraco'),
(148, 'Draco', 61, 84, 65, 70, 70, 70, 'draco'),
(149, 'Dracolosse', 91, 134, 95, 100, 100, 80, 'dracolosse'),
(150, 'Mewtwo', 106, 110, 90, 154, 90, 130, 'mewtwo'),
(151, 'Mew', 100, 100, 100, 100, 100, 100, 'mew');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`, `color`, `slug`) VALUES
(1, 'Acier', '54889D', 'acier'),
(2, 'Combat', 'CE4068', 'combat'),
(3, 'Dragon', '086DBF', 'dragon'),
(4, 'Eau', '579EDA', 'eau'),
(5, 'Électrik', 'F3D442', 'electrik'),
(6, 'Feu', 'FF9F53', 'feu'),
(7, 'Glace', '79D1C5', 'glace'),
(8, 'Insecte', '94C22E', 'insecte'),
(9, 'Normal', '91999F', 'normal'),
(10, 'Plante', '5FBA53', 'plante'),
(11, 'Poison', 'A866CA', 'poison'),
(12, 'Psy', 'F96F76', 'psy'),
(13, 'Roche', 'C6B78C', 'roche'),
(14, 'Sol', 'D77949', 'sol'),
(15, 'Spectre', '586AB4', 'spectre'),
(16, 'Ténèbres', '5B5568', 'tenebres'),
(17, 'Vol', '90A9DF', 'vol');

-- --------------------------------------------------------

--
-- Structure de la table `type_pokemon`
--

CREATE TABLE `type_pokemon` (
  `type_id` int NOT NULL,
  `pokemon_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_pokemon`
--

INSERT INTO `type_pokemon` (`type_id`, `pokemon_id`) VALUES
(1, 81),
(1, 82),
(2, 56),
(2, 57),
(2, 62),
(2, 66),
(2, 67),
(2, 68),
(2, 106),
(2, 107),
(3, 147),
(3, 148),
(3, 149),
(4, 7),
(4, 8),
(4, 9),
(4, 54),
(4, 55),
(4, 60),
(4, 61),
(4, 62),
(4, 72),
(4, 73),
(4, 79),
(4, 80),
(4, 86),
(4, 87),
(4, 90),
(4, 91),
(4, 98),
(4, 99),
(4, 116),
(4, 117),
(4, 118),
(4, 119),
(4, 120),
(4, 121),
(4, 129),
(4, 130),
(4, 131),
(4, 134),
(4, 138),
(4, 139),
(4, 140),
(4, 141),
(5, 25),
(5, 26),
(5, 81),
(5, 82),
(5, 100),
(5, 101),
(5, 125),
(5, 135),
(5, 145),
(6, 4),
(6, 5),
(6, 6),
(6, 37),
(6, 38),
(6, 58),
(6, 59),
(6, 77),
(6, 78),
(6, 126),
(6, 136),
(6, 146),
(7, 87),
(7, 91),
(7, 124),
(7, 131),
(7, 144),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 123),
(8, 127),
(9, 16),
(9, 17),
(9, 18),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 35),
(9, 36),
(9, 39),
(9, 40),
(9, 52),
(9, 53),
(9, 83),
(9, 84),
(9, 85),
(9, 108),
(9, 113),
(9, 115),
(9, 128),
(9, 132),
(9, 133),
(9, 137),
(9, 143),
(10, 1),
(10, 2),
(10, 3),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 69),
(10, 70),
(10, 71),
(10, 102),
(10, 103),
(10, 114),
(11, 1),
(11, 2),
(11, 3),
(11, 13),
(11, 14),
(11, 15),
(11, 23),
(11, 24),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(11, 33),
(11, 34),
(11, 41),
(11, 42),
(11, 43),
(11, 44),
(11, 45),
(11, 48),
(11, 49),
(11, 69),
(11, 70),
(11, 71),
(11, 72),
(11, 73),
(11, 88),
(11, 89),
(11, 92),
(11, 93),
(11, 94),
(11, 109),
(11, 110),
(12, 63),
(12, 64),
(12, 65),
(12, 79),
(12, 80),
(12, 96),
(12, 97),
(12, 102),
(12, 103),
(12, 121),
(12, 122),
(12, 124),
(12, 150),
(12, 151),
(13, 74),
(13, 75),
(13, 76),
(13, 95),
(13, 111),
(13, 112),
(13, 138),
(13, 139),
(13, 140),
(13, 141),
(13, 142),
(14, 27),
(14, 28),
(14, 31),
(14, 34),
(14, 50),
(14, 51),
(14, 74),
(14, 75),
(14, 76),
(14, 95),
(14, 104),
(14, 105),
(14, 111),
(14, 112),
(15, 92),
(15, 93),
(15, 94),
(17, 6),
(17, 12),
(17, 16),
(17, 17),
(17, 18),
(17, 21),
(17, 22),
(17, 41),
(17, 42),
(17, 83),
(17, 84),
(17, 85),
(17, 123),
(17, 130),
(17, 142),
(17, 144),
(17, 145),
(17, 146),
(17, 149);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_pokemon`
--
ALTER TABLE `type_pokemon`
  ADD PRIMARY KEY (`type_id`,`pokemon_id`),
  ADD KEY `IDX_4AFDFF06C54C8C93` (`type_id`),
  ADD KEY `IDX_4AFDFF062FE71C3E` (`pokemon_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1360;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `type_pokemon`
--
ALTER TABLE `type_pokemon`
  ADD CONSTRAINT `FK_4AFDFF062FE71C3E` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4AFDFF06C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE;
COMMIT;
