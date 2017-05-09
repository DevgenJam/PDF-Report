<?php
session_start();
//check logged in or not!
if(!isset($_SESSION['login_user'])){
  header('Location:login.php');
}
?>
<!DOCTYPE html>
<html oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<head>
  <title></title>
</head>
<body>

 <link rel="stylesheet" type="text/css" href="css/farme.css">
  <link href="print.css" rel="stylesheet" type="text/css" media="print">
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
<h1>ACTIVITY LOG
</h1>
  <hr>
 <input type="text" name="filter" value=""  id="filter" placeholder="Search here..." autocomplete="off" />
    
<table cellspacing="0" width="80%" class="table" id="resultTable" data-responsive="table">
  
  <thead>
    <tr>

      <th width="15%" class="font">NAME</th>
      <th width="7%" class="font">Date</th>
      <th width="7%" class="font">Time In</th>
      <th width="7%" class="font">Time Out</th>
      <th width="7%" class="font">Add time</th>
      <th width="10%" class="font">Worked Hours</th>
       <th width="10%" class="font" >Min. Late</th>
      <th width="10%" class="font" >Deductions</th>
      <th width="7%" class="font">Gross Salary </th>
      <th width="7%" class="font">Net Salary </th>
      <th width=15%" class="font">Remarks</th>
    </tr>
 </thead>
  <tbody>
   <?php
 include("codes/link.php");
$sql1 ="SELECT * From logs iNNER JOIN information where  information.emp_id=logs.emp_id and logs.tag='0' Order By logs.dt DESC";
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

$sqll=mysql_query("SELECT SUM(salaryaday) as total FROM logs inner join information where information.emp_id=logs.emp_id and logs.tag='0' ORDER BY logs.dt DESC");
while($roww=mysql_fetch_array($sqll))
{
	
?>	
    <tr class="record">    
	      
    <td align="center" class="fon"><?php echo $row['fname']; ?> <?php echo $Row['mname']; ?> <?php echo $row['lname']; ?> </td>
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
	   </tr>
	 
<?php } }  ?>
  </tbody>
</table>

</body>
</html>