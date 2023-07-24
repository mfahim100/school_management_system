import 'package:flutter/cupertino.dart';

import '../models/DmcModels.dart';
import '../models/Students.dart';
import '../services/database_services.dart';

class ResultProvider extends ChangeNotifier{


  List<Students> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    notifyListeners();
  }


  final dmcKey = GlobalKey<FormState>();


  final  TextEditingController _englishController = TextEditingController();
  TextEditingController get englishController => _englishController;

  final  TextEditingController _urduController = TextEditingController();
  TextEditingController get urduController => _urduController;

  final  TextEditingController _mathsController = TextEditingController();
  TextEditingController get mathsController => _mathsController;

  final  TextEditingController _islamiatController = TextEditingController();
  TextEditingController get islamiatController => _islamiatController;

  final  TextEditingController _pakStudyController = TextEditingController();
  TextEditingController get pakStudyController => _pakStudyController;

  final  TextEditingController _chemistryController = TextEditingController();
  TextEditingController get chemistryController => _chemistryController;

  final  TextEditingController _biologyController = TextEditingController();
  TextEditingController get biologyController => _biologyController;

  final  TextEditingController _physicsController = TextEditingController();
  TextEditingController get physicsController => _physicsController;

  String _examType = "";
  String get examType => _examType;
  setExamType(String val) {
    _examType = val;
    print(_examType);
    notifyListeners();
  }


  String? englishValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in English';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Vaild Marks';
    }
    return null;
  }

  String? urduValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Urdu';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }


  String? mathsValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Maths';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }

  String? islamiatValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Islamiat';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }

  String? pakStudyValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Pak Study';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }

  String? chemistryValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Chemistry';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }

  String? physicsValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Physics';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }

  String? biologyValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Biology';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }





  void insertExamData(int admissionNumber ,String name,admittedClass) {
    int english = int.parse(_englishController.text.trim());
    int urdu = int.parse(_urduController.text.trim());
    int maths = int.parse(_mathsController.text.trim());
    int islamiat = int.parse(_islamiatController.text.trim());
    int pakStudy = int.parse(_pakStudyController.text.trim());
    int chemistry = int.parse(_chemistryController.text.trim());
    int physics = int.parse(_physicsController.text.trim());
    int biology = int.parse(_biologyController.text.trim());
    int totalMarks = english+urdu+maths+islamiat+pakStudy+chemistry+physics+biology;
    double percentage = totalMarks*100/800;
    String decideGrade(){
      if(percentage>80){
        return "A-1";
      }
      else if(percentage>70 && percentage<80){
        return "A";
      }
      else if(percentage>60 && percentage<70){
        return "B";
      }
      else if(percentage>50 && percentage<60){
        return "C";
      }
      else if(percentage>40 && percentage<50){
        return "D";
      }
      else {
        return 'Fail';
      }

    }
    DmcModels mdl = DmcModels(
      id: 0,
        admissionNumber: admissionNumber,
        name: name,
        admittedClass: admittedClass,
        examType: _examType,
        english: english,
        urdu: urdu,
        maths: maths,
        islamiat: islamiat,
        pakStudy: pakStudy,
        chemistry: chemistry,
        physics: physics,
        biology: biology,
        totalMarks: totalMarks,
        percentage: percentage,
      grade: decideGrade(),
    );
    DatabaseServices db = DatabaseServices();
    db.addStudentDmc(mdl);
    print('Every thing gone Find');
    notifyListeners();

  }

  List<DmcModels> getResultByAdmissionNumberAndNameList = [];
  Future<void> getResultByAdmissionNumberAndNameProvider(String name, int admissionNumber) async {
    getResultByAdmissionNumberAndNameList.clear();
    DatabaseServices db = DatabaseServices();
    getResultByAdmissionNumberAndNameList = await db.getResultByAdmissionNumberAndName(name,admissionNumber);
    print("___________________________________");
    print(getResultByAdmissionNumberAndNameList.length);
    print("___________________________________");
    notifyListeners();

  }

}