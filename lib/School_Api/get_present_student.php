
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

include "config.php";

$Date = $_REQUEST['Date'];

$sql = "SELECT * FROM `Attendance_Table` WHERE Type = 'P' AND Date = $Date";
$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");

if(mysqli_num_rows($result) > 0) {

$output = mysqli_fetch_all($result , MYSQLI_ASSOC);
echo json_encode($output);

}
else{
 
echo json_encode(array('messeage' => 'No record found', 'status' => false));


}



	




?>

