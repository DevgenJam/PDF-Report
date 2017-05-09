<?php 
include("../codes/link.php");
if(isset($_POST['print']))
{
include("reportcam.php");
exit();
	
}

?><link rel="stylesheet" type="text/css" href="../css/prof.css">
<style type="text/css">
<!--
.link{
width:80px;
height:40px;
padding:10px;
color:white;
background-color:#333333;
}
.link:hover{
background-color: #CCCCCC;
color:#333333;
}
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {
	font-family: "Courier New", Courier, monospace;
	font-style: italic;
	font-weight: bold;
}
.style3 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-style: italic;
}

.drp{
  width: 50%;
  height: 40px;
  padding: 10px;
}
-->
</style>
<form name="form1" method="post" action="">
  <h1>SUMMARY PAYROLL REPORT BY CAMPAIGN</h1>
  <hr> 
 
<label>From : </label><br>
      <input name="dd1" type="date" id="dd1" style="width:300px; height:35px;  padding:1px"><br><br>
      <label>To   : </label><br>
      <input name="dd2" type="date" id="dd2" style="width:300px; height:35px;  padding:1px">
      <br><br>
      <label>Campaign :</label><br><?php 
  include("../codes/link.php");
  $query1="Select * From campaign";
  $result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
  echo "<select name='campaign' class='drp'>";
  while($row=mysql_fetch_array($result1)){
  echo "<option value = '".$row['name']."'>".$row['name']."</option>";}
  echo "</select>";
  ?><br><br>
   <input name="print" type="submit" class="link" id="print" value="GO">
      <br />
      </p>
</form>
