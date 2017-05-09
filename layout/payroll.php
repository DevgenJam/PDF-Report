<?php 
include("codes/link.php");
$id=$_POST['idd'];
$sql=mysql_query("SELECT * FROM payroll where emp_id='$id'");
while ($row=mysql_fetch_array($sql))
{
	# code...
	
?>
<!DOCTYPE html>
<html>
<head oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
	<title></title>
</head>
<body>
<?php echo $row['emp_id'];?>
<br>DEDUCTIONS : <?php echo $row['deductions'];?><br>GROSS SALARY : <?php echo $row['gross']; ?>
<br>NET SALARY : <?php echo $row['payout']; ?>
</body>
</html>
<?php }?>