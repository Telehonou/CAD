<script src="../../js/jquery.min.js"></script>

<?php


    include './Data/Annonce.php';

require_once("config.php");
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["ANO"]["ANA"]["create"]) || 
authorize($_SESSION["access"]["ANO"]["ANA"]["edit"]) || 
authorize($_SESSION["access"]["ANO"]["ANA"]["view"]) || 
authorize($_SESSION["access"]["ANO"]["ANA"]["delete"]) ) {
 $status = TRUE;
}

if ($status === FALSE) {
die("You dont have the permission to access this page");
}

// set page title
$title = "ANA";

?>
<div class="row " >
    <div class="col-lg-12 responsive-utilities panel-heading">

        <?php if (authorize($_SESSION["access"]["ANO"]["ANA"]["create"])) { ?>
            <button class="btn btn-sm btn-primary panel-heading" id="myBtn" type="button"><i class="glyphicon glyphicon-plus"></i> </button><!-- </a>-->
        <?php } ?>
            <div class="container col-lg-12 responsive-utilities" >
  
  <!-- Trigger the modal with a button -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content ">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:royalblue;"><span class="glyphicon glyphicon-annonce"></span> Nouvelle Annonce</h4>
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
            <div style="height: 10px;" >&nbsp;</div>
        <form class="navbar-form navbar-right" action="dashboard.php?q=annonce/annonce" method="post">
            <input type="hidden" value="annonces" name="table">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="Nom">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="Nom">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-search"></span>Chercher</button>
        </form>
        <!-- Modal -->
        
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="memberModalLabel">Edition d'une Annonce</h4>
            </div>
            <div class="dash">

            </div>

        </div>
    </div>
</div>
        <!-- Modal view/détail -->
        
<div class="modal fade " id="view" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="memberModalLabel">consulter</h4>
                
            </div>
            <div class="dash">

            </div>

        </div>
    </div>
</div>
        
<div class="container responsive-utilities">
    <div class="row">
        <div class="col-lg-8 responsive-utilities" >
            <h1 class="page-header responsive-utilities">Annonces</h1>
        </div>
        
    </div>
    <div class="row table-responsive col-lg-10 ">
        <div id="member" class="row table-responsive col-lg-10 ">
            <form class="formcontrol form-control" style="float: left" ></form>
                
                    <?php
                    $man=new Manager();
                      $resultat=lister("annonces");  
                    if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($resultat);
                    }  else {
                        $attributs = array("titre","contenu"); 
                        $valeurs = $recherche;
                        $resultat= ListTrie($attributs, $valeurs,'annonces');
                        //$resultat=$man->getListTrie("annonces", $attributs, $valeurs);
                        if($resultat) affiche($resultat);
                        else echo'<center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center>';
                    }
                }else{
                    affiche($resultat);
                }
                    function affiche(array $resultat){
                    $man=new Manager();
                                foreach ($resultat as $data){
                                    $anonce=new Annonce($data);
                                    echo '<p><span class="titre_annonce">'.$anonce->titre().'</span><br>';
                                    if (authorize($_SESSION["access"]["ANO"]["ANA"]["edit"])) { 
                               echo '<td>
                                        <a class="fichier_annonce"
                                           data-toggle="modal" title="éditer"
                                           data-target="#exampleModal"
                                           data-whatever="'.$anonce->idannonce().' "><span class="glyphicon glyphicon-pencil"></span></a>
                               ';}
                                    if (authorize($_SESSION["access"]["ANO"]["ANA"]["delete"])) {
                                    echo '<a href="Traitement/t_annonce.php?anonceid='.$anonce->idannonce().'" class="fichier_annonce "
                                            . onclick="return confirm("Ête vous sur de vouloire suprimer '. $anonce->titre().'" ?);"><span class="glyphicon glyphicon-trash"></span></a>';
                                    }
                                    echo "<a href=\"dashboard.php?q=Traitement/t_annonce&&id=".$anonce->idannonce()."\" class='fichier_annonce '></a>".$anonce->fichier()." </span> </br> ";
                                    echo "<span class='contenu_annonce '>".$anonce->fichier()." </span> </br> ";
                                    echo "<span class='contenu_annonce '>".$anonce->contenu()." </span> </br>  Publier par:";                                    
                                    $table=array("users");
                                    $attribut=array('*');
                                    $condition="u_userid=".$anonce->userid();
                                    $emmetteur=$man->Lister($attribut, $table, $condition);
                                    foreach ($emmetteur as $emet){
                                        $user=$emet['u_name'];
                                    }
                                    echo "<span class='contenu_annonce'>".$user."</span><br> Le ";
                                    echo "<span class='contenu_annonce'>".$anonce->datecreation()."</span><br> ";
                                
                                }
                    }?>                
        </div>
    </div>
</div>        
        <!--- ***************************-->
        
        <div style="height: 20px;">&nbsp;</div>
        <a href="dashboard.php"><button class="btn btn-lg btn-info" type="button"><i class="fa fa-backward"></i> Retour</button></a>
    </div>
</div>
<script>
    $(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal('show');
  });
    $('#exampleModal').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this);
          var dataString = 'id=' + recipient;

            $.ajax({
                type: "GET",
                url: "Interface/annonce/editer_annonce.php",
                data: dataString,
                cache: false,
                success: function (data) {
                    console.log(data);
                    modal.find('.dash').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
    })
    });
</script>