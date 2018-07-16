<?php
include ( 'PdfToText.phpclass' ) ;
require("class.filetotext.php");    
    
    if(isset($_POST["save"])){
        require 'Data/Document.php';
        require 'Data/Auteur.php';
        require 'Data/Auteur_doc.php';

        $mana=new Manager();
        $filename = $_FILES["doc"]["name"];
        $filename=str_replace(' ','_',$filename);// Nettoyage Espace
        $tmp_dir = $_FILES["doc"]["tmp_name"];
        $imgSize = $_FILES["doc"]["size"];
        extract($_POST);
            $rep="interface/uploads/".$categorie;
            $mana->IsDir_or_CreateIt($rep);        //création du repertoire s'il n'existe pas
        
        if(empty($filename)){
            echo "Choisisez un document.";
        }
        else
        {
            $upload_dir =$rep."/";
            $imgExt = strtolower(pathinfo($filename,PATHINFO_EXTENSION));
            $valid_extensions = array('pdf', 'docx', 'txt');
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
            $nb=  $mana->nbr_pages($destinat);//détermination du nombre de page
        }else{
        $nb=  $mana->nbr_pages($dirs);
        }        
        $attribut=array('*');
        $table=array('categories');
        $condition="id_cat=".$categorie;
        $idcat=$mana->Lister($attribut, $table, $condition);        
        foreach ($idcat as $cat){
            $categories=$cat['nom_cat'];            
        }
        //si l'utilisateur souhaite enregistré un rapport,mémoire ou thèse
        if($categories=="Rapports de stage" || $categories=="Projet" || $categories=="Mémoire" ||$categories=="Thèse de doctorat Ph.D"){            
            $file=$dirs.'.txt';                        
            if($categories=='Rapports de stage'){$categories="Rapport de stage";}
            if($categories=='Projet'){$categories="Projet de fin d'étude";}
            // on se rassure que le fichier est bien de la catégorie choisi
            if($mana->search_in_first_20($dirs.'.txt', $categories)==FALSE || $mana->search_in_first_20($dirs.'.txt', "PROJET DE FIN D’ETUDES")==FALSE || $mana->search_in_first_20($dirs.'.txt', "RAPPORT DE STAGE")==FALSE ){
            $fichier="C:/xampp/htdocs/CADN/".$dirs;
            unlink($fichier);
            unlink($fichier.'.txt');
            unlink($fichier.'.pdf');
            echo"<script>alert(\"ce document n'est pas de la catégorie  $categories  \");</script>";
            exit;
        }
         //si non on enregistre le fichier avec son tire d'origine  
        }  /*else {
            $theme=$filename;
        }   */     
        $upload_dir.=$doc;
        $document = new Document(array(
            'titre' => $theme,
            'auteur'=>$auteur,
            'description' => $description,
            'user_id'=>$_SESSION['user_id'],
            'objectif' => $objectif,
            'percen_realisation' =>$percen,
            'observation_jury' =>$observation,
            'perspective_amelioration' =>$perspective,
            'approuver_par' =>$approv,
            'nombre_page' => $nb,
            'categorie_id' =>$categorie,
            'departement_id' =>$departement,
            'taux_plagiat' =>$max,
            'created_at' =>  date('d-m-Y H:i:s'),
            'updated_at'=> date('d-m-Y H:i:s'),
            'doc_dir'=>$dirs,
        ));
        if($document->addreturnlast($document->getTable(), $document->getAttributs(), $document->getValues())){
            $successMSG = "Opération réussi.";            
            echo'<script>alert("document enregistré");</script>';
            //header("location:./dashboard.php?q=document/document");
            echo'<script>history.go(-1);</script>';
        }  else {
            //header("location:../index.php?q=departement/lister&resultat=non");
            echo 'echec';
            $errMSG = "Echec de l'opération.";
        }     
                              
    }
//script de mise à jour    
    if(isset($_POST["update"])){
        extract($_POST);
        $document = new Document(array(
            'id_dpt'=>$id_dpt,
            'code_dpt' => $code_dpt,
            'libel_dpt' => $libel_dpt,
            'table'=>$table            
        ));
        if($document->update($document->getTable($table), $document->getAttributs(), $document->getValues(), $document->getCondition())){
            echo '<script>alert("Mis à jour réussie");</script>';
            header("location:../index.php?q=document/document&resultat=ok");            
        }  else {
            echo '<script>alert("echec");</script>';
            header("location:../index.php?q=document/document&resultat=non");            
        }      
    }
    //script de suppression
    if(isset($_POST["delete"])){
        require '../Data/Manager.php';
        require '../Data/Document.php';
        require '../Data/Auteur_doc.php';
        extract($_POST);    
        $doc = new Document(array(
            'id_doc' => $id_doc
        ));        
        $con=$doc->connexion();
        $sql="delete from auteur_docs where document=".$id_doc;
        $con->exec($sql);
        $condition="id_doc=".$id_doc;
        $table=array('documents');        
        $don=$doc->Lister($doc->getAttributs(),$table, $condition);
        foreach ($don as $val){
            $fichier=$val['doc_dir'];
        }        
        if($doc->delete($doc->getTable(),$doc->getCondition())){
            $fichier="C:/xampp/htdocs/CADN/".$fichier;
            unlink($fichier);
            unlink($fichier.'.txt');
            unlink($fichier.'.pdf');
            echo '<script> alert("Succes")</script>';
           header("location:../dashboard.php?q=document/document&resultat=ok");
            
        }  else {
            echo '<script>alert("échec");</script>';
            header("location:../dashboard.php?q=document/document&resultat=non");
            
        }      
    }
    if(isset($_GET["docs"])){
        require '../Data/Manager.php';
        require '../Data/Document.php';
        require '../Data/Auteur_doc.php';
        extract($_POST);    
        $id_doc=$_GET['docs'];
        $doc = new Document(array(
            'id_doc' => $id_doc
        ));        
        $con=$doc->connexion();
        $sql="delete from auteur_docs where document=".$id_doc;
        $con->exec($sql);
        $condition="id_doc=".$id_doc;
        $table=array('documents');        
        $don=$doc->Lister($doc->getAttributs(),$table, $condition);
        foreach ($don as $val){
            $fichier=$val['doc_dir'];
        }        
        if($doc->delete($doc->getTable(),$doc->getCondition())){
            $fichier="C:/xampp/htdocs/CADN/".$fichier;
            unlink($fichier);
            unlink($fichier.'.txt');
            unlink($fichier.'.pdf');
            echo '<script> alert("Succes")</script>';
           header("location:../dashboard.php?q=document/document&resultat=ok");            
        }  else {
            echo '<script>alert("échec");</script>';
            header("location:../dashboard.php?q=document/document&resultat=non");            
        }      
    }?>