import 'Feemodel.dart';
import 'StudentsModels.dart';

class AllClassFeeModel{

  int? admissionNumber;
  int? totalFee;
  StudentsModels? studentsModels;
  List<FeeModels>?  feeModel;

  AllClassFeeModel({
      this.admissionNumber,
    this.totalFee,
    this.studentsModels,
    this.feeModel
});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Admission_Number'] = admissionNumber;
    map['totalFee'] = totalFee;
    map['feeModel'] = feeModel;
    map['studentsModel'] = studentsModels;
    return map;
  }


  AllClassFeeModel.fromJson(dynamic json) {
    admissionNumber = int.parse(json['Admission_Number']);
    totalFee = int.parse(json['totalFee']);
    studentsModels = json['studentsModels'];
    feeModel = json['feeModel'];
  }

}
