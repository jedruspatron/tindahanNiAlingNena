
<?php

//Destroy all sessions

session_start();
session_unset();
session_destroy();

//Route user to landing page
$_SESSION = array();

header("Location: ../../index.php");

?>