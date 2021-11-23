import 'package:flutter/material.dart';
import 'package:nisachon_app/Model/home.dart';
import 'package:nisachon_app/Model/login.dart';
import 'package:nisachon_app/Model/regist.dart';
import 'package:nisachon_app/Model/type.dart';



class AppRoute {
  static const homeRoute = 'home';
  static const loginRoute = 'login';
  static const registerRoute = 'register';
  static const typeRoute = 'type';




  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => HomeScreen(),
    loginRoute: (context) => LoginScreen(),
    registerRoute: (context) => RegisterScreen(),
    typeRoute: (context) => TypeScreen(),

  };

  get getAll => _route;
} //end class
