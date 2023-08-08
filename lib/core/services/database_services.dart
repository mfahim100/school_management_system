
import 'package:dio/dio.dart';
import 'package:school_manegment_system/core/models/DmcModels.dart';
import 'package:school_manegment_system/core/models/fee_models.dart';

import '../models/AttendanceModel.dart';
import '../models/StudentsModels.dart';

class DatabaseServices {
  /// ********************* ///
  Future<List<StudentsModels>> getData() async {
    /// ********************* ///
    List<StudentsModels> stdList = [];

    /// ********************* ///
    try {
      var response =
          await Dio().get('http://localhost/School_Api/fetch_all_data.php');

      /// Important ////////////////////////////////////////////////////////////////////
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        stdList.add(StudentsModels.fromJson(element));
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
  Future<List<StudentsModels>> getStudentByClass(String cls) async {
    String url = "http://localhost/School_Api/get_students_by_class.php";
    String param = "?class=$cls";
    List<StudentsModels> stdList = [];
    try {
      var response = await Dio().get(url + param);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        stdList.add(StudentsModels.fromJson(element));
      }
    } catch (e) {
      print('Exception $e');
    }
    return stdList;
  }

  Future<void> addStudent(StudentsModels students) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.followRedirects = true;
    dio.options.validateStatus;
    try {
      print(students.toJson());
      // var response =
      // await dio.post('http://localhost/School_Api/insert_student.php',data: jsonEncode(students.toJson()));
      var response = await dio.get('http://localhost/School_Api/insert_data.php?Admission_Number=${students.admissionNumber}&Name=${students.name}&Father_Name=${students.fatherName}&Father_CNIC=${students.fatherCNIC}&Father_MOBILE=${students.fatherMOBILE}&Father_Occupation=${students.fatherOccupation}&DOB=${students.dob}&Student_Section=${students.studentSection}&Student_Sub_Section=${students.studentSubSection}&Address=${students.address}&Last_School=${students.lastSchool}&Gender=${students.gender}&Religion=${students.religion}&Gaurdian_Name=${students.guardianName}&Gaurdian_Relation=${students.guardianRelation}&Gaurdian_CNIC=${students.guardianCNIC}&Gaurdian_Mobile=${students.guardianMobile}&Admitted_Class=${students.admittedClass}&Admission_Fee=${students.admissionFee}&Admission_Date=${students.admissionDate}');
      print("Status Code : ${response.statusCode}");
    } catch (e) {
      print('exception $e');
    }
  }



/////////// Update Record
  Future<void> updateStudent(StudentsModels students) async {
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
          'http://localhost/School_Api/update_data.php?Name=${students.name}&Father_Name=${students.fatherName}&Father_CNIC=${students.fatherCNIC}&Father_MOBILE=${students.fatherMOBILE}&Father_Occupation=${students.fatherOccupation}&DOB=${students.dob}&Student_Section=${students.studentSection}&Student_Sub_Section=${students.studentSubSection}&Address=${students.address}&Last_School=${students.lastSchool}&Gender=${students.gender}&Religion=${students.religion}&Gaurdian_Name=${students.guardianName}&Gaurdian_Relation=${students.guardianRelation}&Gaurdian_CNIC=${students.guardianCNIC}&Gaurdian_Mobile=${students.guardianMobile}&Admitted_Class=${students.admittedClass}&Admission_Fee=${students.admissionFee}&Admission_Date=${students.admissionDate}&Admission_Number=${students.admissionNumber}');
      print("Status Code : ${response.statusCode}");
    } catch (e) {
      print('exception $e');
    }
  }


  Future<void> deleteStudent(int sid) async {
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

  Future<void> deleteStudentAttendance(int sid) async {
    String url = "http://localhost/School_Api/delete_attendance.php";
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

  Future<void> deleteStudentResult(int sid) async {
    String url = "http://localhost/School_Api/delete_result.php";
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

  Future<void> deleteStudentFee(int sid) async {
    String url = "http://localhost/School_Api/delete_Fee.php";
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




  Future<void> addStudentAttendance(AttendanceModel atd) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.followRedirects = true;
    dio.options.validateStatus;
    try {
      print(AttendanceModel().toJson());
      // var response =
      // await dio.post('http://localhost/School_Api/insert_student.php',data: jsonEncode(students.toJson()));
      var response = await dio.get(
        'http://localhost/School_Api/insert_attendance.php?Admission_Number=${atd.admissionNumber}&Admitted_Class=${atd.admittedClass}&Name=${atd.name}&Date=${atd.date}&Month=${atd.month}&Type=${atd.type}');
      print("Status Code : ${response.statusCode}");
    } catch (e) {
      print('exception $e');
    }
  }


  Future<List<AttendanceModel>> getAttendanceByClass(String cls) async {
    String url = "http://localhost/School_Api/get_attendance_by_class.php";
    String param = "?Admitted_Class=$cls";
    List<AttendanceModel> atdList = [];
    try {
      var response = await Dio().get(url + param);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        atdList.add(AttendanceModel.fromJson(element));
      }
    } catch (e) {
      print('Exception is  $e');
    }

    return atdList;
  }


  Future<List<AttendanceModel>> getAttendanceByClassAndDate(String cls,int date) async {
    // String url = "http://localhost/School_Api/get_attendance_by_class.php";
    String url = "http://localhost/School_Api/get_attendance_by_class_and_date.php";
    String param = "?Admitted_Class=$cls&Date=$date";
    List<AttendanceModel> atdList = [];
    try {
      var response = await Dio().get(url + param);
      print(response);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        atdList.add(AttendanceModel.fromJson(element));
      }
    } catch (e) {
      print('Exception is  $e');
    }

    return atdList;
  }


  Future<List<List<AttendanceModel>>> getAttendanceByMonth(String cls,int month) async {
    String url = "http://localhost/School_Api/get_attendance_by_month.php";
    String param = "?Admitted_Class=$cls&Month=$month";
    List<AttendanceModel> atdList = [];
    List<List<AttendanceModel>> singleList = [];
    try {
      var response = await Dio().get(url + param);
      List<dynamic> jsonList = response.data;

      // for (var element in jsonList) {
      //   atdList.add(AttendanceModel.fromJson(element));
      // }

      List<AttendanceModel> resList =[];
      print(jsonList.length);
      for (var element in jsonList)
      {
        // print(element.runtimeType);
        resList.add(AttendanceModel.fromJson(element));
      }

      for (var element in resList) {
        bool isInserted = false;
        print('Something 22222 : ${element
        .admissionNumber}');

        for(int i =0 ; i< singleList.length ; i++){
          print('Loop Length $i ');

          for (int j = 0; j< singleList[i].length; j++){
            print(singleList[i][j].admissionNumber);
            if(singleList[i][j].admissionNumber== element.admissionNumber){
              if(!isInserted)
              {
                singleList[i].add(element);
                isInserted=true;
                print('isInserted : $isInserted Same List : ${element
                    .admissionNumber}');
              }
            }
          }
        }

        if(!isInserted){
          print("*********************************");
          print('isInserted : $isInserted before if  : ${element
              .admissionNumber}');
          singleList.add([element]);
          print('after if: $isInserted ${element.admissionNumber}');
          print('***************************');
        }
      }

      print("Single list length : ${singleList.length}");

      for (var element in singleList) {
        print("Single list Inner  length : ${element.length}");
      }
    }
    catch (e) {
      print('Exception is  $e');
    }
    return singleList;
  }






  Future<void> addStudentDmc(DmcModels mdl) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.followRedirects = true;
    dio.options.validateStatus;
    try {
      print(DmcModels().toJson());
      var response = await dio.get(
          'http://localhost/School_Api/insert_dmc_data.php?Admission_Number=${mdl.admissionNumber}&Name=${mdl.name}&Father_Name=${mdl.fatherName}&Admitted_Class=${mdl.admittedClass}&Exam_Type=${mdl.examType}&English=${mdl.english}&Urdu=${mdl.urdu}&Maths=${mdl.maths}&Islamiat=${mdl.islamiat}&Pak_Study=${mdl.pakStudy}&Lughat_Arabia=${mdl.lughatArabia}&Nazira=${mdl.nazira}&Chemistry=${mdl.chemistry}&Physics=${mdl.physics}&Biology=${mdl.biology}&Total_Marks=${mdl.totalMarks}&Percentage=${mdl.percentage}&Grade=${mdl.grade}');
      print("Status Code : ${response.statusCode}");
    } catch (e) {
      print('exception $e');
    }
  }


  Future<List<DmcModels>> getResultByAdmissionNumberAndName(String name,int admissionNumber) async {

    String url = "http://localhost/School_Api/get_DMC_by_Admission_Number_and_name.php";
    String param = "?Admission_Number=$admissionNumber&Name=$name";
    List<DmcModels> dmcList = [];
    try {
      var response = await Dio().get(url + param);
      print(response.data);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        dmcList.add(DmcModels.fromJson(element));
      }
    } catch (e) {
      print('Exception is  $e');
    }

    return dmcList;
  }


  Future<List<DmcModels>> getResultByClass(String cls) async {

    // String url = "http://localhost/School_Api/get_DMC_by_all_class.php";
    // String param = "?Admitted_class=$cls";
    List<DmcModels> dmcList = [];
    try {
      var response = await Dio().get("http://localhost/School_Api/get_DMC_by_all_class.php?Admitted_Class=$cls");
      print(response.data);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        dmcList.add(DmcModels.fromJson(element));
      }
    } catch (e) {
      print('Exception is  $e');
    }

    return dmcList;
  }


  Future<void> addStudentFee(FeeModels mdl) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.followRedirects = true;
    dio.options.validateStatus;
    try {
      print(FeeModels().toJson());
      var response = await dio.get(
          'http://localhost/School_Api/insert_student_fee.php?Admission_Number=${mdl.admissionNumber}&Name=${mdl.name}&Father_Name=${mdl.fatherName}&Admitted_Class=${mdl.admittedClass}&Month=${mdl.month}&Total_Fee=${mdl.totalFee}&Status=${mdl.status}');
      print("Status Code : ${response.statusCode}");
    } catch (e) {
      print('exception $e');
    }
  }


  Future<List<FeeModels>> getFeeByClass(String cls,int month) async {
    String url = "http://localhost/School_Api/get_fee_by_class_and_date.php";
    String param = "?Admitted_Class=$cls&Month=$month";
    List<FeeModels> feeList = [];
    try {
      var response = await Dio().get(url + param);
      print(response.data);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        feeList.add(FeeModels.fromJson(element));
      }
    } catch (e) {
      print('Exception is  $e');
    }

    return feeList;
  }


  Future<List<FeeModels>> getFeeByName(String name,cls) async {
    String url = "http://localhost/School_Api/get_fee_by_name.php";
    String param = "?Name=$name&Admitted_Class=$cls";
    List<FeeModels> feeList = [];
    try {
      var response = await Dio().get(url + param);
      print(response.data);
      List<dynamic> jsonList = response.data;
      for (var element in jsonList) {
        feeList.add(FeeModels.fromJson(element));
      }
    } catch (e) {
      print('Exception is  $e');
    }

    return feeList;
  }




}
