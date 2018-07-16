<?php 

include ( 'fonction.php' ) ;
//fonction d'estraction du contenu du document

// Initialisation de la variable de message. 
$message = ""; 

// Traitement du formulaire si il y a un fichier envoyé sur le serveur. 

if (isset($_POST["valid"]))
{ 
	// Récupére les informations sur le fichier. 
	//$oFileInfos = $_FILES["fichier"]; 
 
	// nom du fichier. 
	$nom = $_FILES['fichier']['name'];

	// le type MIME.  
	$type_mime = $_FILES['fichier']["type"]; 

	// la taille. 
	$taille = $_FILES['fichier']["size"]; 

	// emplacement du fichier temporaire. 
	$fichier_temporaire = $_FILES['fichier']["tmp_name"]; 

	// le code d’erreur. 
	$code_erreur = $_FILES['fichier']["error"]; 
	if ($type_mime!="pdf" || $type_mime!="doc" || $type_mime!="docx" || $type_mime!="jpg" || $type_mime!="png" ) {
		echo"<script>alert('vous ne pouver envoyer que des fichier pdf ou word')</script>";
	}else{

	for($i = 0; $i < count($fichier_temporaire); $i++)
	{
		switch ($code_erreur[$i])
		{ 
			case UPLOAD_ERR_OK : 
				// Fichier bien reçu. 
				// Détermine sa destination finale. 
				$destination = "uploads/".$nom[$i];

				// Copie le fichier temporaire 
				if(move_uploaded_file($fichier_temporaire[$i],$destination))
				{ 
					// Copie OK
					echo "<h3>".$nom[$i]." Transfert terminer<br>";
	            	echo "Taille = ".$taille[$i]." octets - Type = ".$type_mime[$i]." - Directory = ".$fichier_temporaire[$i]."</br></h3>" ;				

	            		//traitement du fichier pdf

	            		$file	=  $nom[$i] ;
						$pdf	=  new PdfToText ( "$destination" ) ;//création du fichier txt
						//$txtfile=fopen("uploads/$file.txt", 'w');//ouverture du fichier txt en écriture
						//on écrit le contenu du fichier pdf dans le fichier txt
						$res=output ( $pdf -> Text ) ;
						//fputs($txtfile,"$res");
						//$doc_ex = new PdfToText("BD/test.pdf");
						$doc_existant=output($doc_ex -> Text);
						$final=leven($res,$doc_existant);
						var_dump($final);
						echo " la distance de levenshtein".$final."";
						//plagiat("uploads/$file.txt","$doc_existant");
				}
				else
				{ 
					// Problème de copie => message d’erreur. 
					$message = "Probleme de copie sur le serveur."; 
				} 
				break; 

			case UPLOAD_ERR_NO_FILE : 
				// Pas de fichier saisi. 
				$message = "Pas de fichier saisi. cliquez sur parcourir pour séléctionner un ou plusieurs fichiers!"; 
				break; 

			case UPLOAD_ERR_INI_SIZE : 
				// Taille fichier > upload_max_filesize.
	            echo "<h3>Fichier ".$nom[$i]." non transfere (taille > upload_max_filesize)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_FORM_SIZE : 
				// Taille fichier > MAX_FILE_SIZE. 
				echo "<h3>Fichier ".$nom[$i]." non transfere (taille > MAX_FILE_SIZE)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_PARTIAL : 
				// Fichier partiellement transféré. 
				echo "<h3>Fichier ".$nom[$i]." non transfere (problème lors du tranfert)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_NO_TMP_DIR : 
				// Pas de répertoire temporaire. 
				echo "<h3>Fichier ".$nom[$i]." non transfere (pas de répertoire temporaire)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_CANT_WRITE : 
				// Erreur lors de l’écriture du fichier sur disque. 
				echo "<h3>Fichier ".$nom[$i]." non transfere (erreur lors de l'écriture du fichier sur le serveur)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_EXTENSION : 
				// Transfert stoppé par l’extension. 
				echo "<h3>Fichier ".$nom[$i]." non transfere (transfert stoppé par l'extension)</br></h3>" ; 
				break; 

			default : 
				// Erreur non prévue ! 
				echo "<h3> Fichier ".$nom[$i]." non transfere (erreur inconnue : ".$code_erreur[$i].")</br></h3>" ; 
				
		}//fin switch		
	
	}//fin for
  }//fin du if

} // fin du isset POST

?>

<!DOCTYPE html"> 
<html > 
<head><title>Upload</title></head> 
	<body> 
		<form action="file_upload_php.php" method="post" enctype="multipart/form-data"> 
			<div> 
				Fichier :  
				<input size="100" type="file" name="fichier[]" value="" multiple="multiple"/> 
				<input type="submit" name="valid" value="Envoyer le fichier" /><br /> 
				<?php echo "<h2>".$message."</h2>"; ?> 
			</div> 
		</form> 
    
	</body> 
</html>