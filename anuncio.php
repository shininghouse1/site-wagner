<?php 
	if(empty($_COOKIE['nome'])){
		header("Location: index.php");
	}
	$nome = $_COOKIE['nome'];
	$email = $_COOKIE['email'];
	$nivel = $_COOKIE['nivel'];
	include "anterior.php";
	echo "<h1>$nome </h1><h2>($email)</h2>";
?>















