import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/stack_app_demo.dart';
import 'package:flutter_learn/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSelected = false;
  bool isSecured = true;
  String _email = "";
  String _password = "";

  void _setEmail(String value) {
    setState(() {
      _email = value;
    });
  }

  void _setPassword(String value) {
    setState(() {
      _password = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: Theme.of(context).textTheme.headlineLarge),
              TextField(
                onChanged: _setEmail,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
              ),
              Container(
                height: 60,
                child: TextField(
                  onChanged: _setPassword,
                  obscureText: isSecured,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isSecured = !isSecured;
                        });
                      },
                      icon: AnimatedCrossFade(
                        firstChild: Icon(Icons.visibility_outlined),
                        secondChild: Icon(Icons.visibility_off_outlined),
                        crossFadeState: isSecured ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                        duration: Duration(milliseconds: 300),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox.adaptive(
                        value: isSelected,
                        onChanged: (value) {
                          setState(() {
                            isSelected = value!;
                          });
                        },
                      ),
                      Text("Beni Hatirla"),
                    ],
                  ),
                  TextButton(onPressed: () {}, child: Text("Şifremi Unuttum")),
                ],
              ),
              FilledButton(
                onPressed: () {
                  if (_email == "123" && _password == "123") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return StackAppDemoView();
                        },
                      ),
                    );
                  }
                },
                child: Text("Giris Yap"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    ),
                  );
                },
                child: Text("Kayit Ol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
