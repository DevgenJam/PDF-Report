<?php 
include("connection.php");
//time zone code getting the current time according to the laptop time
				$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('H:i');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');
$noh=$_POST['noh'];
$id=$_POST['empid'];
$reason=$_POST['reason'];
$sup=$_POST['sup'];
if(isset($_POST['earlyin']))
{
	$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==0)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER NOT FOUND')</script>";
	}
	else
	{
		$sql2=mysql_query("SELECT * FROM information where status='0' and emp_id='$id'");
		if(mysql_num_rows($sql2)==0)
		{
				$sqll=mysql_query("SELECT * FROM logs where emp_id='$id' and dt='$date'");
					if(mysql_num_rows($sqll)==1)
					{
						echo '<script>alert("YOU ARE ALREADY LOG IN FOR TODAY")</script>';
					}
					else//sql4
					{
						$udd=mysql_query("UPDATE logs set other_time='4', remarks='HALF DAY', status='0' where emp_id='$id' and tag!='0'");
						$udd1=mysql_query("UPDATE information set status='0' where emp_id='$id'");
						echo '<script>alert("RE-LOGIN PLEASE")</script>';
					}

		}
		else
		{
				$ssql=mysql_query("SELECT * FROM logs where emp_id='$id' and dt='$date'");
				if(mysql_num_rows($ssql)==1)
				{
					echo '<script>alert("YOU ARE ALREADY LOG IN FOR TODAY")</script>';
					}
					else//sql4
					{
			$sql4=mysql_query("SELECT * FROM restday where emp_id='$id' and dayname='$day_namenow'");
					if(mysql_num_rows($sql4)==1)
					{
						echo '<script>alert("TODAY IS YOUR REST DAY, IF YOU WANT TO PROCEED USE THE APPLY FORM FOR REST DAY DUTY")</script>';
					}
					else
					{				
			$get=mysql_query("SELECT * FROM information where emp_id='$id'");
			while($row=mysql_fetch_array($get))
			{
			
			$rt=$row['rate'];

$inser=mysql_query("INSERT into logs(emp_id,dt,time_in,other_time,statuss,stat1,sup,reason,tag)VALUES('$id','$date','$time','$noh','EARLY IN','2','$sup','$reason','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
			//echo "<script>alert('SAVE')</script>";
					$sqlS=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($rowS=mysql_fetch_array($sqlS)) 
{
	$l=$rowS['lname'];
	$f=$rowS['fname'];
	$m=$rowS['mname'];
	$campaign=$rowS['campaign'];
	$pos=$rowS['position'];
	$re='EARLY IN';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

			}//end while
		}
		}
	}
}

}

if(isset($_POST['earlyout']))
{
		$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==0)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER NOT FOUND')</script>";
	}
	else
	{
		$sql2=mysql_query("SELECT * FROM information where  emp_id='$id' and status='0'");
		if(mysql_num_rows($sql2)==1)
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
				$r1=$tw+4;//$mustout=$row['must_out'];
				$rpd=$rate*$r1;	
			


				$should=strtotime("+240 minutes", strtotime($st));
				$should_out=date('H:i', $should);

				if($should_out<$time)
				{
	
			$ud1=mysql_query("UPDATE logs set time_out='$time', total_work='4', salaryaday='$rpd', statuss='EARLY OUT', stat1='2', sup='$sup', reason='$reason', tag='0' where emp_id='$id' and tag!='0'");

			$ud=mysql_query("UPDATE information set status='0' where emp_id='$id'");
			//echo "<script>alert('SAVE')</script>";
					$sqlS=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($rows=mysql_fetch_array($sqlS)) 
{
	$l=$rows['lname'];
	$f=$rows['fname'];
	$m=$rows['mname'];
	$campaign=$rows['campaign'];
	$pos=$rows['position'];
	$re='';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

				}
				else
				{
					echo "<script>alert('YOU MUST WORK ATLEAST FOUR HOURS')</script>";
				}
			}
		}
	}
}


