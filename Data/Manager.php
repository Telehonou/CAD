<?php
class Manager{
    private $_db; //Instance de PDO.
    private $serveur="localhost";
    private $base="cads";
    private $username='root';
    private $password="";
    
    public function connexion(){
        try{
            // connexion à la base de donnée
            $con=new PDO('mysql:host='.  $this->serveur.';dbname='.  $this->base, $this->username, $this->password);
            // récupération des erreurs survenue en cour de travail
            $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo "la connexion est éffectué avec succées".'<br/>';
            }catch (PDOException $ex){
                echo "erreur de connexion à la base de données ".$ex->getMessage();
            }
        return $con;
    }
    //fonction qui vérifi si une valeur existe dans la BD
    public function Existe(array $attribut, array $table, $condition)
{
    $data=array();
    $sql="SELECT ";
    for($i=0; $i<count($attribut); $i++)
    {
        if($i<count($attribut)-1)
        {
            $sql=$sql.$attribut[$i].", ";
        }
        else
            $sql=$sql.$attribut[$i]." FROM ";
    }
    for($i=0; $i<count($table); $i++)
    {
        if($i<count($table)-1)
        {
            $sql=$sql.$table[$i].", ";
        }
        else
        {
            $sql=$sql.$table[$i]." WHERE ".$condition.";";
        }
    }
    //var_dump($sql);
    $con=$this->connexion();
    try
    {
        $req=$con->query($sql);
        while($donne=$req->fetch(PDO::FETCH_ASSOC))
        {
            $data[]=$donne;
        }
        //$result=$req->num_rows();
    }
    catch(PDOException $ex)
    {
        echo "".$ex->getMessage();
        //echo "".$sql;
    }
    //return $req->num_rows;
    if(count($data)>0){
    	return $data;
    }
    
    $con=null;
}

//fonction pour supprimer un repertoire et ses sous repertoires

