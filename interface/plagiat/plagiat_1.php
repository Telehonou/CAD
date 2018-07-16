<?php
include ( 'Traitement/PdfToText.phpclass' ) ;
require("Traitement/class.filetotext.php");    

    if(isset($_POST["analyser"])){
        extract($_POST);
        //require 'Data/Manager.php';
        

        $mana=new Manager();        
        $filename = $_FILES["doc"]["name"];
        $filename=str_replace(' ','_',$filename);// Nettoyage Espace
        $tmp_dir = $_FILES["doc"]["tmp_name"];
        $imgSize = $_FILES["doc"]["size"];
        
            $rep="temp";
            $mana->IsDir_or_CreateIt($rep);        //création du repertoire s'il n'existe pas
        
        if(empty($filename)){
            echo "Choisisez un document.";
        }
        else
        {
            $upload_dir =$rep."/";
            $imgExt = strtolower(pathinfo($filename,PATHINFO_EXTENSION));
            $valid_extensions = array('pdf', 'docx', 'txt');
            //var_dump($upload_dir);
            if(in_array($imgExt, $valid_extensions)){
                if($imgSize < 25000000)              {
                    move_uploaded_file($tmp_dir,$upload_dir.$filename);
                }
                else{
                    //$errMSG = "votre fichier à une taille supérieur à 5MB.";
                    echo '<script> alert("votre fichier à une taille supérieur à 25MB.");</script>';exit;
                }
            }
            else{
                //$errMSG = "Désoler, ce format de fichier n'est pas suporté par l'aplication.";      
                echo '<script> alert("Désoler, ce format de fichier n\'est pas suporté par l\'aplication.");</script>';exit;
            }
        }
        
        $dirs=$upload_dir.$filename;
        $docObj = new Filetotext($dirs);//création du fichier txt
            $res = $docObj->convertToText();//convertion en txt
            $txtfile=fopen($dirs.'.txt', 'w');//ouverture du fichier txt en écriture
            fputs($txtfile,$res );//on écrit le contenu du fichier pdf dans le fichier txt
            
            if($imgExt=="docx"){            
            $destinat=$mana->doctopdf($dirs);//convertion du fichier en pdf
            $nb=  $mana->nbr_pages($destinat);
        }else{
        $nb=  $mana->nbr_pages($dirs);
        }
/*****************************************************************************************************/        
        /*ANALYSE DU DOCUMENT*/
        
        $attribut=array('*');
        $table=array('categories');
        $condition="id_cat=".$categorie;
        $idcat=$mana->Lister($attribut, $table, $condition);        
        foreach ($idcat as $cat){
            $categories=$cat['nom_cat'];            
        }
        
        
        if(!empty($categorie)){
            
           $tab=array('documents');
            $condition="categorie_id=".$categorie;
            $categoried=$mana->Lister($attribut, $tab, $condition);            
            /*$mana->Initialize(50,60,200,30,'#000000','#FFCC00','#006699');  // initialisation de la barre de progression
            for($i=0; $i<100;$i++){
                $mana->ProgressBar($i);*/
                $max=0;
                $fichier_plagier="";
            foreach ($categoried as $cat){                            
                $donne=$mana->extracttext($dirs.'.txt','C:/xampp/htdocs/CADN/'.$cat['doc_dir'].'.txt');
                //echo "<br> pourcentage de plagiat est: ";
                $plagiat=$mana->JaroWinkler($res,$donne[1])*100;                 
                if($plagiat>$max && $plagiat>=60){
                    $max=$plagiat;
                    $fichier_plagier=$cat['doc_dir'];
                    $plagier=$mana->intersection($res,$donne[1]);
                }    
            }
            //var_dump($fichier_plagier);
            $fichierplag=$fichier_plagier;
            $dirs= explode('/', $dirs);
            $fichierplagier= explode('/', $fichier_plagier);
            $plagier=  utf8_decode($plagier);
            
            $table=array('documents');
            $attribut=array('auteur');
            $condition="doc_dir="."'$fichierplag'";
            $donnees=$mana->Lister($attribut, $table, $condition);
            foreach ($donnees as $value){
                $auteur=$value['auteur'];
            }            
        }  
    }

        
       