<?php
	session_start();
	if((!isset($_SESSION['manager'])  && !isset($_SESSION['expert']))){
		header("Location:index.php");
	}
	$title = "Add new category";
	require "./template/header.php";
	require "./functions/database_functions.php";
	$conn = db_connect();

	if(isset($_POST['add'])){
		$name = trim($_POST['name']);
		$name = mysqli_real_escape_string($conn, $name);
		
		// find category and return catid
		// if category is not in db, create new
		$findCat = "SELECT * FROM category WHERE category_name = '$name'";
		$findResult = mysqli_query($conn, $findCat);
		if(mysqli_num_rows($findResult)==0){
			// insert into category table and return id
			$insertCat = "INSERT INTO category(category_name) VALUES ('$name')";
			$insertResult = mysqli_query($conn, $insertCat);
			if(!$insertResult){
				echo "Can't add new category " . mysqli_error($conn);
				exit;
			}
			header("Location: admin_categories.php");
		} else {
            echo '<p style="color:red;">category already exists</p>';
		}
	}
?>
	<form method="post" action="admin_addcategory.php" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>Name</th>
				<td><input type="text" name="name"></td>
			</tr>
		</table>
		<input type="submit" name="add" value="Add new Category" class="btn btn-primary">
		<a href="admin_categories.php" class="btn btn-default">Cancel</a> 
	</form>
	<br/>
<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "./template/footer.php";
?>