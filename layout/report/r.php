<?php
require('fpdf/fpdf.php');

//Connect to your database
//include("link.php");

//Select the Products you want to show in your PDF file
//$result=mysql_query("SELECT rname,subcode,date,remarks,start_time,end_time,class_sched,school_year FROM attendance");
//$number_of_result = mysql_numrows($result);

//Initialize the 3 columns and the total
$column_subjectcode = "";
$column_rname = "";
$column_date = "";
$column_remarks = "";
$column_st = "";
$column_et = "";
//$column_sched= "";

//$total = 0;

//header

//For each row, add the field to the corresponding column

$pdf=new FPDF();
$pdf->AddPage();
$pdf->SetFont("Arial","B",16);
//$this->Image('logo.png',10,6,30);
$pdf->Cell(0,10,"CUSTARD APPLE OUTSOURCING CORPORATION",0,1,C);
$pdf->Cell(0,10,"Payroll",0,0,C);


//Fields Name position
$Y_Fields_Name_position = 49;
//Table position, under Fields Name
$Y_Table_Position = 59;
//Second Table Teacher Name
$Y_Fields_Name_positions = 38;
$Y_Table_Positions = 38;

//Third Table Semester
$Y_Fields_Name_positionss = 38;
$Y_Table_Positionss = 38;

//Fourth Table Term
$Y_Fields_Name_positionsss = 38;
$Y_Table_Positionsss = 38;

//First create each Field Name
//Gray color filling each Field Name box
$pdf->SetFillColor(232,232,232);
//Bold Font for Field Name
$pdf->SetFont('Arial','',11);
//Fourth table Term
$pdf->SetY($Y_Fields_Name_positionsss);
$pdf->SetX(146);

$pdf->Cell(22,10,'Term',1,0,'L',1);
$pdf->SetX(30);


//second table Teacher Name
$pdf->SetY($Y_Fields_Name_positions);
$pdf->SetX(8);

$pdf->Cell(22,10,'Name',1,0,'L',1);
$pdf->SetX(30);

//Third table Semester
$pdf->SetY($Y_Fields_Name_positionss);
$pdf->SetX(84);

$pdf->Cell(20,10,'Semester',1,0,'L',1);//width,padding,word,
$pdf->SetX(30);

//First Table Schedule
$pdf->SetY($Y_Fields_Name_position);
$pdf->SetX(8);

$pdf->Cell(22,10,'Start Time',1,0,'L',1);
$pdf->SetX(30);

$pdf->Cell(22,10,'End Time',1,0,'L',1);
$pdf->SetX(52);


$pdf->Cell(18,10,'Room',1,0,'L',1);
$pdf->SetX(70);

$pdf->Cell(20,10,'Subject',1,0,'L',1);
$pdf->SetX(90);

$pdf->Cell(33,10,'Class Schedule',1,0,'L',1);
$pdf->SetX(123);
	
$pdf->Cell(30,10,'Date',1,0,'L',1);
$pdf->SetX(153);


$pdf->Cell(30,10,'School Year',1,0,'L',1);
$pdf->SetX(183);

$pdf->Cell(22,10,'Remarks',1,0,'L',1);
$pdf->SetX(251);


$pdf->Ln();

//Now show the 3 columns
$pdf->SetFont('Arial','',9);

//Fourth table Term
$pdf->SetY($Y_Table_Positionsss);
$pdf->SetX(168);


$pdf->MultiCell(37,10,$column_term,1);
$pdf->SetY($Y_Table_Positionsss);
$pdf->SetX(30);


//Third table Semester
$pdf->SetY($Y_Table_Positionss);
$pdf->SetX(104);


$pdf->MultiCell(40,10,$column_sem,1);
$pdf->SetY($Y_Table_Positionss);
$pdf->SetX(30);


//second table Teacher Fullname
$pdf->MultiCell(52,10,$column_f,1);
$pdf->SetY($Y_Table_Positions);
$pdf->SetX(30);

//first table Schedule
$pdf->SetY($Y_Table_Position);
$pdf->SetX(8);

$pdf->MultiCell(22,8,$column_st,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(30);

$pdf->MultiCell(22,8, $column_et,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(52);

$pdf->MultiCell(18,8,$column_room,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(70);

$pdf->MultiCell(20,8, $column_subject,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(90);

$pdf->MultiCell(33,8, $column_sched,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(123);


$pdf->MultiCell(30,8, $column_date,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(153);
 
$pdf->MultiCell(30,8, $column_year,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(183);

$pdf->MultiCell(22,8, $column_remarks,1);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(251);




//$pdf->MultiCell(30,6, $column_remarks,1);
//$pdf->SetY($Y_Table_Position);
//$pdf->SetX(100);

/*$pdf->MultiCell(30,6,$columna_price,1,'R');
$pdf->SetX(135);
$pdf->MultiCell(30,6,'$ '.$total,1,'R');*/


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

