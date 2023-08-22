import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/StudentsModels.dart';
import '../services/database_services.dart';

class StudentProvider extends ChangeNotifier{
  StudentProvider(){
    getStudents();
    // getStudentByClassProvider(cls);
  }

  List<StudentsModels> getAllStudents = [];
  Future<void> getStudents() async {
    getAllStudents.clear();
    DatabaseServices db = DatabaseServices();
    getAllStudents = await db.getAllStudent();
  notifyListeners();

  }


  List<StudentsModels> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    notifyListeners();
  }

  Future<void> deleteStudentBySid(int sid) async {
    DatabaseServices db = DatabaseServices();
      await db.deleteStudent(sid);
      await db.deleteStudentAttendance(sid);
      await db.deleteStudentResult(sid);
      await db.deleteStudentFee(sid);
    notifyListeners();
  }




 String dobbb='Date Of Birth';

  void checkFunction(){
    print(dobbb);
  }


}

