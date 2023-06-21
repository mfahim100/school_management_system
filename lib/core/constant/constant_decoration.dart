import 'package:flutter/material.dart';

class ConstantDecoration {

  static var adminPageLogInContainerDecoration = const BoxDecoration(
    gradient: LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.black38,
          Colors.blueAccent,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    boxShadow: [
      BoxShadow(
        color: Colors.lightBlueAccent,
        blurRadius: 8,
        spreadRadius: 5,
        blurStyle: BlurStyle.outer,
        // offset: const Offset(05, 05),
      ),
    ],
    //borderRadius: BorderRadius.circular(10),
  );



  static var studentAddFormContainerDecoration = const BoxDecoration(
    gradient: LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.black38,
          Colors.blueAccent,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    boxShadow: [
      BoxShadow(
        color: Colors.lightBlueAccent,
        blurRadius: 8,
        spreadRadius: 05,
        blurStyle: BlurStyle.inner,
         //offset: Offset(05, 05),
      ),
    ],
    //borderRadius: BorderRadius.circular(10),
  );


  static var mainContainerDecoration = const BoxDecoration(
    gradient: LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.black38,
          Colors.blueAccent,
        ],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft),
    boxShadow: [
      BoxShadow(
        color: Colors.blueGrey,
        blurRadius: 8,
        spreadRadius: 5,
        blurStyle: BlurStyle.outer,
        // offset: const Offset(05, 05),
      ),
    ],
    //borderRadius: BorderRadius.circular(10),
  );


  static var schoolLogoDecoration = const BoxDecoration(
    gradient: LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.black12,
          Colors.blueAccent,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    boxShadow: [
      BoxShadow(
        color: Colors.blueGrey,
        blurRadius: 8,
        spreadRadius: 5,
        blurStyle: BlurStyle.outer,
        // offset: const Offset(05, 05),
      ),
    ],
    //borderRadius: BorderRadius.circular(10),
  );




  static var adminPanelContainer = BoxDecoration(
    gradient: const LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.black38,
          Colors.blueAccent,
        ],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 05,
        spreadRadius: 10,
        blurStyle: BlurStyle.inner,
         offset: Offset(05, 05),
      ),
    ],
    borderRadius: BorderRadius.circular(20),
  );

}