import 'package:flutter/material.dart';
import 'package:flutter_login/Components/custom_surfix_icon.dart';
import 'package:flutter_login/Components/default_button_custom_color.dart';
import 'package:flutter_login/size_config.dart';
import 'package:flutter_login/utils/constants.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInform createState() => _SignInform();
}

class _SignInform extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remember = false;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: Color(0xFF3EB2FF),
            text: "Login",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Belum Punya Akun? Daftar Disini!",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        // labelText: 'Username',
        hintText: 'Username',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(
        //   svgIcon: "assets/icons/User.svg",
        // )
      ),
    );
  }

  // TextEditingController txtPassword = TextEditingController();
  bool isPasswordVisible = false;

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: !isPasswordVisible,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Password',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: kPrimaryColor,
          ),
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
      ),
    );
  }

  // TextFormField buildPassword() {
  //   return TextFormField(
  //     controller: txtPassword,
  //     obscureText: true,
  //     style: mTitleStyle,
  //     decoration: InputDecoration(
  //       // labelText: 'Password',
  //       hintText: 'Password',
  //       labelStyle: TextStyle(
  //           color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       // suffixIcon: CustomSurffixIcon(
  //       //   svgIcon: "assets/icons/User.svg",
  //     ),
  //   );
  // }
}
