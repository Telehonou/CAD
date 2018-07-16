<?php
require('html_table.php');
require('../../Data/Cryptage.php');
$crypt=new Crypter('wln3');
$htmlTable='<table class="table table-bodered">
<tr>
<td>Document '.utf8_decode("analysé").' </td>
<td >Contenu</td>
<td>Source</td>
<td>Auteur</td>
<td>'.utf8_decode("Similarité").'</td>
</tr>

<tr>
<td>'.$crypt->decrypt($_GET['fa']).'</td>
<td>'.$crypt->decrypt($_GET['c']).'</td>
<td>'.$crypt->decrypt($_GET['fs']).'</td>
<td>'.$crypt->decrypt($_GET['aut']).'</td>
<td>'.$crypt->decrypt($_GET['t']).'%</td>
</tr>
</table>';

/*function Header()
{
	//Affiche le filigrane
	$this->SetFont('Arial','B',50);
	$this->SetTextColor(255,192,203);
	$this->RotatedText(35,190,'W a t e r m a r k   d e m o',45);
}
*/

function RotatedText($x, $y, $txt, $angle)
{
	//Rotation du texte autour de son origine
	$this->Rotate($angle,$x,$y);
	$this->Text($x,$y,$txt);
	$this->Rotate(0);
}

$pdf=new PDF_HTML_Table();
$pdf->AliasNbPages();
$pdf->SetFont('Times','',12);
$pdf->AddPage();
$pdf->SetFont('Arial','',10);
$pdf->WriteHTML(utf8_decode("Résultats du")." ".date('d/m/Y')."<br>$htmlTable<br>IUT/FV LIR2018.");
$pdf->Output();
?>
