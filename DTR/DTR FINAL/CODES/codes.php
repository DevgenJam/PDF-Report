<?php 
include("connection.php");

		$id=$_POST['emp_id'];

				$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('H:i');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');
				
if(isset($_POST['btn1']))
		{
			$sql=mysql_query("SELECT * From information where emp_id='$id' ");
			if(mysql_num_rows($sql)==0)
			{
				echo "<script>alert('$id : ID NUMBER NOT FOUND')</script>";
			}
			else
			{
				$sql2=mysql_query("SELECT * FROM information where emp_id='$id' and status='0'");
				if(mysql_num_rows($sql2)==0)
				{
//					echo '<script>alert("YOU ARE ALREADY LOGGED IN")</script>';
					$sql4=mysql_query("SELECT * FROM logs where emp_id='$id' and dt='$date'");
					if(mysql_num_rows($sql4)==1)
					{
						echo '<script>alert("YOU ARE ALREADY LOG IN FOR TODAY")</script>';
					}
					else//sql4
					{
						$ud=mysql_query("UPDATE logs set total_work='4', remarks='HALF DAY', tag='0' where emp_id='$id' and tag='1'");
						$ud1=mysql_query("UPDATE information set status='0' where emp_id='$id'");
						echo '<script>alert("RE-LOGIN PLEASE")</script>';
					}

				}
				else
				{
					$sql3=mysql_query("SELECT * FROM restday where emp_id='$id' and dayname='$day_namenow'");
					if(mysql_num_rows($sql3)==1)
					{
						echo '<script>alert("TODAY IS YOUR REST DAY, IF YOU WANT TO PROCEED USE THE APPLY FORM FOR REST DAY")</script>';
					}
					else
					{
//						echo '<script>alert("GOOD")</script>';
						$sql5=mysql_query("SELECT * FROM information where emp_id='$id'");
						while($row=mysql_fetch_array($sql5))
						{
				$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('H:i');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');


							//getting the info from employee_info
			$id1=$row['emp_id'];
			$timein=$row['sched_in'];
			$allow=strtotime("+5 minutes", strtotime($timein));
			$allowance=date('H:i',$allow);
			$timeout=$row['sched_out'];
			$rph=$row['rate_per_hour'];
			$cam=$row['campaign']; 
			$char=$timeout-$timeout;
			$advance=$row['advance_time'];
			$latetime=$row['late_time'];

			$minlate=$dt->format('i');//to get how many minutes late
				
if($timein=='00:00')
{
	if($time>$advance)
	{
		if($time<'23:59')
		{
				$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','0','0','LOG IN','','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
				//	echo "<script>alert('LOG IN JUST IN TIME')</script>";
							$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

		
		}
		elseif($time='00:00')
		{
			
			$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','0','0','LOG IN','','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
					//echo "<script>alert('LOG IN JUST IN TIME')</script>";
					$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

					
		}
		elseif($time>$allowance)
		{
			if($time>$latetime)
			{
				echo "<script>alert('MORE THAN 30 MINUTES LATE CANNOT LOG IN')</script>";
			}
			elseif($time>$timeout)
			{
				echo "<script>alert('TOO EARLY TO LOG IN')</script>";
			}
			elseif($time<=$latetime)
			{

					//echo 'LATE';
				//formula for late deduction
				$ml=$minlate-5;
				$remarks='LATE';

				$sql=mysql_query("SELECT * FROM campaign where name='$cam'");
				while($row=mysql_fetch_array($sql))
				{
					$deduction=$row['deduction'];
					$per=$row['per'];

					if($row['per']==1)
					{
						$total_deduc=$deduction*$ml;
					}	
					else
					{
						$total_deduc=$deduction;
					}	
					}//end while		
					
					$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','$ml','$total_deduc','$remarks','','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
				//	echo "<script>alert('LOG IN LATE')</script>";
								$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN! LATE';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

					
			}
		}
	}
	else
	{
		if($time>$timeout)
		{
			echo "<script>alert('TOO EARLY TO LOG IN')</script>";
		}
		else
		{
			if($time>$latetime)
			{
				echo "<script>alert('MORE THAN 30 minutes late')</script>";
			}
			elseif($time<=$latetime)
			{
				if($time>$allowance)
				{
					//echo 'LOGIN LATE';
						//formula for late deduction
				$ml=$minlate-5;
				$remarks='LATE';

				$sql=mysql_query("SELECT * FROM campaign where name='$cam'");
				while($row=mysql_fetch_array($sql))
				{
					$deduction=$row['deduction'];
					$per=$row['per'];

					if($row['per']==1)
					{
						$total_deduc=$deduction*$ml;
					}	
					else
					{
						$total_deduc=$deduction;
					}
					}//end of while			
					
					$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','$ml','$total_deduc','$remarks','','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
				//	echo "<script>alert('LOG IN LATE')</script>";
							$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN! LATE';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

					
				}
				elseif($time<=$allowance)
				{
			//		echo 'LOG IN NORMAL';

	$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','0','0','LOG IN','','1')");

				///$tem=mysql_query("INSERT into temporary(emp_id,dt,sched_in,sched_out)VALUES('$id','$date','$timein','$timeout')");
							
			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
			//		echo "<script>alert('LOG IN JUST IN TIME')</script>";
							$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";
					
						}
			}
		}
	}
}
else
{

if($time>=$advance)
{
	if($time<=$allowance)
	{
			$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','0','0','LOG IN','','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
				//	echo "<script>alert('LOG IN JUST IN TIME')</script>";
						$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

					
	}
	elseif($time>$allowance)
	{
		if($time>$latetime)
		{
			echo "<script>alert('MORE THAN 30 MINUTES LATE')</script>";
		}
		else
		{
			//echo "LOGIN LATE";
							//formula for late deduction
				$ml=$minlate-5;
				$remarks='LATE';

				$sql=mysql_query("SELECT * FROM campaign where name='$cam'");
				while($row=mysql_fetch_array($sql))
				{
					$deduction=$row['deduction'];
					$per=$row['per'];

					if($row['per']==1)
					{
						$total_deduc=$deduction*$ml;
					}	
					else
					{
						$total_deduc=$deduction;
					}
					}//end of while			
					$insert=mysql_query("INSERT into logs (emp_id,dt,time_in,minlate,deduction,remarks,statuss,tag)
						VALUES('$id','$date','$time','$ml','$total_deduc','$remarks','','1')");
				
			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
//					echo "<script>alert('LOG IN LATE')</script>";
				$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='LOG IN! LATE';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

				
		}
	}
}
elseif($time<$advance)
{
	if($time>$timeout)
	{
	echo "<script>alert('TOO EARLY TO LOG IN')</script>";
	}
	elseif($time<$timeout)
	{
		echo "<script>alert('MORE THAN 30 MINUTES LATE')</script>";
	}
}
}
				}//end of while
			}
		}
	}
}



 ?>