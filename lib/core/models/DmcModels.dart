class DmcModels {
  int? id;
  int? admissionNumber;
  String? name;
  String? fatherName;
  String? admittedClass;
  String? examType;
  int? english;
  int? urdu;
  int? maths;
  int? islamiat;
  int? pakStudy;
  int? lughatArabia;
  int? nazira;
  int? physics;
  int? chemistry;
  int? biology;
  int? totalMarks;
  double? percentage;
  String? grade;



  DmcModels({
      this.id, 
      this.admissionNumber, 
      this.name, 
      this.fatherName,
      this.admittedClass,
      this.examType, 
      this.english,
      this.urdu, 
      this.maths, 
      this.islamiat, 
      this.pakStudy, 
      this.lughatArabia,
      this.nazira,
      this.physics,
      this.chemistry, 
      this.biology, 
      this.totalMarks, 
      this.percentage, 
      this.grade,});

  DmcModels.fromJson(dynamic json) {
    id = int.parse(json['id']);
    admissionNumber = int.parse(json['Admission_Number']);
    name = json['Name'];
    fatherName = json['Father_Name'];
    admittedClass = json['Admitted_Class'];
    examType = json['Exam_Type'];
    english = int.parse(json['English']);
    urdu = int.parse(json['Urdu']);
    maths = int.parse(json['Maths']);
    islamiat = int.parse(json['Islamiat']);
    pakStudy = int.parse(json['Pak_Study']);
    lughatArabia = int.parse(json['Lughat_Arabia']);
    nazira = int.parse(json['Nazira']);
    physics = int.parse(json['Physics']);
    chemistry = int.parse(json['Chemistry']);
    biology = int.parse(json['Biology']);
    totalMarks = int.parse(json['Total_Marks']);
    percentage = double.parse(json['Percentage']);
    grade = json['Grade'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Admission_Number'] = admissionNumber;
    map['Name'] = name;
    map['Father_Name'] = fatherName;
    map['Admitted_Class'] = admittedClass;
    map['Exam_Type'] = examType;
    map['English'] = english;
    map['Urdu'] = urdu;
    map['Maths'] = maths;
    map['Islamiat'] = islamiat;
    map['Pak_Study'] = pakStudy;
    map['Lughat_Arabia'] = lughatArabia;
    map['Nazira'] = nazira;
    map['Physics'] = physics;
    map['Chemistry'] = chemistry;
    map['Biology'] = biology;
    map['Total_Marks'] = totalMarks;
    map['Percentage'] = percentage;
    map['Grade'] = grade;
    return map;
  }

}