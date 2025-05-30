import 'package:flutter/material.dart';

class StackAppDemoView extends StatelessWidget {
  const StackAppDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(bottom: 30,child: Image.network("https://picsum.photos/200/300", fit: BoxFit.cover),),
                Positioned(height: 60, bottom: 0, width: 200, child: Card(color: Colors.white, child: ListTile(
                  onTap: () {},
                  title: Text("Deneme"),
                  leading: Icon(Icons.deck_outlined),
                  trailing: Icon(Icons.schedule_send_outlined),
                ),)),
              ],
            ),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}
