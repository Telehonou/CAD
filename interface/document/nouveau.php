
<?php
 ?>

<?php
    if(isset($errMSG)){
            ?>
            <div class="alert alert-danger">
                <span class="glyphicon glyphicon-info-sign"></span> <strong><?php echo $errMSG; ?></strong>
            </div>
            <?php
    }
    else if(isset($successMSG)){
        ?>
        <div class="alert alert-success">
              <strong><span class="glyphicon glyphicon-info-sign"></span> <?php echo $successMSG; ?></strong>
        </div>
        <?php
    }
    ?>
                <form method="post" action="dashboard.php?q=../Traitement/t_document" enctype="multipart/form-data"><?php //method="post" action="dashboard.php?q=../Traitement/t_document"?>
                <div class="row">
                    <div class="col-md-6">                
                        <div class="form-group">
                            <label for="categorie">
                                Catégorie</label>
                            <select name="categorie" id="categorie"  class="form-control" rows="9" cols="25" required="required" onChange="THEFUNCTION(this.selectedIndex);">
                                                    <option value=""></option>
                                                    <?php 
                                                    $donnes=lister("categories");
                                                    foreach ($donnes as $value) {
                                                    $cat = new Categorie($value);
                                            ?>
                                                    <option value="<?php echo $cat->id_cat();?>"><?php echo $cat->nom_cat();// var_dump($donnes)?></option>        
                                                    
                                            <?php } ?>   
                            </select>
                            
                        </div>
                        
                        <div class="form-group" style="display:none;" id="themes">
                            <label for="theme">
                                Thème</label>
                            <input type="text" class="form-control" name="theme" id="theme" placeholder="Titre du document" required="required" />
                        </div>
                        <div class="form-group" style="display:none;" id="auteurs">
                            <label for="auteur">
                                Auteur(s)</label>
                            <input type="text" class="form-control" name="auteur" id="auteur" placeholder="Auteur(s) du document" required="required" />
                        </div>
                        
                        <div class="form-group" style="display:none;" id="departements">
                            <label for="departement">
                                Département</label>
                            <select name="departement" id="departement"  class="form-control" default="..." rows="9" cols="25" onChange="THEFUNCTION1(this.selectedIndex);" >
                                                    <option value=""></option>
                                                    <?php 
                                                    $donnees=lister("departements");
                                                    foreach ($donnees as $value) {
                                                    $dpt = new Departement($value);
                                            ?>
                                                    <option value="<?php echo $dpt->id_dpt();?>"><?php echo $dpt->libel_dpt();?></option>        
                                            <?php } ?>   
                                    </select>
                        </div>
                        <div class="form-group" style="display:none;" id="objectifs">
                            <label for="objectif">
                                Objectif</label>
                            <textarea name="objectif" id="objectif"  class="form-control" rows="9" cols="25" default="..." 
                                      placeholder="...." /></textarea>
                        </div>
                        <div class="form-group" style="display:none;" id="pourcentages">
                            <label for="percen">
                                % de réalisation</label>
                            <input name="percen" id="percen"  class="form-control" rows="9" cols="25" default=0 placeholder="EX: 80" />
                        </div>                    
                        <div class="form-group" style="display:none;" id="perspectives">
                            <label for="perspective">
                                Perspective d'amélioration</label>
                            <textarea name="perspective" id="perspective"  class="form-control" rows="9" cols="25" default="..." placeholder="...." ></textarea>
                        </div>
                        </div>
                    <div class="col-sm-6">
                        <div class="form-group" style="display:none;" id="approvs">
                            <label for="approv">
                                Aprouvé par</label>
                            <input name="approv" id="approv"  class="form-control" rows="9" cols="25" default="..." placeholder="EX: Mr/Dr X " />
                        </div>
                        <div class="form-group" style="display:none;" id="observations">
                            <label for="observation">
                                Observation du jury</label>
                            <textarea name="observation" id="observation"  class="form-control" rows="9" cols="25" default="..." placeholder="...." ></textarea>
                        </div>
                        <div class="form-group" style="display:none;" id="descriptions">
                            <label for="description">
                                Description </label>
                            <textarea name="description" id="description"  class="form-control" rows="9" cols="25" default="..." placeholder="description du document"></textarea>
                        </div>
                        <div class="form-group "  style="display:none;" id="documents">
                            <label for="documents">
                                Cliquez sur parcourire pour joindre un document</label>
                            <input class="input-group" type="file" name="doc" id="doc" accept="files/*" required="required" />
                        </div>

                        <input type="hidden" name="table" value="documents" id="table"/>
                    
                        <div class="col-md-5"  style="display:none;" id="enregistrer">
                            <input class="btn btn-primary pull-right" type="submit" value="Enregistrer" id="sent" name="save">
                        </div>
                        <div class="col-md-5"  style="display:none;" id="annuller">
                        <input class="btn btn-warning pull-right" type="reset" value="Annuller" id="reset">
                        </div>
                    </div>
                </div>
                </form>
      

