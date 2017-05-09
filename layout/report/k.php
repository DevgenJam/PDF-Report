<?php 
include ("../codes/link.php"); 
?>
<?php
require('fpdf/fpdf.php');
$cam=$_POST['campaign'];
$sql="SELECT * From information where campaign='$cam' ORDER BY fname ASC";
$run=mysql_query($sql);
$count = mysql_num_rows($run);
while($row = mysql_fetch_array($run))
{

	$f=$row['fname'];
	$m=$row['mname'];
	$l=$row['lname'];
	$id=$row['emp_id'];
	$cam=$row['campaign'];
	$tin=$row['sched_in'];
	$pos=$row['position'];
	$con=$row['contact'];
	$tout=$row['sched_out'];

	$tin1=strtotime("+1 seconds", strtotime($tin));
	$tin2=date('h:i a', $tin1);

	$tout1=strtotime("+1 seconds", strtotime($tout));
	$tout2=date('h:i a ', $tout1);


	$column_cam = $column_cam.$cam."\n";
	$column_id = $column_id.$id."\n";
	$column_name = $column_name.$f." ".$l."\n";
	$column_pos = $column_pos.$pos."\n";
	$column_tin = $column_tin.$tin2."\n";
$column_tout = $column_tout.$tout2."\n";

}

mysql_close();

$pdf=new FPDF();
$pdf->AddPage();
$pdf->SetFont("Arial","B",12);

$pdf->Cell(0,10,"LIST OF CUSTARD APPLE EMPLOYEES",0,1,C);


//Fields Name position
$Y_Fields_Name_position = 20;
//Table position, under Fields Name
$Y_Table_Position =30;
//Second Table Teacher Name
//Fourth Table Term
$Y_Fields_Name_positionsss = 38;
$Y_Table_Positionsss = 38;

//First create each Field Name
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


$pdf->Cell(50,10,'Position',1,0,'L',1);
$pdf->SetX(140);


$pdf->Cell(35,10,'Tme in',1,0,'L',1);
$pdf->SetX(170);	
	
	
$pdf->Cell(35,10,'Time out',1,0,'L',1);
$pdf->SetX(235);



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


$pdf->MultiCell(40,8, $column_pos,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(140);


$pdf->MultiCell(30,8, $column_tin,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(170);
 

$pdf->MultiCell(35,8, $column_tout,1);
$pdf->SetY($Y_Table_Position);	
$pdf->SetX(100);



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
?>

