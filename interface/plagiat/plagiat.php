<?php
require_once("Data/Module.php");
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["PLAG"]["TEST"]["create"]) ||
    authorize($_SESSION["access"]["PLAG"]["TEST"]["edit"]) ||
    authorize($_SESSION["access"]["PLAG"]["TEST"]["view"]) ||
    authorize($_SESSION["access"]["PLAG"]["TEST"]["delete"]) ) {
    $status = TRUE;
}

if ($status === FALSE) {
    die("You dont have the permission to access this page");
}

// set page title
$title = "TEST";

?>
<div class="row">
    <div class="col-lg-12">

        <?php /*if (authorize($_SESSION["access"]["PLAG"]["TEST"]["create"])) { ?>
        
        <?php } */?>
        <div class="col-md-12 panel-info panel-heading "><i><h1>Analyse de document en locale</h1></i></div>
        <div  style="height: 100px;">&nbsp;</div>
        <form name="formulaire" id="formulaire" action="dashboard.php?q=plagiat/resultat" method="post" enctype="multipart/form-data">
            <div>
                <label  class="label" for="document">Catégorie:</label><br>
                <?php $donnees=  lister('categories');
                $i=1;
                echo '<div class="form-control">';
                    foreach ($donnees as $valeur){
                        $categ=new Categorie($valeur);                    
                ?>
                  <?php 
                  echo '<input class="label-default"  type="radio" name="categorie" id="categorie" value="'.$categ->id_cat().'" /><i  type="checkbox">'.$categ->nom_cat() .'</i> ';
                  
                    }
                    echo ''
                    . ' <input  type="radio" name="categorie" id="all" value="all"  class="label-default" required="required"/><i> Tout</i></div>';
                ?>                
            </div>
            <div>
                  <label for="document">Ouvrir le document:</label>
            </div>
            <div class="form-group col-md-6">                
              
                <input  type="file"  class="pull-left"  id="doc" name="doc" accept="file/*" required="required"/>
            </div>
            
            <div class="form-group col-md-6">
                <button onclick="plagitest();" type="submit" name="analyser" id="analyser" class="btn btn-info pull-left" title="Démarrer l'analyse"><span class="fa fa-refresh"></span></button>                
            </div>
        </form>        
        <div style="height: 20px;">&nbsp;</div>
        <!--<a href="dashboard.php">--><button class="btn btn-lg btn-info" id="retours" type="button" onclick="retour();"><i class="fa fa-backward"></i> Retour</button><!--</a>-->
        
    </div>
</div>
<script language="javascript">
    function retour(){
        history.go(-1);
        
    }
</script>