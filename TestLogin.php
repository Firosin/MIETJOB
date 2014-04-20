<?
	include("/core/core.php");
	$login = "Admin";
	$password = "admin";
	$account->Login($login, $password);
	header('Location:/');
?>