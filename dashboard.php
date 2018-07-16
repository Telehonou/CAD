
<?php
//copyleaks dependencies 
include_once( __DIR__.'/vendor/copyleaks/php-plagiarism-checker/autoload.php');
use Copyleaks\CopyleaksCloud;
use Copyleaks\CopyleaksProcess;
require_once("config.php");

if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("index.php");
}

// set page title
$title = "Dashboard";
// if the rights are not set then add them in the current session
if (!isset($_SESSION["access"])) {

    try {

        $sql = "SELECT mod_modulegroupcode, mod_modulegroupname FROM modules "
                . " WHERE 1 GROUP BY `mod_modulegroupcode` "
                . " ORDER BY `mod_modulegrouporder` ASC, `mod_moduleorder` ASC  ";


        $stmt = $DB->prepare($sql);
        $stmt->execute();
        $commonModules = $stmt->fetchAll();

        $sql = "SELECT mod_modulegroupcode, mod_modulegroupname, mod_modulepagename,  mod_modulecode, mod_modulename FROM modules "
                . " WHERE 1 "
                . " ORDER BY `mod_modulegrouporder` ASC, `mod_moduleorder` ASC  ";

        $stmt = $DB->prepare($sql);
        $stmt->execute();
        $allModules = $stmt->fetchAll();

        $sql = "SELECT rr_modulecode, rr_create,  rr_edit, rr_delete, rr_view FROM role_rights "
                . " WHERE  rr_rolecode = :rc "
                . " ORDER BY `rr_modulecode` ASC  ";

        $stmt = $DB->prepare($sql);
        $stmt->bindValue(":rc", $_SESSION["rolecode"]);
        
        
        $stmt->execute();
        $userRights = $stmt->fetchAll();

        $_SESSION["access"] = set_rights($allModules, $userRights, $commonModules);

    } catch (Exception $ex) {

        echo $ex->getMessage();
    }
}
?>
<head>        
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/singin.css">
    <link rel="stylesheet" type="text/css" href="css/contact.css">  
    <link rel="stylesheet" type="text/css" href="css/inscriptio.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/css/font-awesome.css">  
    <link href="img/logo.icon" rel="icon">
    <title>CAD </title>
    <script src="bootstrap/bootstrap/js/jquery.js"></script>
    <script src="bootstrap/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        placement : 'top'
    });
});
</script>
<?php 
    require './Data/Manager.php';
    require './Data/Cryptage.php';
    include './Data/Departement.php';
    include './Data/Categorie.php';
    include './Traitement/lister_departement.php';
?>
</head>
<?php
    $sql="SELECT * FROM users  ,roles "
        ."WHERE users.u_rolecode=roles.role_rolecode AND users.u_userid=".$_SESSION['user_id'];

                            $stmt = $DB->prepare($sql);
                            $stmt->execute();
                            $allModules = $stmt->fetchAll();
                            foreach($allModules as $k => $val){
                            $nom=$val['u_name'];
                            $login=$val['u_username'];
                            $passeword=$val['u_password'];
                            $email=$val['email'];
                            $tel=$val['telephone'];
                            $avatar=$val['avatar'];
                            $rol=$val['role_rolename'];
                            $datc=$val['created_at'];
                            $datu=$val['updated_at'];
                        }
 ?>
<nav class="navbar navbar-inverse navbar-fixed-top  "  role="navigation">
        <div class="navbar-header">
           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="#accueil"><img src="img/logo.png" height="200%"  class="img-circle" width="120%"></a>
       </div>
       <div class="collapse navbar-collapse">
           <ul class="nav navbar-nav">
               <li class=""><a href="dashboard.php?q=/index">
                    <span class="glyphicon glyphicon-home"></span> Accueil</a>
               </li>
               <li><a href="#">About</a></li>               
               <?php foreach ($_SESSION["access"] as $key => $access) { ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-book"></span><?php echo $access["top_menu_name"]; ?> <span class="caret"></span>
                </a>                        
                        <?php
                        echo '<div class="dropdown-menu" aria-labelledby="dropdown01">';
                        foreach ($access as $k => $val) {
                            if ($k != "top_menu_name") {
                               
                               echo'<a class="dropdown-item" href="' . ($val["page_name"]) . '">
                                <span class="fa fa-forward"></span> ' . $val["menu_name"] .'
                                </a><br>';
                                ?>
                                <?php
                            }
                        }
                        echo '</div>';
                        ?>
                    </li>
                    <?php
                }
                ?>

           </ul>
           <form class="navbar-form navbar-left" role="search">
              <div class="search-box form-group">
                <input type="text" class="form-control" placeholder="recherche">
                <div class="result"></div>
              </div>
              <button type="submit" class="btn btn-default"><span  class="glyphicon glyphicon-search"></span></button>
            </form>            
            <ul class="nav navbar-nav navbar-right">
          
                          <a class="inbox-avatar" href="javascript:;">
                              <img  width="35" hieght="30" class="img-circle " src="<?php echo $avatar; ?>">
                          </a>

      <div class="pull-right ">
                <ul class="nav pull-right">
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Bienvenu, <?php echo $login; ?></b> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="dashboard.php?q=user/edit_profil&id="<?php $_SESSION['user_id'] ?>><i class="glyphicon glyphicon-cog"></i> Edité mes infos</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="logout.php"><i class="glyphicon glyphicon-off"></span></i> Déconnecté</a></li>
                        </ul>
                    </li>
                </ul>
              </div>
       </div>       
    </nav>
    
