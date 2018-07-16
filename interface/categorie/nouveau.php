        <div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12oliver ">
                <h1 class="h1">
                     <small>Nouvelle catégorie!</small></h1>
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
                            <label for="name">
                                Nom catégorie</label>
                            <input type="text" class="form-control" name="nom_cat" id="nom_cat" placeholder="Nom de la catégorie" required="required" />
                        </div>
                    
                        <div class="form-group">
                            <label for="name">
                                description</label>
                            <textarea name="desc_cat" id="desc_cat"  class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                        <div class="col-md-12" >
                            <input class="btn btn-primary pull-right" type="submit" value="Enregistrer" id="sent">
                        </div>
                        <div class="col-md-12">
                        <input class="btn btn-warning pull-right" type="reset" value="Annuler" id="reset">
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
        nom_cat = $("#nom_cat").val();
        desc_cat = $("#desc_cat").val();
        $.post("./Traitement/t_categorie.php",{save:"save",nom_cat:nom_cat,desc_cat:desc_cat},function(data){
            
            $(".resultat").html(data).show("slow").delay("2000").hide("slow");
            
            $("#nom_cat").val("");
            $("#desc_cat").val("");
        });
        return false;
    });    
});
</script>