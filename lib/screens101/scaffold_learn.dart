import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerButton(),
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Scaffold Learn"),
        backgroundColor: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
      ),
      body: Column(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.orange),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.orange),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
