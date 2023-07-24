class DmcModels {
  int? id;
  int? admissionNumber;
  String? name;
  String? admittedClass;
  String? examType;
  int? english;
  int? urdu;
  int? maths;
  int? islamiat;
  int? pakStudy;
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
      this.admittedClass, 
      this.examType, 
      this.english,
      this.urdu, 
      this.maths, 
      this.islamiat, 
      this.pakStudy, 
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
    admittedClass = json['Admitted_Class'];
    examType = json['Exam_Type'];
    english = int.parse(json['English']);
    urdu = int.parse(json['Urdu']);
    maths = int.parse(json['Urdu']);
    islamiat = int.parse(json['Islamiat']);
    pakStudy = int.parse(json['Pak_Study']);
    physics = int.parse(json['Pak_Study']);
    chemistry = int.parse(json['Chemistry']);
    biology = int.parse(json['Chemistry']);
    totalMarks = int.parse(json['Total_Marks']);
    percentage = double.parse(json['Percentage']);
    grade = json['Grade'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Admission_Number'] = admissionNumber;
    map['Name'] = name;
    map['Admitted_Class'] = admittedClass;
    map['Exam_Type'] = examType;
    map['English'] = english;
    map['Urdu'] = urdu;
    map['Maths'] = maths;
    map['Islamiat'] = islamiat;
    map['Pak_Study'] = pakStudy;
    map['Physics'] = physics;
    map['Chemistry'] = chemistry;
    map['Biology'] = biology;
    map['Total_Marks'] = totalMarks;
    map['Percentage'] = percentage;
    map['Grade'] = grade;
    return map;
  }

}