<?php
	$username = $_POST["username"];
	$password = $_POST['password'];
	if(preg_match("/^[a-z_]+$/", $username) === 0){
		echo"<script>alert('nama harus terdiri dari huruf kecil dan underscore saja');location.href='index.php';</script>";

	
	}else if(preg_match("/^.*(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[_])(?=.*[A-Z]).*$/", $password) === 0){
		echo"<script>alert('nama harus terdiri dari minimal satu huruf besar, satu huruf kecil, satu angka dan satu underscore saja');location.href='index.php';</script>";
	}else{
		echo"<script>alert('Sudah Benar');location.href='index.php';</script>";
	}
?>