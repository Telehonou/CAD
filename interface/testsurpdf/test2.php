<?php  include("test.php"); ?>
<!DOCTYPE html>
<html>
<head>
	<title>test plagiat</title>
</head>
<body>
<?php 
$doc1="moi c'est Djoumessi Tsajieu Diane Love. C'est un honneur Telehonou Junior";
$doc2="moi c'est Djoumessi Tsajieu Diane Love. C'est un honneur Telehonou Junior";
$res=leven($doc2,$doc1);
echo "<h1>".$res."</h1>";


 ?>
</body>
</html>