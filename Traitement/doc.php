
<?php
include ( 'PdfToText.phpclass' ) ;
require("class.filetotext.php");    
    
    if(isset($_POST["save"])){
        /*include 'Data/Manager.php';
        //include 'lister_departement.php';  */
        require 'Data/Document.php';
        require 'Data/Auteur.php';
        require 'Data/Auteur_doc.php';

                            $mana=new Manager();
        $filename = $_FILES["doc"]["name"];        
        $tmp_dir = $_FILES["doc"]["tmp_name"];
        $imgSize = $_FILES["doc"]["size"];        
        $code_erreur = $_FILES['fichier']["error"]; 
        extract($_POST);
        
        for($i=0; $i<count($tmp_dir);$i++){
            $filename[$i]=str_replace(' ','_',$filename[$i]);// Nettoyage Espace
            switch ($code_erreur[$i]){ 
                    case UPLOAD_ERR_OK : 
                    // Fichier bien reçu. 
                
            $rep="interface/uploads/".$categorie;
            $mana->IsDir_or_CreateIt($rep);        //création du repertoire s'il n'existe pas        
        if(empty($filename[$i])){
            echo "Choisisez un document.";
        }
        else
        {
            $upload_dir =$rep."/";        
            $filExt = strtolower(pathinfo($filename[$i],PATHINFO_EXTENSION));
            $valid_extensions = array('pdf', 'docx', 'txt');
            if(in_array($filExt[$i], $valid_extensions)){
                if($imgSize[$i] < 25000000)              {
                    move_uploaded_file($tmp_dir[$i],$upload_dir);
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
        $dirs=$upload_dir.$filename[$i];
        
        $docObj = new Filetotext($dirs);//création du fichier txt
            $res = $docObj->convertToText();//convertion en txt
            $txtfile=fopen($dirs.'.txt', 'w');//ouverture du fichier txt en écriture
            fputs($txtfile,$res );//on écrit le contenu du fichier pdf dans le fichier txt
            
            if($filExt[$i]=="docx"){            
            $destinat=$mana->doctopdf($dirs);//convertion du fichier en pdf
            $nb=  $mana->nbr_pages($destinat);
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
        
        
        if($categories=="Rapports de stage" || $categories=="Projet" || $categories=="Mémoire" ||$categories=="Thèse de doctorat Ph.D"){
            $file	=  $filename[$i] ;            
            $file=$dirs.'.txt';
            var_dump($mana->search_in_first_20($file, $categories));
            if($categories=='Rapports de stage'){$categories="Rapport de stage";}
            if($categories=='Projet'){$categories="Projet de fin d'étude";}
            if($mana->search_in_first_20($dirs.'.txt', $categories)==FALSE || $mana->search_in_first_20($dirs.'.txt', "PROJET DE FIN D’ETUDES")==FALSE || $mana->search_in_first_20($dirs.'.txt', "RAPPORT DE STAGE")==FALSE ){
            $fichier="C:/xampp/htdocs/CADN/".$dirs;
            unlink($fichier);
            unlink($fichier.'.txt');
            unlink($fichier.'.pdf');
            echo"<script>alert(\"ce document n'est pas de la catégorie  $categories  \");</script>";
            exit;
        }
   
        }  else {
        $theme=$filename[$i];    
        }
   

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
        if($lastiddoc=$document->addreturnlast($document->getTable(), $document->getAttributs(), $document->getValues())){
            
        
            $successMSG = "Opération réussi.";
                //echo '<script> alert("Enregistrement réussi")</script>';
                echo 'enregistrement du document '.($i+1).' sur '.  count($tmp_dir);
                //header("location:dashboard.php?q=document/document");
        }  else {
            //header("location:../index.php?q=departement/lister&resultat=non");
            echo 'echec';
            $errMSG = "Echec de l'opération.";
        } 
        case UPLOAD_ERR_NO_FILE : 
				// Pas de fichier saisi. 
				$message = "Pas de fichier saisi. cliquez sur parcourir pour séléctionner un ou plusieurs fichiers!"; 
				break; 

			case UPLOAD_ERR_INI_SIZE : 
				// Taille fichier > upload_max_filesize.
	            echo "<h3>Fichier ".$filename[$i]." non transfere (taille > upload_max_filesize)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_FORM_SIZE : 
				// Taille fichier > MAX_FILE_SIZE. 
				echo "<h3>Fichier ".$filename[$i]." non transfere (taille > MAX_FILE_SIZE)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_PARTIAL : 
				// Fichier partiellement transféré. 
				echo "<h3>Fichier ".$filename[$i]." non transfere (problème lors du tranfert)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_NO_TMP_DIR : 
				// Pas de répertoire temporaire. 
				echo "<h3>Fichier ".$filename[$i]." non transfere (pas de répertoire temporaire)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_CANT_WRITE : 
				// Erreur lors de l’écriture du fichier sur disque. 
				echo "<h3>Fichier ".$filename[$i]." non transfere (erreur lors de l'écriture du fichier sur le serveur)</br></h3>" ; 
				break; 

			case UPLOAD_ERR_EXTENSION : 
				// Transfert stoppé par l’extension. 
				echo "<h3>Fichier ".$filename[$i]." non transfere (transfert stoppé par l'extension)</br></h3>" ; 
				break; 

			default : 
				// Erreur non prévue ! 
				echo "<h3> Fichier ".$filename[$i]." non transfere (erreur inconnue : ".$code_erreur[$i].")</br></h3>" ; 
     }
  }
  echo '<script> alert("Enregistrements terminés")</script>';
}
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
            header("location:../index.php?q=departement/lister&resultat=ok");
            
        }  else {
            echo '<script>alert("echec");</script>';
            header("location:../index.php?q=departement/lister&resultat=non");
            
        }      
    }
    
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
?>
