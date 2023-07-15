import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:school_manegment_system/core/models/Students.dart';

class DatabaseServices {
  /// ********************* ///
  Future<List<Students>> getData() async {
    /// ********************* ///
    List<Students> stdList = [];

    /// ********************* ///
    try {
      var response =
          await Dio().get('http://localhost/School_Api/fetch_all_data.php');

      /// Important ////////////////////////////////////////////////////////////////////
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        stdList.add(Students.fromJson(element));
      }

      /// Important ////////////////////////////////////////////////////////////////////
    } catch (e) {
      print(e);
    }

    /// ********************* ///
    return stdList;

    /// ********************* ///
  }

  ////// 10th Students/////////////
  Future<List<Students>> getStudentByClass(String cls) async {
    String url = "http://localhost/School_Api/get_students_by_class.php";
    String param = "?class=$cls";
    List<Students> stdList = [];
    try {
      var response = await Dio().get(url + param);
      print(response.data.toString());
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        stdList.add(Students.fromJson(element));
      }
    } catch (e) {
      print('Exception $e');
    }
    return stdList;
  }

  Future<void> addStudent(Students students) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.followRedirects = true;
    dio.options.validateStatus;
    try {
      print(students.toJson());
      // var response =
      // await dio.post('http://localhost/School_Api/insert_student.php',data: jsonEncode(students.toJson()));
      var response = await dio.get(
          'http://localhost/School_Api/insert_student.php?Name=${students.name}&Father_Name=${students.fatherName}&Father_CNIC=${students.fatherCNIC}&Father_MOBILE=${students.fatherMOBILE}&Father_Occupation=${students.fatherOccupation}&DOB=${students.dob}&Student_Section=${students.studentSection}&Student_Sub_Section=${students.studentSubSection}&Address=${students.address}&Last_School=${students.lastSchool}&Gender=${students.gender}&Religion=${students.religion}&Gaurdian_Name=${students.guardianName}&Gaurdian_Relation=${students.guardianRelation}&Gaurdian_CNIC=${students.guardianCNIC}&Gaurdian_Mobile=${students.guardianMobile}&Admitted_Class=${students.admittedClass}&Admission_Fee=${students.admissionFee}&Admission_Date=${students.admissionDate}');
      print("Status Code : ${response.statusCode}");
      print(students.fatherCNIC);
    } catch (e) {
      print('exception $e');
    }
  }


  Future<void> deleteStudent(String sid) async {
    String url = "http://localhost/School_Api/delete_data.php";
    String id = "?sid=$sid";
    try{
      var response = await Dio().get(url + id);
      print(response.statusCode);
      print(response.data);
    }
    catch(e){
      print(e);
    }

  }
}
