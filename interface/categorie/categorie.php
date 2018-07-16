<?php
/*require './Data/Manager.php';
    include './Data/Categorie.php';
    include './Traitement/lister_categorie.php'; */
require_once("config.php");
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["GEST"]["DPT"]["create"]) || 
authorize($_SESSION["access"]["GEST"]["DPT"]["edit"]) || 
authorize($_SESSION["access"]["GEST"]["DPT"]["view"]) || 
authorize($_SESSION["access"]["GEST"]["DPT"]["delete"]) ) {
 $status = TRUE;
}

if ($status === FALSE) {
die("You dont have the permission to access this page");
}

// set page title
$title = "DPT";

?>
<div class="row">
    <div class="col-lg-12">

        <?php if (authorize($_SESSION["access"]["GEST"]["DPT"]["create"])) { ?>
        <a href="dashboard.php?q=categorie/nouveau"><button class="btn btn-sm btn-primary" type="button"><i class="fa fa-plus"></i> AJOUTER UNE CATEGORIE</button> </a>
        <?php } ?>
        <div style="height: 10px;">&nbsp;</div>
        <form class="navbar-form navbar-right" action="dashboard.php?q=categorie/categorie" method="post">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="nom ou description">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="nom ou description">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-search"></span>Chercher</button>
        </form>

        <div class=" table-responsive">
            <table class="table table-striped table-hover ">
                <thead>
                <tr>
                    <th>#</th>
                    <th><center>Catégorie</center></th>
                    <th><center>Description</center></th>
                    <th style="width: 280px;" colspan="2"><center>Actions</center></th>
                </tr>                
            </thead>
                <tbody>

                    <?php
                $donnees = lister('categories');
                
                if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($donnees);
                    }  else {
                        $attributs = array("id_cat","nom_cat","desc_cat"); 
                        $valeurs = $recherche;
                        $donnees = ListTrie($attributs, $valeurs,"categories");
                        if($donnees) affiche($donnees);
                        else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
                    }
                }else{
                    affiche($donnees);
                }
                function affiche(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $categorie = new Categorie($value);
                ?>
                        <tr>
                             <form action="./Traitement/t_categorie.php" method="post">
                                <input type="hidden" value="<?php echo $categorie->id_cat();?>" name="id_cat">
                                <td><?php echo $i++;?></td>                        
                                <td><input type="text" value="<?php echo $categorie->nom_cat();?>" name="nom_cat" size="10"></td>
                                <td><input type="text" value="<?php echo $categorie->desc_cat();?>" name="desc_cat" size="40"></td>                        
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["DPT"]["edit"])) { ?>
                                    <input type="submit" class="btn btn-info"  update" value="Modifier" name="update">
                                    <?php } ?>
                                </td>
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["DPT"]["delete"])) { ?>
                                    <input type="submit" class="btn btn-danger delete" value="Supprimer" name="delete" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php echo $categorie->nom_cat(); ?>?')">
                                    <?php } ?>
                                </td>
                            </form>
                        </tr>
                    <?php } } ?>

                </tbody></table>
        </div>
        <div style="height: 20px;">&nbsp;</div>
        <a href="dashboard.php"><button class="btn btn-lg btn-info" type="button"><i class="fa fa-backward"></i> Retour</button></a>
    </div>
</div>