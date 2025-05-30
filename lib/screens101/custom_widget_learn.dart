import 'package:flutter/material.dart';

class CustomWidgetLearnView extends StatelessWidget {
  const CustomWidgetLearnView({super.key});
  final String _appBarTitle = "CustomWidgetLearn";
  final String _buttonText = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitle)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                buttonText: _buttonText,
                onPressed: () {},
              ),
            ),
          ),
          CustomButtonWidget(buttonText: "AnaYemek", onPressed: () {}),
        ],
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget with _ColorsUtility {
  CustomButtonWidget({
    super.key,
    required String buttonText,
    required this.onPressed,
  }) : _buttonText = buttonText;
  final void Function() onPressed;
  final String _buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: colorRed),
      child: Text(
        _buttonText,
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: colorWhite),
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color colorRed = Colors.red;
  final Color colorWhite = Colors.white;
}
