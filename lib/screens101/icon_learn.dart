import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Learn"),
      ),
      body: Column(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.subscriptions_outlined, size: IconSizes().smallIcon, color: IconColors().iconColor2,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.deblur_outlined, size: IconSizes().mediumIcon, color: IconColors().iconColor2,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.king_bed_outlined, color: Theme.of(context).colorScheme.error,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_box_outlined)),
        ],
      ),
    );
  }
}

class IconSizes {
  final double smallIcon = 20;
  final double mediumIcon = 40;
}

class IconColors { 
  final Color iconColor1 = Colors.red;
  final Color iconColor2 = Colors.blue;
}