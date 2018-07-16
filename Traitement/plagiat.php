<html>
    <body>
        <div class="loader"><img src="../img/processing.gif"/></div>
<?php
include ( 'PdfToText.phpclass' ) ;
require("class.filetotext.php");    

    if(isset($_POST["analyser"])){
        extract($_POST);
        require '../Data/Manager.php';
        

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
            foreach ($categoried as $cat){                            
                $donne=$mana->extracttext($dirs.'.txt','C:/xampp/htdocs/CADN/'.$cat['doc_dir'].'.txt');
                //echo "<br> pourcentage de plagiat est: ";
                $plagiat=$mana->JaroWinkler($res,$donne[1])*100; 
                $max=0;
                $fichier_plagier="";
                if($plagiat>$max && $plagiat>=25){
                    $max=$plagiat;
                    $fichier_plagier=$cat['doc_dir'];
                    $plagier=$mana->intersection($res,$donne[1]);
                }else{
                    $max=0;
                }    
            }
            $fichierplagier=$cat['doc_dir'];
           //}

                /*echo "<br> le text plagier est: ==> ";
                var_dump($plagier);echo'<br>';
                echo "<br> fichier actuel: ==> ";
                var_dump($dirs);echo'<br>';
                echo "<br> le pourcentage de plagiat est: ==> ";
                echo $max/10;echo'<br>';
                echo "<br> Le document Concerné est : ==> ". $dirs;*/
                
        }  
        /*if(!empty($max)){
            //header("location:../index.php?q=categorie/lister&resultat=ok");
            echo 'Analyse terminer';
        }  else {
            //header("location:../index.php?q=categorie/lister&resultat=non");
            echo 'echec';
        }      
        /*if(!empty($max)){
            header("location:../dashboard.php?q=plagiat/resultat=ok");
        }*/
        echo'<div class="table table-responsive">
            <table class="table table-bordered table-responsive">
                <thead>
                <tr>
                <th>doc analysé</th>
                <th>contenu</th>
                <th>source</th>
                <th>similarité</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>'.$dirs.'</td>    
                        <td>'.$plagier.'</td>    
                        <td>'.$fichierplagier.'</td>    
                        <td>'.$max.'%</td>    
                    </tr>
                </tbody>
            </table>
            <button class="btn btn-group btn-small btn-info pull-right"><span style="color: red" class="fa fa-file-pdf-o"> PDF</span></button>
            <button class="btn btn-group btn-small btn-info pull-right"><span  class="fa fa-eye-slash"> Détail de l\'analyse</span></button>
        </div>';
    }
?>
        <script type="text/javascript" src="../js/jquery-latest.js"></script>
<script type="text/javascript">
/*$(window).load(function() {
	$(".loader").fadeOut("1000");
})*/
</script>
        </body>
</html>