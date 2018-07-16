<script>
        /*$(function() {
            $('#fichier').on('click', function() {
                $('#fichiers').click();
            });
        });       */
    </script>
        <?php $ids=$_SESSION['user_id']; ?>
<div class="container">
                
                <form action="./Traitement/t_annonce.php" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="ids" value=" <?php echo $ids; ?>"
                <div class="row">
                    <div class="col-md-6">                
                        <div class="form-group">
                            <label for="name">
                                Titre</label>
                            <input type="text" class="form-control" name="titre" id="titre" placeholder="Titre de l'annonce" required="required" />
                        </div>                  
                  <!--<div class="form-group">
                      <select class="form-control" id="choix" onchange="choisi(this.selectedIndex);">
                          <option></option>
                          <option>text</option>
                          <option>fichier</option>
                      </select>
                            
                  </div>-->
                  <div class="form-group" id="choix1"  > 
                            <label for="name">
                                Contenu<br></label>
                            <textarea class="form-control" name="text" id="text"  class="form-control"   placeholder="Saisissez le communiqué"></textarea>
                  </div>
                  <div class="form-group">
                      <!--<button class="btn btn-primary" title="Joindre un fichier"  alt="Pièce jointe" id="fichier" ><span class="fa fa-paperclip" ></span></button>-->
                      <input title="joindre un fichier"  type="file" class="fileinput-button" type="file" name="fichier" value="" id="fichiers"  />            
                 </div>      
                        <!--<div class="form-group" id="choix2" style="display: none">
                            <input class="files" type="file" name="fichier" value="" id="contenu" accept="file/*">
                        </div>-->
                        
                        <div class="col-md-5" >
                            <input class="btn btn-primary pull-right" type="submit" name="save" value="Enregistrer" id="sent">
                        </div>
                        <div class="col-md-5">
                        <input class="btn btn-warning pull-right" type="reset" value="Annuler" id="reset">
                        </div>
                    </div>
                    </form>
</div>
                

<script type="text/javascript">
    function choisi(i){
    var choix1=document.getElementById('choix1');
    var choix2=document.getElementById('choix2');
    switch(i){
        case 1:choix1.style.display=''; choix2.style.display='none';  break;
        case 2:choix1.style.display='none'; choix2.style.display=''; break;
        default: choix1.style.display='none'; choix2.style.display='none'; break;
    }
}
 
</script>