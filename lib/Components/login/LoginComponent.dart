import 'package:flutter/material.dart';
import 'package:flutter_login/size_config.dart';

class LoginComponent extends StatefulWidget {
  @override
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(20))),
          child: SingleChildScrollView(
            child: Column(children: []),
          )),
    );
  }
}
