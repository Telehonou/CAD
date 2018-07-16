<html>
<head>
<title>Recherche Avancée</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
//La fonction JavaScript qui vérifie si les champs obligatoirs du formulaire ont été bien remplis
<!--
function envoie(formulaire) 
{
if ( (document.getElementById('keyword').value.length>0)||(document.getElementById('dpt').value.length>0)||(document.getElementById('auteur').value.length>0))
{
formulaire.submit();
}else
alert('IMPOSSIBLE D\'ENVOER LE FORMULAIRE, VOUS DEVEZ REMPLIR AU MOINS UN CHAMPS !');
}
-->

function THEFUNCTION(formulaire) {
		var contenue = document.getElementById('contenue');		
		var resultat = document.getElementById('resultat');		
                contenue.style.display = none;
                resultat.style.display = '';
                        
		
}
</script>
</head>

<body bgcolor="#FFFFFF">
    <div class="container col-sm-12" id="contenue" style="display:'' ;">
        <div class="panel-heading btn-primary">
            <center><h3><i><span class="glyphicon glyphicon-search"></span> Formulaire de recherche avancée de <?php echo $_GET['name'];?></i></h3> </center>
        </div>
        <form class="form-group" action="#" method="post" name="form_contacts" id="form_contacts">

              <table class="table table-responsive">  
          <tr>
              <td valign="top" ><label>Keyword:</label></td>    
            <td><input class="form-control" type="text" name="keyword" id="keyword">    </td>
            <td valign="top" >
              <label><span >ET</span>
                  <input name="et_ou1" type="radio" value="AND" checked>
              </label>
              <span >
              <label> OU      </label>
              </span>
              <label>
                  <input  type="radio" name="et_ou1" value="OR">
              </label>    </td>
          </tr>

          <tr>
              <td valign="top" ><label>Département :</label></td>    
            <td> <input class="form-control" type="text" name="dpt" id="dpt">    </td>
            <td valign="top" >
              <label><span >ET</span>
              <input name="et_ou2" type="radio" value="AND" checked>
              </label>
              <label> <span >OU
              </span>
              <input type="radio" name="et_ou2" value="OR">
              </label>    </td>
          <tr>
              <td valign="top"><label>Auteur: </label></td>
            <td >
                <input class="form-control" type="text" name="auteur" id="auteur">    
            </td>
          </tr>
          <tr>
            <td >
                <input class="btn btn-send btn-primary"  name="rechercher" type="button" id="envoyer"  value="Rechercher"  onClick="THEFUNCTION(this.form);">
            </td>

            <td ><input class="btn btn-warning btn-group" name="retablir" type="reset" id="retablir" value="Rétablir"></td>

          </tr>  
        </table>
      </form>
</div>
    
    <div id="resultat" style="display: '';">
        <p>super!!</p>
      </div>
</body>
</html>
