<html>
    <head>
        
        <script type="text/javascript" src="jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="liste.js"></script>
    </head>
    <body>
        <select id="localite_uns">
        	<option value="">Choisir la localité un</option>
        </select>
        <select id="localite_deux">
        	
        </select>
       
        
        <div id="test">
             <?php 
        if(isset($_GET['name'])){
             $autor= preg_split("/,/", $_GET['name']); 
            var_dump($autor);
        }
        ?>
        </div>
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12oliver ">
                <h1 class="h1">
                     <small>Nouveau Module!</small></h1>
                
            </div>
        </div>
    </div>
            
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="choix">
                                Ajouter
                            </label>
                            <select class="form-control" id="choix" required="required" onChange="THEFUNCTION(this.selectedIndex);" >
                                <option>Faite un choix</option>
                                <option>Une fonctionalité</option>
                                <option>Un Module </option>
                            </select>
                        </div>
                            
                        <div style="display: none" id="code_grp" class="form-group">
                            <label for="code_grp">
                                GroupeCode</label>
                            <input type="text"  class="form-control" name="mod_modulegroupcode" id="mod_modulegroupcode" placeholder="Ex:GES"  />
                        </div>
                        <div style="display: none" id="code_grp1" class="form-group">
                            <label for="code_grp1">
                                GroupeCode</label>
                            <select name="categorie"  name="mod_modulegroupcode" id="modulegroupcode"  class="form-control" onChange="THEFUNCTION1(this.selectedIndex);" >
                                                    <option value=""></option>
                                                    
                            </select>  
                            <select id="confirme"></select>
                        </div>
                        <?php 
                            if(isset($_GET['name'])){
                                 $autor= preg_split("/,/", $_GET['name']); 
                                 $i=0;
                                 foreach ($autor as $valeur){
                            }
                        ?>                        
                        <?php echo'<div class="form-group" style="display: none" id="name_grp">
                            <label for="name_grp">
                                GroupeName</label>
                            <input type="text" name="mod_modulegroupname" id="mod_modulegroupname" value="'. $autor[$i] .'" class="form-control" placeholder="Ex: Gestion"/>
                        </div>';$i++;}?>
                        <div class="form-group" style="display: none" id="name_grp1">
                            <label for="name_grp">
                                GroupeName</label>
                            <input type="text" name="mod_modulegroupname" id="mod_modulegroupname"  class="form-control" placeholder="Ex: Gestion"/>
                        </div>
                        <div class="form-group" style="display: none" id="code_mod">
                            <label for="cod_mod">
                                ModuleCode</label>
                            <input type="text" name="mod_modulecode" id="mod_modulecode"  class="form-control" placeholder="Ex: DOC(documents)"></input>
                        </div>
                        <div class="form-group">
                            <label for="cod_mod">
                                ModuleCode</label>
                            <input type="text" name="mod_modulecode" id="mod_modulecode"  class="form-control" ></input>
        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group" style="display: none" id="name_mod">
                            <label for="name_mod" >
                                ModuleName</label>
                            <input type="text" name="mod_modulename" id="mod_modulename"  class="form-control" placeholder="EX: document"/>
                        </div>
                        <div class="form-group" style="display: none" id="name_mod1">
                            <label for="name_mod" >
                                ModuleName</label>
                            <input type="text" name="mod_modulename" id="mod_modulename"  class="form-control" placeholder="EX: document"/>
                        </div>
                        <div class="form-group" style="display: none" id="mg_ord">
                            <label for="mg_ord">
                                ModuleGroupeOrder</label>
                            <input type="number" name="mod_modulegrouporder" id="mod_modulegrouporder" max="2" class="form-control" placeholder="EX: 1"/>
                        </div>
                        <div class="form-group" style="display: none" id="mg_ord1">
                            <label for="mg_ord">
                                ModuleGroupeOrder</label>
                            <input type="number" name="mod_modulegrouporder" id="mod_modulegrouporder" max="2" class="form-control" placeholder="EX: 1"/>
                        </div>
                        <div class="form-group" style="display: none" id="mod_ord">
                            <label for="mod_ord">
                                ModuleOrder</label>
                            <input type="number" name="mod_moduleorder" id="mod_moduleorder"  class="form-control" max="6" placeholder="Ex:3"/>
                        </div>
                        <div class="form-group" style="display: none" id="mod_ord1">
                            <label for="mod_ord">
                                ModuleOrder</label>
                            <input type="number" name="mod_moduleorder" id="mod_moduleorder"  class="form-control" max="6" placeholder="Ex:3"/>
                        </div>
                        <div class="form-group" style="display: none" id="mod_pn">
                            <label for="mod_pn">
                                ModulePageName</label>
                            <input type="text" name="mod_modulepagename" id="mod_modulepagename"  class="form-control" placeholder="url Ex(index.php?document/docs)"/>
                        </div>
                        <div class="form-group" style="display: none" id="mod_pn1">
                            <label for="mod_pn">
                                ModulePageName</label>
                            <input type="text" name="mod_modulepagename" id="mod_modulepagename"  class="form-control" placeholder="url Ex(index.php?document/docs)"/>
                        </div>
                        <div id="boutons" style="display: none">
                        <div class="col-md-5" >
                            <input class="btn btn-primary pull-left" type="submit" value="Enregistrer" id="sent">
                        </div>
                        <div class="col-md-5">
                        <input class="btn btn-warning pull-right" type="reset" value="Annuler" id="reset">
                        </div>
                        </div>
                    </div>
                </div>
                </form>
                
            </div>            
        </div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
    $("#sent").click(function(){
        $(".titre1").slideToggle("slow").delay("2010").hide("slow");
        mod_modulegroupcode = $("#mod_modulegroupcode").val();
        mod_modulegroupname = $("#mod_modulegroupname").val();
        mod_modulecode = $("#mod_modulecode").val();
        mod_modulename = $("#mod_modulename").val();
        mod_modulegrouporder = $("#mod_modulegrouporder").val();
        mod_moduleorder = $("#mod_moduleorder").val();
        mod_modulepagename = $("#mod_modulepagename").val();

        $.post("./Traitement/t_module.php",{save:"save",mod_modulegroupcode:mod_modulegroupcode,
            mod_modulegroupname:mod_modulegroupname,
            mod_modulecode:mod_modulecode,
            mod_modulecode:mod_modulecode,
            mod_modulename:mod_modulename,
            mod_modulegrouporder:mod_modulegrouporder,
            mod_moduleorder:mod_moduleorder,
            mod_modulepagename:mod_modulepagename},function(data){
            
            $(".resultat").html(data).show("slow").delay("2000").hide("slow");
            
            $("#mod_modulegroupcode").val("");
            $("#mod_modulegroupname").val("");
            $("#mod_modulecode").val("");
            $("#mod_modulename").val("");
            $("#mod_modulegrouporder").val("");
            $("#mod_moduleorder").val("");
            $("#mod_modulepagename").val("");
        });
        return false;
    });    
});
function THEFUNCTION(i) {
		var code_grp = document.getElementById('code_grp');
		var code_grp1 = document.getElementById('code_grp1');
                var name_grp = document.getElementById('name_grp');
                var name_grp1 = document.getElementById('name_grp1');
                var code_mod = document.getElementById('code_mod');
                var code_mod1 = document.getElementById('code_mod1');
                var name_mod = document.getElementById('name_mod');
                var name_mod1 = document.getElementById('name_mod1');
                var mg_ord = document.getElementById('mg_ord');
                var mg_ord1 = document.getElementById('mg_ord1');
                var mod_ord = document.getElementById('mod_ord');
                var mod_ord1 = document.getElementById('mod_ord1');
                var mod_pn = document.getElementById('mod_pn');
                var mod_pn1 = document.getElementById('mod_pn1');
                var boutons = document.getElementById('boutons');
		switch(i) {
			//case 1 : code_grp1.style.display = ''; name_grp.style.display='none'; code_mod.style.display=''; name_mod.style.display = ''; mg_ord.style.display=''; mod_ord.style.display=''; mod_pn.style.display=''; boutons.style.display='';  break;
			case 1 : code_grp1.style.display = '';code_grp.style.display='none'; name_grp1.style.display='none'; code_mod1.style.display='none'; name_mod1.style.display = 'none'; mg_ord1.style.display='none'; mod_ord1.style.display='none'; mod_pn1.style.display='none'; boutons.style.display='none';  break;
			case 2 : code_grp.style.display = ''; code_grp1.style.display='none'; name_grp1.style.display=''; code_mod1.style.display=''; name_mod1.style.display = ''; mg_ord1.style.display=''; mod_ord1.style.display=''; mod_pn1.style.display=''; boutons.style.display='';  break;
			
                        
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
		var code_grp = document.getElementById('code_grp');
		var code_grp1 = document.getElementById('code_grp1');
                var name_grp = document.getElementById('name_grp');
                var name_grp1 = document.getElementById('name_grp1');
                var code_mod = document.getElementById('code_mod');
                var code_mod1 = document.getElementById('code_mod1');
                var name_mod = document.getElementById('name_mod');
                var name_mod1 = document.getElementById('name_mod1');
                var mg_ord = document.getElementById('mg_ord');
                var mg_ord1 = document.getElementById('mg_ord1');
                var mod_ord = document.getElementById('mod_ord');
                var mod_ord1 = document.getElementById('mod_ord1');
                var mod_pn = document.getElementById('mod_pn');
                var mod_pn1 = document.getElementById('mod_pn1');
                var boutons = document.getElementById('boutons');
		for (var j = 0; j <= 2; j++) {
			//Things[i]
		//if (Thing[i]=="Rapports stage"){
		switch(j) {
			case j : code_grp1.style.display = '';code_grp.style.display='none'; name_grp1.style.display='none'; code_mod1.style.display='none'; name_mod1.style.display = 'none'; mg_ord1.style.display='none'; mod_ord1.style.display='none'; mod_pn1.style.display='none'; boutons.style.display='none';  break;
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
    </body>
</html>