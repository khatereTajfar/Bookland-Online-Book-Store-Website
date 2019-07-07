<?php
	session_start();

	require_once "./functions/database_functions.php";
	// print out header here
	$title = "Edit Profile";
	require "./template/header.php";
	// connect database
	$conn = db_connect();

		$firstname = trim($_POST['firstname']);
		$firstname = mysqli_real_escape_string($conn, $firstname);
		
		$lastname = trim($_POST['lastname']);
        $lastname = mysqli_real_escape_string($conn, $lastname);
        
		$email = trim($_POST['email']);
		$email = mysqli_real_escape_string($conn, $email);
	
		
		$address = trim(trim($_POST['address']));
		$address = mysqli_real_escape_string($conn, $address);
		
		$city = trim($_POST['city']);
        $city = mysqli_real_escape_string($conn, $city);
        
		$zipcode = trim($_POST['zipcode']);
		$zipcode = mysqli_real_escape_string($conn, $zipcode);

	
	$customer = getCustomerIdbyEmail($_SESSION['email']);
    $id=$customer['id'];
	$query="UPDATE customers set 
	firstname='$firstname', lastname='$lastname' , address='$address', city='$city', zipcode='$zipcode' ,email='$email'  where id='$id'
	";
   mysqli_query($conn, $query);

    
?>
<p class="lead text-success" id="p">Your Profile has been updated sucessfully..</p>
   <script>
   	
		window.setTimeout(function(){

		window.location.href = "http://localhost/onlineBookStore/index.php";

		}, 3000);
	
   </script>

<?php
	if(isset($conn)){
		mysqli_close($conn);
	}
	require_once "./template/footer.php";
?>