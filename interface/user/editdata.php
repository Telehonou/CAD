<script>
        $(function() {
            $('#profile-image1').on('click', function() {
                $('#avatar').click();
            });
        });       
    </script>
<?php
include '../../Data/Manager.php';
include '../../Data/Role.php';
include '../../Traitement/lister_departement.php';
$man=new Manager();

$id = $_GET['id'];
/************************************************************************************************/
/*if(isset($_POST['submit']))
	{
		
		$imgFile = $_FILES['user_image']['name'];
		$tmp_dir = $_FILES['user_image']['tmp_name'];
		$imgSize = $_FILES['user_image']['size'];
		if($imgFile)
		{
			$upload_dir = 'interface/user/uploads/';
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
        $dirs=$upload_dir.$userprofile;
    //$id = $_GET['id'];
    extract($_POST);
    //if (isset($submit)) {
        $id = $id;
        $name = $name;
        $login = $login;
        $password = $password;
        $fonction = $fonction;
        $phone = $phone;
        //$address = $address;
        $email = $email;
        $upd=date('d/m/Y - H:i:s');
        $avatar=$dirs;
        $table="users";
        $attributs=array('u_name','u_username','u_password','u_rolecode','email','telephone','updated_at');
        $valeurs=array($name,$login,$password,$fonction,$email,$phone,$upd);
        $condition=array("'u_userid='.$id.");
        if($man->update($table, $attributs, $valeurs, $condition)){
            echo'<script> alert("succes");</script>';
        }
                //}  
        
    }//$mysqli->query("UPDATE `details` SET `u_name` = '$name', `telephone` = '$phone', `u_username`='$address', `email`='$email' WHERE `u_userid`=$id");
        //header("location:index.php");
    }*/
    $att=array('*');
    $tab=array('users');
    $cond="u_userid=".$id;
    $membre=$man->Lister($att, $tab, $cond);
    foreach ($membre as $mem){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edition</title>

    <!-- Bootstrap Core CSS -->
   
</head>
<body>
    <form method="post" action="./Traitement/t_user.php" role="form" enctype="multipart/form-data">
    <div class="modal-body">        
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $mem['u_userid'];?>" readonly="true"/>

        </div>
        <div class="form-group">
            <label for="name">Nom complet</label>
            <input type="text" class="form-control" id="name" name="name" value="<?php echo $mem['u_name'];?>" />
        </div>
        <div class="form-group">
            <label for="Téléphone">Téléphone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="<?php echo $mem['telephone'];?>" />
        </div>
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" class="form-control" id="address" name="login" value="<?php echo $mem['u_username'];?>" />

        </div>
        <div class="form-group">
            <label for="email">Mot de passe</label>
            <input type="password" class="form-control" id="address" name="password" value="<?php echo $mem['u_password'];?>" />

        </div>
        <div class="form-group">
      <label for="email">Email</label>
            <input type="text" class="form-control" id="email" name="email" value="<?php echo $mem['email'];?>" />
        </div>
        <div class="form-group">
            <img class="img-thumbnail img-responsive" title="cliquez pour modifier"  alt="Photo de profil" src="<?php echo $mem['avatar'] ?>" id="profile-image1" height="80px" width="80px"/>      
            <input type="file" id="avatar" class="hidden" id="avatar" value="<?php $mem['avatar']  ?>" name="user_image" accept="image/*" />            
        </div>      
        <div class="form-group">
            <p>Modifier photo</p>
            <input type="hidden" class="form-control" id="crt" value="<?php echo $mem['created_at'];?>" name="crt"/>
            <label for="fonction">Fonction </label><p style="color: green"><i> la fonction actuel de <?php echo $mem['u_name']." est : <b>".$mem['u_rolecode']."</b>"; ?></p></i>
            <select class="form-control" required="required" name="fonction" id="fonction" required="required">
                                                    <option value="<?php echo $mem['u_rolecode'];?>"></option>
                                                    <?php 
                                                    $donnees=lister("roles");
                                                    foreach ($donnees as $value) {
                                                    $role = new Role($value);
                                            ?>
                                            <option value="<?php echo $role->role_rolecode();?>"><?php echo $role->role_rolename();?></option>        
                                            <?php } ?>   
                                    </select>
        </div>
        </div>
    <?php }?>
        <div class="modal-footer">
            <input type="submit" class="btn btn-primary" name="update" value="Update" />&nbsp;
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </form>
</body>
</html>
