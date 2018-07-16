<?php  include( '../../../Data/Manager.php');
 require '../../../Data/Departement.php';
 require '../../../Data/Role.php';    
 include '../../../Traitement/lister_departement.php';  
  ?>
<?php
	error_reporting( ~E_NOTICE );
	require_once 'dbcon.php';
	
	if(isset($_GET['edit_id']) && !empty($_GET['edit_id']))
	{
		$id = $_GET['edit_id'];
		$stmt_edit = $DB_con->prepare('SELECT u_name,u_username, u_password, u_rolecode, email, telephone FROM system_users WHERE u_userid =:uid');
		$stmt_edit->execute(array(':uid'=>$id));//
		$edit_row = $stmt_edit->fetch(PDO::FETCH_ASSOC);
		extract($edit_row);
	}
	else
	{
		header("Location:interface/user/aeduser/home.php");
	}
	if(isset($_POST['btn_save_updates']))
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
		$creat=date('d/m/Y- H:i:s');
		$upd=date('d/m/Y - H:i:s');
		$imgFile = $_FILES['user_image']['name'];
		$tmp_dir = $_FILES['user_image']['tmp_name'];
		$imgSize = $_FILES['user_image']['size'];
		if($imgFile)
		{
			$upload_dir = 'uploads/';
			$imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION));
			$valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
			$userprofile = rand(1000,1000000).".".$imgExt;
			if(in_array($imgExt, $valid_extensions))
			{			
				if($imgSize < 5000000)
				{
					unlink($upload_dir.$edit_row['avatar']);
					move_uploaded_file($tmp_dir,$upload_dir.$userprofile);
				}
				else
				{
					$errMSG = "Sorry, Your File Is Too Large To Upload. It Should Be Less Than 5MB.";
				}
			}
			else
			{
				$errMSG = "Sorry, only JPG, JPEG, PNG & GIF Extension Files Are Allowed.";		
			}	
		}
		else
		{
			$userprofile = $edit_row['avatar'];
		}
		if(!isset($errMSG))
		{
			$stmt = $DB_con->prepare('UPDATE system_users SET u_name=:nom, u_username=:uname, u_password=:pass, u_rolecode=:rol, email=:em, telephone=:tel, created_at=:creat, updated_at=:upda, avatar=:upic WHERE u_userid=:uid');
			$stmt->bindParam(':nom',$nom);
			$stmt->bindParam(':uname',$username);
			$stmt->bindParam(':pass',$password);
			$stmt->bindParam(':rol',$fonction);
			$stmt->bindParam(':em',$email);
			$stmt->bindParam(':tel',$phone);
			$stmt->bindParam(':creat',$creat);
			$stmt->bindParam(':upda',$upd);
			$stmt->bindParam(':upic',$userprofile);	
			$stmt->bindParam(':uid',$id);
				var_dump($nom);echo "<br>";
				var_dump($username);echo "<br>";
				var_dump($password);echo "<br>";
				var_dump($fonction);echo "<br>";
				var_dump($email);echo "<br>";
				var_dump($phone);echo "<br>";
				var_dump($creat);echo "<br>";
				var_dump($upd);echo "<br>";
				var_dump($userprofile);
			if($stmt->execute()){
				?>
                <script>
				alert('Successfully Updated...');
				window.location.href='home.php';
				</script>
                <?php
			}
			else{
				$errMSG = "Sorry User Could Not Be Updated!";
			}
		}			
	}
?>
<!DOCTYPE html>
<html>
<head>
<title>PHP/MySQL Add, Edit, Delete, With User Profile.</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="jquery-1.11.3-jquery.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="http://www.sourcecodester.com">Sourcecodester</a>
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
    	<h1 class="h2">&nbsp; Update Profile<a class="btn btn-success" href="home.php" style="margin-left: 850px"><span class="glyphicon glyphicon-home"></span>&nbsp; Back</a></h1><hr>
    </div>
<form method="post" enctype="multipart/form-data" class="form-horizontal" style="margin: 0 300px 0 300px;border: solid 1px;border-radius:4px">
    <?php
	if(isset($errMSG)){
		?>
        <div class="alert alert-danger">
          <span class="glyphicon glyphicon-info-sign"></span> &nbsp; <?php echo $errMSG; ?>
        </div>
        <?php
	}
	?>
	<table class="table table-responsive">
    <tr>
    	<td><label class="control-label">Nom complet</label></td>
        <td><input class="form-control" type="text" name="nom" value="<?php echo $u_name; ?>" required /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Username</label></td>
        <td><input class="form-control" type="text" name="user_name" value="<?php echo $u_username; ?>" required /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Mot de passe</label></td>
        <td><input class="form-control" type="password" name="password" minlength="6" value="<?php echo $u_password; ?>" required /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Confirmer Mot de passe</label></td>
        <td><input class="form-control" type="password" name="confirm" minlength="6"  value="<?php echo $u_password; ?>" required /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Fonction</label></td>
        <td><select class="form-control" required="required" name="fonction" id="fonction"  value="<?php echo $u_rolcode; ?> required="required">
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
    	<td><label class="control-label">Adresse électronique</label></td>
        <td><input class="form-control" type="email" name="email" value="<?php echo $email; ?>" required /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Téléphone</label></td>
        <td><input class="form-control" type="tel" name="telephone" value="<?php echo $telephone; ?>" required /></td>
    </tr>
    <tr>
    	<td><label class="control-label">Profile Picture</label></td>
        <td>
        	<p><img src="uploads/<?php echo $avatar; ?>" height="150" width="150" /></p>
        	<input class="input-group" type="file" name="user_image" accept="image/*" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
		<button type="submit" name="btn_save_updates" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save"></span>&nbsp; Save</button>
        <a class="btn btn-warning" href="home.php"> <span class="glyphicon glyphicon-remove"></span>&nbsp; Cancel</a>
        </td>
    </tr>
    </table>
</form>
</div>
</body>
</html>