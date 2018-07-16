<?php
    require './Data/Manager.php';
    require './Data/user.php';
    include './Traitement/lister_user.php';       
?>
<html>
    <head>
        <title>liste des users</title>
    </head>
    <body>
        <form class="navbar-form navbar-right" action="index.php?q=user/lister" method="post">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="référence ou libélle">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="référence ou libélle">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-eye-open"></span>Chercher</button>
        </form>
        <table class="table table-responsive table-striped table-condensed">
            <caption>Liste des users<hr></caption>
            <thead>
                <tr>
                    <th><center>N°</center></th>
                    <th><center>id</center></th>
                    <th><center>NOM</center></th>
                    <th><center>PRENOM</center></th>
                    <th><center>ADRESSE</center></th>
                    <th colspan="2"><center>ACTION</center></th>
                </tr>                
            </thead>
            <tbody>                
                <?php
                $donnees = $donnees = lister();
                require './Traitement/recherche.php';
                function affiche(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $user = new user($value);
                ?>
                <tr>
                    <form action="./Traitement/t_user.php" method="post">
                        <input type="hidden" value="<?php echo $user->id_user();?>" name="old_id">
                        <td><?php echo $i++;?></td>
                        <td><input type="text" value="<?php echo $user->id_user();?>" name="id" class="id" size="1"></td>
                        <td><input type="text" value="<?php echo $user->nom_user(); ?>" name="nom" id="nom" size="10"></td>
                        <td><input type="text" value="<?php echo $user->prenom_user(); ?>" name="prenom" id="prenom"size="10"></td>
                        <td><input type="text" value="<?php echo $user->adresse(); ?>" name="adresse" id="adresse" size="10"></td>
                        <td><input type="submit" class="btn btn-warning update" value="Modifier" name="update"></td>
                        <td><input type="submit" class="btn btn-danger delete" value="Delete" name="delete"></td>
                    </form>
                </tr>
                <?php }} ?>
            </tbody>
        </table>
    </body>    
</html>

<script type="text/javascript">
$(document).ready(function(){
    
        
    $(".update0").click(function(){   
        id = $(".id").val();
        nom = $("#nom").val();
        prenom = $("#prenom").val();
        adresse = $("#adresse").val();
        $.post("./Traitement/t_user.php",{update:"update",id:id,nom:nom,prenom:prenom,adresse:adresse},function(data){
            //$(".resultat").html(data).show("slow").delay("2000").hide("slow");
        });
        return false;
    });    
    
    $(".delete0").click(function(){
        id = $(".id").val();
        $.post("./Traitement/t_user.php",{delete:"delete",id:id},function(data){
           // $(".resultat").html(data).show("slow").delay("2000").hide("slow");
        });
        return false;
    });    
});

</script>