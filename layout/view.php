<?php
session_start();
//check logged in or not!
if(!isset($_SESSION['login_user'])){
	header('Location:login.php');
}
include ("codes/link.php");
include("codes/codes.php");
$cid=$_GET['emp_id'];
$sql = "SELECT * From information  where emp_id='$cid'";		
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
	I.D number:<label class="dis"><?php echo $row['emp_id']; ?>&nbsp;&nbsp;&nbsp;</label>
	Contact:<label class="dis"><?php echo $row['contact']; ?>&nbsp;&nbsp;&nbsp;&nbsp;</label>
	SCHEDULE IN TIME:<label class="dis"><?php echo $in1;?>&nbsp;&nbsp;&nbsp;</label>
	SCHEDULE OUT TIME:<label class="dis"><?php echo $out1; ?>&nbsp;&nbsp;&nbsp;</label>
	RATE PER HOUR :<label class="dis"><?php echo $row['rate']; ?>&nbsp;&nbsp;&nbsp;</label>
	GENDER :<label class="dis"><?php if($row['gender']==0){ echo "MALE";}else{echo "FEMALE";} ?>&nbsp;&nbsp;&nbsp;</label>
	POSITION :<label class="dis"><?php echo $row['position']; ?>&nbsp;&nbsp;&nbsp;</label>
	CAMPAIGN :<label class="dis"><?php echo $row['campaign']; ?>&nbsp;&nbsp;&nbsp;</label>

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
      <th width="7%" class="font">Net Salary </th>
      <th width="15%" class="font">Remarks</th>
      <th width="15%" class="font">Action</th>
    </tr>
 </thead>
  <tbody>
   <?php
 include("codes/link.php");
$cid = $_GET['emp_id'];
$sql1 ="SELECT * From information INNER JOIN logs where information.emp_id='$cid' && information.emp_id=logs.emp_id and logs.tag!='2' and stat1!='2' Order By logs.dt DESC";
$sql_run=mysql_query($sql1);
while($row =mysql_fetch_array($sql_run))
{
$other=$row['other_time'];
$tw=$row['total_work'];
$sal=$row['salaryaday'];
$ml=$row['min_late'];
$deduc=$row['deduction'];
$total=$other*0;//kung pila ang rate mag ot
//for the mean time

$net=$sal-$deduc;
$in=$row['time_in'];
$out=$row['time_out'];


$at = strtotime("+1 seconds", strtotime($in));
$tin=date('h:i a', $at);

$att = strtotime("+1 seconds", strtotime($out));
$tout=date('h:i a', $att);

$sqll=mysql_query("SELECT SUM(salaryaday) as total FROM logs inner join information where information.emp_id=logs.emp_id and logs.emp_id='$cid' GROUP BY logs.emp_id");
while($roww=mysql_fetch_array($sqll))
{
	
?>	
    <tr class="record">    
	  <td align="center" class="fon"><?php echo $row['dt']; ?> </td>
      <td align="center" class="fon"><?php echo $tin; ?></td>
      <td align="center" class="fon"><?php echo $tout; ?></td>
	  <td align="center" class="fon" ><?php if($row['other_time']==''){echo "0";}else{echo $row['other_time']; }?></td>
	  <td align="center" class="fon" ><?php if($row['total_work']==''){echo "----";}else{echo $row['total_work']; } ?></td>
	  <td align="center" class="fon" ><?php echo $row['minlate']; ?></td>
      <td align="center" class="fon" ><?php echo $row['deduction']; ?></td>
      <td align="center" class="fon" ><?php echo $sal; ?></td>
      <td align="center" class="fon"  style="color:red; font-weight:bold;"> <?php echo $net; ?></td>
	   <td align="center" class="fon" id="countit"><?php echo $row['remarks'];?> || <?php echo $row['statuss']; ?></td>
	    <td align="center" class="fon" id="countit"><a href="updateLogin.php?id=<?php echo $row['id'];?>">UPDATE</a></td>
	   </tr>
	 
<?php } }  ?>
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