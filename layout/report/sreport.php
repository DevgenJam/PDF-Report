<?php 
include ("../codes/link.php"); 
?>
<?php
require('fpdf/fpdf.php');
$d1=$_POST['dd1'];
$d2=$_POST['dd2'];

$sql="SELECT * From logs INNER JOIN information where logs.emp_id=information.emp_id and logs.tag='0' and logs.stat1='0' and logs.dt between '$d1' AND '$d2' Group By logs.emp_id ORDER BY information.fname ASC";
$run=mysql_query($sql);
$count = mysql_num_rows($run);
while($row = mysql_fetch_array($run))
{

	$f=$row['fname'];
	$m=$row['mname'];
	$l=$row['lname'];
	$id=$row['emp_id'];
	$cam=$row['campaign'];

	$column_cam = $column_cam.$cam."\n";
	$column_id = $column_id.$id."\n";
	$total_late='$total_late'; 
	$column_name = $column_name.$f." ".$l."\n";
$column_sig = $column_sig.$sig."______________________\n";

}

$query2=mysql_query("SELECT sum(salaryaday) as total_gross from logs INNER JOIN information where logs.emp_id=information.emp_id and logs.tag='0' and logs.stat1='0' and logs.dt between '$d1' AND '$d2' Group By logs.emp_id ORDER by information.fname ASC");
while($row2=mysql_fetch_array($query2))
{

	$tg=$row2['total_gross'];
	$column_gross = $column_gross.$tg."	 Pesos \n";


}
	$query1=mysql_query("SELECT sum(deduction) as total_deductions from logs INNER JOIN information where logs.emp_id=information.emp_id and logs.tag='0' and logs.stat1='0' and  logs.dt between '$d1' AND '$d2' Group By logs.emp_id ORDER by information.fname ASC");
while($row1=mysql_fetch_array($query1))
{
	$td=$row1['total_deductions'];
	
    $column_deduc = $column_deduc.$td."  Pesos\n";

$column_net= $column_net.$tt."______________\n";

}



$pdf=new FPDF();
$pdf->AddPage();
$pdf->SetFont("Arial","B",12);

$pdf->Cell(0,10,"SUMMARY OF CUSTARD APPLE EMPLOYEES PAYROLL REPORT",0,1,C);


//Fields Name position
$Y_Fields_Name_position = 20;
//Table position, under Fields Name
$Y_Table_Position =30;
//Second Table Teacher Name
//Gray color filling each Field Name box
$pdf->SetFillColor(232,232,232);
//Bold Font for Field Name
$pdf->SetFont('Arial','',11);
//Fourth table Term

//First Table Schedule



$pdf->SetY($Y_Fields_Name_position);
$pdf->SetX(7);
$pdf->Cell(20,10,'ID',1,0,'L',1);
$pdf->SetX(25);

$pdf->Cell(40,10,'Name',1,0,'L',1);
$pdf->SetX(60);


$pdf->Cell(40,10,'Campaign',1,0,'L',1);
$pdf->SetX(100);


$pdf->Cell(25,10,'Fine',1,0,'L',1);
$pdf->SetX(120);

$pdf->Cell(25,10,'Gross',1,0,'L',1);
$pdf->SetX(145);

$pdf->Cell(30,10,'Net',1,0,'L',1);
$pdf->SetX(170);	
	
	
$pdf->Cell(30,10,'SIGNATURE',1,0,'L',1);
$pdf->SetX(0);



$pdf->Ln();

//Now show the 3 columns
$pdf->SetFont('Arial','',7);

//Fourth table Term

//Third table Semester

//first table Schedule
$pdf->SetY($Y_Table_Position);
$pdf->SetX(7);

$pdf->MultiCell(18,8,$column_id,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(25);//margin left


$pdf->MultiCell(35,8,$column_name,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(60);//margin left


$pdf->MultiCell(40,8,$column_cam,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(100);//margin left


$pdf->MultiCell(20,8, $column_deduc,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(120);

$pdf->MultiCell(25,8, $column_gross,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(145);


$pdf->MultiCell(25,8, $column_net,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(170);
 

$pdf->MultiCell(35,8, $column_sig,1);
$pdf->SetY($Y_Table_Position);	
$pdf->SetX(0);



//Create lines (boxes) for each ROW (Product)
//If you don't use the following code, you don't create the lines separating each row
$i = 0;
$pdf->SetY($Y_Table_Position);
while ($i < $number_of_result)
{
    $pdf->SetX(8);
    $pdf->MultiCell(1,3,'',2);
    $i = $i +1;

}
$pdf->Output();
$pdf = new FPDF();
$pdf->AddPage();

mysql_close();
?>

