<?php
    require '../Data/Manager.php';
    require '../Data/Annonce.php';
    
    if(isset($_POST["save"])){
      
        $cont="";
       extract($_POST);
        if(!empty($contenu)){
            $cont=$contenu;
           // echo '<script>alert("text");</script>';
        }
        if (!empty($_FILES['fichier']['name'])){
            
            $nom=$_FILES['fichier']['name'];        
            $nom=$_FILES['fichier']['name'];
            $temp=$_FILES['fichier']['tmp_name'];
            $manage=new Manager();
           $dirs=$manage->IsDir_or_CreateIt("Annonce");
            $repertoire="Annonce/";
            move_uploaded_file($temp,$repertoire.$nom);
            $repertoire.=$nom;
            $cont=$repertoire;
        
        }
        
        $heure = date('H')-6;
        $minute = date('i');
        $date=  date('d/m/Y');
        $date.=" à ".$heure."H".$minute."min";
        $annonce = new Annonce(array(
            
            'titre'=>$titre,
           'contenu'=>$text,
           'fichier'=>$cont,
            'datecreation'=> $date,
            'dateupdate'=> $date,
            'userid'=>$ids
         
        ));
        
        if($annonce->add($annonce->getTable(), $annonce->getAttributs(), $annonce->getValues())){
            //header("location:../index.php?q=categorie/lister&resultat=ok");
            echo 'Votre(Vos) annonce(s) à(ont) été enregistrée(s)';
        }  else {
            //header("location:../index.php?q=categorie/lister&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["update"])){
        extract($_POST);
        $heure = date('H')-6;
        $minute = date('i');
        $date=  date('d/m/Y');
        $date.=" à ".$heure."H".$minute."min";
        $annonce = new Annonce(array(
            'idannonce'=>$idannonce,
            'titre'=>$titre,
            'contenu'=>$text,
            'fichier'=>$fichier,
            'datecreation'=>$datecreation,
            'dateupdate'=> $date,
            'userid'=>$ids
        ));

        if($annonce->update($annonce->getTable(),$annonce->getAttributs(),$annonce->getValues(),$annonce->getCondition())){
            header("location:../dashboard.php?q=annonce/annonce&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=annonce/annonce&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_GET["anonceid"])){
        //extract($_POST);    
        $annonce = new Annonce(array(
            'idannonce' => $_GET["anonceid"]
        ));
        
        if($annonce->delete($annonce->getTable(),$annonce->getCondition())){
           header("location:../dashboard.php?q=annonce/annonce&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=annonce/annonce&resultat=non");
            echo 'echec';
        }      
    }
   echo '<script>history.go(-1);</script>';
?>