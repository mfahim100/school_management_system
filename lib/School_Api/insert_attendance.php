
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);




$Admission_Number = $_REQUEST['Admission_Number'];
$Admitted_Class = $_REQUEST['Admitted_Class'];
$Name = $_REQUEST['Name'];
$Date = $_REQUEST['Date'];
$Month = $_REQUEST['Month'];
$Type = $_REQUEST['Type'];



include "config.php";






$sql = "SELECT * FROM Attendance_Table WHERE Admission_Number = $Admission_Number AND Date = $Date AND Month = $Month";


$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");

if(mysqli_num_rows($result) > 0) {



$sql="UPDATE `Attendance_Table` SET `Type`='$Type' WHERE Admission_Number = $Admission_Number AND Date = $Date AND Month = $Month";



echo('After');


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record Updated' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not updated', 'status' => false));


}





}
else{
 

$sql = "Insert INTO Attendance_Table VALUES(0,$Admission_Number,'$Admitted_Class','$Name',$Date,$Month,'$Type')";


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => ' record Inseted', 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'No record inserted', 'status' => false));


}

}




//localhost/php_apis/insert_data.php?sname=fahimjani&fahther_name=ahmadkhan&saddress=kotaa
	
?>


