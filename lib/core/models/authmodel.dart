/// sno : "1"
/// Name : "Muhammad Fahim"
/// UserName : "mfahim100"
/// Password : "fahim@100"

class AuthModel {

  int? sno;
  String? name;
  String? userName;
  String? password;
  
  AuthModel({
    this.sno,
    this.name,
    this.userName,
    this.password
});
  


  AuthModel.fromJson(dynamic json) {
    sno = int.parse(json['sno']);
    name = json['Name'];
    userName = json['UserName'];
    password = json['Password'];
  }
 


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sno'] = sno;
    map['Name'] = name;
    map['UserName'] = userName;
    map['Password'] = password;
    return map;
  }

}