import 'package:flutter/material.dart';
// import 'package:flutter_login/Components/login/LoginComponent.dart';
import 'package:flutter_login/Screens/login/loginScreens.dart';

final Map<String, WidgetBuilder> routes = {
  loginScreen.routeName: (context) => loginScreen()
};
