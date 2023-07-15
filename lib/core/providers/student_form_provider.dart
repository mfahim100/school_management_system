import 'package:flutter/cupertino.dart';
import 'package:school_manegment_system/core/models/Students.dart';
import 'package:school_manegment_system/core/services/database_services.dart';

class StudentFormProvider extends ChangeNotifier {
  var studentFormKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  TextEditingController get nameController => _nameController;

  final TextEditingController _fatherName = TextEditingController();

  TextEditingController get fatherName => _fatherName;

  final TextEditingController _fatherCNIC = TextEditingController();

  TextEditingController get fatherCNIC => _fatherCNIC;

  final TextEditingController _fatherMobile = TextEditingController();

  TextEditingController get fatherMobile => _fatherMobile;

  final TextEditingController _fatherOccupation = TextEditingController();

  TextEditingController get fatherOccupation => _fatherOccupation;

  final TextEditingController _dOB = TextEditingController();

  TextEditingController get dOB => _dOB;

  final TextEditingController _studentSection = TextEditingController();

  TextEditingController get studentSection => _studentSection;

  final TextEditingController _subStudentSection = TextEditingController();

  TextEditingController get subStudentSection => _subStudentSection;

  final TextEditingController _address = TextEditingController();

  TextEditingController get address => _address;

  final TextEditingController _lastSchool = TextEditingController();

  TextEditingController get lastSchool => _lastSchool;

  final TextEditingController _guardianName = TextEditingController();

  TextEditingController get guardianName => _guardianName;

  final TextEditingController _guardianRelation = TextEditingController();

  TextEditingController get guardianRelation => _guardianRelation;

  final TextEditingController _guardianCNIC = TextEditingController();

  TextEditingController get guardianCNIC => _guardianCNIC;

  final TextEditingController _guardianMobile = TextEditingController();

  TextEditingController get guardianMobile => _guardianMobile;

  final TextEditingController _admissionNumber = TextEditingController();

  TextEditingController get admissionNumber => _admissionNumber;

  final TextEditingController _admissionFee = TextEditingController();

  TextEditingController get admissionFee => _admissionFee;

  final TextEditingController _admissionDate = TextEditingController();

  TextEditingController get admissionDate => _admissionDate;

//**** Drop Down Menu /////////////////////////////////////////
  String _genderSelected = "";

  String get genderSelected => _genderSelected;

  setGender(String val) {
    _genderSelected = val;
    print(_genderSelected);
    notifyListeners();
  }

  String _religionSelected = "";

  String get religionSelected => _religionSelected;

  setReligion(String val) {
    _religionSelected = val;
    print(_religionSelected);
    notifyListeners();
  }

  String _admittedClass = "";

  String get admittedClass => _admittedClass;

  setClass(String val) {
    _admittedClass = val;
    print(_admittedClass);
    notifyListeners();
  }

  ///////////////Validators//////////////////////////////////////////////

  String? nameValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Name';
    }
    return null;
  }

  String? fatherNameValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Father Name';
    }
    return null;
  }

  String? fatherCnicValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Father CNIC';
    }
    return null;
  }

  String? fatherMobileValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Father Mobile';
    }
    return null;
  }

  String? fatherOccupationValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Father Occupation';
    }
    return null;
  }

  String? dObValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Date of Birth';
    }
    return null;
  }

  String? studentSectionValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Student Section';
    }
    return null;
  }

  String? studentSubSectionValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Student Sub Section';
    }
    return null;
  }

  String? addressValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Address';
    }
    return null;
  }

  // String? lastSchoolValidator(String? txt){
  //
  //   if(txt!.isEmpty){
  //     return 'Please Provide Address';
  //   }
  //   return null;
  //
  // }

  String? guardianNameValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Guardian Name';
    }
    return null;
  }

  String? guardianRelationValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Guardian Relation';
    }
    return null;
  }

  String? guardianCnicValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Guardian Cnic';
    }
    return null;
  }

  String? guardianMobileNumberValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Guardian Mobile Number';
    }
    return null;
  }

  String? admissionNumberValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Admission Number';
    }
    return null;
  }

  String? admissionFeeValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Admission Fee';
    }
    return null;
  }

  String? admissionDateValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Provide Admission Date';
    }
    return null;
  }

  void insertData() {
    DateTime dob=DateTime(1999,12,12);
    DateTime adDate=DateTime(2022,12,12);
    String name = _nameController.text.trim();
    String fatherName = _fatherName.text.trim();
    String fatherCNIC = _fatherCNIC.text.trim();
    String fatherMobile = _fatherMobile.text.trim();
    String fatherOccupation = _fatherOccupation.text.trim();
    String dOB = _dOB.text.trim();
    String studentSection = _studentSection.text.trim();
    String subStudentSection = _subStudentSection.text.trim();
    String address = _address.text.trim();
    String lastSchool = _lastSchool.text.trim();
    String gender = _genderSelected;
    String religion = _religionSelected;
    String guardianName = _guardianName.text.trim();
    String guardianRelation = _guardianRelation.text.trim();
    String guardianCnic = _guardianCNIC.text.trim();
    String guardianMobile = _guardianMobile.text.trim();
    String admissionNumber = _admissionNumber.text.trim();
    String admittedClass = _admittedClass;
    String admissionFee = _admissionFee.text.trim();
    String admissionDate = _admissionDate.text.trim();

    Students std = Students(
      name: name,
      fatherName: fatherName,
      fatherCNIC: fatherCNIC,
      fatherMOBILE: fatherMobile,
      fatherOccupation: fatherOccupation,
      dob: dob.millisecondsSinceEpoch,
      studentSection: studentSection,
      studentSubSection: subStudentSection,
      address: address,
      lastSchool: lastSchool,
      gender: gender,
      religion: religion,
      guardianName: guardianName,
      guardianRelation: guardianRelation,
      guardianCNIC: guardianCnic,
      guardianMobile: guardianMobile,
      admissionNumber: admissionNumber,
      admittedClass: admittedClass,
      admissionDate: adDate.millisecondsSinceEpoch,
      admissionFee: admissionFee,
    );
    DatabaseServices db = DatabaseServices();
    db.addStudent(std);
    print('Every thing gone Find');
    notifyListeners();

  }
}
