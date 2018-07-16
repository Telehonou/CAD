<?php
    require '../Data/Manager.php';
    require '../Data/Module.php';
    
    if(isset($_POST["save"])){
        extract($_POST);
        $module = new Module(array(
            'mod_modulegroupcode' => $mod_modulegroupcode,
            'mod_modulegroupname' => $mod_modulegroupname,
            'mod_modulecode' => $mod_modulecode,
            'mod_modulename' => $mod_modulename,
            'mod_modulegrouporder' => $mod_modulegrouporder,
            'mod_moduleorder' => $mod_moduleorder,
            'mod_modulepagename' => $mod_modulepagename
        ));
        if($module->add($module->getTable(), $module->getAttributs(), $module->getValues())){
            //header("location:../index.php?q=categorie/lister&resultat=ok");
            echo 'le Module à été enregistrée';
        }  else {
            //header("location:../index.php?q=categorie/lister&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["update"])){
        extract($_POST);
        $module = new Module(array(
            'mod_modulegroupcode' => $mod_modulegroupcode,
            'mod_modulegroupname' => $mod_modulegroupname,
            'mod_modulecode' => $mod_modulecode,
            'mod_modulename' => $mod_modulename,
            'mod_modulegrouporder' => $mod_modulegrouporder,
            'mod_moduleorder' => $mod_moduleorder,
            'mod_modulepagename' => $mod_modulepagename
        ));

        if($module->update($module->getTable(), $module->getAttributs(), $module->getValues(), $module->getCondition())){
            header("location:../dashboard.php?q=Module/module&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=Module/module&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["delete"])){
        extract($_POST);    
        $module = new Module(array(
            'mod_modulegroupcode' => $mod_modulegroupcode
        ));
        
        if($module->delete($module->getTable(),$module->getCondition())){
           header("location:../dashboard.php?q=Module/module&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=Module/module&resultat=non");
            echo 'echec';
        }      
    }
?>