<?php
 require 'Data/Role.php';    
 $man=new Manager();
 $DB_con= $man->connexion();
 ?>
<script  type="text/javascript" src="../../js/jquery.min.js"></script>
 
 <?php
    error_reporting( ~E_NOTICE );

    if(isset($_POST['btnsave']))
    {     
        $nom = $_POST['nom'];
        $username = $_POST['user_name'];
        $password = $_POST['password'];
        $fonction = $_POST['fonction'];
        $email = $_POST['email'];
        $phone = $_POST['telephone'];
        $creat=date('d-m-Y H:i:s');
        $upd=date('d-m-Y H:i:s');
        $imgFile = $_FILES['user_image']['name'];
        $tmp_dir = $_FILES['user_image']['tmp_name'];
        $imgSize = $_FILES['user_image']['size'];
        if(empty($username)){
            $errMSG = "veillez remplir tous les champs.";
        }
        else if(empty($imgFile)){
            $errMSG = "Choisisez une photo de profil.";
        }
        else
        {
            $upload_dir = 'interface/user/uploads/';
            $imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION));
            $valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
            $userprofile = rand(1000,1000000).".".$imgExt;
            if(in_array($imgExt, $valid_extensions)){
                if($imgSize < 5000000)              {
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
            $dirs=$upload_dir.$userprofile;
            $stmt = $DB_con->prepare('INSERT INTO users(u_name,u_username,u_password,u_rolecode,email,telephone,created_at,updated_at,avatar) VALUES(:nom,:uname, :pass,:rol,:em,:tel,:creat,:upda, :upic)');
            $stmt->bindParam(':nom',$nom);
            $stmt->bindParam(':uname',$username);
            $stmt->bindParam(':pass',$password);
            $stmt->bindParam(':rol',$fonction);
            $stmt->bindParam(':em',$email);
            $stmt->bindParam(':tel',$phone);
            $stmt->bindParam(':creat',$creat);
            $stmt->bindParam(':upda',$upd);
            $stmt->bindParam(':upic',$dirs); 
            if($stmt->execute())
            {
                $successMSG = "Opération réussi.";
                header("refresh:1");
            }
            else
            {
                $errMSG = "Echec de l'opération.";
            }
        }
    }
?>
        <!--<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12oliver ">
                <h1 class="h1">
                     <small>Nouveau utilisateur</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div>
    <h1 class="h2"> <a class="btn btn-success" href="dashboard.php?q=user/user" style="margin-left: 650px"><span class="glyphicon glyphicon-home"></span> Back</a></h1>
    </div>
    <?php
    /*if(isset($errMSG)){
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
    */?>   
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">-->
                <form method="post" enctype="multipart/form-data" class="form-horizontal" border: solid 1px ; border-radius:4px;>
    <table class="table table-responsive">
    <tr>
        <td><label class="control-label">Nom complet</label></td>
        <td><input class="form-control" type="text" name="nom" placeholder="Entrer le nom complet" value="<?php echo $u_name; ?>" /></td>
    </tr>
    <tr>
        <td><label class="control-label">Login</label></td>
        <td><input class="form-control" type="text" name="user_name" placeholder="Entrez le login" value="<?php echo $username; ?>" /></td>
    </tr>
    <tr>
        <td><label class="control-label">Mot de pass</label></td>
        <td><input class="form-control" type="password" name="password" placeholder="Entrez le mot de passe" value="<?php echo $password; ?>" /></td>
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
        <td colspan="2" align="center"><button type="submit" name="btnsave" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save"></span>Enregistrer</button>
        </td>
    </tr>
    </table>
</form>
             <!--   
            </div>            
        </div>
    </div>
</div>-->

