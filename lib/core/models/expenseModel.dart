/// id : "1"
/// Description : "sorkfklsf sdklfsklfj skdnfklsnf"
/// Cash_In : "0"
/// Cash_Out : "0"
/// Date : "1232123"
/// Month : "2629743"
/// Total : "1200"

class ExpenseModel {

  int? id;
  String? description;
  int? cashIn;
  int? cashOut;
  int? date;
  int? month;
  int? total;

  ExpenseModel({

    this.id,
    this.description,
    this.cashIn,
    this.cashOut,
    this.date,
    this.month,
    this.total,

});




  ExpenseModel.fromJson(dynamic json) {
    id = int.parse(json['id']);
    description = json['Description'];
    cashIn = int.parse(json['Cash_In']);
    cashOut = int.parse(json['Cash_Out']);
    date = int.parse(json['Date']);
    month = int.parse(json['Month']);
    total = int.parse(json['Total']);
  }



  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Description'] = description;
    map['Cash_In'] = cashIn;
    map['Cash_Out'] = cashOut;
    map['Date'] = date;
    map['Month'] = month;
    map['Total'] = total;
    return map;
  }

}