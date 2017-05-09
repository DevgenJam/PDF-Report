<?php
include("link.php");
$id=$_POST['empid'];
$f=$_POST['f'];
$m=$_POST['m'];
$l=$_POST['l'];
$con=$_POST['contact'];
$cam=$_POST['campaign'];
$gen=$_POST['gender'];
$schedin=$_POST['schedin'];
$schedout=$_POST['schedout'];
$rate=$_POST['rate'];
$rd=$_POST['rd'];
$pos=$_POST['pos'];


$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('H:i');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');

if(isset($_POST['reg']))
{	
	$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==1)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER ALREADY TAKEN')</script>";
	}
	else
	{
		$sql1=mysql_query("SELECT * FROM information where fname='$f' and lname='$l' and mname='$m'");
		if(mysql_num_rows($sql1)==1)
		{
			echo "<script>alert('NAME ALREADY REGISTERED')</script>";
		}
		else
		{
			

$at = strtotime("-60 minutes", strtotime($schedin));
$advance=date('H:i', $at);

$lt = strtotime("+30  minutes", strtotime($schedin));
$late=date('H:i', $lt);

$mo = strtotime("+60 minutes ", strtotime($schedout));
$must=date('H:i', $mo);

			$insert=mysql_query("INSERT into information	 
				(emp_id,fname, mname,lname,gender,contact,campaign,position,sched_in,sched_out,late_time,advance_time,must_out,rate,status)
				VALUES
				('$id',UPPER('$f'),UPPER('$m'),UPPER('$l'),'$gen','$con','$cam',UPPER('$pos'),'$schedin','$schedout','$late','$advance','$must','$rate','0')");

			$insert2=mysql_query("INSERT into restday (emp_id,dayname)VALUES('$id','$rd')");
			echo "<script>alert('SAVE')</script>";
			include("list.php");
			exit();
		
		}
	}
}

$empp=$_POST['id'];
if(isset($_POST['ud']))
{
	$insert=mysql_query("UPDATE information set 
		lname='$l',
		fname='$f',
		mname='$m',
		gender='$gen',
		contact='$con',
		campaign='$cam',
		position='$pos',
		sched_in='$schedin',
		sched_out='$schedout',
		late_time='$late',
		advance_time='$advance',
		must_out='$must',
		rate='$rate',
		status='0' where emp_id='$empp'");
	
	echo "<script>alert('DATA UPDATED')</script>";
	include("list.php");
	exit();
}

?>