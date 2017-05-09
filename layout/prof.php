<?php
include("codes/reg.php");


$tz = 'Asia/Manila';
				$timestamp = time();
				$dt = new DateTime("now", new DateTimeZone($tz)); 
				$time = $dt->format('dHs');
				$date = $dt->format('Y-m-d');
				$day_namenow = $dt->format('l');
?>
<!DOCTYPE>
<html oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<head>
<link rel="stylesheet" type="text/css" href="css/prof.css">
	<title>ODTR</title>
</head>
<style type="text/css">
.time{
	width: 90%;
	height: 30px;
	padding: 10px;
}
.drp{
	width: 90%;
	height: 40px;
	padding: 10px;
}
input[type="text"]
{
	width: 90%;
	height: 40px;
	padding: 10px;
}
</style>
<body>
<form action="" method="POST">
<div id='container'>
<div id="left">
	<h2>PROFILING</h2>
	 <label>Employee I.D Number  :</label>
      <br />
      <input type="text" class="highlight" name="empid" value="<?php echo $time; ?>" readonly id="empid" required maxlength="10" />
      <p>
      <label>Name:</label>
      <br>
      <input type="text"  name="f" required placeholder="First Name . . . "><br><br>
      <input type="text" name="m" placeholder="Middle Name . . . "><br><br>
      <input type="text" name="l" placeholder="Last Name . . . "><br><br>
      <label>Gender</label><br>
      <select class="drp" name="gender"><option value="0">MALE</option><option value="1">FEMALE</option></select><br><br>
      <label>Contact : </label>
      <br>
      <input type="text" name="contact" >
      </div>
<div id="right">

	<label>Campaign :</label><br><?php 
	include("codes/link.php");
	$query1="Select * From campaign";
	$result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
	echo "<select name='campaign' class='drp'>";
	while($row=mysql_fetch_array($result1)){
	echo "<option value = '".$row['name']."'>".$row['name']."</option>";}
	echo "</select>";
	?><br>
	<br><label>Position :</label><br>
	  <?php 
  include("codes/link.php");
  $query1="Select * From position";
  $result1 = mysql_query($query1);
$count = mysql_num_rows($result1);
  echo "<select name='pos' class='drp'>";
  while($row=mysql_fetch_array($result1)){
  echo "<option value = '".$row['name']."'>".$row['name']."</option>";}
  echo "</select>";
  ?><br>
	<br><label>Time in :</label><br>
	<input type="time" class="time" name="schedin" required><br>
	<br><label>Time out :</label><br>
	<input type="time" class="time" name="schedout" required >
	<br><br>
	<label>Rate :</label><br>
	<input type="text"  name="rate">
	<br><br><label>REST DAY :</label>
	<br>
	<select class="drp" name="rd">
		<option value="">NONE</option>
		<option value="Monday">MONDAY</option>
		<option value="Tuesday">TUESDAY</option>
		<option value="Wednesday">WEDNESDAY</option>
		<option value="Thursday">THURSDAY</option>
		<option value="Friday">FRIDAY</option>
		<option value="Saturday">SATURDAY</option>
		<option value="Sunday">SUNDAY</option>
	</select>

	<br><br>
	<input type="submit" name="reg" class="link">
</div>
</div>
</form>
</body>
</html>