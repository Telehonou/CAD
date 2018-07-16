<?php 


function listing($repertoire){

	$fichier = array();

	if (is_dir($repertoire)){

		$dir = opendir($repertoire);                //ouvre le repertoire courant désigné par la variable
		while(false!==($file = readdir($dir))){     //on lit tout et on récupere tout les fichiers dans $file

			if(!in_array($file, array('.','..'))){  //on eleve le parent et le courant '. et ..'

				$page = $file;                      //sort l'extension du fichier
				$page = explode('.', $page);
				$nb = count($page);
				$nom_fichier = $page[0];
				for ($i = 1; $i < $nb-1; $i++){
					$nom_fichier .= '.'.$page[$i];
				}
				if(isset($page[1])){
					$ext_fichier = $page[$nb-1];
					if(!is_file($file)) { $file = '/'.$file; }
				}
				else {
					if(!is_file($file)) { $file = '/'.$file; } //on rajoute un "/" devant les dossier pour qu'ils soient triés au début
					$ext_fichier = '';
				}

				if($ext_fichier != 'php' and $ext_fichier != 'html') { //utile pour exclure certains types de fichiers à ne pas lister
					array_push($fichier, $file);
				}
			}
		}
	}

	natcasesort($fichier); //la fonction natcasesort( ) est la fonction de tri standard sauf qu'elle ignore la casse

	foreach($fichier as $value) {
			echo '<a href="'.rawurlencode($repertoire).'/'.rawurlencode(str_replace ('/', '', $value)).'">'.$value.'</a><br />';
	}

}


listing('uploads');        //met ici le chemin du dossier contenant test média ("uploader" par exemple si les fichier uploader par l'admin sont mis dans ce repertoire  )


 ?>