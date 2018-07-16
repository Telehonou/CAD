<?php

function upload($fichier,$dir)
{	
	//$fichier = $_FILES['input'];
	$extensions_valides = array( 'jpg' , 'jpeg' , 'gif' , 'png', 'swf' , 'flv' , 'avi' , 'mov' , 'mpg' , 'mpeg' , 'xvid' , 'divx' , 'mkv','mp3','3gp');
	$maxsize=FALSE ;// taille maximale
	$max_width = 0;
	$max_height = 0;
	
    //Test1: fichier correctement uploadй
    if(!isset($fichier) OR $fichier['error'] > 0) return FALSE;
	
    //Test2: taille limite
    if($maxsize !== FALSE AND $fichier['size'] > $maxsize) return FALSE;
	
	//Test3: limite des dimensions de l'image
	if($max_width != 0 && $max_height = 0)
	{
		
		$img_size = getimagesize($fichier['name']);
		$img_width = $img_size[0];
		$img_height = $img_size[1];
		
		if( $img_width > $max_width && $img_height > $max_height )
		{
			return FALSE;
		}
	}
	
    //on recupиre l'extension
    $ext = substr(strrchr($fichier['name'],'.'),1);
	
	//on check si elle fait partie des extensions valides
	if (!in_array($ext, $extensions_valides)) return FALSE;
	
	//on recupere le nom de fichier
	//$filename = strstr($fichier['name'],'.', true); 
	$filename = substr($fichier['name'], 0, strpos($fichier['name'], '.'));
	$filename = strtr($filename, ' АБВГДЕЗИЙКЛМНОПТУФХЦЩЪЫЬЭабвгдезийклмнопртуфхцщъыьэя', '_AAAAAACEEEEIIIIOOOOOUUUUYaaaaaaceeeeiiiioooooouuuuyy');
	
	$destination = $dir."/".$filename.".".$ext;
	
   //Dйplacement du fichier temporaire uploadй vers son emplacement definitif.
	return move_uploaded_file($fichier['tmp_name'],$destination);
}
?>