<?php

function MKDIRS($nom){ //cette foncyion crée un repertoire dans le repertoire courant

  //$nom = ""; // Le nom du répertoire à créer

  // vérifie si le répertoire existe :
  if (is_dir($nom)) {
                    echo 'Le répertoire existe déjà!';  
                    }
  // création du nouveau répertoire
  else { 
        mkdir($nom);
        echo 'Le répertoire '.$nom.' vient d\'être créé!';      
        }        
}

function RMDS($repertoire){//celle-ci supprime le repertoire
rmdir($repertoire);
echo "le repertoire ".$repertoire."à été supprimé avec succès";
}

function lister_repertoire1($repertoire){
    // Lister un repertoire par ordre alphabétique avec la fonction readdir()
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

// tu peut également utiliser la fonction scandir() comme ceci

function lister_repertoire2($repertoire){
  // Liste un repertoire par ordre alphabétique avec la fonction scandir()
  // attention si ton serveur a desactivé la fonction scandir, utilise
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
echo "le fichier ".$chemin." à bien été supprimer!";
}
//MKDIRS("olivier");
//RMDS('olivier');
//lister_repertoire2("../uploads");

?>

