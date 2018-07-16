<?php
    require '../Data/Manager.php';
    require '../Data/Categorie.php';
    
    if(isset($_POST["save"])){
        extract($_POST);
        $categorie = new Categorie(array(
            'nom_cat' => $nom_cat,
            'desc_cat' => $desc_cat
        ));
        if($categorie->add($categorie->getTable(), $categorie->getAttributs(), $categorie->getValues())){
            //header("location:../index.php?q=categorie/lister&resultat=ok");
            echo 'la catégorie à été enregistrée';
        }  else {
            //header("location:../index.php?q=categorie/lister&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["update"])){
        extract($_POST);
        $categorie = new Categorie(array(
            'id_cat'=>$id_cat,
            'nom_cat' => $nom_cat,
            'desc_cat' => $desc_cat
        ));

        if($categorie->update($categorie->getTable(), $categorie->getAttributs(), $categorie->getValues(), $categorie->getCondition())){
            header("location:../dashboard.php?q=categorie/categorie&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=categorie/categorie&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["delete"])){
        extract($_POST);    
        $categorie = new Categorie(array(
            'id_cat' => $id_cat
        ));
        
        if($categorie->delete($categorie->getTable(),$categorie->getCondition())){
           header("location:../dashboard.php?q=categorie/categorie&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=categorie/categorie&resultat=non");
            echo 'echec';
        }      
    }
?>