<?php 
	include 'config.php';
	$id = $_GET['id'];
	$nilai = mysqli_query($mysqli, "SELECT nilai FROM kontroll WHERE id = '$id'");
	if ($val = mysqli_fetch_array($nilai)){
		echo $val['nilai'];
	}
 ?>