<div class="panel panel-info">
          <div class="panel-heading"><center><h3>CENTRE D'ACCES A LA DOCUMENTATION</h3></center></div>
         
            <div class="panel-body">                              
                <div class="col-sm-9 text-left"> 
                    <div class="loader"><img src="img/processing.gif"/></div>
                    <?php if(isset($_GET['q']) and file_exists("interface/".$_GET['q'].'.php')){ ?>
                        <div class="panel panel-primary">
                            <div class="navbar-fixed-top panel-heading titre1" style="display: none">
                                <center><div class="resultat"></div></center>
                            </div><div class="panel-body">
                                <?php include ("interface/".$_GET['q'].".php");  ?> 
                            </div>
                            <div class="panel-footer">

                            </div>
                        </div> 
                    <?php }else{ ?>        
                 
                    <div class="panel panel-primary">
                        <div class="container">
                            <div class="row">        
                                <div class="col-md-9 ">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">  <h4 >Profil utilisateur</h4></div>
                                            <div class="panel-body">       
                                                <div class="box box-info">        
                                                    <div class="box-body">
                                                        <div class="col-sm-6">
                                                            <div  align="center"> <img alt="Photo de profil" src="<?php echo $avatar; ?>" id="profile-image1" class="img-circle img-responsive"> 
                
                                                            <!--<input id="profile-image-upload" class="hidden" type="file">
                                                            <div style="color:#999;" >Cliquez sur la photo pour modifier</div>-->
                <!--Upload Image Js And Css-->
                                                        </div><br>
    
              <!-- /input-group -->            </div>
                                               <div class="col-sm-6">
                                                <h4 style="color:#00b1b1;"><?php echo $nom ?> </h4></span>
                                                  <span><p><?php echo $rol; ?></p></span>            
                                                </div>
                                                <div class="clearfix"></div>
                                                <hr style="margin:5px 0 5px 0;">
<div class="clearfix"></div>
<div class="bot-border"></div>
<div class="col-sm-5 col-xs-6 tital " >Nom:</div><div class="col-sm-7 col-xs-6 "><?php echo $nom ?></div>
     <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Mot de passe:</div><div class="col-sm-7"> <?php echo $passeword ?></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Date de création du compte:</div><div class="col-sm-7"><?php echo $datc; ?></div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Date de mise à jour:</div><div class="col-sm-7"><?php echo $datu; ?></div>
<div class="clearfix"></div>
<div class="bot-border"></div>
<div class="col-sm-5 col-xs-6 tital " >Adresse électronique:</div><div class="col-sm-7"> <?php echo $email ?></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>
<div class="col-sm-5 col-xs-6 tital " >Téléphone :</div><div class="col-sm-7"> <?php echo '(+237) ' .$tel ?></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
    </div> 
    </div>
</div>      
</div>
</div>
                    </div> 
                        <?php    
                    }
                ?>
                </div>
                <div class="col-sm-3 sidenav">
                  <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" title="Cliquer pour dérouler le formulaire" data-parent="#accordion" href="#collapseTree"><i>Annonces</i></a>
                            </h4>
                        </div>
                        <a href="#"></a>
                        <div id="collapseTree" class="panel-collapse collapse in">
                            <div class="panel-body ">                                
                                
                                <?php 
                                include 'Data/Annonce.php';
                             include './interface/annonce/vue_annonce.php';
                             
                                ?>
                            </div>
                        </div>                        
                    </div>               
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" title="Cliquer pour dérouler le formulaire" data-parent="#accordion" href="#collapseOne"><i>Recherches de documents</i></a>
                            </h4>
                        </div>
                        <a href="interface/document/recherche.php"></a>
                        <div id="collapseOne" class="panel-collapse collapse  ">
                            <div class="panel-body">
                                <p><?php include './interface/document/recherche.php';?></p>
                            </div>
                        </div>                        
                    </div>               
                
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><i>Vos documents</i></a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <!--<h4>voici les document que vous avez déposer</h4>-->
                                <?php
                                $man=new Manager();
                                $table=array('documents');
                                $attribut=array('*');                                
                                $condition="user_id=".$_SESSION['user_id'];
                                $donne=$man->Lister($attribut, $table, $condition);
                                echo '<ul>';
                                foreach ($donne as $val){
                                    echo'<li><a href="'.$val['doc_dir'].'" >'.$val['titre'].'</a></li><br>';                                    
                                }
                                echo '</ul>';
                                //var_dump($donne);
                                ?>
                            </div>
                        </div>                        
                    </div>
                      <div class="btn btn-block btn-default btn-lg"><a href="dashboard.php?q=contact/contacts"><span class=" glyphicon glyphicon-envelope " > Contactez nous</span></a></div>
            </div> 
        </div>
        </div>
        </div>
            <?php include 'footer.php';?>       
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(window).load(function() {
	$(".loader").fadeOut("1000");
})
</script>
    </body>
    <script type="text/javascript">
$(document).ready(function(){
    
        for(i=0;i<150;i++){
        
    }
    $(".menu_g").
    alert ("ok");
    
    $('.search-box input[type="text"]').on("keyup input", function(){
        /* Get input value on change */
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("backend-search.php", {term: inputVal}).done(function(data){
                // Display the returned data in browser
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });
    
    // Set search input value on click of result item
    $(document).on("click", ".result p", function(){
        $(this).parents(".search-box").find('input[type="text"]').val($(this).text());
        $(this).parent(".result").empty();
    });
});
</script>

</html>
