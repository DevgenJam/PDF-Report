<?php session_start();

include("codes/link.php");
include("codes/codes.php");

if(isset($_GET['approve']))
{

  $ud=mysql_query("UPDATE logs set stat1='0' where id='".$_GET['approve']."'");
  echo "<script>alert(' $sal1 APPROVED')</script>";
}
?>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="../css/facebox.css">
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/dng.js" type="text/javascript" charset="utf-8"></script>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/farme.css">
<style type="text/css">
#filter {
margin-bottom:10px;
	width: 25%;
	float:left;
	height:30px;
	border:#666666 1px solid;
	padding:10px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:13px;
	font-weight:bold;
}
.table{
	width: 100%;
	font-size: 14px;
}
#maintable {
	margin:0px;
	width: 100%;
}
.clearfix {
	clear: both;
}
.responsive-video {
    position: relative;
    padding-bottom: 0%;
    padding-top: 0px; overflow: hidden;
}

.responsive-video iframe,
.responsive-video object,
.responsive-video embed {
    position: absolute;
    top: 0;
    left: -90%;
    width: 100%;
    height: 100%;
}
.b{
	font-size:14px;
	font-family:Arial, Helvetica, sans-serif;
	}
.font{
	font-size:12px;
}

#container{
	color:#363636;
	padding:10px;
}
h1{
  color: red;
}
.con img{
	float: ;left;
	background-size: 50px 50px;
}
body {margin-top:20px;
	font-family:Arial, Helvetica, sans-serif;
	margin-right:20px;
	margin-left:20px;
	background-color: #FFFFFF;
	font-size:13px;
}
</style>
<html oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<body  >
 <h1>PENDING LIST</h1>
	<hr> 
 
      <input type="text" name="filter" value=""  id="filter" placeholder="Search here..." autocomplete="off" />
      <br>
    </p>
  </div>
  </div>
 
<table cellspacing="0" class="table" id="resultTable" data-responsive="table">
  <thead>
    <tr class="b">
      <th width="20%" class="font">Employee Name</th>
      <th width="10%" class="font">Time In</th>
      <th width="10%" class="font">Time Out</th>
      <th width="10%" class="font">Time Consumed</th>
      <th width="10%" class="font">Remarks</th>
      <th width="10%" class="font">Supervisor</th>
      <th width="20%" class="font">Action</th>
    </tr>
  </thead>
  <tbody>
  <?php include('codes/link.php');
  $sql=mysql_query("SELECT * from logs inner join information where logs.emp_id=information.emp_id and logs.stat1='2'");
//$query = "SELECT * FROM logs Inner JOIN date_interval_format()ion where logs.emp_id=information.emp_id and  logs.tag='2'";
    while($row=mysql_fetch_array($sql))
	{
    $tin=$row['time_in'];
    $tou=$row['time_out'];

    $t=strtotime("+1 seconds", strtotime($tin));
    $t1=date("h:i a", $t);

    $to=strtotime("+1 seconds", strtotime($tou));
    $to1=date("h:i a", $to);
	?>
    <tr class="record">
      <td align="center"><?php echo $row['fname']; ?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname']; ?></td>
      <td align="center" style="color: red; font-weight: bold;"><?php  echo $t1; ?></td>
      <td align="center" style="color: red; font-weight: bold;"><?php  echo $to1; ?></td>
      <td align="center" style="color: red; font-weight: bold;"><?php  echo $row['other_time']; ?></td>
      <td align="center" style="color: red; font-weight: bold;"><?php  echo $row['statuss']; ?></td>
      <td align="center"><?php echo $row['sup']; ?></td>
      <td align="center"><a href="pending.php?approve=<?php echo $row['id']; ?>" onClick="return confirm('ARE YOU SURE?!')" >APPROVE</a> ||
	  <a href="edit.php?cid=<?php echo $row['id']; ?>">CANCEL</a> || <a href="viewpen.php?cid=<?php echo $row['cid']; ?>">VIEW</a>
	</tr>

</div>
<div class="clearfix"></div>
<?php   }?></td></tr></tbody></table></body></html>