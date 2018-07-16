<?php                           
                                echo '<marquee behavior="alternate">module en construction!!!</marquee>';
                                //include './caroussel.php';
                                $man=new Manager();
                                $donnees=  lister('annonces');
                                echo '<ul>';
                                foreach ($donnees as $data){
                                    $anonce=new Annonce($data);
                                    echo '<li><span class="titre_annonce">'.$anonce->titre().'</span></li><br>';
                                    echo "<span class='contenu_annonce'>".$anonce->contenu()."</span><br> Publier par:";
                                    $table=array("users");
                                    $attribut=array('*');
                                    $condition="u_userid=".$anonce->userid();
                                    $emmetteur=$man->Lister($attribut, $table, $condition);
                                    foreach ($emmetteur as $emet){
                                        $user=$emet['u_name'];
                                    }
                                    echo "<span class='contenu_annonce'>".$user."</span><br> Le ";
                                    echo "<span class='contenu_annonce'>".$anonce->datecreation()."</span><br> ";
                                
                                }
                                echo '</ul>';
                                ?>
