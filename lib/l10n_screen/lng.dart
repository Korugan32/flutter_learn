import 'package:flutter/material.dart';
import 'package:flutter_learn/l10n/app_localizations.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key, required this.onChangeLanguage});
  final void Function(Locale) onChangeLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (AppLocalizations.of(context)!.localeName == "en") {
              onChangeLanguage(Locale('tr'));
            } else {
              onChangeLanguage(Locale('en'));
            }
          },
          icon: Icon(Icons.language_sharp),
        ),
        title: Text('Language Settings'),
      ),
      body: ListView(
        children: [
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.account))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.country))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.data_usage))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.display_and_sound))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.english))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.general_settings))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.notifactions))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.permissions))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.phone_language))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.privacy))),
          Card(child: ListTile(title: Text(AppLocalizations.of(context)!.turkish))),
        ],
      ),
    );
  }
}
