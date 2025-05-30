import 'package:flutter/material.dart';

class NoteAppDemoView extends StatelessWidget {
  const NoteAppDemoView({super.key});
  final String _createNote = "Create New Notes";
  final String _subText = "DENEME";
  final String _textButton = "Import Your Notes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(ImageAssetsPath.appleImage),
            Text(_createNote, style: Theme.of(context).textTheme.headlineLarge),
            Text(_subText * 20,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
            Spacer(),
            CustomElevatedButton(),
            TextButton(onPressed: () {}, child: CustomText(text: _textButton)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: () {},
      child: SizedBox(
        height: 50,
        child: Center(child: CustomText(text: "Create New Note")),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(color: Colors.orangeAccent),
    );
  }
}

class ImageAssetsPath { 
  static final appleImage = "assets/apple.png";
}
