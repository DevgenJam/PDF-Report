<?php
include("codes/link.php");
$cid=$_GET['id'];
$sql=mysql_query("SELECT * FROM logs INNER JOIN information where logs.emp_id=information.emp_id and logs.id='$cid'");
while ($row=mysql_fetch_array($sql))
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$tin=$row['time_in'];
	$tout=$row['time_out'];
	$ml=$row['minlate'];
	$deduction=$row['deduction'];
	$other=$row['other_time'];
	$tw=$row['total_work'];
	$sad=$row['salaryaday'];
	$remarks=$row['remarks'];
	$stat=$row['statuss'];
	$stat1=$row['stat1'];
	$sup=$row['sup'];
	$reason=$row['reason'];
	$tag=$trow['tag'];
	$dayt=$row['dt'];

}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>		
</head>
<link rel="stylesheet" type="text/css" href="css/prof.css">
<style type="text/css">
	label{
		font-size: 12px;
		font-weight: bold;
	font-family: arial;
	}
	.txt{
		height: 10px;
		width: 70%;
		padding: 10px;
	}
</style>
<body>
<div id='container'>
<div id="left">
<form method="POST">
<h3><?php echo $f;?>&nbsp;&nbsp;<?php echo $m;?>&nbsp;&nbsp;<?php echo $l;?></h3>
<hr>
<label>DATE LOG IN :</label><br>
<input type="date" class="txt" readOnly value="<?php echo $dayt;?>" name="">
<br><br>
<label>TIME IN :</label>
<span style="color: red; font-weight: bold;"><?php echo $tin; ?></span>
<br>
<input type="time" class="txt"  name="tin">
<br><br>
<label>TIME OUT :</label><span style="color: red; font-weight: bold;"><?php echo $tout;?></span>
<br>
<input type="time" class="txt" name="tout">
<br>
<br>
<label>MINUTES LATE : </label>
<br>
<input type="text" value="<?php echo $ml; ?>" name="minlate">
<br><br>
<label>DEDUCTION :</label>
<br>
<input type="text" value="<?php echo $deduction; ?>" name="deduc">
<br><br>
<label>EXTRA WORKED HOURS TIME</label>
<br>
<input type="text" value="<?php echo $other; ?>" name="othertime">
<br><br>
<label>TOTAL WORKED HOURS </label>
<br>
<input type="text" value="<?php echo $tw;?>" name="tw">
<br><br>
<label>GROSS FOR THIS DAY :</label>
<br>
<input type="text" value="<?php echo $sad; ?>" name="sad">
<br><br>
<div id="right">
	<label>REMARKS :</label>
	<br>
	<input type="text" value="<?php echo $remarks; ?>" name="remarks">
	<br><br>
	<label>APPLICATION REMARKS :</label>
	<br>
	<input type="text" value="<?php echo $stat; ?>" name="ap">
	<br><br>
	<label></label>
</div>

</div>
</div>
</form>
</body>
</html>