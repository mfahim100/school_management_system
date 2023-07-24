import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../models/AttendanceModel.dart';
import '../models/Students.dart';
import '../services/database_services.dart';

class AttendanceProvider extends ChangeNotifier {
  var attendanceSheetFormKey = GlobalKey<FormState>();
  final _attendanceTypeController = TextEditingController();

  TextEditingController get attendanceTypeController =>
      _attendanceTypeController;


  String _curruntClass = '';
  String get curruntClass => _curruntClass;
  setCurruntClass(String cls){
    _curruntClass = cls;
    notifyListeners();
  }





  List<int> stdAttendance = [];
  List<Students> getStudentByClassList = [];
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



  List<AttendanceModel> getAttendanceByClassList = [];
  Future<void> getAttendanceByClassProvider() async {
    getAttendanceByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getAttendanceByClassList = await db.getAttendanceByClass(_curruntClass);
    print("___________________________________");
    print(getAttendanceByClassList.length);
    print("___________________________________");
    notifyListeners();

  }


  String attendanceString = 'Date of Admission';
  DateTime attendanceDate = DateTime.now();
  DateTime attendanceDateSelection = DateTime.now();
  setAttendanceDate(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 40*w,
            height: 50*h,
            child: Padding(
              padding:EdgeInsets.all(2*w),
              child: SfDateRangePicker(
                minDate: DateTime(1900),
                view: DateRangePickerView.decade,
                onCancel: () {
                  Navigator.of(context).pop();
                },
                onSubmit: (picker){
                  print(picker.toString());
                  attendanceDate =attendanceDateSelection;
                  attendanceString="${attendanceDate.year}-${attendanceDate.month}-${attendanceDate.day}";
                  notifyListeners();
                  Navigator.of(context).pop();
                },
                confirmText: 'OK',
                showActionButtons: true,
                onSelectionChanged: (args) {
                  if (args.value is PickerDateRange) {
                    attendanceDateSelection = args.value.startDate;
                  } else if (args.value is DateTime) {
                    attendanceDateSelection = args.value;
                  }
                },
                selectionMode: DateRangePickerSelectionMode.single,
              ),
            ),
          ),
        );
      },
    );
    notifyListeners();
  }


  // int selectedAttendanceDate = selectedAttendanceDate








  List<AttendanceModel> getAttendanceByClassAndDateList = [];
  Future<void> getAttendanceByClassAndDateProvider() async {
    int selectedAttendanceDate = attendanceDate.millisecondsSinceEpoch;
    getAttendanceByClassAndDateList.clear();
    DatabaseServices db = DatabaseServices();
    getAttendanceByClassAndDateList = await db.getAttendanceByClassAndDate(_curruntClass,selectedAttendanceDate);
    print("___________________________________");
    print(getAttendanceByClassAndDateList.length);
    print("___________________________________");
    notifyListeners();

  }




}
