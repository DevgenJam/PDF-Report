<?php
include("connection.php");
//time zone code getting the current time according to the laptop time
				$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('H:i');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');

$reason=$_POST['reason'];
$sup=$_POST['sup'];
$id=$_POST['emp_id'];
if(isset($_POST['btn2']))
{
	$sql=mysql_query("SELECT * FROM information where emp_id = '$id'");
	if(mysql_num_rows($sql)==0)
	{
	echo "<script>alert('$id : ID NUMBER NOT FOUND')</script>";
	}
	else
	{
		$sql2=mysql_query("SELECT * FROM information where emp_id = '$id' and status = '1'");
		if(mysql_num_rows($sql2)==0)
		{
			echo "<script>alert('LOG IN FIRST')</script>";
		}
		else
		{
			$sql3=mysql_query("SELECT * FROM information INNER JOIN logs where information.emp_id='$id' and information.emp_id=logs.emp_id and logs.tag!='0'");
			while($row=mysql_fetch_array($sql3))
			{
				//take all the data from database with specific id number
				$id1=$row['emp_id'];
				$st=$row['sched_in'];
				$et=$row['sched_out'];
				$rate=$row['rate'];
				$tw=$row['other_time'];
				$r=$tw+4;
				$r1=$tw+8;//$mustout=$row['must_out'];

				$could=strtotime("+ 480 minutes", strtotime($st));
				$could_out=date('H:i', $could);

$must=strtotime("+ 540 minutes", strtotime($st));
				$must_out=date('H:i', $must);
				
				$could1=strtotime("+ 540 minutes", strtotime($st));
				$could_out1=date('H:i', $could1);

				$rp=$rate*$r;
				$rpd=$rate*$r1;	

			}//end while
	
				if($time>$could_out)
				{
					if($time>$must_out)
					{
						$ud=mysql_query("UPDATE information set status='0' where emp_id='$id'");
						$ud1=mysql_query("UPDATE logs set time_out='$time', total_work='8', tag='0', salaryaday='$rpd', remarks='LOG-OUT' where emp_id='$id' and tag='1'");

					//	echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
								$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG OUT';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

						}
					elseif($time<=$must_out)
					{

						$ud=mysql_query("UPDATE information set status='0' where emp_id='$id'");
						$ud2=mysql_query("UPDATE logs set time_out='$time', total_work='8', salaryaday='$rpd', remarks='LOG OUT', tag='0' where emp_id='$id' and tag='1'");
					//		echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
									$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG OUT';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

					
					}
				}
				else
				{
					echo "<script>alert('TOO EARLY TO LOG OUT')</script>";
				}
		}
	}
	
}

?>