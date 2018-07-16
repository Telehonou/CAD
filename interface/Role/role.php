<?php
require_once("Data/Role.php");
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["GEST"]["ROL"]["create"]) ||
    authorize($_SESSION["access"]["GEST"]["ROL"]["edit"]) ||
    authorize($_SESSION["access"]["GEST"]["ROL"]["view"]) ||
    authorize($_SESSION["access"]["GEST"]["ROL"]["delete"]) ) {
    $status = TRUE;
}

if ($status === FALSE) {
    die("You dont have the permission to access this page");
}

// set page title
$title = "ROL";

?>
<div class="row">
    <div class="col-lg-12">

        <?php if (authorize($_SESSION["access"]["GEST"]["ROL"]["create"])) { ?>
            <a href="dashboard.php?q=Role/nouveau"><button class="btn btn-sm btn-primary" type="button"><i class="fa fa-plus"></i> AJOUTER UN ROLE</button> </a>
        <?php } ?>
        <div style="height: 10px;">&nbsp;</div>
        <form class="navbar-form navbar-right" action="dashboard.php?q=Role/role" method="post">
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
                    <th><center>Roles</center></th>

                    <th style="width: 280px;" colspan="2"><center>Actions</center></th>
                </tr>
                </thead>
                <tbody>

                <?php
                $donnees = lister('roles');

                if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($donnees);
                    }  else {
                        $attributs = array("role_rolecode","role_rolename");
                        $valeurs = $recherche;
                        $donnees = ListTrie($attributs, $valeurs,"roles");
                        if($donnees) affiche($donnees);
                        else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
                    }
                }else{
                    affiche($donnees);
                }
                function affiche(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $role = new Role($value);
                        ?>
                        <tr>
                            <form action="./Traitement/t_role.php" method="post">
                                <input type="hidden" value="<?php echo $role->role_rolecode();?>" name="id">
                                <td><?php echo $i++;?></td>
                                <td><input type="text" value="<?php echo $role->role_rolename();?>" name="id" size="15"></td>
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["ROL"]["edit"])) { ?>
                                        <input type="submit" class="btn btn-info"  id="update" value="Modifier" name="update">
                                    <?php } ?>
                                </td>

                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["ROL"]["delete"])) { ?>
                                        <input type="submit" class="btn btn-danger delete" value="Supprimer" name="delete" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php echo $role->role_rolename(); ?>?')">
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