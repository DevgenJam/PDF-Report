<?php
include("codes/reg.php");
$emp_id=$_GET['emp_id'];
$sql = "Select * From information where emp_id='$emp_id'";
$sql_run = mysql_query($sql);
$row = mysql_fetch_array($sql_run);
$schedin=$row['sched_in'];
$schedout=$row['sched_out'];


$in=strtotime("+1 seconds", strtotime($schedin));
$in1=date("h:i a", $in);

$out=strtotime("+1 seconds", strtotime($schedout));
$out1=date("h:i a", $out);


?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/prof.css">
  <title>ODTR</title>
</head>
<style type="text/css">
.time{
  width: 90%;
  height: 10px;
  padding: 10px;
}
.drp{
  width: 95%;
  height: 40px;
  padding: 10px;
}
input[type="text"]
{
  width: 90%;
  height: 10px;
  padding: 10px;
}
</style>
<body  oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<form action="" method="POST">
<div id='container'>
<div id="left">
  <h2>UPDATE INFORMATION</h2>
  <label>ID NUMBER : </label><span style="color: red; font-size: 15px; font-weight: bold;"><?php echo $row['emp_id']; ?></span>
      <br />   
      <input type="hidden" value="<?php echo $row['emp_id']; ?>" name="id">
      <p>
      <label>Name:</label>
      <br>
      <input type="text" value="<?php echo $row['fname']; ?>"  name="f" required placeholder="First Name . . . "><br><br>
      <input type="text" value="<?php echo $row['mname'];?>" name="m" placeholder="Middle Name . . . "><br><br>
      <input type="text" name="l" value="<?php echo $row['lname']; ?>" placeholder="Last Name . . . "><br><br>
      <label>Gender :</label><span style="color:red;"><?php if($row['gender']==0){echo "MALE";}else{echo "FEMALE";}?></span><br>
      <select class="drp" name="gender"><option value="0">MALE</option><option value="1">FEMALE</option></select><br><br>
      <label>Contact : </label>
      <br>
      <input type="text" name="contact" value="<?php echo $row['contact']; ?>">
      </div>
<div id="right">

 <br>
  <br><label>Time in :</label><span style="color:red;"><?php echo $in1;?></span><br>
  <input type="time" class="time" value="<?php echo $in1; ?>" name="schedin" required>
  <br><br><label>Time out :</label><span style="color:red;"><?php echo $out1;?></span><br>
  <input type="time" class="time" name="schedout" value="<?php echo $out1; ?>" required >
  <br><br>
  <label>Rate :</label><span style="color:red;"><?php echo $row['rate'];?></span><br>
  <input type="text"  name="rate" value="<?php echo $row['rate']; ?>">

  <br><br>
   <label>Campaign :</label><span style="color:red;"><?php echo $row['campaign'];?></span><br><?php 
  include("codes/link.php");
  $query1="Select * From campaign";
  $result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
  echo "<select name='campaign' class='drp'>";
  while($row=mysql_fetch_array($result1)){
  echo "<option value = '".$row['name']."'>".$row['name']."</option>";}
  echo "</select>";
  ?><br>
  <br>
  <label>Position :</label><span style="color:red;"><?php echo $row['position'];?></span><br>
   <?php 
  include("codes/link.php");
  $query1="Select * From position";
  $result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
  echo "<select name='pos' class='drp'>";
  while($row=mysql_fetch_array($result1)){
  echo "
  <option value = '".$row['name']."'>".$row['name']."</option>";}
  echo "</select>";
  ?>
  <br><br>
  <input type="submit" name="ud" class="link">
</div>
</div>
</form>
</body>
</html>