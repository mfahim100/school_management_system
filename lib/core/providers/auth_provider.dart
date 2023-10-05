
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:school_manegment_system/core/models/authmodel.dart';
import 'package:school_manegment_system/core/services/database_services.dart';

class AuthProvider extends ChangeNotifier {
  final authKey = GlobalKey<FormState>();

  final TextEditingController _userNameController = TextEditingController();

  TextEditingController get userNameController => _userNameController;

  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get passwordController => _passwordController;

  String? userNameValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Fill the User Name';
    }
    return null;
  }

  String? passwordValidator(String? txt) {
    if (txt!.isEmpty) {
      return 'Please Fill the Password';
    }
    return null;
  }

  void clearController() {
    _userNameController.clear();
    _passwordController.clear();
  }

  List<AuthModel> listAllUserProvider = [];
  Future<void> getAllUserProvider() async {
    listAllUserProvider.clear();
    DatabaseServices db = DatabaseServices();
    listAllUserProvider = await db.getAllUser();
    notifyListeners();
  }


  Future<bool> logInProvider() async {
    EasyLoading.show();
    await getAllUserProvider();
    bool isCheck = false;
    for (int i = 0; i < listAllUserProvider.length; i++) {
      if (_userNameController.text == listAllUserProvider[i].userName &&
          _passwordController.text == listAllUserProvider[i].password) {
        isCheck = true;
      }

    }
    EasyLoading.dismiss();
    return isCheck;
  }



}
