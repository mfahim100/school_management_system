import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/services/database_services.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../models/StudentsModels.dart';
import 'dashboard_provider.dart';

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


  /// Date Picker of DOB !@#$%&*()@#$%^&*()_#$%^&
  String dobString = 'Date of Birth';
  DateTime dobDate = DateTime.now();
  DateTime dobDateSelection = DateTime.now();
  setDOB(BuildContext context) {
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
                view: DateRangePickerView.decade,
                onCancel: () {
                  Navigator.of(context).pop();
                },
                onSubmit: (picker){
                  print(picker.toString());
                  dobDate =dobDateSelection;
                  dobString="${dobDate.year}-${dobDate.month}-${dobDate.day}";
                  notifyListeners();
                  Navigator.of(context).pop();
                },
                confirmText: 'OK',
                showActionButtons: true,
                onSelectionChanged: (args) {
                  if (args.value is PickerDateRange) {
                    dobDateSelection = args.value.startDate;
                  } else if (args.value is DateTime) {
                    dobDateSelection = args.value;
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

  /// Date Picker of Admission!@#$%&*()@#$%^&*()_#$%^


  String doaString = 'Date of Admission';
  DateTime doaDate = DateTime.now();
  DateTime doaDateSelection = DateTime.now();
  setDOA(BuildContext context) {
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
                  doaDate =doaDateSelection;
                  doaString="${doaDate.year}-${doaDate.month}-${doaDate.day}";
                  notifyListeners();
                  Navigator.of(context).pop();
                },
                confirmText: 'OK',
                showActionButtons: true,
                onSelectionChanged: (args) {
                  if (args.value is PickerDateRange) {
                    doaDateSelection = args.value.startDate;
                  } else if (args.value is DateTime) {
                    doaDateSelection = args.value;
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



  void clearController(){

    _nameController.clear();
    _fatherName.clear();
    _fatherCNIC.clear();
    _fatherOccupation.clear();
    _fatherMobile.clear();
    _dOB.clear();
    _lastSchool.clear();
    _studentSection.clear();
    _subStudentSection.clear();
    _address.clear();
    _guardianName.clear();
    _guardianRelation.clear();
    _guardianCNIC.clear();
    _guardianMobile.clear();
    _admissionNumber.clear();
    _admissionFee.clear();


  }


  String dobbbb = 'Date Of Birth';


  Future<void>  insertData() async {
    EasyLoading.show();
    DateTime adDate=DateTime(2022,12,12);
    String name = _nameController.text.trim();
    String fatherName = _fatherName.text.trim();
    String fatherCNIC = _fatherCNIC.text.trim();
    String fatherMobile = _fatherMobile.text.trim();
    String fatherOccupation = _fatherOccupation.text.trim();
    // String dOB = doaDate.millisecondsSinceEpoch.toString();
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
    // String admissionDate = _admissionDate.text.trim();


    StudentsModels std = StudentsModels(
      name: name,
      fatherName: fatherName,
      fatherCNIC: int.parse(fatherCNIC),
      fatherMOBILE: fatherMobile,
      fatherOccupation: fatherOccupation,
      dob: dobDate.millisecondsSinceEpoch,
      studentSection: studentSection,
      studentSubSection: subStudentSection,
      address: address,
      lastSchool: lastSchool,
      gender: gender,
      religion: religion,
      guardianName: guardianName,
      guardianRelation: guardianRelation,
      guardianCNIC: int.parse(guardianCnic),
      guardianMobile: int.parse(guardianMobile),
      admissionNumber: int.parse(admissionNumber),
      admittedClass: admittedClass,
      admissionDate: doaDate.millisecondsSinceEpoch,
      admissionFee: int.parse(admissionFee),
    );
    DatabaseServices db = DatabaseServices();
    await db.addStudent(std);
    print('Every thing gone Find');
    EasyLoading.dismiss();
    // clearController();
    notifyListeners();


  }

 





}
