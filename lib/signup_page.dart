import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _d3 = false;
  bool _d1 = false;
  bool _d2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kayit Ol")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Isim"),
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Soyad"),
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "E-mail"),
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Sifre"),
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Sifrenizi Tekrar Girin"),
            ),

            ListTile(
              leading: Checkbox(
                value: _d1,
                onChanged: (value) {
                  setState(() {});
                  _d1 = value!;
                },
              ),
              title: Text("Kullanici Sozlesmesini Kabul Ediyorum", style: Theme.of(context).textTheme.labelMedium),
            ),
            ListTile(
              leading: Checkbox(
                value: _d2,
                onChanged: (value) {
                  setState(() {});
                  _d2 = value!;
                },
              ),
              title: Text(
                "Bilgilerimin KVHK kapsaminda islenmesine onay veriyorum",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            ListTile(
              leading: Checkbox(
                value: _d3,
                onChanged: (value) {
                  setState(() {});
                  _d3 = value!;
                },
              ),
              title: Text("Elektronik Ileti gonderilmesini istiyorum", style: Theme.of(context).textTheme.labelMedium),
            ),
            FilledButton(onPressed: () {}, child: Text("Kayit Ol")),
          ],
        ),
      ),
    );
  }
}
