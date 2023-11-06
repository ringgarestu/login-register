import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login/size_config.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      // body: ,
    );
  }
}
