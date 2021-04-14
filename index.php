<?php 
	include 'config.php';

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Monitoring Suhu dan Kelembaban Stasiun Bawah Tanah</title>
	<link rel="stylesheet" href="stylesheet.css">
</head>
<body>
	<header>
	<h1>Suhu dan Kelembaban Stasiun Bawah Tanah</h1>
	</header>
	<div class="atas-wrapper">
		<h3>Suhu dan kelembaban pada stasiun bawah tanah harus selalu dalam keadaan stabil. Pastikan suhu selalu di rentang 25-30 derajat celcius dan kelembaban di rentang nilai 60-70 persen </h3>
		
		<h2>Suhu</h2>
		<div class="progress" data-label= <?php 	$sql = "SELECT temperature FROM dht11 ORDER BY id DESC LIMIT 1"; 
													$query = mysqli_query($mysqli, $sql);
													$result = mysqli_fetch_assoc($query); 
													echo $result['temperature']; 
													echo "'C";?>>
			<span class="value" style="width : <?php $sql = "SELECT temperature FROM dht11 ORDER BY id DESC LIMIT 1"; 
													$query = mysqli_query($mysqli, $sql);
													$result = mysqli_fetch_assoc($query); 
													echo $result['temperature']; 
													echo "%"; ?>;"></span>
		</div>

		<h2>Kelembaban</h2>
		<div class="progress" data-label= <?php 	$sql = "SELECT humidity FROM dht11 ORDER BY id DESC LIMIT 1"; 
													$query = mysqli_query($mysqli, $sql);
													$result = mysqli_fetch_assoc($query); 
													echo $result['humidity']; 
													echo "%";?>>
			<span class="value" style="width :  <?php $sql = "SELECT humidity FROM dht11 ORDER BY id DESC LIMIT 1"; 
													$query = mysqli_query($mysqli, $sql);
													$result = mysqli_fetch_assoc($query); 
													echo $result['humidity']; 
													echo "%"; ?>;"></span>
		</div>
		<hr>
		<h1 style="text-align: center">Control Panel</h1> 
		<div class="tombol">
			<button onclick="window.location.href= 'control.php?id=1&nilai=1'" style="background-color: green;">LED ON</button>
			<button onclick="window.location.href= 'control.php?id=1&nilai=0'" style="background-color: red;">LED OFF</button>
			<div class="indicator">
			<?php 
			$data = mysqli_query($mysqli, "SELECT nilai FROM kontroll WHERE id = '1'");
			while($hasil = mysqli_fetch_assoc($data)){
			$val = $hasil["nilai"];

			if ($val == 1){
				echo '<img src="images/ledon.png">';
				
			}
			else {
				echo '<img src="images/ledoff.png">';
			}
			
		}
	 ?>
		</div>
		
			
		</div>
		
	</div>
</body>
</html>