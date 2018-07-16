<?php
require_once("Data/Module.php");
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["GEST"]["MOD"]["create"]) ||
    authorize($_SESSION["access"]["GEST"]["MOD"]["edit"]) ||
    authorize($_SESSION["access"]["GEST"]["MOD"]["view"]) ||
    authorize($_SESSION["access"]["GEST"]["MOD"]["delete"]) ) {
    $status = TRUE;
}

if ($status === FALSE) {
    die("You dont have the permission to access this page");
}

// set page title
$title = "MOD";

?>
<div class="row">
    <div class="col-lg-12">

        <?php if (authorize($_SESSION["access"]["GEST"]["MOD"]["create"])) { ?>
            <a href="dashboard.php?q=Module/nouveau"><button class="btn btn-sm btn-primary" type="button"><i class="fa fa-plus"></i> AJOUTER UN MODULE</button> </a>
        <?php } ?>
        <div style="height: 10px;">&nbsp;</div>
        <form class="navbar-form navbar-right" action="dashboard.php?q=Module/module" method="post">
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
                    <th><center>Modules</center></th>

                    <th style="width: 280px;" colspan="2"><center>Actions</center></th>
                </tr>
                </thead>
                <tbody>

                <?php
                $donnees = lister('modules');

                if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($donnees);
                    }  else {
                        $attributs = array('idm','mod_modulegroupcode','mod_modulegroupname','mod_modulecode','mod_modulename','mod_modulegrouporder','mod_moduleorder','mod_modulepagename');
                        $valeurs = $recherche;
                        $donnees = ListTrie($attributs, $valeurs,"modules");
                        if($donnees) affiche($donnees);
                        else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
                    }
                }else{
                    affiche($donnees);
                }
                function affiche(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $module = new Module($value);
                        ?>
                        <tr>
                            <form action="./Traitement/t_module.php" method="post">
                                <input type="hidden" value="<?php echo $module->idm();?>" name="id">
                                <td><?php echo $i++;?></td>
                                <td><input type="text" value="<?php echo $module->mod_modulecode();?>" name="id" size="15"></td>
                                <td><input type="text" value="<?php echo $module->mod_modulename();?>" name="id" size="15"></td>
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["MOD"]["edit"])) { ?>
                                        <input type="submit" class="btn btn-info"  id="update" value="Modifier" name="update">
                                    <?php } ?>
                                </td>

                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["MOD"]["delete"])) { ?>
                                        <input type="submit" class="btn btn-danger delete" value="Supprimer" name="delete" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php //echo $role->role_rolename(); ?>?')">
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