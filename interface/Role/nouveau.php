
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12oliver ">
                <h1 class="h1">
                     <small>Nouveau Role!</small></h1>
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
role_rolecode</label>
                            <input type="text" class="form-control" name="role_rolecode" id="role_rolecode" placeholder="EX: ENG" required="required" />
                        </div>

                        <div class="form-group">
                            <label for="name">
role_rolename</label>
                            <input name="role_rolename" id="role_rolename"  class="form-control" rows="9" cols="25" required="required"
                                placeholder="EX: ENSEIGNANT" />
                        </div>

                        <input type="hidden" name="table" value="roles" id="table"/>

                        <div class="col-md-12" >
                            <input class="btn btn-primary pull-right" type="submit"  value="Enregistrer" id="sent">
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
        $(".titre1").slideToggle("slow").delay("4010").hide("slow");
        role_rolecode = $("#role_rolecode").val();
        role_rolename = $("#role_rolename").val();
        $.post("./Traitement/t_role.php",{save:"save",role_rolecode:role_rolecode,role_rolename:role_rolename},function(data){

    $(".resultat").html(data).show("slow").delay("2000").hide("slow");

    $("#role_rolename").val("");
    $("#role_rolename").val("");
});
        return false;
    });
});
</script>