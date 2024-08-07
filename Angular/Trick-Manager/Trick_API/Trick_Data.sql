CREATE DATABASE skateboarding;

USE skateboarding;

CREATE TABLE `skate_tricks` (
  `trick_id` int(255) NOT NULL,
  `trick_name` varchar(255) NOT NULL,
  `trick_type` varchar(255) NOT NULL,
  `trick_completed` boolean NOT NULL DEFAULT FALSE,
  `trick_video` varchar(255)
);

INSERT INTO `skate_tricks` (`trick_id`, `trick_name`, `trick_type`) VALUES
(1, 'Backside 180', 'Basic Tricks'),
(2, 'Backside 360', 'Basic Tricks'),
(3, 'Backside Caballerial', 'Basic Tricks'),
(4, 'Backside Half Cab', 'Basic Tricks'),
(5, 'Fakie Ollie', 'Basic Tricks'),
(6, 'Frontside 180', 'Basic Tricks'),
(7, 'Frontside 360', 'Basic Tricks'),
(8, 'Frontside Caballerial', 'Basic Tricks'),
(9, 'Frontside Half Cab', 'Basic Tricks'),
(10, 'Kickturn', 'Basic Tricks'),
(11, 'Nollie', 'Basic Tricks'),
(12, 'Nollie Backside 180', 'Basic Tricks'),
(13, 'Nollie Backside 360', 'Basic Tricks'),
(14, 'Nollie Frontside 180', 'Basic Tricks'),
(15, 'Nollie Frontside 360', 'Basic Tricks'),
(16, 'Ollie', 'Basic Tricks'),
(17, 'Ollie North', 'Basic Tricks'),
(18, 'Ollie South', 'Basic Tricks'),
(19, 'Powerslide', 'Basic Tricks'),
(20, 'Switch Backside 180', 'Basic Tricks'),
(21, 'Switch Backside 360', 'Basic Tricks'),
(22, 'Switch Frontside 180', 'Basic Tricks'),
(23, 'Switch Frontside 360', 'Basic Tricks'),
(24, 'Switch Ollie', 'Basic Tricks'),
(25, 'Tic-Tac', 'Basic Tricks'),
(26, '360 Flip', 'Flip, Shove-It Tricks'),
(27, '360 Hardflip', 'Flip, Shove-It Tricks'),
(28, '360 Ollie Heelflip', 'Flip, Shove-It Tricks'),
(29, '360 Ollie Kickflip', 'Flip, Shove-It Tricks'),
(30, '360 Pop Shove-it', 'Flip, Shove-It Tricks'),
(31, '360 Shuvit', 'Flip, Shove-It Tricks'),
(32, '540 Flip', 'Flip, Shove-It Tricks'),
(33, '720 Flip', 'Flip, Shove-It Tricks'),
(34, 'Alpha Flip', 'Flip, Shove-It Tricks'),
(35, 'Anti Casper Flip', 'Flip, Shove-It Tricks'),
(36, 'Backside Bigspin', 'Flip, Shove-It Tricks'),
(37, 'Backside Flip', 'Flip, Shove-It Tricks'),
(38, 'Backside Half Cab Heelflip', 'Flip, Shove-It Tricks'),
(39, 'Backside Half Cab Kickflip', 'Flip, Shove-It Tricks'),
(40, 'Backside Heelflip', 'Flip, Shove-It Tricks'),
(41, 'Backside Kickflip', 'Flip, Shove-It Tricks'),
(42, 'Big Heelflip', 'Flip, Shove-It Tricks'),
(43, 'Bigflip', 'Flip, Shove-It Tricks'),
(44, 'Biggerflip', 'Flip, Shove-It Tricks'),
(45, 'Biggerspin', 'Flip, Shove-It Tricks'),
(46, 'Bigspin', 'Flip, Shove-It Tricks'),
(47, 'Bubble Flip', 'Flip, Shove-It Tricks'),
(48, 'Bullflip', 'Flip, Shove-It Tricks'),
(49, 'Caballerial Flip', 'Flip, Shove-It Tricks'),
(50, 'Camel Flip', 'Flip, Shove-It Tricks'),
(51, 'Casper Flip', 'Flip, Shove-It Tricks'),
(52, 'Daydream Flip', 'Flip, Shove-It Tricks'),
(53, 'De Comply', 'Flip, Shove-It Tricks'),
(54, 'Disco Flip', 'Flip, Shove-It Tricks'),
(55, 'Double Heelflip', 'Flip, Shove-It Tricks'),
(56, 'Double Kickflip', 'Flip, Shove-It Tricks'),
(57, 'Dragon Flip', 'Flip, Shove-It Tricks'),
(58, 'Fakie 360 Flip', 'Flip, Shove-It Tricks'),
(59, 'Fakie 360 Hardflip', 'Flip, Shove-It Tricks'),
(60, 'Fakie Backside Bigspin', 'Flip, Shove-It Tricks'),
(61, 'Fakie Backside Pop Shove-it', 'Flip, Shove-It Tricks'),
(62, 'Fakie Frontside Bigspin', 'Flip, Shove-It Tricks'),
(63, 'Fakie Frontside Pop Shove-it', 'Flip, Shove-It Tricks'),
(64, 'Fakie Hardflip', 'Flip, Shove-It Tricks'),
(65, 'Fakie Heelflip', 'Flip, Shove-It Tricks'),
(66, 'Fakie Inward Heelflip', 'Flip, Shove-It Tricks'),
(67, 'Fakie Kickflip', 'Flip, Shove-It Tricks'),
(68, 'Fakie Varial Heelflip', 'Flip, Shove-It Tricks'),
(69, 'Fakie Varial Kickflip', 'Flip, Shove-It Tricks'),
(70, 'Feather Flip', 'Flip, Shove-It Tricks'),
(71, 'Fingerflip', 'Flip, Shove-It Tricks'),
(72, 'Forward Flip', 'Flip, Shove-It Tricks'),
(73, 'Front Foot Impossible', 'Flip, Shove-It Tricks'),
(74, 'Frontside 360 Pop Shove it', 'Flip, Shove-It Tricks'),
(75, 'Frontside Bigspin', 'Flip, Shove-It Tricks'),
(76, 'Frontside Flip', 'Flip, Shove-It Tricks'),
(77, 'Frontside Half Cab Heelflip', 'Flip, Shove-It Tricks'),
(78, 'Frontside Half Cab Kickflip', 'Flip, Shove-It Tricks'),
(79, 'Frontside Heelflip', 'Flip, Shove-It Tricks'),
(80, 'Frontside Kickflip', 'Flip, Shove-It Tricks'),
(81, 'Frontside Pop Shove-it', 'Flip, Shove-It Tricks'),
(82, 'Gazelle Flip', 'Flip, Shove-It Tricks'),
(83, 'Gazelle Spin', 'Flip, Shove-It Tricks'),
(84, 'Ghetto Bird', 'Flip, Shove-It Tricks'),
(85, 'Gingersnap', 'Flip, Shove-It Tricks'),
(86, 'Grape Flip', 'Flip, Shove-It Tricks'),
(87, 'Half Cab', 'Flip, Shove-It Tricks'),
(88, 'Handstand Flip', 'Flip, Shove-It Tricks'),
(89, 'Hardflip', 'Flip, Shove-It Tricks'),
(90, 'Haslam Flip', 'Flip, Shove-It Tricks'),
(91, 'Heelflip', 'Flip, Shove-It Tricks'),
(92, 'Hospital Flip', 'Flip, Shove-It Tricks'),
(93, 'Illusion Flip', 'Flip, Shove-It Tricks'),
(94, 'Impossible', 'Flip, Shove-It Tricks'),
(95, 'Inward Heelflip', 'Flip, Shove-It Tricks'),
(96, 'Jesus Flip', 'Flip, Shove-It Tricks'),
(97, 'Kickback Flip', 'Flip, Shove-It Tricks'),
(98, 'Kickflip', 'Flip, Shove-It Tricks'),
(99, 'Kiwi Flip', 'Flip, Shove-It Tricks'),
(100, 'Laser Flip', 'Flip, Shove-It Tricks'),
(101, 'Late Kickflip', 'Flip, Shove-It Tricks'),
(102, 'Nerd Flip', 'Flip, Shove-It Tricks'),
(103, 'Nightmare Flip', 'Flip, Shove-It Tricks'),
(104, 'No Comply', 'Flip, Shove-It Tricks'),
(105, 'Nollie 360 Flip', 'Flip, Shove-It Tricks'),
(106, 'Nollie 360 Hardflip', 'Flip, Shove-It Tricks'),
(107, 'Nollie 360 Pop Shove-it', 'Flip, Shove-It Tricks'),
(108, 'Nollie Backside Bigspin', 'Flip, Shove-It Tricks'),
(109, 'Nollie Backside Heelflip', 'Flip, Shove-It Tricks'),
(110, 'Nollie Backside Kickflip', 'Flip, Shove-It Tricks'),
(111, 'Nollie Backside Pop Shove-it', 'Flip, Shove-It Tricks'),
(112, 'Nollie Frontside Bigspin', 'Flip, Shove-It Tricks'),
(113, 'Nollie Frontside Heelflip', 'Flip, Shove-It Tricks'),
(114, 'Nollie Frontside Kickflip', 'Flip, Shove-It Tricks'),
(115, 'Nollie Frontside Pop Shove-it', 'Flip, Shove-It Tricks'),
(116, 'Nollie Hardflip', 'Flip, Shove-It Tricks'),
(117, 'Nollie Heelflip', 'Flip, Shove-It Tricks'),
(118, 'Nollie Impossible', 'Flip, Shove-It Tricks'),
(119, 'Nollie Inward Heelflip', 'Flip, Shove-It Tricks'),
(120, 'Nollie Kickflip', 'Flip, Shove-It Tricks'),
(121, 'Nollie Laser Flip', 'Flip, Shove-It Tricks'),
(122, 'Nollie Varial Heelflip', 'Flip, Shove-It Tricks'),
(123, 'Nollie Varial Kickflip', 'Flip, Shove-It Tricks'),
(124, 'Ollie North', 'Flip, Shove-It Tricks'),
(125, 'Ollie South', 'Flip, Shove-It Tricks'),
(126, 'Orange Flip', 'Flip, Shove-It Tricks'),
(127, 'Plasma Spin', 'Flip, Shove-It Tricks'),
(128, 'Pressure Flip', 'Flip, Shove-It Tricks'),
(129, 'Rail Flip', 'Flip, Shove-It Tricks'),
(130, 'Semi Flip', 'Flip, Shove-It Tricks'),
(131, 'Sex Change', 'Flip, Shove-It Tricks'),
(132, 'Shuvit', 'Flip, Shove-It Tricks'),
(133, 'Sigma Flip', 'Flip, Shove-It Tricks'),
(134, 'Switch 360 Flip', 'Flip, Shove-It Tricks'),
(135, 'Switch 360 Hardflip', 'Flip, Shove-It Tricks'),
(136, 'Switch Backside Bigspin', 'Flip, Shove-It Tricks'),
(137, 'Switch Backside Heelflip', 'Flip, Shove-It Tricks'),
(138, 'Switch Backside Kickflip', 'Flip, Shove-It Tricks'),
(139, 'Switch Backside Pop Shove-it', 'Flip, Shove-It Tricks'),
(140, 'Switch Frontside Bigspin', 'Flip, Shove-It Tricks'),
(141, 'Switch Frontside Heelflip', 'Flip, Shove-It Tricks'),
(142, 'Switch Frontside Kickflip', 'Flip, Shove-It Tricks'),
(143, 'Switch Frontside Pop Shove-it', 'Flip, Shove-It Tricks'),
(144, 'Switch Hardflip', 'Flip, Shove-It Tricks'),
(145, 'Switch Heelflip', 'Flip, Shove-It Tricks'),
(146, 'Switch Inward Heelflip', 'Flip, Shove-It Tricks'),
(147, 'Switch Kickflip', 'Flip, Shove-It Tricks'),
(148, 'Switch Laser Flip', 'Flip, Shove-It Tricks'),
(149, 'Switch Varial Heelflip', 'Flip, Shove-It Tricks'),
(150, 'Switch Varial Kickflip', 'Flip, Shove-It Tricks'),
(151, 'Toeflip', 'Flip, Shove-It Tricks'),
(152, 'Triple Kickflip', 'Flip, Shove-It Tricks'),
(153, 'Underflip', 'Flip, Shove-It Tricks'),
(154, 'Varial Heelflip', 'Flip, Shove-It Tricks'),
(155, 'Varial Kickflip', 'Flip, Shove-It Tricks'),
(156, '50-50 Grind', 'Grind, Slide Tricks'),
(157, 'Backside 5-0', 'Grind, Slide Tricks'),
(158, 'Backside 50-50', 'Grind, Slide Tricks'),
(159, 'Backside Bluntslide', 'Grind, Slide Tricks'),
(160, 'Backside Boardslide', 'Grind, Slide Tricks'),
(161, 'Backside Crooked', 'Grind, Slide Tricks'),
(162, 'Backside Feeble', 'Grind, Slide Tricks'),
(163, 'Backside Lipslide', 'Grind, Slide Tricks'),
(164, 'Backside Noseblunt Slide', 'Grind, Slide Tricks'),
(165, 'Backside Nosegrind', 'Grind, Slide Tricks'),
(166, 'Backside Noseslide', 'Grind, Slide Tricks'),
(167, 'Backside Overcrook', 'Grind, Slide Tricks'),
(168, 'Backside Salad', 'Grind, Slide Tricks'),
(169, 'Backside Smith', 'Grind, Slide Tricks'),
(170, 'Backside Suski', 'Grind, Slide Tricks'),
(171, 'Backside Tailslide', 'Grind, Slide Tricks'),
(172, 'Barley Grind', 'Grind, Slide Tricks'),
(173, 'Bertlemann Slide', 'Grind, Slide Tricks'),
(174, 'Bluntslide', 'Grind, Slide Tricks'),
(175, 'Boardslide', 'Grind, Slide Tricks'),
(176, 'Casper Slide', 'Grind, Slide Tricks'),
(177, 'Crail Slide', 'Grind, Slide Tricks'),
(178, 'Crooked Grind', 'Grind, Slide Tricks'),
(179, 'Darkslide', 'Grind, Slide Tricks'),
(180, 'Feeble Grind', 'Grind, Slide Tricks'),
(181, 'Frontside 5-0', 'Grind, Slide Tricks'),
(182, 'Frontside 50-50', 'Grind, Slide Tricks'),
(183, 'Frontside Bluntslide', 'Grind, Slide Tricks'),
(184, 'Frontside Boardslide', 'Grind, Slide Tricks'),
(185, 'Frontside Crooked', 'Grind, Slide Tricks'),
(186, 'Frontside Feeble', 'Grind, Slide Tricks'),
(187, 'Frontside Lipslide', 'Grind, Slide Tricks'),
(188, 'Frontside Noseblunt Slide', 'Grind, Slide Tricks'),
(189, 'Frontside Nosegrind', 'Grind, Slide Tricks'),
(190, 'Frontside Noseslide', 'Grind, Slide Tricks'),
(191, 'Frontside Overcrook', 'Grind, Slide Tricks'),
(192, 'Frontside Salad', 'Grind, Slide Tricks'),
(193, 'Frontside Smith', 'Grind, Slide Tricks'),
(194, 'Frontside Suski', 'Grind, Slide Tricks'),
(195, 'Frontside Tailslide', 'Grind, Slide Tricks'),
(196, 'Hurricane', 'Grind, Slide Tricks'),
(197, 'Hurricane Grind', 'Grind, Slide Tricks'),
(198, 'Layback Grind', 'Grind, Slide Tricks'),
(199, 'Lipslide', 'Grind, Slide Tricks'),
(200, 'Nail Slide', 'Grind, Slide Tricks'),
(201, 'Noseblunt Slide', 'Grind, Slide Tricks'),
(202, 'Nosegrind', 'Grind, Slide Tricks'),
(203, 'Noseslide', 'Grind, Slide Tricks'),
(204, 'Overcrook Grind', 'Grind, Slide Tricks'),
(205, 'Overturn', 'Grind, Slide Tricks'),
(206, 'Primo Grind', 'Grind, Slide Tricks'),
(207, 'Salad Grind', 'Grind, Slide Tricks'),
(208, 'Slash Grind', 'Grind, Slide Tricks'),
(209, 'Smith Grind', 'Grind, Slide Tricks'),
(210, 'Suski Grind', 'Grind, Slide Tricks'),
(211, 'Tailblock Grind', 'Grind, Slide Tricks'),
(212, 'Tailslide', 'Grind, Slide Tricks'),
(213, 'Willy Grind', 'Grind, Slide Tricks'),
(214, '540', 'Air, Grab, Bowl, Ramp Tricks'),
(215, '720', 'Air, Grab, Bowl, Ramp Tricks'),
(216, '900', 'Air, Grab, Bowl, Ramp Tricks'),
(217, 'Airwalk', 'Air, Grab, Bowl, Ramp Tricks'),
(218, 'Axle Drop-In', 'Air, Grab, Bowl, Ramp Tricks'),
(219, 'Backside Axle Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(220, 'Backside Crooked Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(221, 'Backside Disaster', 'Air, Grab, Bowl, Ramp Tricks'),
(222, 'Backside Feeble Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(223, 'Backside Hurricane Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(224, 'Backside Pivot Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(225, 'Backside Rock \'n\' roll', 'Air, Grab, Bowl, Ramp Tricks'),
(226, 'Backside Smith Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(227, 'Backside Tail Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(228, 'Benihana', 'Air, Grab, Bowl, Ramp Tricks'),
(229, 'Blunt Stall 180 Out', 'Air, Grab, Bowl, Ramp Tricks'),
(230, 'Blunt Stall Pull Back', 'Air, Grab, Bowl, Ramp Tricks'),
(231, 'Blunt Stall to Fakie', 'Air, Grab, Bowl, Ramp Tricks'),
(232, 'Body Jar', 'Air, Grab, Bowl, Ramp Tricks'),
(233, 'Cannonball', 'Air, Grab, Bowl, Ramp Tricks'),
(234, 'Christ Air', 'Air, Grab, Bowl, Ramp Tricks'),
(235, 'Crail Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(236, 'Creeper', 'Air, Grab, Bowl, Ramp Tricks'),
(237, 'Crossbone', 'Air, Grab, Bowl, Ramp Tricks'),
(238, 'Delmar Indy', 'Air, Grab, Bowl, Ramp Tricks'),
(239, 'Double Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(240, 'Drop-In', 'Air, Grab, Bowl, Ramp Tricks'),
(241, 'Fakie Noseblunt Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(242, 'Fakie Rock', 'Air, Grab, Bowl, Ramp Tricks'),
(243, 'Fakie Tail Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(244, 'Frigid Air', 'Air, Grab, Bowl, Ramp Tricks'),
(245, 'Frontside Air', 'Air, Grab, Bowl, Ramp Tricks'),
(246, 'Frontside Axle Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(247, 'Frontside Crooked Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(248, 'Frontside Disaster', 'Air, Grab, Bowl, Ramp Tricks'),
(249, 'Frontside Feeble Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(250, 'Frontside Hurricane Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(251, 'Frontside Nose Pick', 'Air, Grab, Bowl, Ramp Tricks'),
(252, 'Frontside Noseblunt Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(253, 'Frontside Pivot Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(254, 'Frontside Rock \'n\' roll', 'Air, Grab, Bowl, Ramp Tricks'),
(255, 'Frontside Smith Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(256, 'Frontside Sugarcane Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(257, 'Frontside Sweeper', 'Air, Grab, Bowl, Ramp Tricks'),
(258, 'Frontside Tail Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(259, 'Grosman Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(260, 'Helipop', 'Air, Grab, Bowl, Ramp Tricks'),
(261, 'Indy', 'Air, Grab, Bowl, Ramp Tricks'),
(262, 'Indy Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(263, 'Invert', 'Air, Grab, Bowl, Ramp Tricks'),
(264, 'Japan Air', 'Air, Grab, Bowl, Ramp Tricks'),
(265, 'Judo Air', 'Air, Grab, Bowl, Ramp Tricks'),
(266, 'Lien Air', 'Air, Grab, Bowl, Ramp Tricks'),
(267, 'Madonna', 'Air, Grab, Bowl, Ramp Tricks'),
(268, 'McTwist', 'Air, Grab, Bowl, Ramp Tricks'),
(269, 'Melancholy Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(270, 'Melon', 'Air, Grab, Bowl, Ramp Tricks'),
(271, 'Method Air', 'Air, Grab, Bowl, Ramp Tricks'),
(272, 'Mute Air', 'Air, Grab, Bowl, Ramp Tricks'),
(273, 'Nose Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(274, 'Nose Pick', 'Air, Grab, Bowl, Ramp Tricks'),
(275, 'Nose Stall', 'Air, Grab, Bowl, Ramp Tricks'),
(276, 'Nosebone', 'Air, Grab, Bowl, Ramp Tricks'),
(277, 'Nuclear Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(278, 'Riverdance', 'Air, Grab, Bowl, Ramp Tricks'),
(279, 'Roastbeef Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(280, 'Rock to Fakie', 'Air, Grab, Bowl, Ramp Tricks'),
(281, 'Rocket Air', 'Air, Grab, Bowl, Ramp Tricks'),
(282, 'Sacktap', 'Air, Grab, Bowl, Ramp Tricks'),
(283, 'Sal Flip', 'Air, Grab, Bowl, Ramp Tricks'),
(284, 'Saran Wrap', 'Air, Grab, Bowl, Ramp Tricks'),
(285, 'Seatbelt Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(286, 'Slob Air', 'Air, Grab, Bowl, Ramp Tricks'),
(287, 'Stalefish Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(288, 'Stallfish', 'Air, Grab, Bowl, Ramp Tricks'),
(289, 'Stiffy', 'Air, Grab, Bowl, Ramp Tricks'),
(290, 'Superman Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(291, 'Tail Grab', 'Air, Grab, Bowl, Ramp Tricks'),
(292, 'Tailbone', 'Air, Grab, Bowl, Ramp Tricks'),
(293, 'Tuck Knee', 'Air, Grab, Bowl, Ramp Tricks'),
(294, 'Varial', 'Air, Grab, Bowl, Ramp Tricks'),
(295, 'Bean Plant', 'Footplant Tricks'),
(296, 'Egg Plant', 'Footplant Tricks'),
(297, 'Fastplant', 'Footplant Tricks'),
(298, 'Gymnast Plant', 'Footplant Tricks'),
(299, 'Ho-Ho', 'Footplant Tricks'),
(300, 'Layback Air', 'Footplant Tricks'),
(301, 'Miller Flip', 'Footplant Tricks'),
(302, 'Power Ollie', 'Footplant Tricks'),
(303, 'Sad Plant', 'Footplant Tricks'),
(304, 'Staple Gun', 'Footplant Tricks'),
(305, 'Texas Plant', 'Footplant Tricks'),
(306, 'Texas Two-Step', 'Footplant Tricks'),
(307, 'Manual', 'Balance Tricks'),
(308, 'Nose Manual', 'Balance Tricks'),
(309, 'One Foot Manual', 'Balance Tricks'),
(310, 'One Wheel Manual', 'Balance Tricks'),
(311, 'Acid Drop', 'Freestyle Tricks'),
(312, 'Alley Oop', 'Freestyle Tricks'),
(313, 'Backside Boneless', 'Freestyle Tricks'),
(314, 'Backside Wallride', 'Freestyle Tricks'),
(315, 'Body Varial', 'Freestyle Tricks'),
(316, 'Boneless', 'Freestyle Tricks'),
(317, 'Caveman', 'Freestyle Tricks'),
(318, 'Coffin', 'Freestyle Tricks'),
(319, 'Daffy', 'Freestyle Tricks'),
(320, 'Firecracker', 'Freestyle Tricks'),
(321, 'Flamingo', 'Freestyle Tricks'),
(322, 'Frontside Boneless', 'Freestyle Tricks'),
(323, 'Frontside Wallride', 'Freestyle Tricks'),
(324, 'Hang Ten', 'Freestyle Tricks'),
(325, 'Hippie Jump', 'Freestyle Tricks'),
(326, 'Pogo', 'Freestyle Tricks'),
(327, 'Primo Stall', 'Freestyle Tricks'),
(328, 'Roll In', 'Freestyle Tricks'),
(329, 'Strawberry Milkshake', 'Freestyle Tricks'),
(330, 'Street Plant', 'Freestyle Tricks'),
(331, 'Wallie', 'Freestyle Tricks');


ALTER TABLE `skate_tricks`
  MODIFY `trick_id` int(255) NOT NULL PRIMARY KEY AUTO_INCREMENT, AUTO_INCREMENT=332;

COMMIT;
