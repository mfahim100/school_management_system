
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: PUT');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);


$Name = $_REQUEST['Name'];
$Father_Name = $_REQUEST['Father_Name'];
$Father_CNIC = $_REQUEST['Father_CNIC'];
$Father_Mobile = $_REQUEST['Father_MOBILE'];
$Father_Occupation = $_REQUEST['Father_Occupation'];
$DOB = $_REQUEST['DOB'];
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
$Admission_Date = $_REQUEST['Admission_Date'];
$Admission_Number = $_REQUEST['Admission_Number'];

echo('Before');


include "config.php";



$sql = "UPDATE Students set Name = '$Name' ,Father_Name = '$Father_Name' ,Father_CNIC = $Father_CNIC ,Father_Mobile = $Father_Mobile,Father_Occupation = '$Father_Occupation',DOB= $DOB, Student_Section='$Student_Section' , Student_Sub_Section = '$Student_Sub_Section' ,Address = '$Address', Gender = '$Gender' , Religion = '$Religion', Guardian_Name = '$Guardian_Name' ,  Guardian_Relation = '$Guardian_Relation', Guardian_CNIC = $Guardian_CNIC, Guardian_Mobile = $Guardian_Mobile,  Admitted_Class = '$Admitted_Class', Admission_Fee = $Admission_Fee , Last_School='$Last_School',Admission_Date = $Admission_Date WHERE Admission_Number = $Admission_Number ";


echo('After');


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => 'Record Updated' , 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'Record not updated', 'status' => false));


}



echo("After REsult");


	




?>
