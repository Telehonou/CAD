<?php
    if(isset($_POST['recherche'])){
        $recherche = $_POST['recherche'];
        if($recherche=="all" or $recherche=="tout"){
            affiche($donnees);
        }  else {
            $attributs = array("nom_client","prenom_client"); 
            $valeurs = $recherche;
            $donnees = ListTrie($attributs, $valeurs);
            if($donnees) affiche($donnees);
            else echo'<tr><td colspan="5"><center><b><br> le(la) Client(e) \''.$recherche.'\' est introvable !!!</b></center></tr></td>';
        }
    }else{
        affiche($donnees);
    }
?>