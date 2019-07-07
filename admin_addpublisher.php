<?php
	session_start();
	if((!isset($_SESSION['manager'])  && !isset($_SESSION['expert']))){
		header("Location:index.php");
	}
	$title = "Add new publisher";
	require "./template/header.php";
	require "./functions/database_functions.php";
	$conn = db_connect();

	if(isset($_POST['add'])){
		$name = trim($_POST['name']);
		$name = mysqli_real_escape_string($conn, $name);
		
		// find publisher and return pubid
		// if publisher is not in db, create new
		$findPub = "SELECT * FROM publisher WHERE publisher_name = '$name'";
		$findResult = mysqli_query($conn, $findPub);
		if(mysqli_num_rows($findResult)==0){
			// insert into publisher table and return id
			$insertPub = "INSERT INTO publisher(publisher_name) VALUES ('$name')";
			$insertResult = mysqli_query($conn, $insertPub);
			if(!$insertResult){
				echo "Can't add new publisher " . mysqli_error($conn);
				exit;
			}
			header("Location: admin_publishers.php");
		} else {
            echo '<p style="color:red;">publisher already exists</p>';
		}
	}
?>
	<form method="post" action="admin_addpublisher.php" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>Name</th>
				<td><input type="text" name="name"></td>
			</tr>
		</table>
		<input type="submit" name="add" value="Add new publisher" class="btn btn-primary">
		<a href="admin_publishers.php" class="btn btn-default">Cancel</a>
	</form>
	<br/>
<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "./template/footer.php";
?>