import 'package:flutter/material.dart';

class ListViewLearnView extends StatefulWidget {
  const ListViewLearnView({super.key});

  @override
  State<ListViewLearnView> createState() => _ListViewLearnViewState();
}

class _ListViewLearnViewState extends State<ListViewLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.amber,
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
                Text("Deneme", style: Theme.of(context).textTheme.headlineLarge,),
              ],
            ),
          )
        ],
      ),
    );
  }
}