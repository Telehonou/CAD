<?php
session_start();
    require '../Data/Manager.php';
    require '../Data/User.php';
     include '../config.php';  
    
    if(isset($_POST["save"]))
      {
                        //On enleve lechappement si get_magic_quotes_gpc est active
                        if(get_magic_quotes_gpc())
                        {
                            $noms = stripslashes($noms);
                            $name = stripslashes($name);
                            $password = stripslashes($password);
                            $confirm = stripslashes($confirm);
                            $fonction = stripslashes($fonction);
                            $email = stripslashes($email);
                            $telephone = stripslashes($telephone);
                            $avatar = stripslashes($avatar);
                        }
                        //On verifie si le mot de passe et celui de la verification sont identiques
                        if($password==$confirm)
                        {
                            //On verifie si le mot de passe a 6 caracteres ou plus
                            if(strlen($password)>=6)
                            {
                                //On verifie si lemail est valide
                                if(preg_match('#^(([a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+\.?)*[a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+)@(([a-z0-9-_]+\.?)*[a-z0-9-_]+)\.[a-z]{2,}$#i',$email))
                                {
                                    
                                    //On verifie sil ny a pas deja un utilisateur inscrit avec le pseudo choisis
                                   
                                    $sql = "SELECT * FROM users "
                                            . " WHERE u_username='".$name."'";


                                    $stmt = $DB->prepare($sql);
                                    $stmt->execute();
                                   
                                    if($stmt==0)
                                    {
                                        //On enregistre les informations dans la base de donnee
                                        $user = new User(array(
                                            'u_name' => $noms,
                                            'u_username' => $name,
                                            'u_password'=>$password,
                                            'u_rolecode'=> $fonction,
                                            'email' => $email,
                                            'created_at'=>date('d-m-y'),
                                            'updated_at'=>date('d-m-y'),
                                            'telephone'=>$telephone,
                                            'avatar'=>''
                                            

                                        ));
                                        if($user->add($user->getTable(), $user->getAttributs(), $user->getValues()))
                                        {
                                            //Si ca a fonctionne, on naffiche pas le formulaire
                                                   //$form=false;
                                            $message= 'Enregistrement réussi';
                                            //header("location:../dashboard.php?q=user/nouveau&resultat=non");
                                        }
                                        else
                                        {
                                            //Sinon on dit quil y a eu une erreur
                                                 //   $form=true;
                                            $message = 'Une erreur est survenue lors de l\'inscription.';
                                            //header("location:../dashboard.php?q=user/nouveau&resultat=non");
                                        }
                                    }
                                    else
                                    {
                                        //Sinon, on dit que le pseudo voulu est deja pris
                                       // $form=true;
                                        $message = 'Un autre utilisateur utilise d&eacute;j&agrave; le nom d\'utilisateur que vous d&eacute;sirez utiliser.';
                                        //header("location:../dashboard.php?q=user/nouveau&resultat=non");
                                    }
                                }
                                else
                                {
                                    //Sinon, on dit que lemail nest pas valide
                                    //$form=true;
                                    $message = 'L\'email que vous avez entr&eacute; n\'est pas valide.';
                                    //header("location:../dashboard.php?q=user/nouveau&resultat=non");
                                }
                            }
                            else
                            {
                                //Sinon, on dit que le mot de passe nest pas assez long
                                //$form=true;
                                $message = 'Le mot de passe que vous avez entr&eacute; contien moins de 6 caract&egrave;res.';
                                //header("location:../dashboard.php?q=user/nouveau&resultat=non");
                            }
                        }
                        else
                        {
                            //Sinon, on dit que les mots de passes ne sont pas identiques                        
                            $message = 'Les mots de passe que vous avez entr&eacute; ne sont pas identiques.';
                            //header("location:../dashboard.php?q=user/nouveau&resultat=non");
                        }
                    }                    
                        //On affiche un message sil y a lieu
                        if(isset($message))
                        {
                            echo '<div class=" alert alert-warning" >'.$message.'</div>';
                        }

    

    if(isset($_POST["update"])){
        
                $imgFile = $_FILES['user_image']['name'];
		$tmp_dir = $_FILES['user_image']['tmp_name'];
		$imgSize = $_FILES['user_image']['size'];
		if($imgFile)
		{
			$upload_dir = 'C:/xampp/htdocs/CADN/interface/user/uploads/';
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
                    /***/
                            extract($_POST);
                            $usr = new User(array(
                            'u_userid' => $id
                        ));
                        $condition="u_userid=".$id;
                        $table=array('users');
                        $don=$usr->Lister($usr->getAttributs(),$table, $condition);
                        foreach ($don as $val){
                            $avt=$val['avatar'];
                        }
                        $avt="C:/xampp/htdocs/CADN/".$avt;
                            unlink($avt);
                        /***/
                    $upload_dir="interface/user/uploads/";
        $dirs=$upload_dir.$userprofile;
        //$upd=date('d-m-Y H:i:s');
        $upd="00000000";
        
        extract($_POST);
        $user = new User(array(
            'u_userid'=>$id,
            'u_name'=>$name,
            'u_username' => $login,
            'u_password'=>$password,
            'u_rolecode'=> $fonction,
            'email' => $email,            
            'telephone'=>$phone,
            'created_at'=>$crt,
            'updated_at'=>$upd,
            'avatar'=>$dirs
            
        ));        
        if($user->update($user->getTable(), $user->getAttributs(), $user->getValues(), $user->getCondition())){            
            header("location:../dashboard.php?q=user/user&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=user/user&resultat=non");
            echo 'echec';
        }      
    }
    
        }

    
    if(isset($_POST["delete"])){
        extract($_POST);    
        $user = new User(array(
            'u_userid' => $u_userid
        ));
        $condition="u_userid=".$u_userid;
        $table=array('users');
        $don=$user->Lister($user->getAttributs(),$table, $condition);
        foreach ($don as $val){
            $avatar=$val['avatar'];
        }
        
        if($user->delete($user->getTable(),$user->getCondition())){
            $avatar="C:/xampp/htdocs/CADN/".$avatar;
            unlink($avatar);
           header("location:../dashboard.php?q=user/user&resultat=ok");
            echo 'succes';
        }  else {
            header("location:../dashboard.php?q=user/user&resultat=non");
            echo 'echec';
        }      
    }

    if(isset($_POST["afficher"])){
        extract($_POST);    
        $user = new User(array(
            'u_userid' => $u_userid
        ));
        $_SESSION['affiche']=$u_userid;
        header("location:../dashboard.php?q=user/user&resultat=ok");
    }
?>