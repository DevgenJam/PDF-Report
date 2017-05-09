<?php
include("codes/link.php");
$emp_id=$_GET['emp_id'];
$sql = "Select * From information where emp_id='$emp_id'";
$sql_run = mysql_query($sql);
$row = mysql_fetch_array($sql_run);

$schedin=$row['sched_in'];
$schedout=$row['sched_out'];

$in=strtotime("+1 seconds", strtotime($schedin));
$in1=date("h:i A", $in);

$out=strtotime("+1 seconds", strtotime($schedout));
$out1=date("h:i A", $out);

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body  oncontextmenu="return false" onselectstart="return false" ondragstart="return false">

<link rel="stylesheet" type="text/css" href="css/prof.css">
<style type="text/css">
	.drp{
	width: 95%;
	height: 40px;
	padding: 10px;
}
.btn{
	color: red;
	text-decoration: none;
	background-color: none;
}
</style>

<?php include("codes/addrd.php"); ?>
<form action="" method="POST">
	<div id="cointainer">
	<div id="right">
	<img src="images/men.png" width="20%" height="20%">
	<h1>
	<h4 style="margin-bottom:5px">
	<?php echo $row['fname'];?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname'];?> 
	<hr>
	</h4>
	<input type="hidden" value="<?php echo $row['emp_id']; ?>" name="emp_id">
	<label>I.D NUMBER : </label>&nbsp;<?php echo $row['emp_id']; ?>
	<br>
	<br>
	
	<label>CONTACT :</label>&nbsp;<?php echo $row['contact']; ?><br><br>
	<label>GENDER :</label>&nbsp; <?php if($row['gender']==0) {echo"MALE";}else{echo "FEMALE";}?><br><br>
	<label>Schedule Time In : </label>&nbsp;<?php echo $in1; ?><br><br>
	<label>Rate Per Hour :</label>&nbsp; <?php echo $row['rate'];?><br><br>
	<label>Schedule Time Out :</label>&nbsp; <?php echo $in1;?><br><br>
	<label>Schedule Time Out :</label>&nbsp; <?php echo $out1;?><br><br>

	<label>Rest Days :</label>&nbsp; <?php echo $row['dayname'];?><br><br>
	</div>
	<div id="left">
	<br><br>
	<br><br>
	<br><br>
	
	<br>
	<label style="font-weight: bold;">REST DAYS :</label><br>

	
<table cellspacing="0" class="table" id="resultTable" data-responsive="table">
  <thead>
    <tr class="b">
      <th width="10%" class="font">Day</th>
      <th width="10%" class="font">Action</th>
    </tr>
  </thead>
  <tbody>
  <?php include('codes/link.php');
$query = "SELECT * FROM restday where emp_id='$emp_id'";
	$result = mysql_query($query);
    while($row=mysql_fetch_array($result))
	{
	?>
    <tr class="record">
      <td align="center" style="color: red; font-weight: bold;"><?php echo $row['dayname']; ?></td>
      <td align="center" style="text-decoration: none;"><a href="editrd.php?cid=<?php echo $row['cid']; ?>">UPDATE</a></td>
	</tr>
<?php } ?>
</div>
</tbody></table>
<div class="clearfix"></div>

	<br><br>
	<label style="">NEW REST DAYS : </label>
	<select class="drp" name="rd">
		<option value="Monday">MONDAY</option>
		<option value="Tuesday">TUESDAY</option>
		<option value="Wednesday">WEDNESDAY</option>
		<option value="Thursday">THURSDAY</option>
		<option value="Friday">FRIDAY</option>
		<option value="Saturday">SATURDAY</option>
		<option value="Sunday">SUNDAY</option>
	</select>
	<br><br>
	<input type="submit" name="rest" class="link">
	</div>
	</div>
</form>
</body>
</html>