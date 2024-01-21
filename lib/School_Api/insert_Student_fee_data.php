<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');

$data = json_decode(file_get_contents("php://input"),true);

$Admission_Number = $_REQUEST['Admission_Number'];
$Name = $_REQUEST['Name'];
$Father_Name = $_REQUEST['Father_Name'];
$Admitted_Class = $_REQUEST['Admitted_Class'];
$Month = $_REQUEST['Month'];
$Monthly_Fee = $_REQUEST['Monthly_Fee'];
$Exam_Fee = $_REQUEST['Exam_Fee'];
$Fine_Fee = $_REQUEST['Fine_Fee'];
$Total_Fee = $_REQUEST['Total_Fee'];
$Monthly_Fee_Status = $_REQUEST['Monthly_Fee_Status'];
$Exam_Fee_Status = $_REQUEST['Exam_Fee_Status'];
$Fine_Fee_Status = $_REQUEST['Fine_Fee_Status'];


include "config.php";



$sql = "SELECT * FROM `Fee_Table` WHERE Admission_Number = $Admission_Number AND Month = $Month";


$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");
if(mysqli_num_rows($result) > 0){

$sql = "UPDATE `Fee_Table` SET  `Name`='$Name',`Father_Name`='$Father_Name',`Admitted_Class`='$Admitted_Class',`Monthly_Fee`= $Monthly_Fee,`Total_Fee`= $Total_Fee WHERE `Admission_Number`=$Admission_Number AND `Month`=$Month";




if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record Updated' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not updated', 'status' => false));


}



}


else{


$sql = "INSERT INTO `Fee_Table` VALUES (0,$Admission_Number,'$Name','$Father_Name','$Admitted_Class',$Month,$Monthly_Fee,$Exam_Fee,$Fine_Fee,$Total_Fee,$Monthly_Fee_Status,$Exam_Fee_Status,$Fine_Fee_Status)";

if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => ' record Inseted', 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'No record inserted', 'status' => false));


}



}

















//http://localhost/School_Api/insert_student_fee_data.php?Admission_Number=900&Name=fahim&Father_Name=ahmad&Admitted_Class=10th&Month=13212&Monthly_Fee=55656&Exam_Fee=45456&Fine_Fee=5656&Total_Fee=545&Monthly_Fee_Status=0&Exam_Fee_Status=0&Fine_Fee_Status=1

	
?>

