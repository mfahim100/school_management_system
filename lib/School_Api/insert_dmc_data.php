<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');

//$data = json_decode(file_get_contents("php://input"),true);

$Admission_Number = $_REQUEST['Admission_Number'];
$Name = $_REQUEST['Name'];
$Father_Name = $_REQUEST['Father_Name'];
$Admitted_Class = $_REQUEST['Admitted_Class'];
$Exam_Type = $_REQUEST['Exam_Type'];
$English = $_REQUEST['English'];
$Urdu = $_REQUEST['Urdu'];
$Maths = $_REQUEST['Maths'];
$Islamiat = $_REQUEST['Islamiat'];
$Pak_Study = $_REQUEST['Pak_Study'];
$Lughat_Arabia = $_REQUEST['Lughat_Arabia'];
$Nazira = $_REQUEST['Nazira'];
$Physics = $_REQUEST['Physics'];
$Chemistry = $_REQUEST['Chemistry'];
$Biology = $_REQUEST['Biology'];
$Total_Marks = $_REQUEST['Total_Marks'];
$Percentage = $_REQUEST['Percentage'];
$Grade = $_REQUEST['Grade'];


include "config.php";



$sql = "SELECT * FROM DMC WHERE Admission_Number = $Admission_Number AND Name = '$Name'";


$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");

if(mysqli_num_rows($result)>0){


$sql = "UPDATE `DMC` SET `Admitted_Class`='$Admitted_Class',`Exam_Type`='$Exam_Type',`English`=$English,`Urdu`=$Urdu,`Maths`=$Maths,`Islamiat`=$Islamiat,`Pak_Study`=$Pak_Study,`Lughat_Arabia`=$Lughat_Arabia,`Nazira`=$Nazira,`Physics`=$Physics,`Chemistry`=$Chemistry,`Biology`=$Biology,`Total_Marks`=$Total_Marks,`Percentage`=$Percentage,`Grade`='$Grade' WHERE `Admission_Number`=$Admission_Number  AND `Name`='$Name'";
/*	
$sql = "UPDATE `DMC` SET ,Admitted_Class='$Admitted_Class',Exam_Type='$Exam_Type',English=$English,Urdu=$Urdu,Maths= $Maths,Islamiat= $Islamiat,Pak_Study= $Pak_Study,Physics= $Physics,Chemistry=$Chemistry,Biology=$Biology,Total_Marks= $Total_Marks,Percentage=$Percentage,Grade='$Grade' WHERE Admission_Number=$Admission_Number AND Name=$Name";
*/
if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record Updated' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not updated', 'status' => false));


}


}


else{

$sql = "INSERT INTO `DMC` VALUES (0,$Admission_Number,'$Name','$Father_Name','$Admitted_Class','$Exam_Type',$English,$Urdu,$Maths,$Islamiat,$Pak_Study,$Lughat_Arabia,$Nazira,$Chemistry,$Physics,$Biology,$Total_Marks,$Percentage,'$Grade')";


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => ' record Inseted', 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'No record inserted', 'status' => false));

}



}


//http://localhost/School_Api/insert_dmc_data.php?Admission_Number=1&Name=fahim&Admitted_Class=10th&Exam_Type=1st&English=80&Urdu=90&Maths=78&Islamiat=90&Pak_Study=56&Lughat_Arabia=79&Nazira=78&Chemistry=78&Physics=89&Biology=89&Total_Marks=78&Percentage=90&Grade=A



	
?>

