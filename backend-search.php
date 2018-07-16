<?php
include 'Data/Manager.php';
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$man=new Manager();
$link = $man->connexion();
 
 
// Escape user inputs for security
$term =  $_REQUEST['term'];
 
if(isset($term)){
    // Attempt select query execution
    $attribut=array('*');
    $table=array('documents','categories');
    $condition="nom_cat LIKE '%" . $term . "%' or titre LIKE '%".$term."%' or description LIKE '%".$term."'";
    $donne=$man->Lister($attribut, $table, $condition);
    //$sql = "SELECT * FROM categories WHERE nom_cat LIKE '" . $term . "%'";
    if(count($donne) >0){
        foreach ($donne as $valeur){
        echo '<p>'.$valeur['nom_cat'].'</P>';
        }
            // Close result set
            
        } else{
            echo "<p>Aucune suggestion</p>";
        }
    } else{
        //echo "ERROR: Could not able to execute $sql. " . mysql_error($link);
    }

 
// close connection
$link=NULL;
?>