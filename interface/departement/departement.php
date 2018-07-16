<?php
/*require './Data/Manager.php';
    include './Data/Departement.php';
    include './Traitement/lister_Departement.php'; */
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
        
            <button class="btn btn-sm btn-primary" type="button" id="myBtn" ><i class="fa fa-plus"></i> AJOUTER UN DEPARTEMENT</button> 
        <?php } ?>
            <div class="container">
  
  <!-- Trigger the modal with a button -->  

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:royalblue;"><span class="glyphicon glyphicon-book"></span> Dépot de documents</h4>
        </div>
        <div class="modal-body">
          <?php include 'nouveau.php'; ?>          
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
        </div>
      </div>
    </div>
  </div>
</div>
        <div style="height: 10px;">&nbsp;</div>
        <form class="navbar-form navbar-right" action="dashboard.php?q=Departement/departement" method="post">
            <input type="hidden" value="departements" name="table">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="Recherche Département">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="Recherche Département">
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
                    <th style="width: 280px;"><center>Actions</center></th>
                </tr>                
            </thead>
                <tbody>

                    <?php
                $donnees = lister("departements");
                
                if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($donnees);
                    }  else {
                        $attributs = array("id_dpt","code_dpt","libel_dpt"); 
                        $valeurs = $recherche;
                        $donnees = ListTrie($attributs, $valeurs);
                        if($donnees) affiche($donnees);
                        else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
                    }
                }else{
                    affiche($donnees);
                }
                function affiche(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $Departement = new Departement($value);
                ?>
                        <tr>
                             <form action="./Traitement/t_departement.php" method="post">
                                <input type="hidden" value="<?php echo $Departement->id_dpt();?>" name="id_dpt">
                                <td><?php echo $i++;?></td>                        
                                <td><input type="text" value="<?php echo $Departement->code_dpt();?>" name="code_dpt" size="10"></td>
                                <td><input type="text" value="<?php echo $Departement->libel_dpt();?>" name="libel_dpt" size="40"></td>
                                <td><input type="hidden" name="table" value="departements" id="table"/></td>                        
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["DPT"]["edit"])) { ?>
                                    <input type="submit" class="btn btn-sm btn-info"  update" value="Modifier" name="update">
                                    <?php } ?>
                                </td>
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["DPT"]["delete"])) { ?>
                                    <input type="submit" class="btn btn-sm btn-danger delete" value="Supprimer" name="delete" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php echo $Departement->libel_dpt(); ?>?')">
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
<script type="text/javascript">
$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal('show');
  });
});
</script>