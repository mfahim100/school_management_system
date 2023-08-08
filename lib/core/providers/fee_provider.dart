import 'package:flutter/cupertino.dart';
import 'package:school_manegment_system/core/models/fee_models.dart';

import '../models/StudentsModels.dart';
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

  setExamFeeToAllStudents() {
    for (int i=0; i<examFeeControllers.length; i++) {
      examFeeControllers[i].text=examFeeSelection.text;
    }
    notifyListeners();
  }



  void insertFeeData() {
    int currentMonth = DateTime(DateTime.now().year, DateTime.now().month)
        .millisecondsSinceEpoch;
    for (int i = 0; i< feeControllers.length; i++){
      StudentsModels std = getStudentByClassList[i];
      int feeAmount= int.parse(feeControllers[i].text);

      FeeModels mdl = FeeModels(
        admissionNumber: std.admissionNumber,
        name: std.name,
        fatherName: std.fatherName,
        admittedClass: std.admittedClass,
        totalFee: feeAmount,
        month: currentMonth,
        status: 0,
      );
      DatabaseServices db = DatabaseServices();
      db.addStudentFee(mdl);
      print('Every thing gone Find');
    }

    notifyListeners();
  }


  List<FeeModels> getFeeByClass = [];
  Future<void> getFeeByClassProvider() async {
    int currentMonth = DateTime(DateTime.now().year,DateTime.now().month).millisecondsSinceEpoch;
    getFeeByClass.clear();
    DatabaseServices db = DatabaseServices();
    getFeeByClass = await db.getFeeByClass(_curruntClass,currentMonth);
    print("___________________________________");
    print(currentMonth);
    print(_curruntClass);
    print(getFeeByClass.length);
    print("___________________________________");
    notifyListeners();

  }



  final _searchStudentController = TextEditingController();
  TextEditingController get searchStudentController => _searchStudentController;

  String? searchStudentValidator(String? txt) {

    if(txt!.isEmpty){
      return 'Please Enter Student Name';
    }

    return null;

  }


  List<FeeModels> getFeeByName = [];
  Future<void> getFeeByNameProvider(String name) async {
    getFeeByClass.clear();
    DatabaseServices db = DatabaseServices();
    getFeeByClass = await db.getFeeByName(name,_curruntClass);
    print("___________________________________");
    print(name);
    print(_curruntClass);
    print(getFeeByClass.length);
    print("___________________________________");
    notifyListeners();

  }




}
