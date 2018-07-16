<?php
require'../donnee/data.php';
include("../presentation/head.php");
?>
<?php 
if (isset($envoi)) {
    $donnees=lister("departements");
    foreach ($donnees as $value) {
        $departement = new Departement($value);
    ?>
    <option value="<?php echo $departement->id_dpt();?>"><?php echo $departement->libel_dpt();?></option>
<?php } 
}
?> 
