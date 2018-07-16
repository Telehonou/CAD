<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
//La fonction JavaScript qui vérifie si les champs obligatoirs du formulaire ont été bien remplis

function envoie(formulaire) 
{
if ( (document.getElementById('keyword').value.length>0)||(document.getElementById('dpt').value.length>0)||(document.getElementById('auteur').value.length>0))
{
formulaire.submit();
}else{
alert('IMPOSSIBLE D\'ENVOER LE FORMULAIRE, VOUS DEVEZ REMPLIR AU MOINS UN CHAMPS !');
}
}

$(document).ready(function() {        
		$("#resultat").click(function (){ 
                    var contenue = document.getElementById('contenue');
                    var resultats = document.getElementById('resultats');
                    contenue.style.display = 'none';
                    resultats.style.display = '';
		});
        });

</script>      

            
<form method="post" action="dashboard.php?q=document/result">
                <div class="row">
                    <div class="col-md-12">                
                        <div class="form-group">
                            <label for="keyword">
                                <i>Keyword</i></label>
                            <input class="form-control" type="text" name="keyword" id="keyword" placeholder="mot(s) clé(s)"  />
                        </div>
                        <fieldset class="form-control"><legend><i>Filtrer par:</i></legend>
                        <div class="form-group">
                            <label><span >ET</span>
                                      <input name="et_ou1" type="radio" value="AND" checked>
                                  </label>
                                  <span >
                                  <label> OU      </label>
                                  </span>
                                  <label>
                                      <input  type="radio" name="et_ou1" value="OR">
                                  </label>
                        </div>
                        <div class="form-group">
                            <label for="departement">
                                <i>Département</i></label>
                            <select name="departement" id="departement"  class="form-control" rows="9" cols="25"  >
                                <!-- onChange="THEFUNCTION(this.selectedIndex);" -->
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
                        <div class="form-group">
                            <label><span >ET</span>
                                  <input name="et_ou2" type="radio" value="AND" checked>
                                  </label>
                                  <label> <span >OU
                                  </span>
                                  <input type="radio" name="et_ou2" value="OR">
                                  </label>
                        </div>
                        <div class="form-group" >
                            <label for="auteur">
                                <i>Auteur(s)</i></label>
                            <input type="text" class="form-control" name="auteur" id="auteur" placeholder="Auteur(s) du document" />
                        </div>
                        <div class="form-group">
                            <label><span >ET</span>
                                  <input name="et_ou3" type="radio" value="AND" checked>
                                  </label>
                                  <label> <span >OU
                                  </span>
                                  <input type="radio" name="et_ou3" value="OR">
                                  </label>
                        </div>
                        <div class="form-group">
                            <label for="categorie">
                                <i>Catégorie</i></label>
                            <select name="categorie" id="categorie"  class="form-control" rows="9" cols="25"  >
                                                    <option value=""></option>;:
                                                    <?php 
                                                    $donnee=lister("categories");
                                                    foreach ($donnee as $value) {
                                                    $cat = new Categorie($value);
                                            ?>
                                                    <option value="<?php echo $cat->id_cat();?>"><?php echo $cat->nom_cat();?></option>        
                                            <?php } ?>   
                                    </select>
                            
                        </div>
                        <div class="col-md-12" >
                            <input class="btn btn-primary pull-right" name="rechercher" type="submit" value="Rechercher" id="sent">
                        </div>
                        <div style="display: none " class="col-md-12">
                            <input class="btn btn-warning pull-right"  type="reset" value="Annuler" id="reset">
                        </div>
                        </fieldset>
                    </div>
                </div>
                    
                </form>
                
            

<script type="text/javascript">
$(document).ready(function(){
    $("#sent").click(function(){
        $(".titre1").slideToggle("slow").delay("2010").hide("slow");
        keyword = $("#keyword").val();
        auteur = $("#auteur").val();
        departement = $("#departement").val();
        categorie = $("#ccategorie").val();
        $.post(".../../Traitement/t_document.php",{rechercher:"rechercher",keyword:keyword,auteur:auteur,departement:depatement,categorie:categorie},function(data){
            
            $(".resultat").html(data).show("slow").delay("2000").hide("slow");
            
            $("#keyword").val("");
            $("#auteur").val("");
            $("#departement").val("");
            $("#categorie").val("");
        });
        return false;
    });    
});
</script>