 function sup_repertoire($chemin) {

        // vérifie si le nom du repertoire contient "/" à la fin
        if ($chemin[strlen($chemin)-1] != '/') // place le pointeur en fin d'url
           { $chemin .= '/'; } // rajoute '/'

        if (is_dir($chemin)) {
             $sq = opendir($chemin); // lecture
             while ($f = readdir($sq)) {
             if ($f != '.' && $f != '..')
             {
             $fichier = $chemin.$f; // chemin fichier
             if (is_dir($fichier))
             {sup_repertoire($fichier);} // rapel la fonction de manière récursive
             else
             {unlink($fichier);} // sup le fichier
             }
                }
                closedir($d);
                rmdir($chemin); // sup le répertoire
                             }
        else {
                unlink($chemin);  // sup le fichier
             }
       }

//fonction qui retourne l'id d'une valeur si elle existe

public function Id_Val_Exist(array $attribut, array $table, $condition)
{
    $data=array();
    $sql="SELECT ";
    for($i=0; $i<count($attribut); $i++)
    {
        if($i<count($attribut)-1)
        {
            $sql=$sql.$attribut[$i].", ";
        }
        else
            $sql=$sql.$attribut[$i]." FROM ";
    }
    for($i=0; $i<count($table); $i++)
    {
        if($i<count($table)-1)
        {
            $sql=$sql.$table[$i].", ";
        }
        else
        {
            $sql=$sql.$table[$i]." WHERE ".$condition.";";
        }
    }

    $con=$this->connexion();
    try
    {
        $req=$con->query($sql);
        while($donne=$req->fetch(PDO::FETCH_ASSOC))
        {
            $data[]=$donne;
        }
        //$result=$req->num_rows();
    }
    catch(PDOException $ex)
    {
        echo "".$ex->getMessage();
        echo "".$sql;
    }
    //return $req->num_rows;
    if(count($data)>0){
    	return $data[0];
    }
    
    $con=null;
    
   }
    //fonction pour compter le nombre de page d'un document
public function nbr_pages($pdf){
    if (false != ($fichier = file_get_contents($pdf))){
        $pages = preg_match_all( "/\/Page\W/", $fichier, $matches );
        return $pages;
    }
}    
    // fonction qui liste quelque soit la base de donnée
public function Lister(array $attribut, array $table, $condition)
{
        $this->setDb($this->connexion());
	$data=array();
	$req="SELECT  ";
	for($i=0; $i<count($attribut); $i++)
	{
		if($i<count($attribut)-1)
		{
			$req=$req.$attribut[$i].", ";
		}
		else
			$req=$req.$attribut[$i]." FROM ";
	}
	for($i=0; $i<count($table); $i++)
	{
		if($i<count($table)-1)
		{
			$req=$req.$table[$i].", ";
		}
		else
		{
			$req=$req.$table[$i]." WHERE ".$condition.";";
		}
	}
        //var_dump($req);
	$con=$this->connexion();
	try
	{
		$req=$con->query($req);
		while($donne=$req->fetch(PDO::FETCH_ASSOC))
		{
			$data[]=$donne;
		}
	}
	catch(PDOException $ex)
	{
		echo "".$ex->getMessage();
		echo "".$req;
	}
	return $data;
	$con=null;
}
//fonction permettant de selectionner le dernier id inseré
public function addreturnlast($table, array $attributs, array $valeurs){
                /*try{
                    $pdo = new PDO("mysql:host=localhost;dbname=CAD", "root", "");
                    // Set the PDO error mode to exception
                    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    } catch(PDOException $e){
                    die("ERROR: Could not connect. " . $e->getMessage());
                    }*/
                    $pdo=$this->connexion();
        // Attempt insert query execution
        try{
            $req = "INSERT INTO ".$table." (";
            for($i=0; $i<count($attributs); $i++){
            if($i<count($attributs)-1){
                $req = $req.$attributs[$i].",";
            }else{
                $req = $req.$attributs[$i].") VALUES (";
            }
        }
        for($i=0; $i<count($valeurs); $i++){
            if($i<count($valeurs)-1){
                $req = $req."".$valeurs[$i].",";
            }else{
                $req = $req."".$valeurs[$i].")";
            }
        }         
            $pdo->exec($req);
            $last_id = $pdo->lastInsertId();
            //echo "Records inserted successfully. Last inserted ID is: " . $last_id;
        } catch(PDOException $e){
            die("ERROR: Could not able to execute $req. " . $e->getMessage());
        }
        return $last_id;
        // Close connection
        unset($pdo);
        //return $last_id;
    }
    //fonction qui retourne le dernier index
 public function lastid(string $table){
	try{
            $pdo = new PDO("mysql:host=localhost;dbname=CAD", "root", "");
            // Set the PDO error mode to exception
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e){
            die("ERROR: Could not connect. " . $e->getMessage());
        }
        try{
            $sql = "SELECT " .$pdo->lastInsertId(). " FROM ".$table;    
            $last_id=$pdo->exec($sql);
        } catch(PDOException $e){
            die("ERROR: Could not able to execute $sql. " . $e->getMessage());
        }
         return $last_id;
        // Close connection
        unset($pdo);
}    
    
// fonction qui liste quelque soit la base de donnée
    public function add($table,array $attributs,array $valeurs){
        $this->setDb($this->connexion());
        $req = 'INSERT INTO '.$table.'(';
        
        for($i=0; $i<count($attributs); $i++){
            if($i<count($attributs)-1){
                $req = $req.$attributs[$i].",";
            }else{
                $req = $req.$attributs[$i].") VALUES (";
            }
        }
        for($i=0; $i<count($valeurs); $i++){
            if($i<count($valeurs)-1){
                $req = $req."".$valeurs[$i].",";
            }else{
                $req = $req."".$valeurs[$i].");";
            }
        }
        //echo $req."<br>";
        $q = $this->_db->prepare($req);
        
        try {
            $q->execute();        
            //$objet->hydrate(array($attributs[0]=>$this->_db->lastInsertId()));
            return 1;
        } catch (Exception $ex) {
           echo 'echec '.$ex;
            return 0;
        } 
        $last=$this->_db->mysql_insert_id();
        return $last;
        $this->_db = NULL;
    }
    public function update($table,array $attributs,array $valeurs,array $condition){
        $this->setDb($this->connexion());
        
        $req = 'UPDATE '.$table.' SET ';
         
        for($i=0; $i<count($attributs); $i++){
            if($i<count($attributs)-1){
                $req = $req.$attributs[$i]." = ".$valeurs[$i].", ";
            }else{
                $req = $req.$attributs[$i]." = ".$valeurs[$i]." WHERE ".$condition[0]."=".$condition[1];
            }
        }
        //echo $req."<br>";
        
        $q = $this->_db->prepare($req);   
        
        try {
            $q->execute();
            echo 'succes';
            return 1;
        } catch (Exception $ex) {
             echo 'echec '.$ex;
             return 0;           
        }
        $this->_db = NULL;
    }
    public function delete($table,array $condition){
        $this->setDb($this->connexion());
        // Exécute une requête de type DELETE.     
        try {
            $this->_db->exec('DELETE FROM '.$table.' WHERE '.$condition[0].' = '.$condition[1]);
            echo 'succes';
            return 1;
        } catch (Exception $ex) {
             echo 'echec'.$ex;
             return 0;           
        }
        $this->_db = NULL;
    }
    public function querySelectWithCondition(array $tableName, array $nomColonne, $condition)
		{
			$this->_db = $this->connexion();
			$sql = "SELECT ";
			for ($i=0; $i <= count($nomColonne)-1; $i++) { 
				$sql = $sql. $nomColonne[$i];
				if($i < count($nomColonne)-1){
					$sql = $sql.", ";
				}
			}
			$sql = $sql. " FROM ";
			for ($i=0; $i < count($tableName); $i++) { 
				if($i < count($tableName)-1){
					$sql = $sql.$tableName[$i].", ";
				}else{
					$sql = $sql.$tableName[$i];
				}
			}
			$sql = $sql." WHERE ".$condition;
                        $q=$this->_db->query($sql);
                        $donnees = $q->fetch(\PDO::FETCH_ASSOC);
                        return $donnees;
		}
    public function get($table,array $condition){
        $this->_db = $this->connexion();   
        
        $q = $this->_db->query('SELECT * FROM '.$table.' WHERE '.$condition[0].' = '.$condition[1]);
        $donnees = $q->fetch(\PDO::FETCH_ASSOC); 
        
        return ($donnees);
        $this->_db = NULL;
    }
    
