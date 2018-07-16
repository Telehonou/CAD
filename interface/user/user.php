<script src="../../js/jquery.min.js"></script>

<?php


    include './Data/User.php';

require_once("config.php");
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}
$status = FALSE;
if ( authorize($_SESSION["access"]["GEST"]["USER"]["create"]) || 
authorize($_SESSION["access"]["GEST"]["USER"]["edit"]) || 
authorize($_SESSION["access"]["GEST"]["USER"]["view"]) || 
authorize($_SESSION["access"]["GEST"]["USER"]["delete"]) ) {
 $status = TRUE;
}

if ($status === FALSE) {
die("You dont have the permission to access this page");
}

// set page title
$title = "USER";

?>
<div class="row " >
    <div class="col-lg-12 responsive-utilities panel-heading">

        <?php if (authorize($_SESSION["access"]["GEST"]["USER"]["create"])) { ?>
            <!--<a href="dashboard.php?q=user/nouveau">-->
            <button class="btn btn-sm btn-primary panel-heading" id="myBtn" type="button"><i class="fa fa-plus"></i> AJOUTER UN NOUVEAU UTILISATEUR</button><!-- </a>-->
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
          <h4 style="color:royalblue;"><span class="glyphicon glyphicon-user"></span> Nouveau Utilisateur</h4>
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
        <form class="navbar-form navbar-right" action="dashboard.php?q=user/user" method="post">
            <input type="hidden" value="users" name="table">
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
                <h4 class="modal-title" id="memberModalLabel">Edition d'un utilisateur</h4>
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
                <h4 class="modal-title" id="memberModalLabel">Détails</h4>
                
            </div>
            <div class="dash">

            </div>

        </div>
    </div>
</div>
        
<div class="container responsive-utilities">
    <div class="row">
        <div class="col-lg-8 responsive-utilities" >
            <h1 class="page-header responsive-utilities">Listing des utiilisateurs</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row table-responsive col-lg-10 ">
        <div id="member" class="row table-responsive col-lg-10 ">
            <table class="table table-striped table-hover table-bordered ">
                <thead>
                <tr>
                    <th>N°</th>
                    <th>Avatar</th>
                    <th>Nom</th>
                    <th>Téléphone</th>
                    <!--<th>Addresse électronique</th>
                    <th>login</th>-->
                    <th></th>
                </tr>
                </thead><form class="formcontrol form-control" style="float: left" ></form>
                <tbody>
                    <?php
                    $man=new Manager();
                      $resultat=lister("users");  
                    if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($resultat);
                    }  else {
                        $attributs = array("u_userid","u_name","email"); 
                        $valeurs = $recherche;
                        $resultat= ListTrie($attributs, $valeurs,'users');
                        //$resultat=$man->getListTrie("users", $attributs, $valeurs);
                        if($resultat) affiche($resultat);
                        else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
                    }
                }else{
                    affiche($resultat);
                }
                    function affiche(array $resultat){
                    $i=1;
                    foreach ($resultat as $valeur):
                        $user=new User($valeur);
                            echo '<tr>';
                            echo'<td>'.$i++.'</td>';
                               echo '<td><a href="'.$valeur['avatar'].'" target="blank"><img src="'.$valeur['avatar'].'" class="img-rounded" height="40px" width="40px"  ></a></td>';
                               echo '<td>'.$valeur['u_name'].'</td>';
                               echo '<td>'.$valeur['telephone'].'</td>';
                               if (authorize($_SESSION["access"]["GEST"]["USER"]["edit"])) { 
                               echo '<td>
                                        <a class="btn btn-small btn-primary"
                                           data-toggle="modal" title="éditer"
                                           data-target="#exampleModal"
                                           data-whatever="'.$valeur['u_userid'].' "><span class="glyphicon glyphicon-pencil"></span></a>
                               ';}
                               if (authorize($_SESSION["access"]["GEST"]["USER"]["delete"])) {
                               echo '<form style="float: right" action="./Traitement/t_user.php" method="post">
                                <input type="hidden" value="'.$user->u_userid().'" name="u_userid">
                                <button type="submit" class="btn btn-sm btn-danger "  name="delete" title=" supprimer" onclick="return confirm(\'Ête vous sur de vouloire suprimer '. $user->u_name().' ?\')">
                                    <span class="glyphicon glyphicon-trash"></span></button>
                                
                               </form></td>';
                               
                               }
                               if (authorize($_SESSION["access"]["GEST"]["USER"]["view"])){
                               echo '<td>
                                        <a class="btn btn-small btn-warning"
                                           data-toggle="modal" title="View"
                                           data-target="#view"
                                           data-whatever="'.$valeur['u_userid'].' "><span class="glyphicon glyphicon-eye-open"></span></a>
                               </td></tr>';}
                        endforeach;
                         /* free result set */
                         
                    }?>
                </tbody>
            </table>
        </div>
    </div>
</div>        
        <!--- ***************************-->
        <div class=" table-responsive" style="display:none">
            <table class="table table-striped table-hover ">
                <tbody><tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Adresse électronique:</th>
                        <th style="width: 280px;" colspan="3">Actions</th>
                    </tr>
  <div id="detail">
                <?php include("afficher_info.php");?>
            </div><?php
                function affiches(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $user = new User($value);
                ?>
                        <tr>
                            <form action="./Traitement/t_user.php" method="post">
                                <input type="hidden" value="<?php echo $user->u_userid();?>" name="u_userid">
                                <td><?php echo $i++;?></td>                        
                                <td><input disabled type="text" value="<?php echo $user->u_name();?>" name="u_username" size="30"></td>
                                <td><input disabled type="text" value="<?php echo $user->email();?>" name="email" size="30"></td>
                                <td><input type="hidden" name="table" value="users" id="table"/></td>                        
                                <td>
                                    <?php if (authorize($_SESSION["access"]["GEST"]["USER"]["edit"])) { ?>
                                    <a class="btn btn-sm btn-primary" href="dashboard.php?q=user/edit_profil&edit_id=<?php echo $user->u_userid(); ?>"><span class="glyphicon glyphicon-pencil"></span> Editer</a> 
                                    <?php }//interface/user/aeduser/editform.php?edit_id=<?php $user->u_userid();  ?>
                                </td>
                                <td>
                                    
                                    <?php if (authorize($_SESSION["access"]["GEST"]["USER"]["delete"])) { ?>
                                    <input type="submit" class="btn btn-sm btn-danger " value="Supprimer" name="delete" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php echo $user->u_name(); ?>?')">
                                    <?php } ?>
                                </td>
                            </form>
                            <form action="dashboard.php?q=user/user" method="post">
                                <input  type="hidden" value="<?php echo $user->u_userid();?>" name="u_userid">
                                <td>
                                    
                                <?php if (authorize($_SESSION["access"]["GEST"]["USER"]["view"])) { ?>
                                    <input class="btn btn-sm btn-warning toggle-btn" type="submit" value="Détails" name="afficher">
                                <?php } ?>
                                </td>
                            </form>
                                
                        </tr>
                    <?php }} ?>

                </tbody></table>
                <?php if (isset($_POST['afficher'])) {

                        $sql="SELECT * FROM users  ,roles "
                              ."WHERE users.u_rolecode=roles.role_rolecode AND users.u_userid=".$_POST['u_userid'];
                        $stmt = $DB->prepare($sql);
                            $stmt->execute();
                            $allModules = $stmt->fetchAll();
                            foreach ($allModules as $k=>$val){
                            $nom=$val['u_name'];
                            $login=$val['u_username'];
                            $passeword=$val['u_password'];
                            $email=$val['email'];
                            $tel=$val['telephone'];
                            $avatar=$val['avatar'];
                            $rol=$val['role_rolename'];
                            $datc=$val['created_at'];
                            $datu=$val['updated_at'];
                        }?>
            <div id="detail">
                <?php include("afficher_info.php");?>
            </div>
 <?php }
                 ?>
                 
        </div>
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
                url: "Interface/user/editdata.php",
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
    $('#view').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this);
          var dataString = 'id=' + recipient;

            $.ajax({
                type: "GET",
                url: "Interface/user/afficher_info.php",
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