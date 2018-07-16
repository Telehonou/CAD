<html>
    <meta charset="UTF-8">
    <body>
        
    
<?php include'plagiat_1.php'; ?>
<h1> Resultats d'analyse</h1>        
        <div class="table table-responsive">
            <div class="loaders"><img src="../../img/processing.gif"></div>
            <table class="table table-bordered table-responsive">
                <thead>
                <tr>
                <th>doc analysé</th>
                <th>contenu similaire</th>
                <th>source</th>
                <th>similarité</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><?php echo $dirs[count($dirs)-1]; ?></td>    
                        <td><?php echo $plagier; ?></td>    
                        <td><?php echo $fichierplagier[count($fichierplagier)-1].' de '.$auteur; ?></td>    
                        <td><?php 
                                if(($max)>=60){
                                    echo '<i class="plagier"> '.($max).'%</i>';
                                }  else {
                                    echo '<i class="non_plagier"> '.($max/10).'%</i>';
                                }
                            ?>
                        </td>    
                    </tr>
                </tbody>
            </table>
            <?php $crypt=new Crypter("wln3"); ?>
            <div>
                <form>
                    <input type="hidden" name="t"value="<?php echo $max; ?>"/>
                    <input type="hidden" name="fs"value="<?php echo $fichierplagier[count($fichierplagier)-1]; ?>"/>
                    <input type="hidden" name="c"value="<?php echo $plagier; ?>"/>
                    <input type="hidden" name="aut"value="<?php echo $auteur; ?>"/>
                    <input type="hidden" name="fa"value="<?php echo $dirs[count($dirs)-1]; ?>"/>
                    <input type="submit" name="pdf"/>
                </form>
            </div>
            <a href="generepdf/htmltab/?t=<?php echo $crypt->encrypt($max); ?>&fs=<?php echo $crypt->encrypt($fichierplagier[count($fichierplagier)-1]); ?>&c=<?php echo $crypt->encrypt($plagier); ?>&fa=<?php echo $crypt->encrypt($dirs[count($dirs)-1]); ?>&aut=<?php echo $crypt->encrypt($auteur); ?>" target="blank"><button class="btn btn-group btn-small btn-info pull-right"><span style="color: red" class="fa fa-file-pdf-o"> PDF</span></button></a>
            <button class="btn btn-group btn-small btn-info pull-right"><span  class="fa fa-eye-slash"> Détail de l\'analyse</span></button>
        </div>
<div style="height: 20px;">&nbsp;</div>
        <!--<a href="dashboard.php">--><button class="btn btn-lg btn-info" id="retours" type="button" onclick="retour();"><i class="fa fa-backward"></i> Retour</button><!--</a>-->
        
    
    <script type="text/javascript" src="../../js/jquery-latest.js"></script>
<script type="text/javascript">
$(window).load(function() {
	$(".loaders").fadeOut("1000");
})
</script>
<script language="javascript">
    function retour(){
        history.go(-1);        
    }
</script>
</body>
</html>