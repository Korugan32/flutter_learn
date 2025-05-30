import 'package:flutter/material.dart';

class PersonalDemoView extends StatelessWidget {
  const PersonalDemoView({super.key});
  final String _title = "Personal Demo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title),centerTitle: true,),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Welcome Taha,",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            NewWidget(),
            NewWidget(),
            NewWidget(),
            NewWidget(),
            NewWidget(),
            NewWidget(),
            NewWidget(),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      
      },
      child: Card(
        child: SizedBox(
          width: 500,
          height: 90,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_4_outlined),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Korugan32"),
                        Text(
                          "active",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
