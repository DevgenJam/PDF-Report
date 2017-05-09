<?php
include ("codes/link.php");

$cid=$_GET['cid'];
$sql = "Select * From restday where cid='$cid'";
$sql_run = mysql_query($sql);
$row = mysql_fetch_array($sql_run);

$day=$_POST['dayname'];
if(isset($_POST['day']))
{
	$sql=mysql_query("UPDATE restday set dayname=UPPER('$day') where cid='$cid'");
	echo "<script>alert('REST DAY UPDATED')</script>";
	include("list.php");
	exit();

}
?><body oncontextmenu="return false" onselectstart="return false" ondragstart="return false"><link rel="stylesheet" type="text/css" href="css/farme.css">
<link rel="stylesheet" type="text/css" href="css/prof.css">
<form action="" method="post">
<div id='container'>	
<h2>UPDATE REST DAY</h2>
<?php echo $row['fname']; ?>&nbsp;<?php echo $row['mname'];?>&nbsp;<?php echo $row['lname']; ?>
<hr>
<label>TITLE :</label>
<br>

	<select class="drp"  name="dayname">
	<option value="<?php echo $row['dayname'];?>"><?php echo $row['dayname']; ?></option>
		<option value="Monday">MONDAY</option>
		<option value="Tuesday">TUESDAY</option>
		<option value="Wednesday">WEDNESDAY</option>
		<option value="Thursday">THURSDAY</option>
		<option value="Friday">FRIDAY</option>
		<option value="Saturday">SATURDAY</option>
		<option value="Sunday">SUNDAY</option>
	</select><br><input type="submit" style="width: 40%" name="day" value="SAVE"  class="link">
</div></form></body>