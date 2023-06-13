<?php 
session_start();
$_SESSION['adminlogin']= 'non';
session_unset();
session_destroy();
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>