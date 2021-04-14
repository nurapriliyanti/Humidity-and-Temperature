<?php 
	include 'config.php';
	//$id = $_GET['id'];
	//untuk update data
	//mysqli_query($mysqli, "UPDATE dht11 SET temperature = '$temperature', humidity = '$humidity' WHERE id = '$id'"); 

	if (isset($_GET['temperature']) & isset($_GET['humidity'])){ //isset=mengecek php apakah ada input atau tidak. input dr esp yg dikirim ke update-data ini
		$temperature = $_GET['temperature'];
		$humidity = $_GET['humidity'];
		//menambahkan tabel
		$result = mysqli_query($mysqli, "INSERT INTO dht11 (temperature, humidity) VALUES ('$temperature', '$humidity')");
		echo "Sukses memasukkan data";
	}
	?>