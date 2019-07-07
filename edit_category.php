<?php	
	// if save change happen
	if(!isset($_POST['save_change'])){
		echo "Something wrong!";
		exit;
	}

	$category = trim($_POST['name']);
	$id = trim($_POST['id']);

    require_once("./functions/database_functions.php");
	$conn = db_connect();


	$query = "UPDATE category SET  
	category_name = '$category' where categoryid='$id'";
	
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't update data " . mysqli_error($conn);
		exit;
	} else {
		header("Location: admin_categories.php?bookisbn=$isbn");
	}
?>