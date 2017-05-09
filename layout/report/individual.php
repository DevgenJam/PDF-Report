<?php 
include("../codes/link.php");
$id=$_GET['emp_id'];
$sql=mysql_query("SELECT * FROM information where emp_id='$id'");
while($row=mysql_fetch_array($sql))
{
if(isset($_POST['print']))
{
include("ireport.php");
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
-->
</style>
<form name="form1" method="post" action="">
  <h1>PAYROLL REPORT</h1>
  <label><?php echo $row['fname'];?>&nbsp;<?php echo $row['mname']; ?>&nbsp;<?php echo $row['lname']; ?></label>
  <input type="hidden" value="<?php echo $row['emp_id']; ?>" name="emp_id">
  <hr> 
 
<p class="style2"><span class="style1">From</span>
      <input name="dd1" type="date" id="dd1" style="width:300px; height:35px;  padding:1px">
      <span class="style1">To    </span>
      <input name="dd2" type="date" id="dd2" style="width:300px; height:35px;  padding:1px">
      <input name="print" type="submit" class="link" id="print" value="GO">
      <br />
  </p>
    <p>&nbsp;</p>
    <p class="style2"><br />
    </p>
</form>
<?php } ?>