<script type="text/javascript">
    
/*$(document).ready(function(){
    $("#sent").click(function(){
        $(".titre1").slideToggle("slow").delay("2010").hide("slow");
        theme=$("#theme").val();
        auteur=$("#auteur").val();
        departement = $("#departement").val();
        categorie = $("#categorie").val();
        objectif = $("#objectif").val();
        percen = $("#percen").val();
        perspective=$("#perspective").val();
        approv = $("#approv").val();
        observation= $("#observation").val();
        description = $("#description").val();
        doc = $("#doc").val();
        $.post("../Traitement/t_document",{save:"save",theme:theme,auteur:auteur,departement:departement,categorie:categorie,objectif:objectif,percen:percen,perspective:Perspective,approv:approv,observation:observation,description:description,doc:doc},function(data){
            
            $(".resultat").html(data).show("slow").delay("2000").hide("slow");
            
            $("#theme").val("");
            $("#auteur").val("");
            $("#departement").val("");
            $("#categorie").val("");
            $("#objectif").val("");
            $("#percen").val("");
            $("#Perspective").val("");
            $("#approv").val("");
            $("#observation").val("");
            $("#description").val("");
            $("#doc").val("");
        });
        return false;
    });    
});*/
function THEFUNCTION(i) {
		var themes = document.getElementById('themes');
                var auteurs = document.getElementById('auteurs');
                var departements = document.getElementById('departements');
                var objectifs = document.getElementById('objectifs');
                var pourcentages = document.getElementById('pourcentages');
                var perspectives = document.getElementById('perspectives');
                var approvs = document.getElementById('approvs');
                var observations = document.getElementById('observations');
                var descriptions = document.getElementById('descriptions');
                var documents = document.getElementById('documents');
                var enregistrer = document.getElementById('enregistrer');
                var annuller = document.getElementById('annuller');
                
		switch(i) {
			case 1 : themes.style.display = ''; auteurs.style.display=''; departements.style.display = ''; break;
			case 8 : themes.style.display = ''; auteurs.style.display=''; departements.style.display = ''; break;
                        case 2 : themes.style.display = '';auteurs.style.display=''; objectifs.style.display = '';
                            approvs.style.display = ''; descriptions.style.display = ''; documents.style.display='';
                            enregistrer.style.display = ''; annuller.style.display = ''; break;
                        case 7 : themes.style.display = ''; departements.style.display = ''; break;
                        case 4 : themes.style.display = ''; auteurs.style.display = ''; descriptions.style.display='';
                            enregistrer.style.display = ''; annuller.style.display = ''; documents.style.display='';break;
                        case 5 : themes.style.display = ''; auteurs.style.display = ''; descriptions.style.display='';
                            enregistrer.style.display = ''; annuller.style.display = ''; documents.style.display='';break;
                        case 6 : themes.style.display = ''; auteurs.style.display = ''; descriptions.style.display='';
                            enregistrer.style.display = ''; annuller.style.display = ''; documents.style.display='';break;
                        case 3 : themes.style.display = ''; auteurs.style.display = ''; descriptions.style.display='';
                            enregistrer.style.display = ''; annuller.style.display = ''; documents.style.display='';break;
                        default: themes.style.display = 'none'; objectifs.style.display = 'none'; pourcentages.style.display = 'none';
                            perspectives.style.display = 'none'; approvs.style.display = 'none'; observations.style.display = 'none'; 
                            descriptions.style.display = 'none'; documents.style.display = 'none';departements.style.display='none';
                            enregistrer.style.display = 'none'; annuller.style.display = 'none'; auteurs.style.display='none'; break;
		}
            //}
	//}
}
function THEFUNCTION1(j) {
		var objectifs = document.getElementById('objectifs');
                var pourcentages = document.getElementById('pourcentages');
                var perspectives = document.getElementById('perspectives');
                var approvs = document.getElementById('approvs');
                var observations = document.getElementById('observations');
                var descriptions = document.getElementById('descriptions');
                var documents = document.getElementById('documents');
                var enregistrer = document.getElementById('enregistrer');
                var annuller = document.getElementById('annuller');
		for (var j = 0; j <= 2; j++) {
			//Things[i]
		//if (Thing[i]=="Rapports stage"){
		switch(j) {
			case j : objectifs.style.display = ''; pourcentages.style.display = '';
                            perspectives.style.display = ''; approvs.style.display = '';
                            observations.style.display = '';
                            descriptions.style.display = ''; documents.style.display = '';
                            enregistrer.style.display = ''; annuller.style.display = ''; break;
			default: objectifs.style.display = 'none'; pourcentages.style.display = 'none';
                            perspectives.style.display = 'none'; approvs.style.display = 'none';
                            observations.style.display = 'none'; 
                            descriptions.style.display = 'none'; documents.style.display = 'none';
                            enregistrer.style.display = 'none'; annuller.style.display = 'none'; break;
                        
		} 
            }
	//}
}

</script>