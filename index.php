<link href="logo_1.ico" rel="icon">
<?php

require_once("config.php");

$title = "Login";

$mode = $_REQUEST["mode"];
if ($mode == "login") {
    $username = trim($_POST['username']);
    $pass = trim($_POST['user_password']);
session_unset(); 
    if ($username == "" || $pass == "") {

        $_SESSION["errorType"] = "danger";
        $_SESSION["errorMsg"] = "Enter manadatory fields";
    } else {
        $sql = "SELECT * FROM users WHERE u_username = :uname AND u_password = :upass ";

        try {
            $stmt = $DB->prepare($sql);

            // bind the values
            $stmt->bindValue(":uname", $username);
            $stmt->bindValue(":upass", $pass);

            // execute Query
            $stmt->execute();
            $results = $stmt->fetchAll();

            if (count($results) > 0) {
                $_SESSION["errorType"] = "success";
                $_SESSION["errorMsg"] = "You have successfully logged in.";

                $_SESSION["user_id"] = $results[0]["u_userid"];
                $_SESSION["rolecode"] = $results[0]["u_rolecode"];
                $_SESSION["username"] = $results[0]["u_username"];

                redirect("dashboard.php");
                exit;
            } else {
                $_SESSION["errorType"] = "info";
                $_SESSION["errorMsg"] = "username or password does not exist.";
            }
        } catch (Exception $ex) {

            $_SESSION["errorType"] = "danger";
            $_SESSION["errorMsg"] = $ex->getMessage();
        }
    }
    echo "<script>alert('Login ou mot de passe incorrect')</script>";
    redirect("index.php");
}
?>

    <html lang="fr">
    <?php 
        include 'head.php';        
    ?>
    <link href="img/logo.icon" rel="icon">
    <style type="text/css">
        body{
            background-image:  url("img/0.jpg");
            /*background-color: #22*/
        }
        section{
            background-color: #000;
            margin-top: 55px; 
            margin-left: 160px; 
            margin-bottom: 5px            
        }
        .panel-primary{
            margin-top: 10px;
        }
        .panel-body{
            background-color: #ebebeb;
        }
        /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #000;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    </style>
    <?php 
    require './Data/Manager.php';
    include './Data/Departement.php';
    include './Data/Categorie.php';
    include './Traitement/lister_departement.php';
?>
    <body>
      <?php //include 'header.php';?> 
      <nav class="navbar navbar-inverse navbar-fixed-top"  role="navigation">
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
               <li class=""><a href='index.php'>
                    <span class="glyphicon glyphicon-home"></span> Accueil</a>
               </li>
               <li><a href="#">About</a></li>
            </ul>
           <form class="navbar-form navbar-left" role="search">
              <div class="search-box form-group">
                <input type="text" class="form-control" placeholder="recherche">
                <div class="result"></div>
              </div>
              <button type="submit" class="btn btn-default"><span  class="glyphicon glyphicon-search"></span></button>
            </form>
            <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span><b>Connexion</b> <span class="caret"></span></a>
      <ul id="login-dp" class="dropdown-menu">
        <li>
           <div class="row">
              <div class="col-md-12">
                 <form class="form" role="form" method="post" action="" accept-charset="UTF-8" id="login-nav">
                     <input type="hidden" name="mode" value="login" >
                     <div class="form-group">
			
			<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                               <input type="text" value="" placeholder="User Name" id="username" class="form-control" name="username" required="required" >
                            </div>
                        </div>
                     </div>
                     <div class="form-group">
			
			<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                               <input type="password" value="" placeholder="Password" id="user_password" class="form-control" name="user_password" required="" >
                            </div>                        
                        </div>
                     </div>
                            <!--<div class="help-block text-right"><a href="">Mot de passe oublié ?</a></div>-->
                    
                    <div class="form-group">
                       <button type="submit" class="btn btn-primary btn-block" value="ok">Connexion</button>
                    </div>
                 </form>
              </div>
           </div>
        </li>
      </ul>
       </div>
    </nav>
        <div class="panel panel-info">
          <div class="panel-heading"><center><h3>CENTRE D'ACCES A LA DOCUMENTATION</h3></center></div>
            <div class="panel-body">                             
                <div class="col-sm-8 text-left"> 
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
                 
                    <div class="panel panel-primary" id="doc">
                        <div class="panel-primary col-md-12">
                        <div class="panel-title Bienven"><h1 class="title">Bienvenue au CAD</h1></div>
                        
                          <p class="Bienvenue">Le Centre d’accès à la documentation (CAD) est un outil qui permet de dématérialiser, classer, rechercher, stocker et diffuser des documents à partir d’une plateforme informatique</p>
                          <div class="Bienvenu">
                              <h3 class="title">UDS</h3>
                          <p>UIT/FV Bandjoun...</p>
                          </div>
                          </div>
                          <?php include("caroussel.php"); ?>
                    </div> 
                        <?php    
                    }
                ?>
                </div>
                <div class="col-sm-3 sidenav">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><i>Catégories de documents disponibles</i></a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <?php 
                                $man=new Manager();
                                $donnees=$man->getList('categories');
                                echo'<ul>'; $i=0;
                                foreach ($donnees as $valeur){
                                   $id="cat" .$i;
                                echo'<li><b><a id="'.$id.'" href="#" >'.$valeur['nom_cat'].'s</a></b></li>';
                                $i++;}?>                
                            </div>
                        </div>
                    </div>
                    <div class="btn btn-block btn-default btn-lg"><a href="index.php?q=contact/contacts"><span class=" glyphicon glyphicon-envelope " > Nous Contacté</span></a></div>
                </div>
            </div> 
        </div>
            <?php include 'footer.php';?>       
    </body>
    <script type="text/javascript">
 var nbr="<?php echo $i; ?>";
 var nbrs="<?php echo $id; ?>";
     //alert(nbr);
     //alert(nbrs);
     
$(document).ready(function() {
    for(i=0; i<=nbr; i++){
        var l="" ;        
		$("#cat"+i).click(function (){ 
			l = $(this).html();                        
                        window.location=("index.php?q=document/lister&&name="+l);
			
			$.ajax({
  
  success: function(msg){  $("#cat"+i).html( msg );}
                       });
		});
            }
        });
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
</script>

</html>
