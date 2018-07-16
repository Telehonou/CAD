<?php 
include ( 'PdfToText-master/PdfToText.phpclass' ) ;
function  output ( $message )
{
	if  ( php_sapi_name ( )  ==  'cli' )
		echo ( $message ) ;
	else
		echo ( nl2br ( $message ) ) ;
	return $message;
}
function lev($s,$t) {
	$m = strlen($s);
	$n = strlen($t);
	
	for($i=0;$i<=$m;$i++) $d[$i][0] = $i;
	for($j=0;$j<=$n;$j++) $d[0][$j] = $j;
	
	for($i=1;$i<=$m;$i++) {
		for($j=1;$j<=$n;$j++) {
			$c = ($s[$i-1] == $t[$j-1])?0:1;
			$d[$i][$j] = min($d[$i-1][$j]+1,$d[$i][$j-1]+1,$d[$i-1][$j-1]+$c);
		}
	}

	return $d[$m][$n];
}
function leven($s1,$s2){
	$l1 = strlen($s1);                    // Length de $s1 Strings
	$l2 = strlen($s2);                    // Length de $s2 Strings
	$dis = range(0,$l2);                  // Erste Zeile mit (0,1,2,...,n) erzeugen 
                                              // $dis stellt die vorrangeganene Zeile da. 
	for($x=1;$x<=$l1;$x++){        
		$dis_new[0]=$x;               // Das erste element der darauffolgenden Zeile ist $x, $dis_new ist damit die aktuelle Zeile mit der gearbeitet wird
		for($y=1;$y<=$l2;$y++){
			$c = ($s1[$x-1] == $s2[$y-1])?0:1;
			$dis_new[$y] = min($dis[$y]+1,$dis_new[$y-1]+1,$dis[$y-1]+$c);	 
		}
		$dis = $dis_new;              
	}	

	return $dis[$l2];
}
function plagiat( $fichier1, $fichier2 ){
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
		/*$lev=lev($doc1,$doc2);
		echo "la distance levenshtein est : ".$lev;*/
		fclose($document1);
		fclose($document2);
	//return $lev;
}


 ?>