    public function getList($table){
        $this->setDb($this->connexion());
        // Retourne la liste de tous les turple.
        $objet = array();
        $q = $this->_db->query('SELECT * FROM '.$table);
        
        while($donnees = $q->fetch(\PDO::FETCH_ASSOC)){
            $objet[] = ($donnees);
        }
        return $objet;
        $this->_db = NULL;
    }
    
    //fonction de sélection sans doublon
    public function ListerDistinct(array $attribut, array $table)
{
        $this->setDb($this->connexion());
	$data=array();
	$req="SELECT  DISTINCT ";
	for($i=0; $i<count($attribut); $i++)
	{
		if($i<count($attribut)-1)
		{
			$req=$req.$attribut[$i].", ";
		}
		else
			$req=$req.$attribut[$i]." FROM ";
	}
	for($i=0; $i<count($table); $i++)
	{
		if($i<count($table)-1)
		{
			$req=$req.$table[$i].", ";
		}
		else
		{
			$req=$req.$table[$i]." ; ";
		}
	}
        //var_dump($req);
	$con=$this->connexion();
	try
	{
		$req=$con->query($req);
		while($donne=$req->fetch(PDO::FETCH_ASSOC))
		{
			$data[]=$donne;
		}
	}
	catch(PDOException $ex)
	{
		echo "".$ex->getMessage();
		echo "".$req;
	}
	return $data;
	$con=null;
}
    
