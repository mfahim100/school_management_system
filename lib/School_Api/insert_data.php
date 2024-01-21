
<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Method,Access-Control-Allow-Method,Authorization,X-Requested-With');


//$data = json_decode(file_get_contents("php://input"),true);


$Admission_Number = $_REQUEST['Admission_Number'];
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
//$DOB = 1999-12-12;
//$Admission_Date = 2023-12-12;






include "config.php";


$sql = "Insert INTO Students VALUES($Admission_Number,'$Name','$Father_Name',$Father_CNIC,$Father_Mobile,'$Father_Occupation','$DOB','$Student_Section',
'$Student_Sub_Section','$Address','$Last_School','$Gender','$Religion','$Guardian_Name','$Guardian_Relation',$Guardian_CNIC,$Guardian_Mobile,'$Admitted_Class',
$Admission_Fee,'$Admission_Date')";


if(mysqli_query($conn,$sql) > 0) {

echo json_encode(array('messeage' => ' record Inseted', 'status' => true));

}
else{
 
echo json_encode(array('messeage' => 'No record inserted', 'status' => false));


}





//localhost/php_apis/insert_data.php?sname=fahimjani&fahther_name=ahmadkhan&saddress=kotaa


///http://localhost/School_Api/insert_student.php?Admission_Number=100&Name=fahim&Father_Name=khan&Father_CNIC=4556455&Father_MOBILE=4554455&Father_Occupation=student&DOB=454456&Student_Section=A&Student_Sub_Section=SA&Address=zarakhela&Last_School=lasstscsss&Gender=male&Religion=islam&Gaurdian_Name=wasiim&Gaurdian_Relation=something&Gaurdian_CNIC=4545454&Gaurdian_Mobile=4656456&Admitted_Class=10th&Admission_Fee=1000&Admission_Date=565645645
	
?>


