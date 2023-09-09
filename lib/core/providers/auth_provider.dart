import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{

  final authKey = GlobalKey<FormState>();

  final TextEditingController _userNameController = TextEditingController();
  TextEditingController get userNameController => _userNameController;


  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;


  String? userNameValidator(String? txt){

    if(txt!.isEmpty){
      return 'Please Fill the User Name';
    }
    return null;

  }



  String? passwordValidator(String? txt){

    if(txt!.isEmpty){
      return 'Please Fill the Password';
    }
    return null;
  }


  void clearController(){
    _userNameController.clear();
    _passwordController.clear();
  }




}