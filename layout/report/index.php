<?php session_start();
//check logged in or not!
if(!isset($_SESSION['login_user'])){
	header('Location:../login.php');
}
include("../codes/link.php");
?>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="../css/facebox.css">
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/dng.js" type="text/javascript" charset="utf-8"></script>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/farme.css">
<style type="text/css">
#filter {
margin-bottom:10px;
	width: 25%;
	float:left;
	height:30px;
	border:#666666 1px solid;
	padding:10px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:13px;
	font-weight:bold;
}
.table{
	width: 100%;
	font-size: 14px;
}
#maintable {
	margin:0px;
	width: 100%;
}
.clearfix {
	clear: both;
}
.responsive-video {
    position: relative;
    padding-bottom: 0%;
    padding-top: 0px; overflow: hidden;
}

.responsive-video iframe,
.responsive-video object,
.responsive-video embed {
    position: absolute;
    top: 0;
    left: -90%;
    width: 100%;
    height: 100%;
}
.b{
	font-size:14px;
	font-family:Arial, Helvetica, sans-serif;
	}
.font{
	font-size:12px;
}

#container{
	color:#363636;
	padding:10px;
}
.con img{
	float: ;left;
	background-size: 50px 50px;
}
body {margin-top:20px;
	font-family:Arial, Helvetica, sans-serif;
	margin-right:20px;
	margin-left:20px;
	background-color: #FFFFFF;
	font-size:13px;
}
</style><body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">

 <h1>REPORT..</h1>
 <a href="dash.php" target="wm">SUMMARY/ALL</a> &nbsp;
&nbsp;&nbsp; <a href="campaign.php" target="wm">BY CAMPAIGN</a>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; <a href="k2.php" target="wm">EMPLOYEE LIST</a>&nbsp;&nbsp;&nbsp;
 
	<hr> 
	<iframe src="dash.php" height="100%" name="wm" width="100%"></iframe>
 </body>