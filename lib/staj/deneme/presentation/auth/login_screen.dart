import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/presentation/auth/forget_password_screen.dart';
import 'package:flutter_learn/staj/deneme/presentation/auth/signup_screen.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/custom_textfield.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/headline_text.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/login_method_component.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/project_filled_button_component.dart';
import 'package:flutter_learn/staj/deneme/presentation/home_travel_screen.dart';
import 'package:flutter_learn/staj/deneme/util/color_utility.dart';
import 'package:flutter_learn/staj/deneme/util/project_text_utility.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),
              HeadlineText(text: ProjectTextUtility.welcomeText),
              Text(ProjectTextUtility.welcomeLoginText),
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      title: ProjectTextUtility.email,
                      hintText: ProjectTextUtility.emailHintText,
                      isSecuredKey: false,
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      title: ProjectTextUtility.password,
                      hintText: ProjectTextUtility.passwordHintText,
                      isSecuredKey: true,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgetPasswordScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      ProjectTextUtility.forgotText,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              ProjectFilledButtonComponent(
                text: ProjectTextUtility.loginText,
                color: ColorUtility.blueSky,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeTravelScreen();
                        },
                      ),
                    );
                  } else {
                    print("basarisiz");
                  }
                },
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(ProjectTextUtility.otherLogin),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LoginMethodComponent(
                    icon: Icons.facebook_outlined,
                    text: ProjectTextUtility.facebook,
                    iconColor: const Color.fromARGB(255, 19, 106, 177),
                  ),
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: Card(
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 20, width: 20, child: Image.asset("assets/google.png")),
                            Text(ProjectTextUtility.google),
                          ],
                        ),
                      ),
                    ),
                  ),
                  LoginMethodComponent(icon: Icons.apple_outlined, text: ProjectTextUtility.apple),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ProjectTextUtility.dosentHaveAccountText,
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return SignupScreen();
                      }));
                    },
                    child: Text(
                      ProjectTextUtility.createAccountText,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}