import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/AttendanceModel.dart';
import '../models/StudentsModels.dart';
import '../services/database_services.dart';

class AttendanceProvider extends ChangeNotifier {

  String _curruntClass = '';
  String get curruntClass => _curruntClass;
  setCurruntClass(String cls) {
    _curruntClass = cls;
    notifyListeners();
  }

  List<int> stdAttendance = [];
  List<StudentsModels> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    setCurruntClass(cls);
    stdAttendance.clear();
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    for (var element in getStudentByClassList) {
      stdAttendance.add(0);
    }
    notifyListeners();
  }

  void insertAttendanceData(
      int admissionNumber, date,month, String name, type, admittedClass) {
    AttendanceModel atd = AttendanceModel(
        admissionNumber: admissionNumber,
        admittedClass: admittedClass,
        name: name,
        date: date,
        month:month,
        type: type);
    DatabaseServices db = DatabaseServices();
    db.addStudentAttendance(atd);
    print('Every thing gone Find');
    notifyListeners();
  }

  void attendanceAttribute(
      int admissionNumber, String name, admittedClass, type, int index) {
    stdAttendance[index] = type == "P"
        ? 1
        : type == "A"
            ? 2
            : type == "L"
                ? 3
                : 0;
    int currDate =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .millisecondsSinceEpoch;
    int month =
        DateTime(DateTime.now().year, DateTime.now().month)
            .millisecondsSinceEpoch;
    print(admissionNumber);
    print('Name = $name');
    print('type = $type');
    print(currDate.toString());
    print(admittedClass);
    insertAttendanceData(admissionNumber, currDate,month, name, type, admittedClass);
    notifyListeners();
  }




  List<AttendanceModel> getAttendanceByMonthList = [];
  List<List<AttendanceModel>> getAttendanceByMonthListNew = [];
  Future<void> getAttendanceByMonthProvider() async {
    int month =   DateTime(DateTime.now().year, DateTime.now().month)
        .millisecondsSinceEpoch;
    getAttendanceByMonthListNew.clear();
    DatabaseServices db = DatabaseServices();
    getAttendanceByMonthListNew = await db.getAttendanceByMonth(
        _curruntClass, month);
    print("___________________________________");
    print(getAttendanceByMonthListNew.length);
    print("___________________________________");

    notifyListeners();
  }




  String _monthSelection = "";
  String get admittedClass => _monthSelection;
  setMonth(String val) {
    _monthSelection = val;
    print(_monthSelection);
    notifyListeners();
  }
  int decideMonth(){

    if(_monthSelection == 'January'){
      return DateTime(DateTime.now().year,DateTime.january).millisecondsSinceEpoch;
    }
    else if(_monthSelection == 'February'){
      return DateTime(DateTime.now().year,DateTime.february).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'March'){
      return DateTime(DateTime.now().year,DateTime.march).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'April'){
      return DateTime(DateTime.now().year,DateTime.april).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'May'){
      return DateTime(DateTime.now().year,DateTime.may).millisecondsSinceEpoch;
    }


    else if(_monthSelection == 'June'){
      return DateTime(DateTime.now().year,DateTime.june).millisecondsSinceEpoch;
    }


    else if(_monthSelection == 'July'){
      return DateTime(DateTime.now().year,DateTime.july).millisecondsSinceEpoch;
    }


    else if(_monthSelection == 'August'){
      return DateTime(DateTime.now().year,DateTime.august).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'September'){
      return DateTime(DateTime.now().year,DateTime.september).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'October'){
      return DateTime(DateTime.now().year,DateTime.october).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'November'){
      return DateTime(DateTime.now().year,DateTime.november).millisecondsSinceEpoch;
    }

    else {
      return DateTime(DateTime.now().year,DateTime.december).millisecondsSinceEpoch;
    }

    }



  List<AttendanceModel> getAttendanceBySelectedMonthList = [];
  List<List<AttendanceModel>> getAttendanceBySelectedMonthListNew = [];
  Future<void> getAttendanceBySelectedMonthProvider() async {
    int month = decideMonth();
    print(month);
    getAttendanceBySelectedMonthListNew.clear();
    DatabaseServices db = DatabaseServices();
    getAttendanceBySelectedMonthListNew = await db.getAttendanceByMonth(
        _curruntClass, month);
    print("___________________________________");
    print(getAttendanceBySelectedMonthListNew.length);
    print("___________________________________");

    notifyListeners();
  }








}
