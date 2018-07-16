<?php
    require '../Data/Manager.php';
    require '../Data/Departement.php';
    
    if(isset($_POST["save"])){
        extract($_POST);
        $departement = new Departement(array(
            'code_dpt' => $code_dpt,
            'libel_dpt' => $libel_dpt,
            'table'=>$table
        ));
        if($departement->add($departement->getTable(), $departement->getAttributs(), $departement->getValues())){
            //header("location:../index.php?q=departement/lister&resultat=ok");
            echo 'Enregistrement réussi';
        }  else {
            //header("location:../index.php?q=departement/lister&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["update"])){
        extract($_POST);
        $departement = new Departement(array(
            'id_dpt'=>$id_dpt,
            'code_dpt' => $code_dpt,
            'libel_dpt' => $libel_dpt,
            'table'=>$table
            
        ));

        if($departement->update($departement->getTable(), $departement->getAttributs(), $departement->getValues(), $departement->getCondition())){
            header("location:../dashboard.php?q=departement/departement&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../index.php?q=departement/lister&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["delete"])){
        extract($_POST);    
        $departement = new Departement(array(
            'id_dpt' => $id_dpt
        ));
        
        if($departement->delete($departement->getTable(),$departement->getCondition())){
           header("location:../index.php?q=departement/lister&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../index.php?q=departement/lister&resultat=non");
            echo 'echec';
        }      
    }
?>