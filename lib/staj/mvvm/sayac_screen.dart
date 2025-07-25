import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/mvvm/sayac_view_model.dart';
import 'package:provider/provider.dart';

class SayacScreen extends StatelessWidget {
  const SayacScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SayacViewModel>();
    int d= 0;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(viewModel.sayac.toString()),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.arttir();
                    },
                    child: Text("Arttir"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.azalt();
                    },
                    child: Text("Azalt"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
