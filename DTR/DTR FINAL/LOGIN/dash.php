<!DOCTYPE html><html>
<head>
<title>Offline D.T.R.</title>
	
<link rel="shortcut icon" href="../img/c-white.png" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../CSS/modal.css">
<link rel="stylesheet" type="text/css" href="../CSS/style.css">
</head>
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<style type="text/css">
	
.drp{  
	margin-top: 10px;
	margin-left:10px;
	width: 95%;
	padding: 7px;
	height: auto; 
}
</style>
<div id="content">
<div id="left">

<?php
	include("clock.php");	
	include("../codes/codes1.php"); ?> 
<br>
<?php
include("../codes/codes.php");
include("../codes/out-codes.php")
?>
<button onclick="document.getElementById('login').style.display='block'" class="link">LOG IN </button>
	<button onclick="document.getElementById('logout').style.display='block'" class="link">LOG OUT </button>

	

	</div>

	<div id="right">

	<img src="../img/c-black.jpg">
	<div id="bottom">
	<p>Applying for Overtime, Early In, Early Out Requires Supervisor or System Admin's approval with in 48 hours  else it will not be counted in your salary. Thank You!</p>

	<label>APPLY FOR:</label>
	<ul>
		<a onClick="document.getElementById('earlyin').style.display='block' "><li>EARLY IN</li></a>
		<a onClick="document.getElementById('earlyout').style.display='block'"><li>EARLY OUT</li></a>
		<a onClick="document.getElementById('ot').style.display='block'"><li>OVERTIME</li></a>
		<a onClick="document.getElementById('rd').style.display='block'"><li>REST DAY DUTY</li></a>
		<a onClick="document.getElementById('ds').style.display='block'"><li>DOUBLE SHIFT</li></a>
		<a onClick="document.getElementById('tcs').style.display='block'"><li>SPECIAL FORM</li></a>
		<a onClick="document.getElementById('hd').style.display='block'"><li>HALF DAY(Log Out)</li></a>
	</ul>
	</ul>
	
	<div id="earlyin"  class="modal">
  <span onClick="document.getElementById('login').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
   
    <h2 align="center">EARLY IN</h2>

        <div class="container">
      <label><b>Employee ID : </b></label>
      <input type="text" placeholder="ID no." autoFocus name="empid" id="empid" required>
            </br><label><br><b>Extra worked hours: </label>
     <input type="text" pattern="[0-9]{1,2}" name="noh" required placeholder="Extra worked hours. . .">
      <textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
            <label><b>Supervisor: </b></label>
<?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']."' '".$row['mname']."' '".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>
      <button id="earlyin" class="btn" name="earlyin" type="submit">GO</button>
	<button  onClick="document.getElementById('earlyin').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
  <!--- END OF MODAL-->

	</div>


<div id="earlyout"  class="modal">
  <span onClick="document.getElementById('earlyout').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
    <h2 align="center">EARLY OUT</h2>

        <div class="container">
        <label><b>Supervisor: </b></label>
        <input type="text" placeholder="ID no." autoFocus name="empid" id="empid" required>
     
      <textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
<?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']."' '".$row['mname']."' '".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>    <button id="earlyout" class="btn" name="earlyout" type="submit">GO</button>
	<button  onClick="document.getElementById('earlyout').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
  <!--- END OF MODAL-->

	</div>


<div id="ot"  class="modal">
  <span onClick="document.getElementById('ot').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
    <h2 align="center">OVERTIME</h2>

        <div class="container">
      <label><b>Employee ID : </b></label>
      <input type="text" placeholder="ID no." autoFocus name="empid" id="empid" required>
   
      <input type="text"  placeholder="Extra worked hours. . ." name="noh" pattern="[0-9]{1,2}" required=" ">
      <textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
<?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']."' '".$row['mname']."' '".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>
      <button id="ot" class="btn" name="ot" type="submit">GO</button>
	<button  onClick="document.getElementById('ot').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
  <!--- END OF MODAL-->

	</div>


<div id="rd"  class="modal">
  <span onClick="document.getElementById('rd').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
    <h2 align="center">REST DAY DUTY</h2>

        <div class="container">
      <input type="text" placeholder="ID no." autoFocus name="empid" id="empid" required>
      <textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
 <?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']." ".$row['mname']." ".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>
      <button id="rd" class="btn" name="rd" type="submit">LOG-IN</button>
     	<button  onClick="document.getElementById('rd').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
  <!--- END OF MODAL-->

	</div>



<div id=tcs  class="modal">
  <span onClick="document.getElementById('rd').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
    <h2 align="center">SPECIAL SHIFT FORM</h2>
        <div class="container">
      <input type="text" placeholder="ID no." autoFocus name="empid" id="empid" required>
      
     <textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
<?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']." ".$row['mname']." ".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>
      <button id="tcs" class="btn" name="tcs" type="submit">LOG-IN</button>

      <button id="tcs" class="btn" name="tcs1" type="submit">LOG-OUT</button>     	<button  onClick="document.getElementById('tcs').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
  <!--- END OF MODAL-->

	</div>
	<!---end-->
<div id="ds"  class="modal">
  <span onClick="document.getElementById('ds').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
    <h2 align="center">DOUBLE SHIFT</h2>

        <div class="container">
      <input type="text" placeholder="ID no." autoFocus name="empid" id="empid" required>
      <textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
 <?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']."' '".$row['mname']."' '".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>
      <button id="ds" class="btn" name="ds" type="submit">LOG-IN</button>
	<button  onClick="document.getElementById('ds').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>
  <!--- END OF MODAL-->

<div id="login"  class="modal">
  <span onClick="document.getElementById('login').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
	<br><br>    
<img src="../img/icon.png" class="avatar"><h2 align="center">LOG IN FORM</h2>
<label>EMPLOYEE ID NUMBER: </label>
<input type="text" autofocus="" name="emp_id" id="emp_id">
</br>
 <input name="btn1" type="submit" class="link" id="btn1" value="GO" />
 
<button  onClick="document.getElementById('login').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>

<div id="hd"  class="modal">
  <span onClick="document.getElementById('hd').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
	<br><br>    
<h2 align="center">HALF DAY LOG OUT</h2>
<label>EMPLOYEE ID NUMBER: </label>
<input type="text" autofocus name="empid" id="empid">
</br><textarea required class="text" name="reason" placeholder="REASON HERE . . ."></textarea>
    <?php 
	include("../codes/connection.php");
	$query1="SELECT * From information where position='SUPERVISOR' || position='MANAGER' || position='TEAM LEADER' || position='ACCOUNT MANAGER' || position='OPERATION MANAGER'";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='sup' class='drp' required>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['fname']."' '".$row['mname']."' '".$row['lname']."'>".$row['fname']." ".$row['mname']." ".$row['lname']."</option>";}
	echo "</select>";
	?>
 <input name="hd" type="submit" class="link" id="hd" value="GO" />
 
<button  onClick="document.getElementById('hd').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>


<div id="logout"  class="modal">
  <span onClick="document.getElementById('logout').style.display='none'"  class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
	<form class="modal-content animate" action="" method="post">
	<br><br>    
<img src="../img/icon.png" class="avatar"><h2 align="center">LOG OUT FORM</h2>
<label>EMPLOYEE ID NUMBER: </label>
<input type="text" autofocus="" name="emp_id" id="nemp_id">
</br>
<input name="btn2" type="submit" class="link" id="btn1" value="GO" />
 
<button  onClick="document.getElementById('logout').style.display='none'" class="clos"  >CLOSE</button>
	  </div>
 	 </form>
	</div>

	</div>

	 </div>
</div>
</body>

</html>