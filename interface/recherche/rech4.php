<style type="text/css">
.Style2 {
	color: #009900;
	font-weight: bold;
	font-style: italic;
	font-size: 36px;
}
</style>
<?
$nom = $_POST['nom'];
$champ1 = "nom";
$prenom = $_POST['prenom'];
$champ2 = "prenom";
$age = $_POST['age'];
$champ3 = "age";

if($_POST['et_ou1'] == 'AND')
{ 
 if(empty($_POST['nom']))      
 {
 $nom = 1;
 $champ1 = 1;
 }
}
else
{
 if(empty($_POST['nom']))      
 {
 $nom = 1;
 $champ1 = 2;
 }
}

if($_POST['et_ou1'] == 'AND')
{ 
 if(empty($_POST['prenom']))      
 {
  $prenom = 1;
  $champ2 = 1;
 }
}
else
{
 if(empty($_POST['prenom']))      
 {
  $prenom = 1;
  $champ2 = 2;
 }
}

if($_POST['et_ou2'] == 'AND')
{ 
 if(empty($_POST['age']))      
 {
  $age = 1;
  $champ3 = 1;
 }
}
else
{
 if(empty($_POST['age']))      
 {
  $age = 1;
  $champ3 = 2;
 }
}

$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'CAD';
$tables = 'users';

// connection à la DB
$con=mysqli_connect ($host,$user,$pass) or die ('Erreur : '.mysqli_error() );
mysqli_select_db($con,$db) or die ('Erreur :'.mysqli_error());

$select = "SELECT * FROM $tables WHERE u_name = '$nom' ".$_POST["et_ou1"]." u_username = '$prenom' ".$_POST["et_ou2"]." telephone = $age";

if($nom=="" AND $prenom=="" AND $age=="")
echo 'Vous devez preciser en moins un critére de recherche !!';
else
{
$result = mysqli_query($con,$select) or die ('Erreur : '.mysqli_error($con));
$total = mysqli_num_rows($result);

if($total) 
{
 echo "<table width=\"435\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">
  <!--DWLayoutTable-->
  <tr>
    <td width=\"15\" height=\"19\">&nbsp;</td>
    <td width=\"129\">&nbsp;</td>
    <td width=\"9\">&nbsp;</td>
    <td width=\"126\">&nbsp;</td>
    <td width=\"12\">&nbsp;</td>
    <td width=\"124\">&nbsp;</td>
    <td width=\"20\">&nbsp;</td>
  </tr>";
  echo "<tr>
    <td height=\"22\">&nbsp;</td>
    <td valign=\"top\" bgcolor=\"#6699FF\"><b>nom</b>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign=\"top\" bgcolor=\"#6699FF\"><b>prénom</b>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign=\"top\" bgcolor=\"#6699FF\"><b>age</b>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>";
  echo "<tr>
    <td height=\"22\">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>";
  while($row = mysqli_fetch_array($result)) 
  {
    echo '<td height="22">&nbsp;</td>
    <td valign="top">'.$row['u_name'].'&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top">'.$row['u_username'].'&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top">'.$row['telephone'].'&nbsp;</td>
    <td>&nbsp;</td>
  </tr>';
  }
echo '<tr>
    <td height="157">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>';
}
else echo '<div align="center"><span class="Style1">Aucun r&eacute;sulat ne corresponds &agrave; votre recherche !!... </span>
</div>';

mysqli_free_result($result);
mysqli_close($con);
}
?>