import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/translations/locale_keys.g.dart';

class EasyLocalizationScreen extends StatefulWidget {
  const EasyLocalizationScreen({super.key});

  @override
  State<EasyLocalizationScreen> createState() => _EasyLocalizationScreenState();
}

class _EasyLocalizationScreenState extends State<EasyLocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.hello.tr()),),
      body: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text(LocaleKeys.message.tr()),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: (){
                EasyLocalization.of(context)!.setLocale(const Locale("tr"));
              }, child: Text("Tr")),
            ),
            Expanded(
              child: ElevatedButton(onPressed: (){
                EasyLocalization.of(context)!.setLocale(const Locale("en"));
              }, child: Text("En")),
            )
          ],
        )
      ],),
    );
  }
}