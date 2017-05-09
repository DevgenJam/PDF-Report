<?php
//simple PHP login script using Session
//start the session * this is important
session_start();
include ('codes/link.php');
//login script

if(isset($_REQUEST['ch']) && $_REQUEST['ch'] == 'login'){



	//give your login credentials here
		$username = $_POST['username'];
		$password=$_POST['password'];
	$hsl = mysql_query("select * from security where username='".$_POST['username']."' and password='".$_POST['password']."' and status='0'");
	$data = mysql_fetch_array($hsl);
	$empid=$data['emp_id'];
	$user=$data['username'];
	$pass=$data['password'];
	$empid = $data['emp_id'];
	$fname = $data['fname'];
	$mname = $data['mname'];
	$lname = $data['lname'];
	$ul = $data['user_level'];
	$department = $data['department'];
		if($username==$user && $password=$pass){
	$_SESSION['emp_id']=$empid;
		$_SESSION['username']=$user;
			$_SESSION['password']=$pass;
	$_SESSION['fname']=$fname;
	$_SESSION['lname']=$lname;
	$_SESSION['mname']=$mname;
	$_SESSION['user_level']=$ul;
	$_SESSION['department']= $department;
		$_SESSION['login_user'] = 1;
	}else{
		$_SESSION['login_msg'] = 1;
}}

//get the page name where to redirect
if(isset($_REQUEST['pagename']))
$pagename = $_REQUEST['pagename'];

//logout script
if(isset($_REQUEST['ch']) && $_REQUEST['ch'] == 'logout'){
	unset($_SESSION['login_user']);
	header('Location:login.php');
}
if(isset($_SESSION['login_user'])){
	if(isset($_REQUEST['pagename']))
	header('Location:admin/dashboard.php');
	else
	header('Location:admin/dashboard.php');
}else{
?><!DOCTYPE html>
<html>
<head>
<title>C.A.O.C</title>
<link href="css/styl.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-image: url(img/world-map-clip-art-at-clker-com-vector-clip-art-online-royalty-free-lnNb0h-clipart.png);
	background-repeat: repeat;
	background-color: #000000;
}
-->
</style></head>
<body>
<center>
<div id="main">
<b>
</b>
<div id="login">
  <form name="login_form" method="post">
<label><br>
<br>
<img src="img/icon.png" width="250" height="100"><br>
<br>
User Name:</label>
<input required id="username" autoFocus name="username" placeholder="username" type="text">
<label>Password:</label><input required id="password" name="password" placeholder="password" type="password">
<label></label>
<strong>
<?php	
					//display the error msg if the login credentials are wrong!
						if(isset($_SESSION['login_msg'])){
							echo '<script>alert("Username and Password Does not Match")</script> ';
							unset($_SESSION['login_msg']);
						}
					?>
					
</strong>
<input type="submit" value="Login" class="link">
         <input type="hidden" name="ch" value="login">
		
  </form>
</div>
</div>
</center>
</body>
</html>

<?php } ?>



<!-- JS  -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
	<script>window.jQuery || document.write("<script src='js/jquery-1.5.1.min.js'>\x3C/script>")</script>
	<script src="adminaccount/js/app.js"></script>
</body>
</html>
<script type="application/javascript">

  function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }

</script>
<script language=JavaScript>
<!--

//Disable right mouse click Script
//By Maximus (maximus@nsimail.com) w/ mods by DynamicDrive
//For full source code, visit http://www.dynamicdrive.com

var message="Function Disabled!";

///////////////////////////////////
function clickIE4(){
if (event.button==2){
alert(message);
return false;
}
}

function clickNS4(e){
if (document.layers||document.getElementById&&!document.all){
if (e.which==2||e.which==3){
alert(message);
return false;
}
}
}

if (document.layers){
document.captureEvents(Event.MOUSEDOWN);
document.onmousedown=clickNS4;
}
else if (document.all&&!document.getElementById){
document.onmousedown=clickIE4;
}

document.oncontextmenu=new Function("alert(message);return false")

// --> 
</script>