<?php
//	require_once 'dbcon.php';
require '../../Data/Manager.php';
 
 $man=new Manager();
 $DB_con= $man->connexion();
 $DB=$man->connexion();
	
	if(isset($_GET['delete_id']))
	{
		$stmt_select = $DB_con->prepare('SELECT avatar FROM users WHERE u_userid =:uid');
		$stmt_select->execute(array(':uid'=>$_GET['delete_id']));
		$imgRow=$stmt_select->fetch(PDO::FETCH_ASSOC);
		unlink("user_images/".$imgRow['avatar']);
		$stmt_delete = $DB_con->prepare('DELETE FROM u_username WHERE u_userid =:uid');
		$stmt_delete->bindParam(':uid',$_GET['delete_id']);
		$stmt_delete->execute();	
		header("Location: index.php");
	}
?>
<?php
//require_once("../../../config.php");

if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") {
    // not logged in send to login page
    redirect("dashboard.php?q=index");
}

// set page title
$title = "Dashboard";
// if the rights are not set then add them in the current session
if (!isset($_SESSION["access"])) {

    try {

        $sql = "SELECT mod_modulegroupcode, mod_modulegroupname FROM module "
                . " WHERE 1 GROUP BY `mod_modulegroupcode` "
                . " ORDER BY `mod_modulegrouporder` ASC, `mod_moduleorder` ASC  ";


        $stmt = $DB->prepare($sql);
        $stmt->execute();
        $commonModules = $stmt->fetchAll();

        $sql = "SELECT mod_modulegroupcode, mod_modulegroupname, mod_modulepagename,  mod_modulecode, mod_modulename FROM module "
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
<!DOCTYPE html>
<html>
<head>
<title>TEST CAD.</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
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
               
              

               <li class=""><a href="dashboard.php?q=/index">
                    <span class="glyphicon glyphicon-home"></span> Accueil</a>
               </li>
               <li><a href="#">About</a></li>
               <li><a href="dashboard.php?q=contact/contacts"><span class=" glyphicon glyphicon-envelope" >Contact</span></a></li>
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
                                //echo '<li><a href="' . ($val["page_name"]) . '">' . $val["menu_name"] . '</a></li>';
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
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
              </div>
              <button type="submit" class="btn btn-default"><span  class="glyphicon glyphicon-search"></span></button>
            </form>            
            <ul class="nav navbar-nav navbar-right">
        <!--<li class="dropdown">
          <a href="logout.php"><button class="btn btn-lg btn-danger" type="button"><i class="fa fa-sign-out"></i>Logout</button></a>-->
          
                          <a class="inbox-avatar" href="javascript:;">
                              <img  width="64" hieght="60" class="img-circle " src=<?php echo '"'.$avatar.'"'; ?>>
                          </a>
                      
      <div class="pull-right">
                <ul class="nav pull-right">
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><b><span class="glyphicon glyphicon-user"></span>Bienvenu, <?php echo $login; ?></b> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="dashboard.php?q=user/edit_profil"><i class="glyphicon glyphicon-cog"></i> Edité mes infos</a></li>
                            <li class="divider"></li>
                            <li><a href="logout.php"><i class="glyphicon glyphicon-off"></span></i> Déconnecté</a></li>
                        </ul>
                    </li>
                </ul>
              </div>
       </div>       
    </nav>
<div class="container">
<h1 align="center">CAD.</h1>
	<div class="page-header">
    	<h1 class="h2">&nbsp; Liste des utilisateurs<a class="btn btn-success" href="addmember.php" style="margin-left: 770px;"><span class="glyphicon glyphicon-user"></span>&nbsp; Ajouter un utilisateur</a></h1><hr>
    </div>
<div class="row">
<?php
	$stmt = $DB_con->prepare('SELECT u_userid, u_username, email, telephone,avatar FROM users ORDER BY u_userid DESC');
	$stmt->execute();
if($stmt->rowCount() > 0)
{
	while($row=$stmt->fetch(PDO::FETCH_ASSOC))
	{
		extract($row);
		?>
		<div class="col-xs-3">
			<h3 class="page-header" style="background-color:cadetblue" align="center"><?php echo $u_username."<br>".$email; ?></h3>
			<img src="uploads/<?php echo $row['avatar']; ?>" class="img-rounded" width="250px" height="250px" /><hr>
			<p class="page-header" align="center">
			<span>
			<a class="btn btn-primary" href="editform.php?edit_id=<?php echo $row['u_userid']; ?>"><span class="glyphicon glyphicon-pencil"></span> Editer</a> 
			<a class="btn btn-warning" href="?delete_id=<?php echo $row['u_userid']; ?>" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php echo $u_username ?>?')"><span class="glyphicon glyphicon-trash"></span> Supprimer</a>
			</span>
			</p>
		</div>       
		<?php
	}
}
else
{
	?>
	<div class="col-xs-12">
		<div class="alert alert-warning">
			<span class="glyphicon glyphicon-info-sign"></span>&nbsp; No Data Found.
		</div>
	</div>
	<?php
}
?>
</div>
</div>
</body>
</html>