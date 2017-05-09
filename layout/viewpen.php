<?php
session_start();
//check logged in or not!
if(!isset($_SESSION['login_user'])){
	header('Location:login.php');
}
include ("codes/link.php");
include("codes/codes.php");
$cid=$_GET['cid'];
$sql = "SELECT * From information INNER JOIN logs where information.emp_id=logs.emp_id and logs.cid='$cid'";		
$sql_run = mysql_query($sql);
$row = mysql_fetch_array($sql_run);

$schedin=$row['sched_in'];
$schedout=$row['sched_out'];

$in=strtotime("+1 seconds", strtotime($schedin));
$in1=date("h:i A", $in);

$out=strtotime("+1 seconds", strtotime($schedout));
$out1=date("h:i A", $out);

?>
<style type="text/css">
.styl{
	font-weight:bold;
	font-family:arial;
	font-size:20px;
	color:#363636;
}

body {
	font-family:Arial, Helvetica, sans-serif;
	width: auto;
	height: auto;
	
}
label{
	font-size:12px;
}

	.responsive-video iframe,
	.responsive-video object,
	.responsive-video embed {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	.style1 {color: #FF0000}
    .style2 {
	font-size: 24px;
	font-weight: bold;
}
    .panel-body .table-responsive .table.table-hover thead tr th {
	font-size: 12px;
}
    .panel-body .table-responsive .table.table-hover {
	font-size: 13px;
}
.font{
	font-family:arial;
	font-size:13px;

}
.fon{
	color:black;
	font-size:13px;
	font-family:arial;
}
.dis
{
	font-weight: bold;
	font-size: 15px;
}
</style>
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
  <link rel="stylesheet" type="text/css" href="css/farme.css">
  <link href="print.css" rel="stylesheet" type="text/css" media="print">
<div class="imgcontainer">
      <img src="images/men.png" height="100px" width="100px" alt="Avatar" class="avatar">
</div>	
	<h4 style="margin-bottom:5px">
	<?php echo $row['fname'];?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname'];?> 
	</h4>
	<label>
	I.D number:&nbsp;<label class="dis"><?php echo $row['emp_id']; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	Contact:&nbsp;<label class="dis"><?php echo $row['contact']; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	SCHEDULE IN TIME: &nbsp;<label class="dis"><?php echo $in1;?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	SCHEDULE OUT TIME: &nbsp;<label class="dis"><?php echo $out1; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	RATE PER HOUR : &nbsp;<label class="dis"><?php echo $row['rate']; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	GENDER : &nbsp;<label class="dis"><?php if($row['gender']==0){ echo "MALE";}else{echo "FEMALE";} ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	<hr >
	<?php
	$sqll=mysql_query("SELECT * FROM logs where cid='$cid'");
	while ($row1=mysql_fetch_array($sqll)) {
		# code...
	
	?>
<label>TIME IN : </label><span><?php echo $row['time_in']; ?></span><br>
<label>TIME OUT : </label><span><?php echo $row['time_out']; ?></span><br>
<label>REMARKS : </label><span><?php echo $row['status']; ?></span><br>
<label>HOURS CONSUMED : </label><span><?php echo $row['other_time']; ?></span>
<?php } ?>
</div>
</label>
</body>

<!--script language="javascript" type="text/javascript">
var tds = document.getElementById('countit').getElementsByTagName('td');
var sum = 0;
for(var i = 0; i <tds.length; i++)
{
	if(tds [i].className == 'count-me')
	{
		sum += isNan(tds [i].innerHTML)? 0:
		parseInt(tds[i].innerHTML);
	}
}

document.getElementById('countit').innerHTML += '<td>'+ sum + '</td>Total</td>';
</script>