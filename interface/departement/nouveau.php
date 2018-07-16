    
                <form>
                <div class="row">
                    <div class="col-md-6">                
                        <div class="form-group">
                            <label for="name">
                                Code</label>
                            <input type="text" class="form-control" name="code_dpt" id="code_dpt" placeholder="EX: GI" required="required" />
                        </div>

                        <div class="form-group">
                            <label for="name">
                                Libellé</label>
                            <input name="libel_dpt" id="libel_dpt"  class="form-control" rows="9" cols="25" required="required"
                                placeholder="EX: Génie Informatique" />
                        </div>

                        <input type="hidden" name="table" value="departements" id="table"/>
                    
                        <div class="col-md-12" >
                            <input class="btn btn-primary pull-right" type="submit" value="Enregistrer" id="sent">
                        </div>
                        <div class="col-md-12">
                        <input class="btn btn-warning pull-left" type="reset" value="Annuler" id="reset">
                        </div>
                    </div>
                </div>
                </form>
              

<script type="text/javascript">
$(document).ready(function(){
    $("#sent").click(function(){
        $(".titre1").slideToggle("slow").delay("4010").hide("slow");
        code_dpt = $("#code_dpt").val();
        libel_dpt = $("#libel_dpt").val();
        table=$("#table").val();
        $.post("./Traitement/t_departement.php",{save:"save",code_dpt:code_dpt,libel_dpt:libel_dpt,table:table},function(data){
            
            $(".resultat").html(data).show("slow").delay("2000").hide("slow");
            
            $("#code_dpt").val("");
            $("#libel_dpt").val("");
            $("#table").val();
        });
        return false;
    });    
});
</script>