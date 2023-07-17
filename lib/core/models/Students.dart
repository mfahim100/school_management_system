class Students {
  String? admissionNumber;
  String? name;
  String? fatherName;
  String? fatherCNIC;
  String? fatherMOBILE;
  String? fatherOccupation;
  int? dob;
  String? studentSection;
  String? studentSubSection;
  String? address;
  String? lastSchool;
  String? gender;
  String? religion;
  String? guardianName;
  String? guardianRelation;
  String? guardianCNIC;
  String? guardianMobile;
  String? admittedClass;
  String? admissionFee;
  int? admissionDate;




  Students({
      this.admissionNumber, 
      this.name, 
      this.fatherName, 
      this.fatherCNIC, 
      this.fatherMOBILE, 
      this.fatherOccupation, 
      this.dob, 
      this.studentSection, 
      this.studentSubSection, 
      this.address, 
      this.lastSchool, 
      this.gender, 
      this.religion, 
      this.guardianName, 
      this.guardianRelation, 
      this.guardianCNIC, 
      this.guardianMobile, 
      this.admittedClass, 
      this.admissionFee, 
      this.admissionDate,});

  Students.fromJson(dynamic json) {

    print(json['DOB'].runtimeType);
    admissionNumber = json['Admission_Number'];
    name = json['Name'];
    fatherName = json['Father_Name'];
    fatherCNIC = json['Father_CNIC'].toString();
    fatherMOBILE = json['Father_MOBILE'].toString();
    fatherOccupation = json['Father_Occupation'];
    dob = int.parse(json['DOB']);
    studentSection = json['Student_Section'];
    studentSubSection = json['Student_Sub_Section'];
    address = json['Address'];
    lastSchool = json['Last_School'];
    gender = json['Gender'];
    religion = json['Religion'];
    guardianName = json['Guardian_Name'];
    guardianRelation = json['Guardian_Relation'];
    guardianCNIC = json['Guardian_CNIC'].toString();
    guardianMobile = json['Guardian_Mobile'].toString();
    admittedClass = json['Admitted_Class'];
    admissionFee = json['Admission_Fee'].toString();
    admissionDate = int.parse(json['Admission_Date']);
  }

  Map<String, dynamic> toJson() {

    final map = <String, dynamic>{};
    map['Admission_Number'] =admissionNumber;
    map['Name'] = name;
    map['Father_Name'] = fatherName;
    map['Father_CNIC'] = int.parse(fatherCNIC!);
    map['Father_MOBILE'] = int.parse(fatherMOBILE!);
    map['Father_Occupation'] = fatherOccupation;
    map['DOB'] =dob;
    map['Student_Section'] = studentSection;
    map['Student_Sub_Section'] = studentSubSection;
    map['Address'] = address;
    map['Last_School'] = lastSchool;
    map['Gender'] = gender;
    map['Religion'] = religion;
    map['Guardian_Name'] = guardianName;
    map['Guardian_Relation'] = guardianRelation;
    map['Guardian_CNIC'] = int.parse(guardianCNIC!);
    map['Guardian_Mobile'] = int.parse(guardianMobile!);
    map['Admitted_Class'] = admittedClass;
    map['Admission_Fee'] = int.parse(admissionFee!);
    map['Admission_Date'] = admissionDate;
    return map;
  }

}