<?php include 'Data/Document.php'; ?>
<html>
<head>
<title>Recherche Avancée</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
//La fonction JavaScript qui vérifie si les champs obligatoirs du formulaire ont été bien remplis

function envoie(formulaire) 
{
if ( (document.getElementById('keyword').value.length>0)||(document.getElementById('dpt').value.length>0)||(document.getElementById('auteur').value.length>0))
{
formulaire.submit();
}else
alert('IMPOSSIBLE D\'ENVOER LE FORMULAIRE, VOUS DEVEZ REMPLIR AU MOINS UN CHAMPS !');
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
</head>
<?php
$namecat=substr($_GET['name'], 0, -1);
?>
<body bgcolor="#FFFFFF">
    <div class="container col-sm-12" id="contenue" style="display:'' ;">
        <center><h4 class="t_resultat"><?php echo $namecat."s " ; ?>disponibles</h4></center>
            
        
        <?php
        $man=new Manager();
        $table=array('categories');
        $attribut=array('*');
        $condition='nom_cat="'.$namecat.'"';
        $donnee=$man->Lister($attribut, $table, $condition);
        foreach ($donnee as $valeur){
            $idcategorie=$valeur['id_cat'];
        }
        $table=array('documents');
        $condition="categorie_id=".$idcategorie;
        $document=$man->Lister($attribut, $table, $condition);        
        ?>
        
        <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" title="Cliquer pour dérouler le formulaire" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-arrow-down"></span><i>Recherches</i></a>
                            </h4>
                        </div>                        
                        <div id="collapseOne" class="panel-collapse collapse ">
                            <div class="panel-body">
                             <form class="form-group" action="index.php?q=document/result" method="post" name="form_contacts" id="form_contacts">
                                <input class="form-control" type="hidden" name="categorie" id="categorie" value="<?php echo $idcategorie;?>">
                                <input class="form-control" type="hidden" name="ncategorie" id="ncategorie" value="<?php echo $namecat;?>">
                            <table class="table table-responsive ">  
                              <tr>
                                  <td  ><label>Keyword:</label></td>    
                                <td><input class="form-control" type="text" name="keyword" id="keyword">    </td>
                                <td  >  
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
                                <td> <select name="dpt" id="dpt"  class="form-control" default="..." rows="9" cols="25" onChange="THEFUNCTION1(this.selectedIndex);" >
                                                                        <option value=""></option>
                                                                        <?php 
                                                                        $donnees=lister("departements");
                                                                        foreach ($donnees as $value) {
                                                                        $dpt = new Departement($value);
                                                                ?>
                                                                        <option value="<?php echo $dpt->id_dpt();?>"><?php echo $dpt->libel_dpt();?></option>        
                                                                <?php } ?>   
                                                        </select>    </td>
                                <td valign="top" >
                                    <label><span >ET</span>
                                  <input name="et_ou2" type="radio" value="AND" checked>
                                  </label>
                                  <label> <span >OU
                                  </span>
                                  <input type="radio" name="et_ou2" value="OR">
                                  </label>    </td>
                              </tr>
                              <tr>
                                  <td valign="top"><label>Auteur: </label></td>
                                  <td >
                                      <input class="form-control" type="text" name="auteur" id="auteur">    
                                  </td>
                              </tr>
                              <tr >
                                <td >
                                    <input class="btn btn-send btn-primary"  name="rechercher" type="button" id="envoyer"  value="Rechercher"  onClick="envoie(this.form)">
                                </td>
                                <td ><input class="btn btn-warning btn-group" name="retablir" type="reset" id="retablir" value="Rétablir"></td>

                              </tr>  
                      </table>
      </form>
                            </div>
                        </div>                        
                    </div>
        </div>
        <?php
        echo '<table class="table table-striped table-hover" ><thead>'
            . '<th>titre</th>'
            . '<th>ajouter le</th>'
            . '<th> Auteur(s) </th></thead>';
        foreach ($document as $value){ 
            $doc=new Document($value);
         echo'<tr><td>'.$doc->titre().'</td>'
                    . '<td>'.$doc->created_at().'</td>'
                    . '<td>'.$doc->auteur().'</td>';
                    echo '<td >
            <a  href="'.$value['doc_dir'].'" target="Blank" title="visualiser le document" >
                <button><span class="glyphicon glyphicon-eye-open"></span></button>
             </a>
            <a href="'.$value['doc_dir'].'" download="'.$value['titre'].'"  >
                    <button  title="télecharger"><span class="glyphicon glyphicon-download-alt"></span></button></td>            
                    </a>
          </tr>';
        }
        echo'</table>';
        ?>
</div>
    
    
</body>
</html>
