<?php 
session_start();
$_SESSION['adminlogin']= 'non';
session_unset();
session_destroy();
header('Location: index.php' );
?>