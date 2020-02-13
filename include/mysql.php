<?php

$config['db_host'] = 'localhost';
$config['db_user'] = 'root';
$config['db_pass'] = '';
$config['db_name'] = 'tanarok';

/*function getConnection()
{

global $config;
$connection = mysqli_connect($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']); //el kell tárolni egy változóban
if (!$connection) {
    logMessage("Error", "Failed to connect to MySQL:" . mysqli_connect_error());
    errorPage();
    //die(mysqli_connect_error()); //ha a die-t meghívom akkor megáll az oldal betőltése
}
return $connection;

}
function logMessage($level, $message) {
    $file = fopen("logs/application.log", "a"); // megynyit és bővít
    fwrite($file, "[$level] " . date("Y-m-d H:i:s") . " $message" . PHP_EOL); //PHP_EOL lezárás
    fclose($file);
}


function errorPage() {
    include "templates/error.php";
    die();
}
*/

$mysqli = new mysqli($config['db_host'],$config['db_user'],$config['db_pass'],$config['db_name']);


  

?>
