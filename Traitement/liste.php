
<?php
// Vérification des paramètres d'accès au fichier liste.php
if(isset($_GET['go']) || isset($_GET['mod_modulegroupcode']) || isset($_GET['confirme'])) {
	// connexion à la base de données
	try {
		$bdd = new PDO('mysql:host=localhost;dbname=cads', 'root', '');
	} catch(Exception $e) {
		exit('Impossible de se connecter à la base de données.');
	}
	
	$json = array();
	
	if(isset($_GET['go'])) {
		// requête qui récupère les localités un
		$requete = "SELECT * FROM modules ORDER BY mod_modulegroupcode ASC";
		// exécution de la requête
		$resultat = $bdd->query($requete) or die(print_r($bdd->errorInfo()));
		// Création de la liste
		while($donnees = $resultat->fetch(PDO::FETCH_ASSOC)) {
			// je remplis un tableau et mettant l'id en index
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_modulegroupcode"]);
		}
	}
	elseif(isset($_GET['mod_modulegroupcode'])) {
		// requête qui récupère les localités un
		$requete = "SELECT * FROM modules WHERE idm = '".$_GET['mod_modulegroupcode']."' ORDER BY mod_modulegroupcode ASC";
		// exécution de la requête
		$resultat = $bdd->query($requete) or die(print_r($bdd->errorInfo()));
		// Création de la liste
		while($donnees = $resultat->fetch(PDO::FETCH_ASSOC)) {
			// je remplis un tableau et mettant l'id en index
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_modulegroupcode"]);
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_modulecode"]);
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_modulename"]);
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_modulegrouporder"]);
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_moduleorder"]);
			$json[$donnees["idm"]][] = utf8_encode($donnees["mod_modulepagename"]);
		}                
	}
	elseif(isset($_GET['confirme'])) {
		
			$json[][] = utf8_encode($_GET['confirme']);
		//}
	}
	 // envoi du résultat au success        
	echo json_encode($json);
}

?>