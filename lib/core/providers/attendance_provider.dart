import 'package:flutter/cupertino.dart';
import '../models/AttendanceModel.dart';
import '../models/Students.dart';
import '../services/database_services.dart';

class AttendanceProvider extends ChangeNotifier {
  var attendanceSheetFormKey = GlobalKey<FormState>();
  final _attendanceTypeController = TextEditingController();

  TextEditingController get attendanceTypeController =>
      _attendanceTypeController;

  List<int> stdAttendance = [];

  List<Students> getStudentByClassList = [];

  Future<void> getStudentByClassProvider(String cls) async {
    stdAttendance.clear();
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    for (var element in getStudentByClassList) {
      stdAttendance.add(0);
    }
    notifyListeners();
  }

  void insertAttendanceData(int admissionNumber,date ,String name,type,admittedClass) {
    AttendanceModel atd = AttendanceModel(
    admissionNumber: admissionNumber,
      admittedClass: admittedClass,
      name: name,
      date: date,
      type: type
    );
    DatabaseServices db = DatabaseServices();
    db.addStudentAttendance(atd);
    print('Every thing gone Find');
    notifyListeners();
  }

  void attendanceAttribute(int admissionNumber, String name,admittedClass,type, int index) {
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
    print(admissionNumber);
    print('Name = $name');
    print('type = $type');
    print(currDate.toString());
    print(admittedClass);
    insertAttendanceData(admissionNumber, currDate, name, type, admittedClass);
    notifyListeners();
  }
}
