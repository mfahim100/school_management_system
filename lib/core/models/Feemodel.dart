class FeeModels {

  int? id;
  int? admissionNumber;
  String? name;
  String? fatherName;
  String? admittedClass;
  int? month;
  int? monthlyFee;
  int? examFee;
  int? fineFee;
  int? totalFee;
  int? monthlyFeeStatus;
  int? examFeeStatus;
  int? fineFeeStatus;



  FeeModels({
      this.id, 
      this.admissionNumber, 
      this.name, 
      this.fatherName, 
      this.admittedClass, 
      this.month, 
      this.monthlyFee, 
      this.examFee, 
      this.fineFee, 
      this.totalFee, 
      this.monthlyFeeStatus, 
      this.examFeeStatus,
      this.fineFeeStatus,});

  FeeModels.fromJson(dynamic json) {
    id = int.parse(json['id']);
    admissionNumber = int.parse(json['Admission_Number']);
    name = json['Name'];
    fatherName = json['Father_Name'];
    admittedClass = json['Admitted_Class'];
    month = int.parse(json['Month']);
    monthlyFee = int.parse(json['Monthly_Fee']);
    examFee = int.parse(json['Exam_Fee']);
    fineFee = int.parse(json['Fine_Fee']);
    totalFee = int.parse(json['Total_Fee']);
    monthlyFeeStatus = int.parse(json['Monthly_Fee_Status']);
    examFeeStatus = int.parse(json['Exam_Fee_Status']);
    fineFeeStatus = int.parse(json['Fine_Fee_Status']);

  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Admission_Number'] = admissionNumber;
    map['Name'] = name;
    map['Father_Name'] = fatherName;
    map['Admitted_Class'] = admittedClass;
    map['Month'] = month;
    map['Monthly_Fee'] = monthlyFee;
    map['Exam_Fee'] = examFee;
    map['Fine_Fee'] = fineFee;
    map['Total_Fee'] = totalFee;
    map['Monthly_Fee_Status'] = monthlyFeeStatus;
    map['Exam_Fee_Status'] = examFeeStatus;
    map['Fine_Fee_Status'] = fineFeeStatus;
    return map;
  }

}