<?php 
include 'config.php';
$id = $_GET['id'];
$nilai = $_GET['nilai'];
mysqli_query($mysqli, "UPDATE kontroll SET nilai = '$nilai' WHERE id = '$id'");
header("location:index.php");

 ?>
