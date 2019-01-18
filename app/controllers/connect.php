<?php 

$host = 'db4free.net';
$username = 'tindaalingnena';
$password = 'tuittDay1105';
$dbname = 'tindaalingnena';


$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
	die('connection failed: ' . mysqli_error($conn));
}

//echo 'connected succesfully';

 ?>