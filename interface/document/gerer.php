<?php
    require './Data/Manager.php';
    include './Data/Document.php';
    include './Traitement/lister_departement.php'; 
?>
<html>
    <head>
        <title>liste des Documents</title>
    </head>
    <body>
        <form class="navbar-form navbar-right" action="index.php?q=document/lister" method="post">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="nom ou auteur">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="nom ou auteur">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-search"></span>Chercher</button>
        </form>
        <table class="table table-responsive  table-bordered table-hover">
            <caption>Liste des documents<hr></caption>
            <thead>
                <tr>
                    <th><center>N°</center></th>
                    <th><center>Catégorie</center></th>
                    <th><center colspan="2">Description</center></th>
                    
                    <th colspan="2"><center>ACTION</center></th>
                </tr>                
            </thead>
            <tbody>
                <?php
                $donnees = lister("departements");
                
                if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($donnees);
                    }  else {
                        $attributs = array("id_dpt","auteur","nom_doc"); 
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
                        $document = new document($value);
                ?>
                <tr>
                    <form action="./Traitement/t_document.php" method="post">
                        <input type="hidden" value="<?php echo $document->id_dpt();?>" name="id_dpt">
                        <td><?php echo $i++;?></td>                        
                        <td><input type="text" value="<?php echo $document->auteur();?>" name="auteur" size="10"></td>
                        <td><input type="text" value="<?php echo $document->nom_doc();?>" name="nom_doc" size="40"></td>
                        <td><input type="hidden" name="table" value="documents" id="table"/></td>             
                        <td><input type="submit" class="btn btn-info "  update" value="Modifier" name="update"></td>
                        <td><input type="submit" class="btn btn-danger delete " value="Supprimer" name="delete"></td>
                    </form>
                </tr>
                <?php }} ?>
            </tbody>
        </table>
    </body>    
</html>