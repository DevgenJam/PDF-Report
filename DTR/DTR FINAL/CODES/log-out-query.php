<?php
//validation
include ("connection.php");

		$id=$_POST['emp_id'];

				$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('H:i');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');

$dte = $dt->format('d');
				
			$sql2=mysql_query("SELECT * FROM logs where emp_id='3'");
			while($row=mysql_fetch_array($sql2))
			{
				$tag=$row['tag'];
			
			$id1=$ow['emp_id'];
			$dt=$row['dt'];
			$date1=$row['dt'];
			$date3=strtotime("+1 seconds", strtotime($date1));
			$date2=date("d", $date3);
			$timeout=$row['time_out'];

		$logout= strtotime("+479 minutes", strtotime($timein));//time must log out
		$real_logout=date('H:i', $logout);	
		$logout1=strtotime("+259 minutes", strtotime($timein));
		$late_logout=date('H:i', $logout1);
			}//end of while
$day=$dte-$date2;
echo $day;
?>
