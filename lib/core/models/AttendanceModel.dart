class AttendanceModel {
  int? id;
  int? admissionNumber;
  String? admittedClass;
  String? name;
  int? date;
  String? type;


  AttendanceModel({
      this.id, 
      this.admissionNumber, 
      this.admittedClass, 
      this.name, 
      this.date, 
      this.type,});

  AttendanceModel.fromJson(dynamic json) {
    id = int.parse(json['id']);
    admissionNumber = int.parse(json['Admission_Number']);
    admittedClass = json['Admitted_Class'];
    name = json['Name'];
    date = int.parse(json['Date']);
    type = json['Type'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Admission_Number'] = admissionNumber;
    map['Admitted_Class'] = admittedClass;
    map['Name'] = name;
    map['Date'] = date;
    map['Type'] = type;
    return map;
  }

}