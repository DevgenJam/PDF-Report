<?php
include("link.php");

$rd=$_POST['rd'];
$id=$_POST['emp_id'];

if(isset($_POST['rest']))
{
	$sql=mysql_query("SELECT * FROM restday where emp_id='$id'");
	if(mysql_num_rows($sql)==1)
	{
		$sql3=mysql_query("SELECT * FROM restday where dayname='$rd' and emp_id='$id'");
		if(mysql_num_rows($sql3)==1)
		{
		echo "<script>alert('THIS ID NUMBER HAS TAKEN THAT DAY ALREADY AS REST DAY')</script>";
			echo "<div align='center'><label style=' font-weight:bold; color:red; font-size:20px;' ><img src='images/error1.png'><br>REFRESH PLEASE</label></div>";exit();
		
		}
		else
		{	
			$insert=mysql_query("INSERT into restday (emp_id,dayname)VALUES('$id','$rd')");	
			echo "<script>alert('SAVE')</script>";	
		echo "<div align='center'><label style='color:red; font-size:20px; font-weight:bold;' ><img src='images/REFRESH.jpg'><br>REFRESH PLEASE</label></div>";exit();
	}
	}
	else
	{
		$insert=mysql_query("INSERT into restday(emp_id,dayname)VALUES('$id','$rd')");	
		echo "<script>alert('SAVE')</script>";	
		echo "<div align='center'><label style='color:red; font-size:20px; font-weight:bold;' ><img src='images/refresh.jpg'><br><br><br>IT WAS SAVE JUST<br>REFRESH PLEASE</label></div>";exit();
	 }
}

if(isset($_POST['del']))
{
	$del =mysql_query("DELETE FROM restday WHERE dayname='$rd' and emp_id='$id'");
	echo "<script>alert('REST DAY DELETED')|</script>";

}
?>