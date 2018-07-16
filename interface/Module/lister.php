<?php
    require 'Manager.php';
    include '../Data/Module.php';
    include '../Traitement/lister_module.php';
?>
<html>
    <head>
        <title>liste des Modules</title>
    </head>
    <body>
        <form class="navbar-form navbar-right" action="index.php?q=Module/lister" method="post">
            <?php if(isset($_POST['recherche'])){ ?>
            <input type="text" style="width:150px" name="recherche" value="<?php echo $_POST['recherche']; ?>" class="input-sm formcontrol" placeholder="nom ou description">
            <?php }else { ?>
            <input type="text" style="width:150px" name="recherche" class="input-sm formcontrol" placeholder="nom ou description">
            <?php } ?>
            <button type="submit" class="btn btn-primary btnsm"><span class="glyphicon glyphicon-search"></span>Chercher</button>
        </form>
        <table class="table table-responsive  table-bordered table-hover">
            <caption>Liste des Modules<hr></caption>
            <thead>
                <tr>
                    <th><center>N°</center></th>
                    <th><center>GroupeCode</center></th>
                    <th><center>GroupeName</center></th>
                    <th><center>ModuleCode</center></th>
                    <th><center>ModuleName</center></th>
                    <th><center>ModuleGroupeOrder</center></th>
                    <th><center>ModuleGroupeCode</center></th>
                    <th><center>ModulePageName</center></th>
                    <th colspan="2"><center>ACTION</center></th>
                </tr>                
            </thead>
            <tbody>
                <?php
                $donnees = lister('modules');
                
                if(isset($_POST['recherche'])){
                    $recherche = $_POST['recherche'];
                    if($recherche=="all" or $recherche=="tout"){
                        affiche($donnees);
                    }  else {
                        $attributs = array("idm","mod_modulegroupcode","mod_modulegroupname","mod_modulecode","mod_modulename","mod_modulegrouporder","mod_moduleorder","mod_modulepagename");
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
                        $module = new Module($value);
                ?>
                <tr>
                    <form action="./Traitement/t_module.php" method="post">
                        <input type="hidden" value="<?php echo $module->idm();?>" name="idm">
                        <td><?php echo $i++;?></td>                        
                        <td><input type="text" value="<?php echo $module->mod_modulegroupcode();?>" name="mod_modulecode" size="10"></td>
                        <td><input type="text" value="<?php echo $module->mod_modulegroupname();?>" name="mod_modulename" size="40"></td>
                        <td><input type="text" value="<?php echo $module->mod_modulecode();?>" name="mod_modulename" size="40"></td>
                        <td><input type="text" value="<?php echo $module->mod_modulename();?>" name="mod_modulename" size="40"></td>
                        <td><input type="text" value="<?php echo $module->mod_modulegrouporder();?>" name="mod_modulename" size="40"></td>
                        <td><input type="text" value="<?php echo $module->mod_moduleorder();?>" name="mod_modulename" size="40"></td>
                        <td><input type="text" value="<?php echo $module->mod_modulepagename();?>" name="mod_modulename" size="40"></td>
                        <td><input type="hidden" name="table" value="module" id="table"/></td>
                        <td><input type="submit" class="btn btn-info"  update" value="Modifier" name="update"></td>
                        <td><input type="submit" class="btn btn-danger delete  " value="supprimer" name="delete" title="click for delete" onclick="return confirm('Ête vous sur de vouloire suprimer <?php //echo $doc->titre(); ?>?')"></td>
                    </form>
                </tr>
                <?php }} ?>
            </tbody>
        </table>
    </body>    
</html>