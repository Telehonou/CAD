<?php

function MKDIRS($nom){ //cette foncyion cr�e un repertoire dans le repertoire courant

  //$nom = ""; // Le nom du r�pertoire � cr�er

  // v�rifie si le r�pertoire existe :
  if (is_dir($nom)) {
                    echo 'Le r�pertoire existe d�j�!';  
                    }
  // cr�ation du nouveau r�pertoire
  else { 
        mkdir($nom);
        echo 'Le r�pertoire '.$nom.' vient d\'�tre cr��!';      
        }        
}

function RMDS($repertoire){//celle-ci supprime le repertoire
rmdir($repertoire);
echo "le repertoire ".$repertoire."� �t� supprim� avec succ�s";
}

function lister_repertoire1($repertoire){
    // Lister un repertoire par ordre alphab�tique avec la fonction readdir()
   // Code qui passe sur tous les serveurs
  // ouvre le rep
  $dp = opendir($repertoire);

  $i=0;
  while ( $file = readdir($dp) )
  {
    // enleve les fichiers . et ..
    if ($file != '.' && $file != '..')
    {
            // on passe les datas dans un tableau
            $ListFiles[$i]=$file;
            $i++;
    }
 }
  closedir($dp);


// tri par ordre decroissant
  if(count($ListFiles)!=0)
  {
     if($list_tri == 'DESC')
     {
         rsort($ListFiles);
     }
     else
     {
         sort($ListFiles);
     }
  }

// affiche les fichiers par ordre alphabetique decroissant
  $i=0;
  while ( $i < count($ListFiles))
  {
      echo $ListFiles[$i];
      $i++;
  }
}

// tu peut �galement utiliser la fonction scandir() comme ceci

function lister_repertoire2($repertoire){
  // Liste un repertoire par ordre alphab�tique avec la fonction scandir()
  // attention si ton serveur a desactiv� la fonction scandir, utilise
  // l'autre code juste au dessus

 $liste_rep = scandir($repertoire);
 $i = 0;
 $num = count($liste_rep);
 while($i < $num){
 echo "<a href=\"$repertoire/$liste_rep[$i]\">$liste_rep[$i]</a><br />";
 $i++;
 }

}

//supprimer un fichier
function del_file($chemin){

//Supprimer un fichier
unlink($chemin);
echo "le fichier ".$chemin." � bien �t� supprimer!";
}
//MKDIRS("olivier");
//RMDS('olivier');
//lister_repertoire2("../uploads");

?>