if(isset($_POST['ot']))
{
		$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==0)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER NOT FOUND')</script>";
	}
	else
	{
		$sql2=mysql_query("SELECT * FROM information where status='0' and emp_id='$id'");
			if(mysql_num_rows($sql2)==1)
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
				$r1=$noh+8;//$mustout=$row['must_out'];
				$rpd=$rate*$r1;	


			$ud1=mysql_query("UPDATE logs set time_out='$time', other_time='$noh', total_work='8',salaryaday='$rpd', statuss='OVERTIME', stat1='2', sup='$sup', reason='$reason',tag='0' where emp_id='$id' and tag!='0'");

			$ud=mysql_query("UPDATE information set status='0' where emp_id='$id'");
			//echo "<script>alert('SAVE')</script>";
					$sqlS=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($rowS=mysql_fetch_array($sqlS)) 
{
	$l=$rowS['lname'];
	$f=$rowS['fname'];
	$m=$rowS['mname'];
	$campaign=$rowS['campaign'];
	$pos=$rowS['position'];
	$re='OVERTIME';

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

if(isset($_POST['rd']))
{
	$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==0)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER NOT FOUND')</script>";
	}
	else
	{
			$sql4=mysql_query("SELECT * FROM logs where emp_id='$id' and dt='$date'");
					if(mysql_num_rows($sql4)==1)
					{
				echo '<script>alert("YOU ARE ALREADY LOG IN FOR TODAY")</script>';
					}
					else//sql4
					{
			$sql3=mysql_query("SELECT * FROM restday where emp_id='$id' and dayname='$day_namenow'");
			if(mysql_num_rows($sql3)==1)
			{
	
$inser=mysql_query("INSERT into logs(emp_id,dt,time_in,other_time,statuss,stat1,sup,reason,tag)VALUES('$id','$date','$time','$noh','REST DAY DUTY','2','$sup','$reason','1')");
		
			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
			echo "<script>alert('SAVE')</script>";
			
			//	echo '<script>alert("TODAY IS YOUR REST DAY, IF YOU WANT TO PROCEED USE THE APPLY FORM FOR REST DAY")</script>';
			}
			else
			{
				echo "<script>alert('ITS NOT YOUR REST DAY TODAY')</script>";
			}		
			}				
		
	}
}



if(isset($_POST['ds']))
{
	$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==0)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER NOT FOUND')</script>";
	}
	else
	{
		$sql4=mysql_query("SELECT * FROM logs where emp_id='$id' and dt='$date'");
					if(mysql_num_rows($sql4)==1)
					{
				echo '<script>alert("YOU ARE ALREADY LOG IN FOR TODAY")</script>';
					}
					else//sql4
					{

$inser=mysql_query("INSERT into logs(emp_id,dt, time_in,other_time,statuss,stat1,sup,reason,tag)VALUES('$id','$date','$time','$noh','DOUBLE SHIFT','2','$sup','$reason','1')");

			$ud=mysql_query("UPDATE information set status='1' where emp_id='$id'");
//			echo "<script>alert('SAVE')</script>";
					$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='DOUBLE SHIFT';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

				}							
	}
	
}


if(isset($_POST['hd']))
{
	$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
	if(mysql_num_rows($sql)==0)
	{
		echo "<script>alert('EMPLOYEE ID NUMBER NOT FOUND')</script>";
	}
	else
	{
		$sql3=mysql_query("SELECT * FROM information where emp_id='$id'");
			while($row=mysql_fetch_array($sql3))
			{
				//take all the data from database with specific id number
				$id1=$row['emp_id'];
				$st=$row['sched_in'];
				$et=$row['sched_out'];
				$rate=$row['rate'];
				$rpd=$rate*4;	
$inser=mysql_query("INSERT into logs(emp_id,dt, time_out,total_work,salaryaday,statuss,stat1,reason,tag)VALUES('$id','$date','$time','4','$rpd','HALF DAY','2','$reason','0')");
				//echo "<script>alert('HALF DAY, LOG OUT')</script>";
		$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while ($row=mysql_fetch_array($sql)) 
{
	$l=$row['lname'];
	$f=$row['fname'];
	$m=$row['mname'];
	$campaign=$row['campaign'];
	$pos=$row['position'];
	$re='HALF DAY';

						//echo "<script>alert('YOU ARE NOW LOG OUT')</script>";
}						echo "<label>ID number : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'> $id<br></span>
						<label>Name : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$f $m $l<br></span>
						<label>Campaign : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$campaign<br></span>
						<label>Position : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$pos<br></span>
						 <label>Remarks : </label><br><span style='color: white; margin-left:30px;  font-size:18px;'>$re <br></span>";

	}
	}
}
?>