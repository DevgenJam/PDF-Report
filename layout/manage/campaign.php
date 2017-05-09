<?php 
include("../codes/link.php");
?>
<script src="../js/application.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="../css/facebox.css">
<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/dng.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/application.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="../css/farme.css">
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
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<link rel="stylesheet" type="text/css" href="../css/prof.css">
<link rel="stylesheet" type="text/css" href="../css/modal.css">

 <h1>CAMPAIGN LIST</h1>
	<hr> 
 
      <input type="text" name="filter" value=""  id="filter" placeholder="Search here..." autocomplete="off" />
      <br>
    </p>
  </div>
  </div>
 
<table cellspacing="0" class="table" id="resultTable" data-responsive="table">
  <thead>
    <tr class="b">
      <th width="10%" class="font">NAME</th>
      <th width="10%" class="font">DEDUCTION</th>
      <th width="10%" class="font">PER MINUTE</th>
      <th width="10%" class="font">Action</th>
    </tr>
  </thead>
  <tbody>
  <?php include('../codes/link.php');
$query = "SELECT * FROM campaign order by cid DESC";
	$result = mysql_query($query);
    while($row=mysql_fetch_array($result))
	{

		?>
    <tr class="record">
    <td align="center"><?php echo $row['name']; ?></td>
     <td align="center"><?php echo $row['deduction']; ?></td>
     <td align="center"><?php if($row['per']=='1'){echo "YES";}else{echo "NO";} ?></td>
      <td align="center"><a href="editcam.php?cid=<?php echo $row['cid']; ?>" >EDIT</a></td>
   </tr>
<?php } ?>
</div></div></tbody></table>
<div class="clearfix"></div></div>

 <button onclick="document.getElementById('add').style.display='block'" style="background-color: green" class="link">ADD NEW</button>
 
  <!-- Modal Content -->
<div id="add"  class="modal">
  <span onClick="document.getElementById('add').style.display='none'"  class="close" title="Close Modal">&times;</span>
	<form class="modal-content animate" action="" method="post">
<?php
include('../codes/link.php');
$cam=$_POST['campaign'];
$deduc=$_POST['deduction'];
$per=$_POST['per'];
if(isset($_POST['save']))
{
	$sql=mysql_query("SELECT * FROM campaign where name='$cam'");
	if(mysql_num_rows($sql)==1)
	{
		echo "<script>alert('CAMPAIGN TITLE ALREADY EXIST')</script>";
	}
	else
	{
		$insert=mysql_query("INSERT into campaign (name,deduction,per)VALUES(UPPER('$cam'),'$deduc','$per')");
		echo "<script>alert('CAMPAIGN TITLE ADDED')</script>";
	}
}	
?>    <h2 align="center">ADD CAMPAIGN</h2>
        <div class="container">
      <label><b>TITLE: </b></label>
      <br>
      <input type="text" autoFocus name="campaign" id="campaign" required>
            <br><label>DEDUCTION AMOUNT</label><br>
            <input type="text" autoFocus name="deduction" id="deduction" required>
            <br>
            <label>PER MINUTE?</label><br>
            <select name="per" class="drp">
            	<option value="1">YES</option>
            	<option value="0">NO</option>
            </select>
      <button id="save" class="btn" name="save" type="submit">SAVE</button>
	<button  onClick="document.getElementById('add').style.display='none'" style="background-color: red" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
	</div>
  <!--- END OF MODAL-->


</body>