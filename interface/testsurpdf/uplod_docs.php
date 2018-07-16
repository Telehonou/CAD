
<?php
$message="";
if(isset($_FILES['file_array'])){
    $name_array = $_FILES['file_array']['name'];
    $tmp_name_array = $_FILES['file_array']['tmp_name'];
    $type_array = $_FILES['file_array']['type'];
    $size_array = $_FILES['file_array']['size'];
    $error_array = $_FILES['file_array']['error'];
    for($i = 0; $i < count($tmp_name_array); $i++){
        if(move_uploaded_file($tmp_name_array[$i], "uploads/".$name_array[$i])){
            echo $name_array[$i]." Transfert terminer<br>";
            echo "Taille = ".$size_array[$i]." octets - Type = ".$type_array[$i]." - Directory = ".$tmp_name_array[$i]." - Erreur = ".$error_array[$i]."</br>" ;
        } else {
            echo "Une erreur est survenue lors de l'envois de  ".$name_array[$i]."<br>";
        }
    }
}
?>
<form action="test1.php" method="post" enctype="multipart/form-data">
          <p><input type="file" name="file_array[]" multiple='multiple'></p>         
          <input type="submit" value="Upload all files">
</form>
