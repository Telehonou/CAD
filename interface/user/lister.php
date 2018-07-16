<?php
    require './Data/Manager.php';
    require './Data/Client.php';
    include './Traitement/lister_client.php'; 
?>
<html>
    <head>
        <title>ancien client</title>
    </head>
    <body>
       <form class="navbar-form navbar-right" action="index.php?q=client/ancien" method="post">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="référence ou libélle">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="référence ou libélle">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-eye-open"></span>Chercher</button>
        </form>
        
        <table class="table table-responsive table-striped table-condensed">
            <caption>Liste des clients<hr></caption>
            <thead>
                <tr>
                    <th>N°</th>
                    <th>id</th>
                    <th>NOM</th>
                    <th>PRENOM</th>
                    <th>ADRESSE</th>
                </tr>                
            </thead>
            <tbody>
                <?php
                $donnees = $donnees = lister();
                require './Traitement/recherche.php';
                function affiche(array $donnees){
                    $i=1;
                    foreach ($donnees as $value) {
                        $client = new Client($value);
                ?>
                <tr>
                    <td><?php echo $i++;?></td>
                    <td>
                        <a href="index.php?q=commande/nouvelle&id= <?php echo $client->id_client();?>">
                             <?php echo $client->id_client();?></a></td>
                    <td>
                        <a href="index.php?q=commande/nouvelle&id=<?php echo $client->id_client();?>">
                            <?php echo $client->nom_client(); ?></a></td>
                    <td>
                        <a href="index.php?q=commande/nouvelle&id=<?php echo $client->id_client();?>">
                            <?php echo $client->prenom_client(); ?></a></td>
                    <td>
                        <a href="index.php?q=commande/nouvelle&id=<?php echo $client->id_client();?>">
                            <?php echo $client->adresse(); ?></a></td>
                </tr>
                <?php }} ?>
            </tbody>
        </table>
       
    </body>    
</html>