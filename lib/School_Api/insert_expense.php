
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);


$Description = $_REQUEST['Description'];
$Cash_In = $_REQUEST['Cash_In'];
$Cash_Out = $_REQUEST['Cash_Out'];
$Date = $_REQUEST['Date'];
$Month = $_REQUEST['Month'];
$Total = $_REQUEST['Total'];

//$Admission_Date = 2023-12-12;




include "config.php";


$sql = "INSERT INTO `expense` VALUES (0,'$Description',$Cash_In,$Cash_Out,$Date,$Month,$Total)";


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => ' record Inseted', 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'No record inserted', 'status' => false));


}





//localhost/php_apis/insert_data.php?sname=fahimjani&fahther_name=ahmadkhan&saddress=kotaa


///http://localhost/School_Api/insert_student.php?Admission_Number=100&Name=fahim&Father_Name=khan&Father_CNIC=4556455&Father_MOBILE=4554455&Father_Occupation=student&DOB=454456&Student_Section=A&Student_Sub_Section=SA&Address=zarakhela&Last_School=lasstscsss&Gender=male&Religion=islam&Gaurdian_Name=wasiim&Gaurdian_Relation=something&Gaurdian_CNIC=4545454&Gaurdian_Mobile=4656456&Admitted_Class=10th&Admission_Fee=1000&Admission_Date=565645645
	
?>


