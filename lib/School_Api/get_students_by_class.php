
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');

include "config.php";

$class = $_REQUEST['class'];

$sql = "SELECT * FROM Students WHERE Admitted_Class = '$class'";
$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");

if(mysqli_num_rows($result) > 0) {

$output = mysqli_fetch_all($result , MYSQLI_ASSOC);
echo json_encode($output);

}
else{
 
echo json_encode(array('messeage' => 'No record found', 'status' => false));


}



	




?>

