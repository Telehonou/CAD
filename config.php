<?php
// display all error except deprecated and notice 
error_reporting( E_ALL & ~E_DEPRECATED & ~E_NOTICE );
session_name("CAD");
session_start();

// turn on output buffering 
ob_start();

define('DB_DRIVER', 'mysql');
define('DB_SERVER', 'localhost');
define('DB_SERVER_USERNAME', 'root');
define('DB_SERVER_PASSWORD', '');
define('DB_DATABASE', 'cads');

define('PROJECT_NAME', 'Centre d\'accès à la documentation pour l\'UDs');

// basic options for PDO 
$dboptions = array(
    PDO::ATTR_PERSISTENT => FALSE,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
);
//connect with the server
try {
	$DB = new PDO(DB_DRIVER.':host='.DB_SERVER.';dbname='.DB_DATABASE, DB_SERVER_USERNAME, DB_SERVER_PASSWORD, $dboptions);
} catch (Exception $ex) {
	echo $ex->getMessage();
  die;
}
require_once 'functions.php';
//get error/success messages
if ($_SESSION["errorType"] != "" && $_SESSION["errorMsg"] != "" ) {
	$ERROR_TYPE = $_SESSION["errorType"];
	$ERROR_MSG = $_SESSION["errorMsg"];
	$_SESSION["errorType"] = "";
	$_SESSION["errorMsg"] = "";
}