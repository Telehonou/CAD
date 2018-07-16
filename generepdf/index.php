<?php
//Exemple élémentatire-->

/*require('fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(40,10,'Rapport du test anti-plagiat !');
$pdf->Output();
*/?>
<?php
//En-tête, pied de page, saut de page et image

require('fpdf.php');

class PDF extends FPDF
{
// En-tête
function Header()
{
	// Saut de ligne
    $this->Ln(60);
    // Logo
    $this->Image('logo.png',90,15,30);
    //$this->Image('logo.png',160,10,30);
    // Police Arial gras 15
    $this->SetFont('Arial','B',30);
    // Décalage à droite
    $this->Cell(80);
    // Titre
    $this->Cell(1,1,"Rapport d'analyse",1,50,'C');
    // Saut de ligne
    $this->Ln(10);
    $this->RotatedText(35,190,'W a t e r m a r k   d e m o',45);
}

// Pied de page
function Footer()
{
    // Positionnement à 1,5 cm du bas
    $this->SetY(-15);
    // Police Arial italique 8
    $this->SetFont('Arial','I',8);
    // Numéro de page
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
}


// Instanciation de la classe dérivée
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','',12);
//for($i=1;$i<=40;$i++)
    $pdf->Cell(0,10,"Pourcentage de plagiat" ,0,1);
    $pdf->Cell(0,10,$_GET['t'] ,0,1);
    $pdf->Cell(0,10,"Text similaire" ,0,1);
    $pdf->Cell(0,10,$_GET['c'] ,0,1);
$pdf->Output();
?>
<?php

////Retour du texte à la ligne et couleurs

/*require('fpdf.php');

class PDF extends FPDF
{
function Header()
{
    global $titre;

    // Arial gras 15
    $this->SetFont('Arial','B',15);
    // Calcul de la largeur du titre et positionnement
    $w = $this->GetStringWidth($titre)+6;
    $this->SetX((210-$w)/2);
    // Couleurs du cadre, du fond et du texte
    $this->SetDrawColor(0,80,180);
    $this->SetFillColor(230,230,0);
    $this->SetTextColor(220,50,50);
    // Epaisseur du cadre (1 mm)
    $this->SetLineWidth(1);
    // Titre
    $this->Cell($w,9,$titre,1,1,'C',true);
    // Saut de ligne
    $this->Ln(10);
}

function Footer()
{
    // Positionnement à 1,5 cm du bas
    $this->SetY(-15);
    // Arial italique 8
    $this->SetFont('Arial','I',8);
    // Couleur du texte en gris
    $this->SetTextColor(128);
    // Numéro de page
    $this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');
}

function TitreChapitre($num, $libelle)
{
    // Arial 12
    $this->SetFont('Arial','',12);
    // Couleur de fond
    $this->SetFillColor(200,220,255);
    // Titre
    $this->Cell(0,6,"Chapitre $num : $libelle",0,1,'L',true);
    // Saut de ligne
    $this->Ln(4);
}

function CorpsChapitre($fichier)
{
    // Lecture du fichier texte
    $txt = file_get_contents($fichier);
    // Times 12
    $this->SetFont('Times','',12);
    // Sortie du texte justifié
    $this->MultiCell(0,5,$txt);
    // Saut de ligne
    $this->Ln();
    // Mention en italique
    $this->SetFont('','I');
    $this->Cell(0,5,"(fin de l'extrait)");
}

function AjouterChapitre($num, $titre, $fichier)
{
    $this->AddPage();
    $this->TitreChapitre($num,$titre);
    $this->CorpsChapitre($fichier);
}
}

$pdf = new PDF();
$titre = 'Vingt mille lieues sous les mers';
$pdf->SetTitle($titre);
$pdf->SetAuthor('Jules Verne');
$pdf->AjouterChapitre(1,'UN ÉCUEIL FUYANT','install.txt');
$pdf->AjouterChapitre(2,'LE POUR ET LE CONTRE','install.txt');
$pdf->Output();*/
?>


<?php
//Multi-colonnes
/*
require('fpdf.php');

class PDF extends FPDF
{
protected $col = 0; // Colonne courante
protected $y0;      // Ordonnée du début des colonnes

function Header()
{
    // En-tête
    global $titre;

    $this->SetFont('Arial','B',15);
    $w = $this->GetStringWidth($titre)+6;
    $this->SetX((210-$w)/2);
    $this->SetDrawColor(0,80,180);
    $this->SetFillColor(230,230,0);
    $this->SetTextColor(220,50,50);
    $this->SetLineWidth(1);
    $this->Cell($w,9,$titre,1,1,'C',true);
    $this->Ln(10);
    // Sauvegarde de l'ordonnée
    $this->y0 = $this->GetY();
}

function Footer()
{
    // Pied de page
    $this->SetY(-15);
    $this->SetFont('Arial','I',8);
    $this->SetTextColor(128);
    $this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');
}

function SetCol($col)
{
    // Positionnement sur une colonne
    $this->col = $col;
    $x = 10+$col*65;
    $this->SetLeftMargin($x);
    $this->SetX($x);
}

function AcceptPageBreak()
{
    // Méthode autorisant ou non le saut de page automatique
    if($this->col<2)
    {
        // Passage à la colonne suivante
        $this->SetCol($this->col+1);
        // Ordonnée en haut
        $this->SetY($this->y0);
        // On reste sur la page
        return false;
    }
    else
    {
        // Retour en première colonne
        $this->SetCol(0);
        // Saut de page
        return true;
    }
}

function TitreChapitre($num, $libelle)
{
    // Titre
    $this->SetFont('Arial','',12);
    $this->SetFillColor(200,220,255);
    $this->Cell(0,6,"Chapitre $num : $libelle",0,1,'L',true);
    $this->Ln(4);
    // Sauvegarde de l'ordonnée
    $this->y0 = $this->GetY();
}

function CorpsChapitre($fichier)
{
    // Lecture du fichier texte
    $txt = file_get_contents($fichier);
    // Police
    $this->SetFont('Times','',12);
    // Sortie du texte sur 6 cm de largeur
    $this->MultiCell(60,5,$txt);
    $this->Ln();
    // Mention
    $this->SetFont('','I');
    $this->Cell(0,5,"(fin de l'extrait)");
    // Retour en première colonne
    $this->SetCol(0);
}

function AjouterChapitre($num, $titre, $fichier)
{
    // Ajout du chapitre
    $this->AddPage();
    $this->TitreChapitre($num,$titre);
    $this->CorpsChapitre($fichier);
}
}

$pdf = new PDF();
$titre = 'Vingt mille lieues sous les mers';
$pdf->SetTitle($titre);
$pdf->SetAuthor('Jules Verne');
$pdf->AjouterChapitre(1,'UN ÉCUEIL FUYANT','install.txt');
$pdf->AjouterChapitre(2,'LE POUR ET LE CONTRE','install.txt');
$pdf->Output();*/
?>
<?php

//Tableaux

/*require('fpdf.php');

class PDF extends FPDF
{
// Chargement des données
function LoadData($file)
{
    // Lecture des lignes du fichier
    $lines = file($file);
    $data = array();
    foreach($lines as $line)
        $data[] = explode(';',trim($line));
    return $data;
}

// Tableau simple
function BasicTable($header, $data)
{
    // En-tête
    foreach($header as $col)
        $this->Cell(40,7,$col,1);
    $this->Ln();
    // Données
    foreach($data as $row)
    {
        foreach($row as $col)
            $this->Cell(40,6,$col,1);
        $this->Ln();
    }
}

// Tableau amélioré
function ImprovedTable($header, $data)
{
    // Largeurs des colonnes
    $w = array(40, 35, 45, 40);
    // En-tête
    for($i=0;$i<count($header);$i++)
        $this->Cell($w[$i],7,$header[$i],1,0,'C');
    $this->Ln();
    // Données
    foreach($data as $row)
    {
        $this->Cell($w[0],6,$row[0],'LR');
        $this->Cell($w[1],6,$row[1],'LR');
        $this->Cell($w[2],6,number_format($row[2],0,',',' '),'LR',0,'R');
        $this->Cell($w[3],6,number_format($row[3],0,',',' '),'LR',0,'R');
        $this->Ln();
    }
    // Trait de terminaison
    $this->Cell(array_sum($w),0,'','T');
}

// Tableau coloré
function FancyTable($header, $data)
{
    // Couleurs, épaisseur du trait et police grasse
    $this->SetFillColor(255,0,0);
    $this->SetTextColor(255);
    $this->SetDrawColor(128,0,0);
    $this->SetLineWidth(.3);
    $this->SetFont('','B');
    // En-tête
    $w = array(40, 35, 45, 40);
    for($i=0;$i<count($header);$i++)
        $this->Cell($w[$i],7,$header[$i],1,0,'C',true);
    $this->Ln();
    // Restauration des couleurs et de la police
    $this->SetFillColor(224,235,255);
    $this->SetTextColor(0);
    $this->SetFont('');
    // Données
    $fill = false;
    foreach($data as $row)
    {
        $this->Cell($w[0],6,$row[0],'LR',0,'L',$fill);
        $this->Cell($w[1],6,$row[1],'LR',0,'L',$fill);
        $this->Cell($w[2],6,number_format($row[2],0,',',' '),'LR',0,'R',$fill);
        $this->Cell($w[3],6,number_format($row[3],0,',',' '),'LR',0,'R',$fill);
        $this->Ln();
        $fill = !$fill;
    }
    // Trait de terminaison
    $this->Cell(array_sum($w),0,'','T');
}
}

$pdf = new PDF();
// Titres des colonnes
$header = array('Pays', 'Capitale', 'Superficie (km²)', 'Pop. (milliers)');
// Chargement des données
$data = $pdf->LoadData('install.txt');
$pdf->SetFont('Arial','',14);
$pdf->AddPage();
$pdf->BasicTable($header,$data);
$pdf->AddPage();
$pdf->ImprovedTable($header,$data);
$pdf->AddPage();
$pdf->FancyTable($header,$data);
$pdf->Output();
*/?>
<?php 
require('fpdf.php');
class PDF extends FPDF
{}
$pdf = new PDF();
// Sélection de la police
$pdf->SetFont('Arial','B',16);
// Décalage de 8 cm à droite
$pdf->Cell(80);
// Texte centré dans une cellule 20*10 mm encadrée et retour à la ligne
$pdf->Cell(20,10,'Titre',1,1,'C'); ?>