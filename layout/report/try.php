<div>jamjamjam</div>
<?php
include("../codes/link.php");
$output = '<div>';

header("Content-Type: application/csv");
          header("Content-Disposition:attachment; filename=download.csv");
          echo $output;
 

?>