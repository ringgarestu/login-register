import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/login/loginScreens.dart';
import 'package:flutter_login/routes.dart';
import 'package:flutter_login/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Login",
    theme: theme(),
    initialRoute: loginScreen.routeName,
    routes: routes,
  ));
}
