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
    <div class="modal-body">        
        
        </div>
        <!---***********************************************************************--->
        
                            
                                                        <div class="col-sm-6">
                                                            <div  align="center"> <img alt="Photo de profil" src="<?php echo $mem['avatar']; ?>" id="profile-image1" class="img-circle img-responsive"> 
    
                                                            <input id="profile-image-upload" class="hidden" type="file">
                                                            <!--<div style="color:#999;" >Cliquez sur la photo pour modifier</div>-->
                <!--Upload Image Js And Css-->
                                                        </div><br>
    
              <!-- /input-group -->            </div>
                                               <div class="col-sm-6">
                                                <h4 style="color:#00b1b1;"><?php echo $mem['u_name']; ?> </h4></span>
                                                  <span><p><?php echo $mem['u_rolecode']; ?></p></span>            
                                                </div>
                                                <div class="clearfix"></div>
                                                <hr style="margin:5px 0 5px 0;">
<div class="clearfix"></div>
<div class="bot-border"></div>
<div class="col-sm-5 col-xs-6 tital " >Nom:</div><div class="col-sm-7 col-xs-6 "><?php echo $mem['u_name']; ?></div>
     <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Mot de passe:</div><div class="col-sm-7"> <?php echo md5($mem['u_password']); ?></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Date de création du compte:</div><div class="col-sm-7"><?php echo $mem['created_at']; ?></div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Date de mise à jour:</div><div class="col-sm-7"><?php echo $mem['updated_at']; ?></div>
<div class="clearfix"></div>
<div class="bot-border"></div>
<div class="col-sm-5 col-xs-6 tital " >Adresse électronique:</div><div class="col-sm-7"> <?php echo $mem['email']; ?></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>
<div class="col-sm-5 col-xs-6 tital " >Téléphone :</div><div class="col-sm-7"> <?php echo '(+237) ' .$mem['telephone'] ?></div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

        
    <?php }?>
        <div class="modal-footer">            
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>

