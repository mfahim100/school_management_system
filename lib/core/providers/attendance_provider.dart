import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../models/AttendanceModel.dart';
import '../models/StudentsModels.dart';
import '../services/database_services.dart';

class AttendanceProvider extends ChangeNotifier {
  var attendanceSheetFormKey = GlobalKey<FormState>();
  final _attendanceTypeController = TextEditingController();

  TextEditingController get attendanceTypeController =>
      _attendanceTypeController;

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






  ////////////////////////////////////////////////////////////////////////////////

  bool _isFirst = true;
  bool get isFirst => _isFirst;
  setIsFirst(bool val) {
    _isFirst = val;
    notifyListeners();
    AddToSelected();
  }

  List<AttendanceModel> selectedAttendence = [];
  List<String> selectedAttendenceDate = [];

  List<AttendanceModel> getAttendanceByClassList = [];
  Future<void> getAttendanceByClassProvider() async {
    getAttendanceByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getAttendanceByClassList = await db.getAttendanceByClass(_curruntClass);
    print("___________________________________");
    print(getAttendanceByClassList.length);
    print("___________________________________");
    AddToSelected();
    notifyListeners();
  }



  void AddToSelected() {
    selectedAttendence.clear();
    selectedAttendenceDate.clear();
    if (_isFirst) {
      for (int i = 0; i < 15; i++) {
        if (getAttendanceByClassList.length > i) {
          AttendanceModel mdl = getAttendanceByClassList[i];
          selectedAttendence.add(mdl);
          DateTime doa = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
          String date = '${doa.day}/${doa.month}';
          selectedAttendenceDate.add(date);
          notifyListeners();
        }
      }
    } else {
      for (int i = 15; i <= 32; i++) {
        if (getAttendanceByClassList.length > i) {
          AttendanceModel mdl = getAttendanceByClassList[i];
          selectedAttendence.add(mdl);
          DateTime doa = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
          String date = '${doa.day}/${doa.month}';
          selectedAttendenceDate.add(date);
          notifyListeners();
        }
      }
    }
    notifyListeners();
  }


////////////////////////////////////////////////////////////////////////////////////////////////////




  String attendanceString = 'Select Attendance Month';
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
            width: 40 * w,
            height: 50 * h,
            child: Padding(
              padding: EdgeInsets.all(2 * w),
              child: SfDateRangePicker(
                minDate: DateTime(1900),
                view: DateRangePickerView.decade,
                onCancel: () {
                  Navigator.of(context).pop();
                },
                onSubmit: (picker) {
                  print(picker.toString());
                  attendanceDate = attendanceDateSelection;
                  attendanceString =
                      "${attendanceDate.year}-${attendanceDate.month}-${attendanceDate.day}";
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
    getAttendanceByClassAndDateList = await db.getAttendanceByClassAndDate(
        _curruntClass, selectedAttendanceDate);
    print("___________________________________");
    print(getAttendanceByClassAndDateList.length);
    print("___________________________________");
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
