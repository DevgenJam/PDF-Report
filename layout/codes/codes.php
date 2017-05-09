<?php
include("link.php");
if(isset($_GET['approve']))
{

$query =mysql_query("UPDATE other set status='1' where  cid='".$_GET['approve']."'");

header('location: pending.php');
}
?>