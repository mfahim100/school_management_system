
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: DELETE');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);


$id = $_REQUEST['sid'];

include "config.php";



$sql = "DELETE FROM Students WHERE Admission_Number = {$id}";



if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record DELETED' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not DELETED', 'status' => false));


}




	




?>

