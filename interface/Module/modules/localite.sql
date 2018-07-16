

CREATE TABLE IF NOT EXISTS `localite_deux` (
  `id_localite_deux` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_localite_un` mediumint(5) unsigned NOT NULL,
  `localite_deux` varchar(255) NOT NULL,
  PRIMARY KEY (`id_localite_deux`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;



INSERT INTO `localite_deux` (`id_localite_deux`, `id_localite_un`, `localite_deux`) VALUES
(1, 1, 'ABIDJAN'),
(2, 1, 'DABOU'),
(3, 1, 'BINGERVILLE'),
(4, 2, 'ADZOPE'),
(5, 2, 'ALEPE'),
(6, 2, 'AGBOVILLE'),
(7, 2, 'TIASSALE');



CREATE TABLE IF NOT EXISTS `localite_trois` (
  `id_localite_trois` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_localite_deux` mediumint(5) unsigned NOT NULL,
  `localite_trois` varchar(255) NOT NULL,
  PRIMARY KEY (`id_localite_trois`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

INSERT INTO `localite_trois` (`id_localite_trois`, `id_localite_deux`, `localite_trois`) VALUES
(1, 1, 'COCODY'),
(2, 1, 'ADJAME'),
(3, 1, 'PLATEAU'),
(4, 1, 'YOPOUGON'),
(5, 2, 'LOPOU'),
(6, 2, 'CENTRE VILLE'),
(7, 3, 'FAYA'),
(8, 3, 'EMPT'),
(9, 4, 'ANNEPE'),
(10, 4, 'GRAND-AKOUDZIN');



CREATE TABLE IF NOT EXISTS `localite_un` (
  `id_localite_un` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `localite_un` varchar(255) NOT NULL,
  PRIMARY KEY (`id_localite_un`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;



INSERT INTO `localite_un` (`id_localite_un`, `localite_un`) VALUES
(1, 'LAGUNES'),
(2, 'AGNEBY-TIASSA-ME');

