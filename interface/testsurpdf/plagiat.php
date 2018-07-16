<?php 
include("levenshtein.php");
 function plagiat(string $fichier1,string $fichier2 ){
	 	//1 : on ouvre le fichier
		$document1 = fopen($fichier1, 'r+');
		$document2 = fopen($fichier2, 'r+');
		// 2 : on lit toute les lignes des fichiers
		$nb=0;
		$doc1='';
		while(!feof($document1)) {
			
			$nb=$nb+1;
			//transformation de chaque ligne en minuscule
			$minus=mb_strtolower(fgets($document1),'UTF-8');
			$doc1.=$minus;//concaténation des ligne pour obtenir un seul tableau!
			//transformation en tableau
			$keywords1=preg_split("/[ .!\:,;]+/", $doc1);
		}
		$tailledoc1=count($keywords1);
		$nb=0;
		$doc2='';
		while(!feof($document2)) {
			$nb=$nb+1;
			//transformation de chaque ligne en minuscule
		  $minus= mb_strtolower(fgets($document2),'UTF-8') ;
		  $doc2.=$minus;//concaténation des ligne pour obtenir un seul tableau!
		  //transformation en tableau
		  $keywords2 = preg_split("/[ .!\:,;]+/", $doc2);
		}
		
		$tailledoc2=count($keywords2);
		
		/*echo"<h2>2. Intersection entre les deux tableaux (documents) crée ô</h2>";*/

		$inter = array_intersect_key($keywords1,$keywords2);
		$doubint=array_unique($inter);
		$degreplagiat=0;
		for ($i=0; $i < ($tailledoc1-2); $i++) { 
			
			for ($j=0; $j < $tailledoc2 ; $j++) 
			{ 
				if ($keywords1[$i]==$keywords2[$j] && $keywords1[$i+1]==$keywords2[$j+1]  )
				{
					$degreplagiat++;
				}
			}			
		}
		$x=$degreplagiat;
		
		if ($tailledoc2==$tailledoc1 and $tailledoc1==count($inter) and $tailledoc2==count($inter) ) {
			$degreplagiat=100;
		}else  {
			$x=$degreplagiat;
			$degreplagiat=($degreplagiat*100)/$tailledoc2;
		}
		echo "<h1> pourcentage de plagiat entre le nouveau document ".$fichier1." et l'ancient ".$fichier2." : ".$degreplagiat."% </h1>";
		$lev=leven($doc1,$doc2);
		echo "la distance levenshtein est : ".$lev;
		fclose($document1);
		fclose($document2);

}

 ?>

<!--<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> test fichier</title>
	</head>
	<body>
		<?php
		//plagiat('compteur.txt','compteurs.txt');		

		?>
		<form action="upload.php" method="post" enctype="multipart/form-data">
		    Select image to upload:
		    <input type="file" name="fileToUpload" id="fileToUpload">
		    <input type="submit" value="Upload Image" name="submit">
		</form>
		<a href="lire.php">lire contenu pdf</a>

	</body>
</html>-->