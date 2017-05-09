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

 <h1>ADMIN LIST</h1>
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
      <th width="10%" class="font">EMPLOYEE ID</th>
      <th width="10%" class="font">USERNAME</th>
      <th width="10%" class="font">PASSWORD</th>
      <th width="10%" class="font">ACTION</th>
    </tr>
  </thead>
  <tbody>
  <?php include('../codes/link.php');
$query = "SELECT * FROM security inner join information where security.emp_id=information.emp_id  order by security.cid DESC";
	$result = mysql_query($query);
    while($row=mysql_fetch_array($result))
	{

		?>
    <tr class="record">
    <td align="center"><?php echo $row['fname']; ?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname']; ?></td>
     <td align="center"><?php echo $row['emp_id']; ?></td>
     <td align="center"><?php echo $row['username']; ?></td>
      <td align="center"><a href=""><?php echo $row['password']; ?></a></td>
      <td align="center"><a href="#.php?cid=<?php echo $row['cid']; ?>" >EDIT</a></td>
   </tr>
<?php } ?></tbody></table>
</div></div></tbody></table>

<div class="clearfix"></div></div>


<button onclick="document.getElementById('add').style.display='block'" style="background-color: green" class="link">ADD NEW</button>
 
  <!-- Modal Content -->
<div id="add"  class="modal">
  <span onClick="document.getElementById('add').style.display='none'"  class="close" title="Close Modal">&times;</span>
	<form class="modal-content animate" action="" method="post">
<?php
include('../codes/link.php');
$id=$_POST['empid'];
$user=$_POST['user'];
$pass=$_POST['pass'];
if(isset($_POST['save']))
{
	$sql=mysql_query("SELECT * FROM security where emp_id='$id'");
	if(mysql_num_rows($sql)==1)
	{
		echo "<script>alert('ADMIN EMPLOYEE ID NUMBER ALREADY EXIST')</script>";
	}
	else
	{
		$sql2=mysql_query("SELECT * FROM information where emp_id='$id'");
		if(mysql_num_rows($sql2)==0)
		{
			echo "<script>alert('EMPLOYEE ID NUMBER DOES NOT EXIST, REGISTER FIRST')</script>";
		}
		else
		{
			$insert=mysql_query("INSERT into security (emp_id,username,password,status)VALUES('$id','$user','$pass','0')");
			echo "<script>alert('ADMIN ACCOUNT SAVE')</script>";
		}
	}
}	
?>    <h2 align="center">NEW ADMIN</h2>
        <div class="container">
      <label><b>EMPLOYEE ID: </b></label>
      <br>
      <input type="text" autoFocus name="empid" id="empid" required>
            <br><label>USERNAME</label><br>
            <input type="text" autoFocus name="user" id="user" required>
            <br>
            <label>PASSWORD</label><br>
            <input type="text" name="pass">
      <button id="save" class="btn" name="save" type="submit">SAVE</button>
	<button  onClick="document.getElementById('add').style.display='none'" style="background-color: red" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
	</div>
  <!--- END OF MODAL-->

</body>

