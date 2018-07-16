<?php
require 'Manager.php';
include '../Data/Role.php';
include '../Traitement/lister_role.php';
?>
<html>
<head>
    <title>liste des Role</title>
</head>
<body>
<form class="navbar-form navbar-right" action="index.php?q=Role/lister" method="post">
    <?php if(isset($_POST['recherche'])){ ?>
        <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="nom ou description">
    <?php }else { ?>
        <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="nom ou description">
    <?php } ?>
    <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-search"></span>Chercher</button>
</form>
<table class="table table-responsive  table-bordered table-hover">
    <caption>Liste des Roles<hr></caption>
    <thead>
    <tr>
        <th><center>N°</center></th>
        <th><center>Code Role</center></th>
        <th><center colspan="2">Nom Role</center></th>

        <th colspan="2"><center>ACTION</center></th>
    </tr>
    </thead>
    <tbody>
    <?php
    $donnees = lister();

    if(isset($_POST['recherche'])){
        $recherche = $_POST['recherche'];
        if($recherche=="all" or $recherche=="tout"){
            affiche($donnees);
        }  else {
            $attributs = array("role_coderole","role_namerole");
            $valeurs = $recherche;
            $donnees = ListTrie($attributs, $valeurs);
            if($donnees) affiche($donnees);
            else echo'<tr><td colspan="6"><center><b><br> Aucun resultat pour la recherche de:  "'.$recherche.'"</b></center></tr></td>';
        }
    }else{
        affiche($donnees);
    }
    function affiche(array $donnees){
        $i=1;
        foreach ($donnees as $value) {
            $role = new Role($value);
            ?>
            <tr>
                <form action="./Traitement/t_role.php" method="post">
                    <input type="hidden" value="<?php echo $role->id();?>" name="role_coderole">
                    <td><?php echo $i++;?></td>
                    <td><input type="text" value="<?php echo $role->role_rolecode();?>" name="role_coderole" size="10"></td>
                    <td><input type="text" value="<?php echo $role->role_rolename();?>" name="role_coderole" size="10"></td>
                    <td><input type="hidden" name="table" value="roles" id="table"/></td>
                    <td><input type="submit" class="btn btn-info"  update" value="Modifier" name="update"></td>
                    <td><input type="submit" class="btn btn-danger delete  " value="supprimer" name="delete"></td>
                </form>
            </tr>
        <?php }} ?>
    </tbody>
</table>
</body>
</html>