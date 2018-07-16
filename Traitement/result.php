      
<?php
extract($_POST);

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
        
        $table =array( 'documents');
        $attribut=array('*');
        $condition='titre like \'%'.$keyword.'%\''.$et_ou1.' description like \'%'.$dpt.'%\' '.$et_ou2.' approuver_par like \'% '.$auteur.'%\'';
        $donnee=$man->Lister($attribut, $table, $condition);        
        if($keyword=="" AND $dpt=="" AND $auteur==""){
            echo 'Vous devez preciser en moins un critére de recherche !!';
        }else{
        if(count($donnee)>0) 
        {
            
         echo "<table class=\" table table-striped\">
          <!--DWLayoutTable-->";         
         
          echo "<thead><tr>
            
            <th><b>Titre</th>            
            <th><b>auteur</b></th>            
            <th><b>Nbr pages</b></th>            
            <th><b>Ajouter le</b></th>            
          </thead>";
          foreach ($donnee as $valeur){
          echo "<tbody>
          <tr>";
          
            echo '
            <td >'.$valeur['titre'].'</td>            
            <td >'.$valeur['description'].'</td>            
            <td >'.$valeur['nombre_page'].'</td>            
            <td >'.$valeur['created_at'].'</td>            
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