    public function getListTrie($table,array $attributs,$valeurs){
        $this->setDb($this->connexion());
        
        $objet = array();
        $req = 'SELECT * FROM '.$table.' WHERE ';
        
        for($i=0; $i<count($attributs); $i++){
            if($i<count($attributs)-1){
                $req = $req.$attributs[$i]." LIKE '%".$valeurs."%' OR ";
            }else{
                $req = $req.$attributs[$i]." LIKE '%".$valeurs."%' ORDER BY ".$attributs[0];
            }
        }        
        $q = $this->_db->query($req);
       //echo $req;
        
        while($donnees = $q->fetch(\PDO::FETCH_ASSOC)){
            $objet[] = ($donnees);
        }        
        return $objet;
        $this->_db = NULL;
    }
    
    
    public function getPredList($req){
        $this->setDb($this->connexion());
        
        $objet = array();
         //echo $req;
        try {
            $q = $this->_db->query($req);
            while($donnees = $q->fetch(\PDO::FETCH_ASSOC)){
                $objet[] = ($donnees);
            }
        } catch (Exception $ex) {
            echo $req;
        }
        
        return $objet;
        $this->_db = NULL;
    }
    
    public function setDb($db){
        $this->_db = $db;
    }
    //fonctionde création de repertoire 
    public function IsDir_or_CreateIt($path) {
        if(is_dir($path)) {
            return true;
        } else {
            if(mkdir($path)) {
                return true;
            } else {
                return false;
            }
        }
    }
  
    public function extracttext($fichier1,$fichier2){
            //1 : on ouvre le fichier
                    $document1 = fopen($fichier1, 'r+');
                    $document2 = fopen($fichier2, 'r+');
                    // 2 : on lit toute les lignes des fichiers
                    $nb=0;
                    $doc1='';

                    while(!feof($document1)) {

                            $nb=$nb+1;
                            //transformation de chaque ligne en minuscule
                            $minus=fgets($document1);
                            $doc1=$minus." ";//concaténation des ligne pour obtenir un seul tableau!
                            //transformation en tableau
                            //$keywords1=preg_split("/[ .!\:,;]+/", $doc1);
                    }
                    //$tailledoc1=count($keywords1);
                    $nb=0;
                    $doc2='';
                    while(!feof($document2)) {
                            $nb++;
                            //transformation de chaque ligne en minuscule
                      $minus= fgets($document2);
                      $doc2.=$minus;//concaténation des ligne pour obtenir un seul tableau!
                      //transformation en tableau
                      //$keywords2 = preg_split("/[ .!\:,;]+/", $doc2);
                    }
                    $tabstring=array($doc1,$doc2);
                    fclose($document1);
                    fclose($document2);		
                    //$tailledoc2=count($keywords2);
                    return $tabstring;
    }

    public function getCommonCharacters( $string1, $string2, $allowedDistance ){

      $str1_len = strlen($string1);
      $str2_len = strlen($string2);
      $temp_string2 = $string2;

      $commonCharacters='';

      for( $i=0; $i < $str1_len; $i++){

        $noMatch = True;

        // compare if char does match inside given allowedDistance
        // and if it does add it to commonCharacters
        for( $j= max( 0, $i-$allowedDistance ); $noMatch && $j < min( $i + $allowedDistance + 1, $str2_len ); $j++){
          if( $temp_string2[$j] == $string1[$i] ){
            $noMatch = False;

            $commonCharacters .= $string1[$i];

            $temp_string2[$j] = '';
          }
        }
      }

      return $commonCharacters;
    }
  
