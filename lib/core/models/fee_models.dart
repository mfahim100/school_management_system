class FeeModels {
  int? id;
  int? admissionNumber;
  String? name;
  String? fatherName;
  String? admittedClass;
  int? totalFee;
  int? month;
  int? status;


  FeeModels({
      this.id, 
      this.admissionNumber, 
      this.name, 
      this.fatherName, 
      this.admittedClass, 
      this.totalFee, 
      this.month, 
      this.status,});

  FeeModels.fromJson(dynamic json) {
    id = int.parse(json['id']);
    admissionNumber = int.parse(json['Admission_Number']);
    name = json['Name'];
    fatherName = json['Father_Name'];
    admittedClass = json['Admitted_Class'];
    totalFee = int.parse(json['Total_Fee']);
    month = int.parse(json['Month']);
    status = int.parse(json['Status']);
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Admission_Number'] = admissionNumber;
    map['Name'] = name;
    map['Father_Name'] = fatherName;
    map['Admitted_Class'] = admittedClass;
    map['Total_Fee'] = totalFee;
    map['Month'] = month;
    map['Status'] = status;
    return map;
  }

}