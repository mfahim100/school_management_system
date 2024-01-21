
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$data = json_decode(file_get_contents("php://input"),true);

$student_id = $data['sid'];

//$student_id = $_REQUEST['sid'];






include "config.php";

//$sql = "SELECT * FROM test WHERE Admission_Number = $student_id";

$sql = "SELECT * FROM Students WHERE id = 1";
$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");

if(mysqli_num_rows($result) > 0) {

$output = mysqli_fetch_all($result , MYSQLI_ASSOC);
echo json_encode($output);

}
else{
 
echo json_encode(array('messeage' => 'No record found', 'status' => false));


}

echo($student_id);

//http://localhost/php_apis/fetch_single_data.php?sid=5



	




?>

