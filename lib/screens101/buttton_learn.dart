import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Learn")),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(),
            child: Text("Save"),
          ),
          ElevatedButton(onPressed: () {}, child: Text('DenemeButton')),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded)),
          OutlinedButton(onPressed: () {}, child: Text("data")),
          InkWell(onTap: () {}, child: const Text("Ddedwd")),
          Container(
            color: Colors.white,
            height: 200,
          ),
          Container(height: 20,),
          ElevatedButton(onPressed: (){}, 
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Price Bid"),
          ))
        ],
      ),
    );
  }
}
