import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/project_filled_button_component.dart';
import 'package:flutter_learn/staj/deneme/presentation/home_travel_screen.dart';
import 'package:flutter_learn/staj/deneme/util/color_utility.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [ColorUtility.blueSky, ColorUtility.skyLight])),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150, width: 150, child: Image.asset("assets/logo_white.png")),
              Text(
                "Successfully",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "created an account",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "After this you can explore any place you want enjoy it!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              ProjectFilledButtonComponent(text: "Let’s Explore", color: Colors.white, onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomeTravelScreen();
                }));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
