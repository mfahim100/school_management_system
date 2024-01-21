
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: PUT');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);


$Name = $_REQUEST['Name'];
$Admitted_Class = $_REQUEST['Admitted_Class'];
$Admission_Number = $_REQUEST['Admission_Number'];

echo('Before');


include "config.php";



$sql = "UPDATE Attendance_Table set Name = '$Name' ,Admitted_Class = '$Admitted_Class' WHERE Admission_Number = $Admission_Number ";


echo('After');


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record Updated' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not updated', 'status' => false));


}



echo("After REsult");


	




?>
