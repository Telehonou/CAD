<?php 

	include ( 'PdfToText-master/PdfToText.phpclass' ) ;

	function  output ( $message )
	   {
		if  ( php_sapi_name ( )  ==  'cli' )
			echo ( $message ) ;
		else
			echo ( nl2br ( $message ) ) ;
		return $message;
	    }

	$file	=  'test' ;
	$pdf	=  new PdfToText ( "$file.pdf" ) ;
	$txtfile=fopen("$file.txt", 'w');

	output ( file_get_contents ( "$file.txt" ) ) ;
	output ( "Contenu du fichier pdf extrait :\n" ) ;
	output ( "-----------------------------------------------------------\n" ) ;
	
	$res=output ( $pdf -> Text ) ;
	fputs($txtfile,"$res");

 ?>