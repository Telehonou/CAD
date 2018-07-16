<script>
        /*$(function() {
            $('#fichier').on('click', function() {
                $('#fichiers').click();
            });
        });       */
    </script>
        <?php
        include '../../Data/Manager.php';
        include '../../Data/Annonce.php';
        $ids=$_GET['id'];
        
        $man=new Manager();
        $att=array('*');
    $tab=array('annonces');
    $cond="idannonce=".$ids;
    $membre=$man->Lister($att, $tab, $cond);
    foreach ($membre as $mem){
        $annonce=new Annonce($mem);
        ?>
<div class="container">
                
                <form action="./Traitement/t_annonce.php" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="ids" value=" <?php echo $_SESSION['user_id']; ?>"
                           <input type="hidden" name="datecreation" value=" <?php echo $annonce->datecreation(); ?>"
                <div class="row">
                    <div class="col-md-6">                
                        <div class="form-group">
                            <label for="name">
                                Titre</label>
                            <input type="text" class="form-control" name="titre" id="titre" value="<?php echo $annonce->titre(); ?>" required="required" />
                        </div>                                    
                  <div class="form-group" id="choix1"  > 
                            <label for="name">
                                Contenu<br></label>
                      <textarea class="form-control" name="text" id="text"  class="form-control"   value="<?php echo $annonce->contenu(); ?>"></textarea>
                  </div>
                  <div class="form-group">
                      <input title="joindre un fichier"  type="file" class="fileinput-button" type="file" value="<?php echo $annonce->fichier(); ?>" name="fichier" value="" id="fichiers"  />            
                 </div>      
                        <div class="col-md-5" >
                            <input class="btn btn-primary pull-right" type="submit" name="update" value="Appliquer" id="update">
                        </div>
                        <div class="col-md-5">
                        <input class="btn btn-warning pull-right" type="reset" value="Annuler" id="reset">
                        </div>
                    </div>
                    </form>    
</div>
<?php } ?>                

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