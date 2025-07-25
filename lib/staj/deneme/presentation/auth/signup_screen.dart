import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/presentation/auth/onboard.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/custom_textfield.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/headline_text.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/project_filled_button_component.dart';
import 'package:flutter_learn/staj/deneme/util/color_utility.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  bool isChecked = false;
  final List<DropdownMenuItem<String>> _dropDownMenuList = [DropdownMenuItem(child: Text("+90"))];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadlineText(text: "Create Account"),
                Text("Get the best out of derleng by creating an account"),
                Form(
                  key: _formKey,
                  child: Column(
                    spacing: 15,
                    children: [
                      CustomTextField(title: "Name", hintText: "Name", isSecuredKey: false),
                      CustomTextField(title: "Last Name", hintText: "Last Name", isSecuredKey: false),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: DropdownButtonFormField(
                              items: _dropDownMenuList,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                              ),
                            ),
                          ),
                          Spacer(flex: 1),
                          Expanded(
                            flex: 9,
                            child: CustomTextField(
                              title: "Phone Number",
                              hintText: "Phone Number",
                              isSecuredKey: false,
                            ),
                          ),
                        ],
                      ),
                      CustomTextField(title: "Age", hintText: "Age", isSecuredKey: false),
                      CustomTextField(title: "Email", hintText: "Email", isSecuredKey: false),
                      CustomTextField(title: "Password", hintText: "Password", isSecuredKey: true),
                      FormField<bool>(
                        key: _formKey1,
                        validator: (value) {
                          if (value != true) {
                            return 'Devam etmek için onay kutusunu işaretleyin';
                          } else {
                            return null;
                          }
                        },
                        initialValue: isChecked,
                        builder: (field) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      field.didChange(value);
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "I accept term and condition",
                                    style: TextStyle(decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                              if (field.hasError)
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(field.errorText!, style: TextStyle(color: Colors.red)),
                                ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                ProjectFilledButtonComponent(
                  text: "Create Account",
                  color: ColorUtility.blueSky,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Onboard();
                            },
                          ),
                        );
                      }
                    } else {}
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(" Go Back", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
