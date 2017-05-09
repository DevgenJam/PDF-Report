<?php
include ("../codes/link.php");

$cid=$_GET['cid'];

$pos=$_POST['position'];
$sqll=mysql_query("SELECT * FROM position where cid='$cid'");
while ($row=mysql_fetch_array($sqll)) 
{
$posname=$row['name'];
if(isset($_POST['pos']))
{
	$sql=mysql_query("UPDATE position set name=UPPER('$pos') where cid='$cid'");
	echo "<script>alert('POSITION TITLE UPDATED')</script>";
	
	$sql2=mysql_query("UPDATE information set position=UPPER('$pos') where position='$posname'");
	include("position.php");
	exit();

}
}
?><body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
<link rel="stylesheet" type="text/css" href="../css/farme.css">
<link rel="stylesheet" type="text/css" href="../css/prof.css">
<form action="" method="post">
<div id='container'>	
<h2>UPDATE POSITION</h2>
<hr>
<label>TITLE :</label>
<br><input type="text" value="<?php echo $posname; ?>" name="position">
<br><input type="submit" style="width: 40%" name="pos" value="SAVE"  class="link">
</div></form></body>