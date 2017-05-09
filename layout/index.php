<?php 
session_start();
//check logged in or not!
if(!isset($_SESSION['login_user'])){
	header('Location:login.php');
	
}
?>
<!DOCTYPE html>
<html oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<head>
	<title>Offline D.T.R.</title>
	
<link rel="shortcut icon" href="images/c-white.png" type="image/x-icon" />
	<script type="text/javascript" src = "js/jquery-3.1.1.min.js"></script>
	<link rel = "stylesheet" href = "css/style.css" type = "text/css" />
</head>
<body >
<div id = "head">
	<div id = "banner">
	<img src = "images/custard apple black.jpg"/>
	</div>
	<div id = "menu">
	<ul>
			<a href = "prof.php" target="main"><li class = "active" id = "choices" >Profiling</li></a>
			<a href = "list.php" target="main"><li id = "choices">Employee List</li></a>
			<a href = "pending.php" target="main"><li id = "choices">Pending</li></a>
			<a href = "act.php" target="main"><li id = "choices">Activity Log</li></a>
			<a href = "manage/dash.php" target="main"><li id = "choices">Manage</li></a>
			<a href = "report/index.php" target="main"><li id = "choices">REPORT</li></a>
			<a href = "out.php"><li id = "choices">Log Out</li></a>

	</ul>
	</div>
</div>
<div id = "container"> 
<iframe name="main" src="list.php" width="100%" height="100%" style="background-color: white;">
</iframe></div>


</body>
</html>