<?php  require '../PFEV3N/Data/Manager.php';
 require '../PFEV3N/Data/Departement.php';
 require '../PFEV3N/Data/Role.php';    
 include '../PFEV3N/Traitement/lister_departement.php';  
  ?>
<?php
	error_reporting( ~E_NOTICE );
	require_once 'dbcon.php';

	if(isset($_POST['btnsave']))
	{
		/*$d=date('d');
		$m=date('m');
		$y=date('Y');
		$h=date('H');
		$mi=date('M');
		$s=date('s');
		$dates=$d.'/'.$m.'/'.$y.' '.$h.'H:'.$mi.'min:'.$s.'s';*/
		$nom = $_POST['nom'];
		$username = $_POST['user_name'];
		$password = $_POST['password'];
		$fonction = $_POST['fonction'];
		$email = $_POST['email'];
		$phone = $_POST['telephone'];
		$creat=date('d-m-y');
		$upd=date('d-m-y');
		$imgFile = $_FILES['user_image']['name'];
		$tmp_dir = $_FILES['user_image']['tmp_name'];
		$imgSize = $_FILES['user_image']['size'];
		if(empty($username)){
			$errMSG = "veillez remplir tous les champs.";
		}
		/*else if(empty($fontion)){
			$errMSG = " veillez remplir tous les champs.";
		}*/
		else if(empty($imgFile)){
			$errMSG = "Choisisez une photo de profil.";
		}
		else
		{
			$upload_dir = 'uploads/';
			$imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION));
			$valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
			$userprofile = rand(1000,1000000).".".$imgExt;
			if(in_array($imgExt, $valid_extensions)){
				if($imgSize < 5000000)				{
					move_uploaded_file($tmp_dir,$upload_dir.$userprofile);
				}
				else{
					$errMSG = "Sorry, Your File Is Too Large To Upload. It Should Be Less Than 5MB.";
				}
			}
			else{
				$errMSG = "Sorry, only JPG, JPEG, PNG & GIF Extension Files Are Allowed.";		
			}
		}
		if(!isset($errMSG))
		{
			$stmt = $DB_con->prepare('INSERT INTO system_users(u_name,u_username,u_password,u_rolecode,email,telephone,created_at,updated_at,avatar) VALUES(:nom,:uname, :pass,:rol,:em,:tel,:creat,:upda, :upic)');
			$stmt->bindParam(':nom',$nom);
			$stmt->bindParam(':uname',$username);
			$stmt->bindParam(':pass',$password);
			$stmt->bindParam(':rol',$fonction);
			$stmt->bindParam(':em',$email);
			$stmt->bindParam(':tel',$phone);
			$stmt->bindParam(':creat',$creat);
			$stmt->bindParam(':upda',$upd);
			$stmt->bindParam(':upic',$userprofile);	
			if($stmt->execute())
			{
				$successMSG = "Successfully Added A New Member.";
				header("refresh:1;home.php");
			}
			else
			{
				$errMSG = "Error While Creating.";
			}
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
<title>CAD.</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">CAD</a>
			<ul class="nav navbar-nav">
            <li class="active"><a href="home.php">Home</a></li>
            <li><a href="">About</a></li>
            <li><a href="">Contact Us.</a></li>
            <li><a href="index.php">Log-Out</a></li>
			</ul>
        </div>
    </div>
</nav>
<div class="container">
	<div>
	<h1 class="h2">&nbsp; Add New User<a class="btn btn-success" href="home.php" style="margin-left: 850px"><span class="glyphicon glyphicon-home"></span>&nbsp; Back</a></h1><hr>
    </div>
	<?php
	if(isset($errMSG)){
			?>
            <div class="alert alert-danger">
            	<span class="glyphicon glyphicon-info-sign"></span> <strong><?php echo $errMSG; ?></strong>
            </div>
            <?php
	}
	else if(isset($successMSG)){
		?>
        <div class="alert alert-success">
              <strong><span class="glyphicon glyphicon-info-sign"></span> <?php echo $successMSG; ?></strong>
        </div>
        <?php
	}
	?>   

<form method="post" enctype="multipart/form-data" class="form-horizontal" style="margin: 0 300px 0 300px;border: solid 1px;border-radius:4px">
	<table class="table table-responsive">
	<tr>
    	<td><label class="control-label">Nom complet</label></td>
        <td><input class="form-control" type="text" name="nom" placeholder="Entrer le nom complet" value="<?php echo $username; ?>" /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Username</label></td>
        <td><input class="form-control" type="text" name="user_name" placeholder="Enter Username" value="<?php echo $username; ?>" /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Mot de pass</label></td>
        <td><input class="form-control" type="password" name="password" placeholder="Enter password" value="<?php echo $password; ?>" /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Adresse électronique</label></td>
        <td><input class="form-control" type="email" name="email" placeholder="Enter Email" value="<?php echo $email; ?>" /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Téléphone</label></td>
        <td><input class="form-control" type="number" name="telephone" placeholder="Entrez le numéro de tel." value="<?php echo $phone; ?>" /></td>
    </tr>    
    <tr>
    	<td><label class="control-label">Fonction</label></td>
        <td><select class="form-control" required="required" name="fonction" id="fonction"  required="required" >
                                                    <option value=""></option>
                                                    <?php 
                                                    $donnees=lister("roles");
                                                    foreach ($donnees as $value) {
                                                    $role = new Role($value);
                                            ?>
                                            <option value="<?php echo $role->role_rolecode();?>"><?php echo $role->role_rolename();?></option>        
                                            <?php } ?>   
                                    </select></td>
    </tr>
    <tr>
    	<td><label class="control-label">Photo de profil</label></td>
        <td><input class="input-group" type="file" name="user_image" accept="image/*" /></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><button type="submit" name="btnsave" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save"></span>&nbsp; Save</button>
        </td>
    </tr>
    </table>
</form>
</div>
</body>
</html>