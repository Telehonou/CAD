<?php
    include './Data/Document.php';
    include './Traitement/lister_document.php'; 
$man=new Manager();
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["GEST"]["DOC"]["create"]) || 
authorize($_SESSION["access"]["GEST"]["DOC"]["edit"]) || 
authorize($_SESSION["access"]["GEST"]["DOC"]["view"]) || 
authorize($_SESSION["access"]["GEST"]["DOC"]["delete"]) ) {
 $status = TRUE;
}

if ($status === FALSE) {
die("You dont have the permission to access this page");
}

// set page title
$title = "DOC";
?>
<div class="row">
    <div class="col-lg-12">

        <?php if (authorize($_SESSION["access"]["GEST"]["DOC"]["create"])) {?>
            <button class="btn btn-sm btn-primary panel-heading" id="myBtn" type="button"><i class="fa fa-plus"></i> AJOUTER UN NOUVEAU DOCUMENT</button>
        <?php }?>
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
        <form class="navbar-form navbar-right" action="dashboard.php?q=document/document" method="post">
            <input type="hidden" value="documents" name="table">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="Nom">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="Nom">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-search"></span>Chercher</button>
        </form>
        
        <!--*****************************************************************************************-->
        <div class="row table-responsive col-lg-12">
        <div id="member" class="row table-responsive col-lg-18">
            <table class="table table-striped table-responsive table-hover table-bordered ">
                <thead>
                    <tr style="background-color:#00CCFF">
                    <th>N°</th>
                    <th>Titre</th>
                    <th>auteur(s)</th>
                    <!--<th>Plagiat(%)</th>-->
                    <th> pages</th>
                    <th>réalisation</th>                    
                
                </tr>
                </thead><form class="formcontrol form-control" style="float: left" ></form>
                <tbody>
                    <?php
                    $man=new Manager();
                      $resultat=lister("documents");  
                    if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($resultat);
                    }  else {
                        $attributs = array("id_doc","titre","auteur","description"); 
                        $valeurs = $recherche;
                        $resultat= ListTrie($attributs, $valeurs,'documents');
                        //$resultat=$man->getListTrie("users", $attributs, $valeurs);
                        if($resultat) affiche($resultat);
                        else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
                    }
                }else{
                    affiche($resultat);
                }
                    function affiche(array $resultat){
                    $i=1;
                    foreach ($resultat as $valeur ):
                        $doc=new Document($valeur);
                        $j=0;
                            echo '<tr>';
                            echo'<td>'.$i++.'</td>';
                               echo '<td>'.$doc->titre().'</td>';
                               echo '<td>'.$doc->auteur().'</td>';
                               echo '<td>'.$doc->nombre_page().'</td>';                               
                               if(empty($doc->percen_realisation())){
                                   echo '<td><center><b>--</b></center></td>';
                               }else{
                                   echo '<td><center><b>'.$doc->percen_realisation().'</b></center></td>';
                                   
                               }
                               if (authorize($_SESSION["access"]["GEST"]["DOC"]["edit"])) { 
                               echo '<td>
                                        <a 
                                           href="'.$valeur['doc_dir'].'" download="'.$valeur['titre'].'" >
                                               <span class="glyphicon glyphicon-download-alt" title="télécharger '.$doc->titre().'"></span></a>
                               ';}                               
                               if (authorize($_SESSION["access"]["GEST"]["DOC"]["view"])){
                               echo '
                                        <a 
                                            href="'.$valeur['doc_dir'].'" target="blank" title="visualiser le document" ><span class="glyphicon glyphicon-eye-open"></span></a>
                               ';}
                               if (authorize($_SESSION["access"]["GEST"]["DOC"]["delete"])) {
                               /*echo '<form style="float: right" action="Traitement/t_document.php" method="post">
                                <input type="hidden" value="'.$doc->id_doc().'" name="id_doc">
                                <button type="submit" class="btn btn-small btn-danger "  name="delete" title=" supprimer '.$doc->titre().' " onclick="return confirm(\'Ête vous sur de vouloire suprimer '. $doc->titre().' ?\')">
                                    <span class="glyphicon glyphicon-trash"></span></button>
                                
                               </form>';*/
                               echo '<a href="Traitement/t_document.php?docs='.$doc->id_doc().'" onclick="return confirm(\'Ête vous sur de vouloire suprimer '. $doc->titre().' ?\')"><span class="glyphicon glyphicon-trash"></span></a>';
                               echo '</td></tr>';
                               }
                        endforeach;
                         /* free result set */
                         
                    }?>
                </tbody>
            </table>
        </div>
    </div>
        <!--*****************************************************************************************-->
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
<script src="../../bootstrap/bootstrap/js/jquery.min.js"></script>

<style type="text/css">
    .bs-example{
      margin: 20px;
    }
</style>

