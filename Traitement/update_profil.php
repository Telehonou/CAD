<?php
    ini_set("display_errors",1);
    session_start();
    $temp=$_SESSION['user_username'];
    if(isset($_POST)){
        require '../Data/Manager.php';
        require '../config.php';

        $Destination = '../userfiles/avatars';
        if(!isset($_FILES['ImageFile']) || !is_uploaded_file($_FILES['ImageFile']['tmp_name'])){
            $NewImageName= 'default.png';
            move_uploaded_file($_FILES['ImageFile']['tmp_name'], "$Destination/$NewImageName");
        }
        else{
            //$RandomNum   = rand(0, 9999999999);
            $ImageName = str_replace(' ','-',strtolower($_FILES['ImageFile']['name']));
            $ImageType = $_FILES['ImageFile']['type'];
            $ImageExt = substr($ImageName, strrpos($ImageName, '.'));
            $ImageExt = str_replace('.','',$ImageExt);
            $ImageName = preg_replace("/\.[^.\s]{3,4}$/", "", $ImageName);
            $NewImageName = $ImageName.'.'.$ImageExt;
            move_uploaded_file($_FILES['ImageFile']['tmp_name'], "$Destination/$NewImageName");
        }
        $sql5="UPDATE system_users SET avatar='$NewImageName' WHERE u_username = '$temp'";
        
        //$allModules = $stmt->fetchAll();
        $sql6="INSERT INTO system_users (avatar) VALUES ('$Destination/$NewImageName') WHERE u_username = '$temp'";
        
        //$allModules = $stmt->fetchAll();
        $sql="SELECT * FROM system_users WHERE u_username = '$temp'";
        $stmt = $DB->prepare($sql);
        $stmt->execute();
        $allModules = $stmt->fetchAll();
        if( $stmt) {
            if(!empty($_FILES['ImageFile']['name'])){
                $stmt = $DB->prepare($sql5);
                $stmt->execute(); 
               // header("location:../edit-profil.php?u_username=$temp");
            }
        } 
        else {
            $stmt = $DB->prepare($sql6);
            $stmt->execute();
            //header("location:../edit-profil.php?u_username=$temp");
        }  
        $user_username=$_REQUEST['user_username'];
        $user_email=$_REQUEST['user_email'];
        $user_password=$_REQUEST['user_password'];
        $user_tel=$_REQUEST['user_tel'];
        $sql3="UPDATE system_users SET email='$user_email',u_password='$user_password',telephone='$user_tel' WHERE u_username = '$temp'";
            $stmt = $DB->prepare($sql3);
            $stmt->execute();
            //header("location:../interface/user/edit_profil.php?u_username=$temp&requestus=success");
    }    
?>