    public function Jaro( $string1, $string2 ){

      $str1_len = strlen( $string1 );
      $str2_len = strlen( $string2 );

      // theoretical distance
      $distance = (int) floor(min( $str1_len, $str2_len ) / 2.0); 

      // get common characters
      $commons1 = $this->getCommonCharacters( $string1, $string2, $distance );
      $commons2 = $this->getCommonCharacters( $string2, $string1, $distance );

      if( ($commons1_len = strlen( $commons1 )) == 0) return 0;
      if( ($commons2_len = strlen( $commons2 )) == 0) return 0;

        // calculate transpositions
        $transpositions = 0;
        $upperBound = min( $commons1_len, $commons2_len );
        for( $i = 0; $i < $upperBound; $i++){
          if( $commons1[$i] != $commons2[$i] ) $transpositions++;
        }
        $transpositions /= 2.0;

      // return the Jaro distance
      return ($commons1_len/($str1_len) + $commons2_len/($str2_len) + ($commons1_len - $transpositions)/($commons1_len)) / 3.0;

    }
 
    public function getPrefixLength( $string1, $string2, $MINPREFIXLENGTH = 4 ){

      $n = min( array( $MINPREFIXLENGTH, strlen($string1), strlen($string2) ) );

      for($i = 0; $i < $n; $i++){
        if( $string1[$i] != $string2[$i] ){
          // return index of first occurrence of different characters 
          return $i;
        }
      }

      // first n characters are the same   
      return $n;
    }

    public function JaroWinkler($string1, $string2, $PREFIXSCALE = 0.1 ){

      $JaroDistance =$this->Jaro( $string1, $string2 );

      $prefixLength = $this->getPrefixLength( $string1, $string2 );

      return $JaroDistance + $prefixLength * $PREFIXSCALE * (1.0 - $JaroDistance);
    }


/* fin Algorithmes de jarowinkler*/
    public function  output ( $message )
    {
            if  ( php_sapi_name ( )  ==  'cli' )
                    echo ( $message ) ;
            else
                    echo ( nl2br ( $message ) ) ;
            return $message;
    }
    /** algorithme de Rabin-Karp**/

    public function SearchString($A, $B)
    {
            $retVal = array();
            $siga = 0;
            $sigb = 0;
            $Q = 100007;
            $D = 256;
            $BLen = strlen($B);
            $ALen = strlen($A);

            for ($i = 0; $i < $BLen; $i++)
            {
                    $siga = ($siga * $D + $A[$i]) % $Q;
                    $sigb = ($sigb * $D + $B[$i]) % $Q;
            }

            if ($siga == $sigb)
                    array_push($retVal, 0);

            $pow = 1;

            for ($k = 1; $k <= $BLen - 1; $k++)
                    $pow = ($pow * $D) % $Q;

            for ($j = 1; $j <= $ALen - $BLen; $j++)
            {
                    $siga = ($siga + $Q - $pow * $A[$j - 1] % $Q) % $Q;
                    $siga = ($siga * $D + $A[$j + $BLen - 1]) % $Q;

                    if ($siga == $sigb)
                            if (substr($A, $j, $BLen) == $B)
                                    array_push($retVal, $j);
            }

            return $retVal;
    }

    public function hash_string($str, $len)
    {
            $hash = '';

            $hash_table = array(
                    'h' => 1,
                    'e' => 2,
                    'l' => 3,
                    'o' => 4,
                    'w' => 5,
                    'r' => 6,
                    'd' => 7,
            );

            for ($i = 0; $i < $len; $i++) {
                    $hash .= $hash_table[$str{$i}];
            }

            return (int)$hash;
    }

