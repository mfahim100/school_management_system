import 'package:flutter/cupertino.dart';

import '../models/DmcModels.dart';
import '../models/StudentsModels.dart';
import '../services/database_services.dart';

class ResultProvider extends ChangeNotifier{


  List<StudentsModels> getStudentByClassList = [];
  Future<void> getStudentByClassProvider(String cls) async {
    setCurruntClass(cls);
    getStudentByClassList.clear();
    DatabaseServices db = DatabaseServices();
    getStudentByClassList = await db.getStudentByClass(cls);
    notifyListeners();
  }



  String _curruntClass = '';
  String get curruntClass => _curruntClass;
  setCurruntClass(String cls){
    _curruntClass = cls;
    notifyListeners();
  }


  final highClassesDmcKey = GlobalKey<FormState>();
  final primaryAndMiddleClassesDmcKey = GlobalKey<FormState>();

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

  final  TextEditingController _lughatArabiaController = TextEditingController();
  TextEditingController get lughatArabiaController => _lughatArabiaController;

  final  TextEditingController _naziraController = TextEditingController();
  TextEditingController get naziraController => _naziraController;


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

///////////////High Class Validatorss//////////////////
  String? englishValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in English';
    }
    else if (validMarks>75 || validMarks<0){
      return 'Please Enter a Vaild Marks';
    }
    return null;
  }
  String? urduValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Urdu';
    }
    else if (validMarks>75 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? mathsValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Maths';
    }
    else if (validMarks>75 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? islamiatValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Islamiat';
    }
    else if (validMarks>50 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? pakStudyValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Pak Study';
    }
    else if (validMarks>50 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? chemistryValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Chemistry';
    }
    else if (validMarks>75 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? physicsValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Physics';
    }
    else if (validMarks>75 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? biologyValidator(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Biology';
    }
    else if (validMarks>75 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
////////////////////////////////////////////////////////////////////////////




  void clearController(){
     _englishController.clear();
     _urduController.clear();
     _mathsController.clear();
     _islamiatController.clear();
     _pakStudyController.clear();
     _biologyController.clear();
     _chemistryController.clear();
     _physicsController.clear();

  }




///////////////// Primary And Middle Class Validator///////////////////

  String? englishValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in English';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Vaild Marks';
    }
    return null;
  }
  String? urduValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Urdu';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? mathsValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Maths';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? islamiatValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Islamiat';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? pakStudyValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Pak Study';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? lughatArabiaValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Chemistry';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }
  String? naziraValidatorOfPrimaryMiddle(String? txt){

    final int validMarks = int.parse(txt!);

    if(txt!.isEmpty){
      return 'Please Enter Marks in Physics';
    }
    else if (validMarks>100 || validMarks<0){
      return 'Please Enter a Valid Marks';
    }
    return null;
  }

////////////////////////////////////////////////////////////






  void insertHighClassesExamData(int admissionNumber ,String name,admittedClass,fatherName) {
    int english = int.parse(_englishController.text.trim());
    int urdu = int.parse(_urduController.text.trim());
    int maths = int.parse(_mathsController.text.trim());
    int islamiat = int.parse(_islamiatController.text.trim());
    int pakStudy = int.parse(_pakStudyController.text.trim());
    int chemistry = int.parse(_chemistryController.text.trim());
    int physics = int.parse(_physicsController.text.trim());
    int biology = int.parse(_biologyController.text.trim());
    int totalMarks = english+urdu+maths+islamiat+pakStudy+chemistry+physics+biology;
    double percentage = totalMarks*100/550;
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
        fatherName: fatherName,
        admittedClass: admittedClass,
        examType: _examType,
        english: english,
        urdu: urdu,
        maths: maths,
        islamiat: islamiat,
        pakStudy: pakStudy,
        lughatArabia: 0,
        nazira: 0,
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
    clearController();
    notifyListeners();


  }


  void insertPrimaryAndMiddleClassesExamData(int admissionNumber ,String name,admittedClass,fatherName) {
    int english = int.parse(_englishController.text.trim());
    int urdu = int.parse(_urduController.text.trim());
    int maths = int.parse(_mathsController.text.trim());
    int islamiat = int.parse(_islamiatController.text.trim());
    int pakStudy = int.parse(_pakStudyController.text.trim());
    int lughatArabia = int.parse(_lughatArabiaController.text.trim());
    int nazira = int.parse(_naziraController.text.trim());
    int totalMarks = english+urdu+maths+islamiat+pakStudy+lughatArabia+nazira;
    double percentage = totalMarks*100/700;
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
      fatherName: fatherName,
      admittedClass: admittedClass,
      examType: _examType,
      english: english,
      urdu: urdu,
      maths: maths,
      islamiat: islamiat,
      pakStudy: pakStudy,
      lughatArabia: lughatArabia,
      nazira: nazira,
      chemistry: 0,
      physics: 0,
      biology: 0,
      totalMarks: totalMarks,
      percentage: percentage,
      grade: decideGrade(),
    );
    DatabaseServices db = DatabaseServices();
    db.addStudentDmc(mdl);
    print('Every thing gone Find');
    clearController();
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


  List<DmcModels> getResultByClass = [];
  Future<void> getResultByClassProvider() async {
    getResultByClass.clear();
    DatabaseServices db = DatabaseServices();
    getResultByClass = await db.getResultByClass(_curruntClass);
    print(_curruntClass);
    print("___________________________________");
    print(getResultByClass.length);
    print("___________________________________");
    notifyListeners();

  }


}