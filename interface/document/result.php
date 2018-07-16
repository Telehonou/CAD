      
<?php
extract($_POST);
if(isset($_POST['rechercher'])){
    extract($_POST);
        $man=new Manager();
        $table=array('categories');
        $attribut=array('*');
        $condition='id_cat='.$categorie;
        $donnee=$man->Lister($attribut, $table, $condition);
        foreach ($donnee as $valeur){
            $ncategorie=$valeur['nom_cat'];
        }
}                                            
if(isset($et_ou1)){        

        if($et_ou1 == 'AND')
        { 
            if(empty($keyword))      
            {
                $keyword = 1;
            }
        }
        else
        {
            if(empty($keyword))      
            {
                $keyword = 1;
            }
        }

        if($et_ou1 == 'AND')
        { 
            if(empty($dpt))      
            {
                $dpt = 1;
            }
        }
        else
        {
            if(empty($dpt))      
            {
                $dpt = 1;
            }
        }

        if($et_ou2 == 'AND')
        { 
            if(empty($auteur))      
            {
             $auteur = 1;
            }
        }
        else
        {
         if(empty($auteur))      
         {
          $auteur = 1;
         }
        }
        
        $man=new Manager();
        
        $table =array( 'documents','categories');
        $attribut=array('*');
        //$condition='titre like \'%'.$keyword.'%\''.$et_ou1.' departement_id='.$dpt.' '.$et_ou2.' auteur like \'%'.$auteur.' %\' AND categorie_id='.$categorie.' AND categories.nom_cat="'.$ncategorie.'"';
        $condition='documents.titre LIKE \'%'.$keyword.'%\''.$et_ou1.'  documents.departement_id='.$dpt.' '.$et_ou2.' documents.auteur like \'%'.$auteur.'%\' AND documents.categorie_id='.$categorie.' AND categories.id_cat='.$categorie ;
        $donnee=$man->Lister($attribut, $table, $condition);        
        if($keyword=="" AND $dpt=="" AND $auteur==""){
            echo 'Vous devez preciser aumoins un critére de recherche !!';
        }else{
        if(count($donnee)>0) 
        {
            echo '<h1 class="t_resultat">Résultat de votre recherche</h1>';   
            echo '<h4 class="t_resultat">'.count($donnee). ' '.$ncategorie.'(s)  trouvé</h4>';   
         echo "<table class=\" table table-striped\">
          <!--DWLayoutTable-->";         
         
          echo "<thead><tr>
            
            <th><b>Titre</th>            
            <th><b>auteur</b></th>            
            <th><b>Nbr pages</b></th>            
            <th><b>Ajouter le</b></th>            
            <th><b>Catégorie</b></th>            
          </thead>";
        //  var_dump($donnee);
          foreach ($donnee as $valeur){
          echo "<tbody>
          <tr>";
          
            echo '
            <td >'.$valeur['titre'].'</td>            
            <td >'.$valeur['auteur'].'</td>            
            <td >'.$valeur['nombre_page'].'</td>            
            <td >'.$valeur['created_at'].'</td>            
            <td >'.$valeur['nom_cat'].'</td>            
            <td >
            <a  href="'.$valeur['doc_dir'].'" target="blank" title="visualiser le document" >
                <button><span class="glyphicon glyphicon-eye-open"></span></button>
             </a>
            <a href="'.$valeur['doc_dir'].'" download="'.$valeur['titre'].'" >
                    <button  title="télecharger"><span class="glyphicon glyphicon-download-alt"></span></button></td>            
                    </a>
          </tr></tbody>';
          }
        echo '</table>';
        }
        else echo '<div align="center"><img class="img-responsive" src="img/icon_bug.gif"/><span class="Style1">Aucun r&eacute;sulat ne corresponds &agrave; votre recherche !!... </span>
        </div>';

        $con=$man->connexion();
        $con=NULL;
        
        }

}

?>
