import 'package:flutter/material.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Text("DENEME YAZISI"),
                subtitle: Text("denemeler uzerine detayli bir yazi"),
                leading: Icon(Icons.join_inner_sharp),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios)),
              ),
            ),
          )
        ],
      ),
    );
  }
}