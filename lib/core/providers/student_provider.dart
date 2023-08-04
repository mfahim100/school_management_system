import 'package:flutter/cupertino.dart';

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
    getAllStudents = await db.getData();
  notifyListeners();

  }


  List<StudentsModels> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    notifyListeners();
  }

  Future<void> deleteStudentBySid(String sid) async {
    DatabaseServices db = DatabaseServices();
      await db.deleteStudent(sid);
    notifyListeners();
  }



}

