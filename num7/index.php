<!DOCTYPE html>
<html>
<head>
	<title>HOBBIES</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nova+Mono" rel="stylesheet">
</head>
<body>
	<div class="container" style="padding: 6% 20% 0 20%;">
	<div class="jumbotron">
  		<h1 style="font-family: Nova Mono;font-size: 35pt">Tronjal Tronjol</h1>
  		<h1 style="font-family: Indie Flower;font-size: 20pt;margin-top: -5pt">maha asyik</h1>  
		<div class="panel panel-default" style="margin-top: 10em; ">
			<div class="panel-body">
			<table class="table table-striped" style="font-size: 13pt;">
				<thead>
					<tr>
						<td>#</td>
						<td>Name</td>
						<td>Hobbies</td>
					</tr>
				</thead>
				<?php
					$conn = mysqli_connect("localhost","root","","hobby");         							
					$view = mysqli_query($conn, "select categories.personId as id, categories.name as name, GROUP_CONCAT(hobbies.hobby) as hobbies from hobbies inner join categories on hobbies.personId = categories.personId GROUP BY categories.personId");
					while ($v=mysqli_fetch_array($view)) {
				?>
				<tbody>
					<tr>
						<td><?= $v['id'] ?></td>
						<td><?= $v['name'] ?></td>
						<td><?= $v['hobbies'] ?></td>
					</tr>
				<?php
					}
				?>
				</tbody>
			</table>
		</div>
		</div>
	</div>
	</div>
</body>
</html>