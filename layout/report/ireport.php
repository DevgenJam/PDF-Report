<?php
session_start();
//check logged in or not!
if(!isset($_SESSION['login_user'])){
	header('Location:login.php');
}
include ("../codes/link.php");
$dd1=$_POST['dd1'];
$dd2=$_POST['dd2'];
$id=$_POST['emp_id'];
$sql = "SELECT * From information  where emp_id='$id'";		
$sql_run = mysql_query($sql);
$row = mysql_fetch_array($sql_run);

$schedin=$row['sched_in'];
$schedout=$row['schedouted_out'];

$in=strtotime("+1 seconds", strtotime($schedin));
$in1=date("h:i A", $in);

$out=strtotime("+1 seconds", strtotime($schedout));
$out1=date("h:i A", $out);

$sql2 ="SELECT sum(salaryaday) as total_gross from logs INNER JOIN information where logs.emp_id=information.emp_id and logs.tag='0' and logs.stat1='0' and logs.dt between '$dd1' AND '$dd2' aND logs.emp_id='$id' Group by logs.emp_id";
$sql2_run=mysql_query($sql2);
while($row2 =mysql_fetch_array($sql2_run))
{
$tg-=$row2['total_gross'];

$sql3 ="SELECT sum(deduction) as total_deduc from logs INNER JOIN information where logs.emp_id=information.emp_id and logs.tag='0' and logs.stat1='0' and logs.dt between '$dd1' AND '$dd2' aND logs.emp_id='$id' Group by logs.emp_id";
$sql3_run=mysql_query($sql3);
while($row3 =mysql_fetch_array($sql3_run))
{
$td-=$row3['total_deduc'];

$tt=$td - $tg;

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
  <link rel="stylesheet" type="text/css" href="../css/farme.css">
 <div class="imgcontainer">
      <img src="../images/men.png" height="100px" width="100px" alt="Avatar" class="avatar">
</div>	
	<h4 style="margin-bottom:5px">
	<?php echo $row['fname'];?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname'];?> 
	</h4>
	<label>
	I.D number:&nbsp;<label class="dis"><?php echo $row['emp_id']; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	Contact:&nbsp;<label class="dis"><?php echo $row['contact']; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	SCHEDULE IN TIME: &nbsp;<label class="dis"><?php echo $in1;?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	SCHEDULE OUT TIME: &nbsp;<label class="dis"><?php echo $out1; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	PAY OUT: &nbsp;<label class="dis" style="color:red; font-size: 18px;"><?php echo $tt; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>

<hr >

<table cellspacing="0" width="80%" class="table" id="resultTable" data-responsive="table">
  
  <thead>
    <tr>
      <th width="7%" class="font">Date</th>
      <th width="7%" class="font">Time In</th>
      <th width="7%" class="font">Time Out</th>
      <th width="7%" class="font">Add time</th>
      <th width="10%" class="font">Worked Hours</th>
       <th width="10%" class="font" >Min. Late</th>
      <th width="10%" class="font" >Deductions</th>
      <th width="7%" class="font">Gross Salary </th>
      <th width=15%" class="font">Remarks</th>
    </tr>
 </thead>
  <tbody>
   <?php
 include("../codes/link.php");
$id = $_POST['emp_id'];
$sql1 ="SELECT * From logs INNER JOIN information where logs.emp_id=information.emp_id and logs.tag='0' and logs.stat1='0' and logs.dt between '$dd1' AND '$dd2' and information.emp_id='$id'";
$sql1_run=mysql_query($sql1);
while($row1 =mysql_fetch_array($sql1_run))
{
$other=$row1['other_time'];
$tw=$row1['total_work'];
$sal=$row1['salaryaday'];
$ml=$row1['min_late'];
$deduc=$row1['deduction'];
$total=$other*0;//kung pila ang rate mag ot
//for the mean time

$net=$sal-$deduc;
$in=$row['time_in'];
$out=$row['time_out'];


$at = strtotime("+1 seconds", strtotime($in));
$tin=date('h:i a', $at);

$att = strtotime("+1 seconds", strtotime($out));
$tout=date('h:i a', $att);
?>	
    <tr class="record">    
	  <td align="center" class="fon"><?php echo $row1['dt']; ?> </td>
      <td align="center" class="fon"><?php echo $tin; ?></td>
      <td align="center" class="fon"><?php echo $tout; ?></td>
	  <td align="center" class="fon" ><?php if($row1['other_time']==''){echo "0";}else{echo $row1['other_time']; }?></td>
	  <td align="center" class="fon" ><?php if($row1['total_work']==''){echo "----";}else{echo $row1['total_work']; } ?></td>
	  <td align="center" class="fon" ><?php echo $row1['minlate']; ?></td>
      <td align="center" class="fon" ><?php echo $row1['deduction']; ?></td>
      <td align="center" class="fon" ><?php echo $sal; ?></td>
	   <td align="center" class="fon" id="countit"><?php echo $row1['remarks'];?> || <?php echo $row1['statuss']; ?></td>
	   </tr>
	 
<?php } }}  ?>
  </tbody>
</table>
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