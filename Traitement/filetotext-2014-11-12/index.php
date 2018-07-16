<?php
require("class.filetotext.php");

$docObj = new Filetotext("CV.docx");
//$docObj = new Filetotext("test.pdf");
$return = $docObj->convertToText();
$txtfile=fopen("CV.txt", 'w');//ouverture du fichier txt en écriture
						//on écrit le contenu du fichier pdf dans le fichier txt
						//$res=output ( $pdf -> Text ) ;
						fputs($txtfile,$return );

var_dump( $return ) ;