    public function rabin_karp($text, $pattern)
    {
            $n = strlen($text);
            $m = strlen($pattern);

            $text_hash = $this->hash_string(substr($text, 0, $m), $m);
            $pattern_hash = $this->hash_string($pattern, $m);

            for ($i = 0; $i < $n-$m+1; $i++) {
                    if ($text_hash == $pattern_hash) {
                            return $i;
                    }

                    $text_hash = $this->hash_string(substr($text, $i, $m), $m);
            }

            return -1;
    }
    /** fin algorithme de Rabin-Karp**/

    /** algorithme de levenshtein**/
    public function lev($s,$t) {
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
    public function leven($s1,$s2){
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

            /** fin algorithme de levenshtein**/

            return $dis[$l2];
    }

    public function intersection($s1,$s2){

                                      //transformation en tableau

                    $keywords1=preg_split("/[ .!\:,;]+/", $s1);	

                $keywords2 = preg_split("/[ .!\:,;]+/", $s2);	

                    /*echo"<h2>2. Intersection entre les deux tableaux (documents) crée ô</h2>";*/

                    $inter = array_intersect($keywords1,$keywords2);
                    $inters=array();
                    $doubint=array_unique($inter);
                    for ($i=0; $i < (count($keywords1)-4); $i++) { 

                            for ($j=0; $j < (count($keywords2)) ; $j++) 
                            { 
                                    if ($keywords1[$i]==$keywords2[$j] && $keywords1[$i+1]==$keywords2[$j+1] && $keywords1[$i+2]==$keywords2[$j+2]  )
                                    {
                                            $inters[$i]=$keywords1[$i]." ".$keywords1[$i+1]." ".$keywords1[$i+2];
                                    }
                            }	
                    }
                    $inters = preg_split("/ /", $s2);	
                    $doubint=array_unique($inter);
                    $plag=implode(" ", $doubint);
                    return $plag;
    }
    //fonctions de gestion des bares de progression
    public function progression($indice)
    {	
            echo "<script>";
                    echo "document.getElementById('pourcentage').innerHTML='$indice%';";
                    echo "document.getElementById('barre').style.width='$indice%';";
            echo "</script>";
            ob_flush();
            flush();
            ob_flush();
            flush();
    }
    
    public function Initialize($gauche,$haut,$largeur,$hauteur,$bord_col,$txt_col,$bg_col)
  {
   $tailletxt=$hauteur-10;
   echo '<div id="pourcentage" style="position:absolute;top:'.$haut;
   echo ';left:'.$gauche;
   echo ';width:'.$largeur.'px';
   echo ';height:'.$hauteur.'px;border:1px solid '.$bord_col.';font-family:Tahoma;font-weight:bold';
   echo ';font-size:'.$tailletxt.'px;color:'.$txt_col.';z-index:1;text-align:center;">0%</div>';

   echo '<div id="progrbar" style="position:absolute;top:'.($haut+1); //+1
   echo ';left:'.($gauche+1); //+1
   echo ';width:0px';
   echo ';height:'.$hauteur.'px';
   echo ';background-color:'.$bg_col.';z-index:0;"></div>';

  }
  public function ProgressBar($indice)
  {
    echo "\n<script>";
    echo "document.getElementById(\"pourcentage\").innerHTML='".$indice."%';";
    echo "document.getElementById('progrbar').style.width=".($indice*2).";\n";
    echo "</script>";
    flush();  // explication : http://www.manuelphp.com/php/function.flush.php
  }
    
    //fonction de conversion d'un fichier docx en pdf
    
    public function doctopdf($filename){
        
        try{
       $word = new COM("Word.Application") or die ("Could not initialise Object.");
       // set it to 1 to see the MS Word window (the actual opening of the document)
       $word->Visible = 0;
       // recommend to set to 0, disables alerts like "Do you want MS Word to be the default .. etc"
       $word->DisplayAlerts = 0;
       // open the word 2007-2013 document 
       $word->Documents->Open('C:\xampp\htdocs/CADN/'.$filename);
       
       // save it as word 2003
      // $word->ActiveDocument->SaveAs('C:\xampp\htdocs/CADN/'.$nom.'.doc');
       
       // convert word 2007-2013 to PDF
       $word->ActiveDocument->ExportAsFixedFormat("C:\\xampp\htdocs/CADN/".$filename.".pdf", 17, false, 0, 0, 0, 0, 7, true, true, 2, true, true, false);
       // quit the Word process
       $word->Quit(false);
       // clean up
       unset($word);
        }catch(Exception $e){
            echo $e;
        }   
        $destination="C:\\xampp\htdocs/CADN/".$filename.".pdf";
        return $destination;
    }
    
    //fonction qui retourne les n dernières ligne d'un fichier
    
    public function n_derniere_lignes($file, $lines)
        {
               $handle = fopen($file, "r");
               $linecounter = $lines;
               $pos = -2;
               $beginning = false;
               $text = array();
               while ($linecounter > 0) {
                 $t = " ";
                 while ($t != "\n") {
                   if(fseek($handle, $pos, SEEK_END) == -1) {
                        $beginning = true; break; 
                   }
                   $t = fgetc($handle);
                   $pos --;
                 }
                 $linecounter --;
                 if($beginning) rewind($handle);
                 $text[$lines-$linecounter-1] = fgets($handle);
                 if($beginning ) break;
               }
               fclose ($handle);
               return array_reverse($text); // array_reverse is optional: you can also just return the $text array which consists of the file's lines. 

        }
    
    //fonction qui parcour un fichier ligne par ligne 

    public function read_line_nb($handle)
    {
        static $buffer = '';
        static $lastOffset = 0;

        $buffer .= fread($handle, 0x1000);
        if (preg_match('#\\R#', $buffer, $m, PREG_OFFSET_CAPTURE, $lastOffset)) {
            $line = substr($buffer, 0, $m[0][1] + strlen($m[0][0]));
            $buffer = substr($buffer, $m[0][1] + strlen($m[0][0]));
            return $line;
        }
        $lastOffset = strlen($buffer);
        return false;
    }
    
    //fonction qui recherche un mot dans la dernière ligne du fichier

    function search_in_last_line($file,$mot){

            $existe = FALSE;
            @ $fp = fopen($file, 'r') or die('Ouverture en lecture de "' . $file . '" impossible !');
            while (!feof($fp) && !$existe) {
              $ligne=readlastline($file);
                if (preg_match('|\b' . preg_quote($mot) . '\b|i', $ligne)) {
                    $existe = TRUE;
                }else{
                  $existe = FALSE;
                }
            }
            fclose($fp);
            return $existe;

    }
    
    //fonction qui recherche une sous chaine dans les 20 premières ligne d'un fichier

    public function search_in_first_20($file,$sous_chaine){
            $i=1;
            //define('FICHIER', $fichier);
           // echo"<b> le fichier";var_dump($file); echo' est bien reçu olivier</b><br>';
            $existe = FALSE;
           @ $fp = fopen($file, 'r') or die('Ouverture en lecture de "' . $file. '" impossible !');
           while ($i<=30 && !$existe) {
               $ligne = fgets($fp, 1024);
               if (preg_match('|\b' . preg_quote($mot) . '\b|i', $ligne)) {
                   $existe = TRUE;
               }
               $i++;
           }
           fclose($fp);
           if ($existe) {
               //echo "'$mot' trouvé dans '$ligne'.";
               return TRUE;
           } else {
             //  die("Ce nom n'est pas présent !");
               return FALSE;
           }   
    }
    
    //fonction qui recherche une sous chaine dans les 20 dernières ligne d'un fichier

    public function search_last_20($file,$sous_chaine){

        $chaines="";
        $rse=$this->n_derniere_lignes($file, 20);    
        foreach ($rse as  $value) {      
          $chaines.=$value;
        }
        if (strpos($chaines, $sous_chaine) !== FALSE) {
          return TRUE;
        }else{
          return FALSE;
        }  
    }
}