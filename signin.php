<?php
	$title = "User SignIn";
	require_once "./template/header.php";
?>

	<form class="form-horizontal" method="post" action="user_verify.php">
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Enter username" name="username">
    <small class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" placeholder="Password" name="password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<div style="position:fixed; bottom:400px">
<?php
    $fullurl="http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    if(strpos($fullurl,"signin=empty")==true){
        echo '<P style="color:red">You did not fill in all the fields.</P>';
        exit();
    }
    if(strpos($fullurl,"signin=invalidusername")==true){
        echo '<P style="color:red">Username Does not exist.</P>';
        exit();
    }
    if(strpos($fullurl,"signin=invalidpassword")==true){
        echo '<P style="color:red">Password is not correct.</P>';
        exit();
    }
?>
</div>
<?php
	require_once "./template/footer.php";
?>