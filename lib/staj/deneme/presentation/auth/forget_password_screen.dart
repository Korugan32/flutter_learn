import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/custom_textfield.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/headline_text.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/project_filled_button_component.dart';
import 'package:flutter_learn/staj/deneme/util/color_utility.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/logo.png"),
              HeadlineText(text: "Forget password"),
              Text("Enter your email or phone we will send the verification code to reset your password"),
              CustomTextField(title: "Email", hintText: "jhon.d@gmail.com", isSecuredKey: false,),
              GestureDetector(child: Text("Reset with phone number", style: TextStyle(color: ColorUtility.blueSky),), onTap: () {}),
              ProjectFilledButtonComponent(text: "Request Code", color: ColorUtility.blueSky, onPressed: () {},),
              SizedBox(height: 52,)
            ],
          ),
        ),
      ),
    );
  }
}
