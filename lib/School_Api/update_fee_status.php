
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: PUT');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);



$Admission_Number = $_REQUEST['Admission_Number'];
$Month = $_REQUEST['Month'];



include "config.php";



$sql = "UPDATE `Fee_Table` SET Monthly_Fee_Status = 1 WHERE Admission_Number = $Admission_Number And Month =$Month";


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record Updated' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not updated', 'status' => false));


}




	




?>
