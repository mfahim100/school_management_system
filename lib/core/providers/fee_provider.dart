import 'package:flutter/cupertino.dart';

import '../models/Feemodel.dart';
import '../models/StudentsModels.dart';
import '../models/all_class_fee_model.dart';
import '../services/database_services.dart';

class FeeProvider extends ChangeNotifier {

  List<TextEditingController> feeControllers = [];
  TextEditingController feeSelection = TextEditingController();

  List<TextEditingController> examFeeControllers = [];
  TextEditingController examFeeSelection = TextEditingController();

  final TextEditingController _fineFeeController = TextEditingController();
  TextEditingController get fineFeeController => _fineFeeController;

  List<StudentsModels> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    setCurruntClass(cls);
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);

    for (var element in getStudentByClassList) {
      feeControllers.add(TextEditingController());

    }


    for (var element in getStudentByClassList) {
      examFeeControllers.add(TextEditingController());

    }

    notifyListeners();
  }



  String _curruntClass = '';
  String get curruntClass => _curruntClass;
  setCurruntClass(String cls){
    _curruntClass = cls;
    notifyListeners();
  }


  setFeeToAllStudents() {
    for (int i=0; i<feeControllers.length; i++) {
      feeControllers[i].text=feeSelection.text;
    }
    notifyListeners();
  }
  //
  // setExamFeeToAllStudents() {
  //   for (int i=0; i<examFeeControllers.length; i++) {
  //     examFeeControllers[i].text=examFeeSelection.text;
  //   }
  //   notifyListeners();
  // }


  String _monthSelection = "";
  String get admittedClass => _monthSelection;
  setMonth(String val) {
    _monthSelection = val;
    print(_monthSelection);
    notifyListeners();
  }

  int? decideMonth(){

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
    else if(_monthSelection == 'December'){
      return DateTime(DateTime.now().year,DateTime.december).millisecondsSinceEpoch;
    }

    else {
      return null;
    }
  }

  int _totalFee = 0;
  int  get totalFee => _totalFee;
  List<FeeModels> getUnpaidFeeList = [];
  Future<void> getUnpaidFeeProvider(int admissionNumber) async {
    getUnpaidFeeList.clear();
    _totalFee=0;
    DatabaseServices db = DatabaseServices();
    getUnpaidFeeList = await db.getUnpaidFee(admissionNumber);
    for (int i = 0; i < getUnpaidFeeList.length; i++) {
      _totalFee = _totalFee + getUnpaidFeeList[i].monthlyFee!;
      print(_totalFee);
    }
    print('total fee is ${_totalFee.toString()}');
    notifyListeners();
  }



  void insertFeeData() {
    int? month = decideMonth();
    for (int i = 0; i<feeControllers.length; i++){
      StudentsModels std = getStudentByClassList[i];
      int monthlyFee= int.parse(feeControllers[i].text);
      FeeModels mdl = FeeModels(
        id: 0,
        admissionNumber: std.admissionNumber,
        name: std.name,
        fatherName: std.fatherName,
        admittedClass: std.admittedClass,
        month: month,
        monthlyFee: monthlyFee,
        examFee: 0,
        fineFee: 0,
        totalFee: 0,
        monthlyFeeStatus: 0,
        examFeeStatus: 0,
        fineFeeStatus: 0
      );
      print('lenggth $i');
      DatabaseServices db = DatabaseServices();
      db.addStudentFee(mdl);
     print('this is number $i');
    }

    notifyListeners();
  }





  List<FeeModels> getFeeByAdmissionNumberList = [];
  Future<void> getFeeByAdmissionNumberProvider(int admissionNumber) async {
    getFeeByAdmissionNumberList.clear();
    DatabaseServices db = DatabaseServices();
    getFeeByAdmissionNumberList = await db.getFeeByAdmissionNumber(admissionNumber);
    print("___________________________________");
    print(getFeeByAdmissionNumberList.length);
    print("___________________________________");
    notifyListeners();
  }




  List<FeeModels> getFeeByClass = [];
  Future<void> getFeeByClassProvider()async {
    getFeeByClass.clear();
    DatabaseServices db = DatabaseServices();
     getFeeByClass =  await db.getFeeByClass(_curruntClass);
    print("___________________________________");
    print(getFeeByAdmissionNumberList.length);
    print("___________________________________");
     notifyListeners();


  }




  Future<void> updateMonthLyFeeProvider(int admissionNumber, month) async {
    print("Before paid : $_totalFee");
    DatabaseServices db = DatabaseServices();
    await db.updateMonthLyFeeStatus(admissionNumber, month);
    await getFeeByAdmissionNumberProvider(admissionNumber);
    print("After paid : $_totalFee");
    notifyListeners();
  }




  List<AllClassFeeModel> allClassFee = [];
  Future<void> getAllClassFeeProvider()async{
    allClassFee.clear();
    DatabaseServices db = DatabaseServices();
    allClassFee = await db.getAllClassWithFee(_curruntClass);
    notifyListeners();

  }



}
