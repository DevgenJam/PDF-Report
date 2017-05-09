<?php
include ("../codes/link.php");

$cid=$_GET['cid'];
$sql = "Select * From campaign where cid='$cid'";
$sql_run = mysql_query($sql);
$row = mysql_fetch_array($sql_run);

$cam=$_POST['campaign'];
$deduc=$_POST['deduction'];
$per=$_POST['per'];

if(isset($_POST['cam']))
{
	$sql=mysql_query("UPDATE campaign set name=UPPER('$cam'), deduction='$deduc',per='$per' where cid='$cid'");
	echo "<script>alert('CAMPAIGN TITLE UPDATED')</script>";
	include("campaign.php");
	exit();

}
?>
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false"><link rel="stylesheet" type="text/css" href="../css/farme.css">
<link rel="stylesheet" type="text/css" href="../css/prof.css">
<form action="" method="post">
<div id='container'>
<h2>UPDATE CAMPAIGN</h2>
<hr>
<label>TITLE :</label>
<br><input type="text" value="<?php echo $row['name']; ?>" name="campaign">
<br><label>DEDUCTION AMOUNT</label><br>
            <input type="text" autoFocus value="<?php echo $row['deduction']; ?>" name="deduction" id="deduction" required>
            <br>
            <label>PER MINUTE?</label><br>
            <select name="per" class="drp">
            <option value="<?php echo $row['per']; ?>"><?php if($row['deduction']=1){echo"YES";}else{echo "NO";} ?></option>
            	<option value="1">YES</option>
            	<option value="0">NO</option>
            </select>
<br><input type="submit" style="width: 40%" name="cam" value="SAVE"  class="link">
</div></form></body>