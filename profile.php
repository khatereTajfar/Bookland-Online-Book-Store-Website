
<?php
	session_start();
	
	require_once "./functions/database_functions.php";
	// print out header here
	$title = "Profile";
	require "./template/header.php";
	// connect database
	if(isset($_SESSION['email'])){
		$customer = getCustomerIdbyEmail($_SESSION['email']);
    ?>
<form method="post" action="editProfile.php" class="form-horizontal">
	<div class="form-group">
        <label for="exampleInputEmail1">Firstname</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" value="<?php echo $customer['firstname']?>" name="firstname">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Lastname</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" value="<?php echo $customer['lastname']?>" name="lastname">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email</label>
        <input type="email" class="form-control" aria-describedby="emailHelp" value="<?php echo $customer['email']?>" name="email">
    </div>

    <div class="form-group">
        <label for="inputAddress">Address</label>
        <input type="text" class="form-control" id="inputAddress" value="<?php echo $customer['address']?>" name="address">
    </div>
    <div class="form-row">
	<div class="form-group col-md-2">
        </div>
        <div class="form-group col-md-4">
        <label for="inputCity">City</label>
        <input type="text" class="form-control" id="inputCity" name="city" value="<?php echo $customer['city']?>">
        </div>
        <div class="form-group col-md-2">
        </div>
        <div class="form-group col-md-4">
        <label for="inputZip">Zip</label>
        <input type="text" class="form-control" id="inputZip" name="zipcode" value="<?php echo $customer['zipcode']?>">
        </div>
    </div>
	<br>
    <div class="form-group col-md-12" >
        <div class="form-group" >
            <div class="col-lg-10 col-lg-offset-2" style="margin-left:0px">
              	<button type="reset" class="btn btn-default">Cancel</button>
              	<button type="submit" class="btn btn-primary">Edit</button>
            </div>
        </div>
    </form>

    <?php
	} 
	if(isset($conn)){ mysqli_close($conn); }
	require_once "./template/footer.php";
?>