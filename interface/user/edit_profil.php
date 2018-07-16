<script>
        $(function() {
            $('#profile-image1').on('click', function() {
                $('#avatar').click();
            });
        });       
    </script>
<?php

 require 'Data/Role.php';    

 $man=new Manager();
 $DB_con= $man->connexion();
 ?><?php
    error_reporting( ~E_NOTICE );

        $id = $_SESSION['user_id'];
        $stmt_edit = $DB_con->prepare('SELECT * FROM users WHERE u_userid =:uid');
        $stmt_edit->execute(array(':uid'=>$id));//
        $edit_row = $stmt_edit->fetch(PDO::FETCH_ASSOC);
        extract($edit_row);
    
?>
<!DOCTYPE html>
<html>
<body>
<div class="container table-responsive">
    <div>
        <h1 class="h2">&nbsp; Mis à jour profil<a class="btn btn-success" href="dashboard.php?q=user/user" style="margin-left: 450px"><span class="glyphicon glyphicon-home"></span>&nbsp; << Retour</a></h1><hr>
    </div>
    <form method="post" action="./Traitement/t_user.php" role="form" enctype="multipart/form-data" class="col-sm-8">
   <div class="modal-body">        
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $u_userid;?>" readonly="true"/>

        </div>
        <div class="form-group">
            <label for="name">Nom complet</label>
            <input type="text" class="form-control" id="name" name="name" value="<?php echo $u_name;?>" />
        </div>
        <div class="form-group">
            <label for="Téléphone">Téléphone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="<?php echo $telephone;?>" />
        </div>
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" class="form-control" id="address" name="login" value="<?php echo $u_username;?>" />

        </div>
        <div class="form-group">
            <label for="email">Mot de passe</label>
            <input type="password" class="form-control" id="address" name="password" value="<?php echo $u_password;?>" />

        </div>
        <div class="form-group">
      <label for="email">Email</label>
            <input type="text" class="form-control" id="email" name="email" value="<?php echo $email;?>" />
        </div>
        <div class="form-group">
            <img class="img-thumbnail img-responsive" title="cliquez pour modifier"  alt="Photo de profil" src="<?php echo $avatar ?>" id="profile-image1" height="80px" width="80px"/>      
            <input type="file" id="avatar" class="hidden" id="avatar" name="user_image" accept="image/*" />            
        </div>      
        <div class="form-group">
            <p>Modifier photo</p>
            <input type="hidden" class="form-control" id="crt" value="<?php echo $created_at;?>" name="crt"/>
                 </div>
       <div style="display: none">
        <input type="text" class="form-control" id="fonction" name="fonction" value="<?php echo $u_rolecode;?>" readonly="true" />
        </div>
        </div>
    
        <div class="modal-footer">
            <input type="submit" class="btn btn-primary" name="update" value="update" />
        </div>
</form>
</div>
</body>
</html>