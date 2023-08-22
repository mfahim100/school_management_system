import 'package:flutter/cupertino.dart';
import 'package:school_manegment_system/core/models/AttendanceModel.dart';
import 'package:school_manegment_system/core/models/StudentsModels.dart';
import 'package:school_manegment_system/core/services/database_services.dart';

class DashBoardProvider extends ChangeNotifier{

 DashBoardProvider(){
   getAllStudentsProvider();
 }


  List<StudentsModels> getAllStudents = [];
  Future<void> getAllStudentsProvider() async {
    getAllStudents.clear();
    DatabaseServices db = DatabaseServices();
    getAllStudents = await db.getAllStudent();
    notifyListeners();
  }

  List<StudentsModels> getMaleStudent = [];
  Future<void> getMaleStudentsProvider() async {
    getMaleStudent.clear();
    DatabaseServices db = DatabaseServices();
    getMaleStudent = await db.getMaleStudents();
    notifyListeners();
  }

  List<StudentsModels> getFemaleStudent = [];
  Future<void> getFemaleStudentProvider() async {
    getFemaleStudent.clear();
    DatabaseServices db = DatabaseServices();
    getFemaleStudent = await db.getFemaleStudents();
    notifyListeners();
  }


 List<AttendanceModel> getPresentStudent = [];
  Future<void> getPresentStudentProvider() async {
    int date =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .millisecondsSinceEpoch;
    getPresentStudent.clear();
    DatabaseServices db = DatabaseServices();
    getPresentStudent = await db.getPresentStudents(date);
    notifyListeners();
  }

  List<AttendanceModel> getAbsentStudent = [];
  Future<void> getAbsentStudentProvider() async {
    int date =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .millisecondsSinceEpoch;
    getPresentStudent.clear();
    getAbsentStudent.clear();
    DatabaseServices db = DatabaseServices();
    getAbsentStudent = await db.getAbsentStudent(date);
    notifyListeners();
  }


  List<AttendanceModel> getLeaveStudent = [];
  Future<void> getLeaveStudentProvider() async {
    int date =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .millisecondsSinceEpoch;
    getPresentStudent.clear();
    getLeaveStudent.clear();
    DatabaseServices db = DatabaseServices();
    getLeaveStudent = await db.getLeaveStudent(date);
    notifyListeners();
  }

}