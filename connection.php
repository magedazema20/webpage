<?php
$servername = "localhost" ;
$username = "root" ;
$password = "";
$dbname = "clothes" ;

$con=mysqli_connect ($servername,$username,$password,$dbname) ;

if (!$con){
    die("connectionfailed:" .mysqli_connect_error()) ;
}

?>