import 'package:flutter/cupertino.dart';

import '../models/Students.dart';
import '../services/database_services.dart';

class FeeProvider extends ChangeNotifier{

  List<Students> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    notifyListeners();
  }


}