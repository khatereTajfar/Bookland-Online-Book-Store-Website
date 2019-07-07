<?php
	$pubid = $_GET['pubid'];

	require_once "./functions/database_functions.php";
	$conn = db_connect();

	$query = "DELETE FROM publisher WHERE publisherid = '$pubid'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "delete data unsuccessfully " . mysqli_error($conn);
		exit;
	}
	header("Location: admin_publishers.php");
?>