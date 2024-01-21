<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');

$data = json_decode(file_get_contents("php://input"),true);


$Name = $_REQUEST['Name'];
$Father_Name = $_REQUEST['Father_Name'];
$Father_CNIC = $_REQUEST['Father_CNIC'];
$Father_Mobile = $_REQUEST['Father_MOBILE'];
$Father_Occupation = $_REQUEST['Father_Occupation'];
$Student_Section = $_REQUEST['Student_Section'];
$Student_Sub_Section = $_REQUEST['Student_Sub_Section'];
$Address = $_REQUEST['Address'];
$Gender = $_REQUEST['Gender'];
$Religion = $_REQUEST['Religion'];
$Guardian_Name = $_REQUEST['Gaurdian_Name'];
$Guardian_Relation = $_REQUEST['Gaurdian_Relation'];
$Guardian_CNIC = $_REQUEST['Gaurdian_CNIC'];
$Guardian_Mobile = $_REQUEST['Gaurdian_Mobile'];
$Admitted_Class = $_REQUEST['Admitted_Class'];
$Admission_Fee = $_REQUEST['Admission_Fee'];
$Last_School = $_REQUEST['Last_School'];

$DOB = $_REQUEST['DOB'];
$Admission_Date = $_REQUEST['Admission_Date'];

include "config.php";



echo($Name);
echo("\n");
echo($Father_Name);
echo("\n");
echo($Father_CNIC);
echo("\n");
echo($Father_Mobile);
echo("\n");
echo($Father_Occupation);
echo("\n");
echo($DOB);
echo("\n");
echo($Student_Section);
echo("\n");
echo($Student_Sub_Section);
echo("\n");
echo($Address);
echo("\n");
echo($Last_School);
echo("\n");
echo($Gender);
echo("\n");
echo($Religion);
echo("\n");
echo($Guardian_Name);
echo("\n");
echo($Guardian_Relation);
echo("\n");
echo($Guardian_CNIC);
echo("\n");
echo($Guardian_Mobile);
echo("\n");
echo($Admitted_Class);
echo("\n");
echo($Admission_Fee);
echo("\n");
echo($Admission_Date);





echo("before sql query");
$sql = "INSERT INTO `Students` VALUES (0,'$Name','$Father_Name',$Father_CNIC,$Father_Mobile,'$Father_Occupation',$DOB,'$Student_Section','$Student_Sub_Section','$Address','$Last_School','$Gender','$Religion','$Guardian_Name','$Guardian_Relation',$Guardian_CNIC,$Guardian_Mobile,'$Admitted_Class',$Admission_Fee,$Admission_Date)";


echo("After sql query");

$result = mysqli_query($conn,$sql) or die ("SQL Query Failed");


echo("After result query");

if($result > 0) {

echo json_encode(array('messeage' => ' record Inseted', 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'No record inserted', 'status' => false));


}

	
?>

