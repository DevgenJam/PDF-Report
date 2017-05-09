<?php
include("codes/link.php");
$id=$_GET['cid']; 
$sql=mysql_query("SELECT * FROM logs where cid='$id'");
while($row=mysql_fetch_array($sql))
{
	$empid=$row['emp_id'];
	$other=$row['other_time'];
	$tw=$row['total_work'];

	$tw1=$other+$tw;
$sql2=mysql_query("SELECT * FROM information where emp_id='$empid'");
while ($row2=mysql_fetch_array($sql2)) 
{
	$sal=$row2['salaryaday'];
	$sal1=$tw1*$sal;
}
}

if(isset($_POST['approve']))
{
	$sql=mysql_query("SELECT * FROM logs where cid='$id'");
while($row=mysql_fetch_array($sql))
{
	$empid=$row['emp_id'];
	$other=$row['other_time'];
	$tw=$row['total_work'];

	$tw1=$other+$tw;
$sql2=mysql_query("SELECT * FROM information where emp_id='$empid'");
while ($row2=mysql_fetch_array($sql2)) 
{
	$sal=$row2['salaryaday'];
	$sal1=$tw1*$sal;
}
}
	$ud=mysql_query("UPDATE logs set salaryaday='$sal1' and stat1='' where cid='$id'");
	echo "<script>alert('APPROVED')</script>";
}
?>
<style type="text/css">
	.font{
		font-size: 11px;
		font-weight: bold;
		color:#363636;
	}

</style>
<!DOCTYPE html>
<html oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<head>
	<title></title>
</head>
<link rel="stylesheet" type="text/css" href="css/prof.css">
<body>
<div id="container">
<div id="left">
<h2>PENDING INFORMATION OF</h2>
<hr>
<label>NAME : </label>
<span class="font"><?php echo $row['fname']; ?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname']; ?></span>
<br>
<label>Time in : </label><span class="font"><?php echo $row1['time_in']; ?></span>
<br>
<label>TimeOut : </label><span class="font"><?php echo $row1['time_out']; ?></span>
<br>
<label></label>
</div></div>
</body>
</html>

