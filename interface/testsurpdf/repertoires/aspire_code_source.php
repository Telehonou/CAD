<?php
// Vous désirez récupérer le source d'une page sur un autre serveur,
// voici le principe d'un aspirateur, avec ce script vous pourrez récupérer
// le contenu d'une page, si celle ci est accessible.


$chemin_fichier = "http://www.phpsources.org/index.php";
$fp=@fopen($chemin_fichier,"r");

$contenu = "";

if($fp)
{
   while(!feof($fp))
   {
   $contenu .= fgets($fp,1024);
   }
   
echo $contenu;
}
else
{
echo "Impossible d'ouvrir la page $chemin_fichier";
}

?>