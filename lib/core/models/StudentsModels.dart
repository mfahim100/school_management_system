class StudentsModels {

  int? admissionNumber;
  String? name;
  String? fatherName;
  int? fatherCNIC;
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
  int? guardianCNIC;
  int? guardianMobile;
  String? admittedClass;
  int? admissionFee;
  int? admissionDate;


  StudentsModels({
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

  StudentsModels.fromJson(dynamic json) {
    admissionNumber = int.parse(json['Admission_Number']);
    name = json['Name'];
    fatherName = json['Father_Name'];
    fatherCNIC = int.parse(json['Father_CNIC']);
    fatherMOBILE = json['Father_MOBILE'];
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
    guardianCNIC = int.parse(json['Guardian_CNIC']);
    guardianMobile = int.parse(json['Guardian_Mobile']);
    admittedClass = json['Admitted_Class'];
    admissionFee = int.parse(json['Admission_Fee']);
    admissionDate = int.parse(json['Admission_Date']);
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Admission_Number'] = admissionNumber;
    map['Name'] = name;
    map['Father_Name'] = fatherName;
    map['Father_CNIC'] = fatherCNIC;
    map['Father_MOBILE'] = fatherMOBILE;
    map['Father_Occupation'] = fatherOccupation;
    map['DOB'] = dob;
    map['Student_Section'] = studentSection;
    map['Student_Sub_Section'] = studentSubSection;
    map['Address'] = address;
    map['Last_School'] = lastSchool;
    map['Gender'] = gender;
    map['Religion'] = religion;
    map['Guardian_Name'] = guardianName;
    map['Guardian_Relation'] = guardianRelation;
    map['Guardian_CNIC'] = guardianCNIC;
    map['Guardian_Mobile'] = guardianMobile;
    map['Admitted_Class'] = admittedClass;
    map['Admission_Fee'] = admissionFee;
    map['Admission_Date'] = admissionDate;
    return map;
  }

}