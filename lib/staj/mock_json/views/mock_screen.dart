import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/mock_json/model/mock_model.dart';
import 'package:flutter_learn/staj/mock_json/viewmodels/mock_screen_view_model.dart';
import 'package:provider/provider.dart';

class MockScreen extends StatelessWidget {
  const MockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MockScreenViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Mock Json App"),
        leading: IconButton(
          onPressed: () {
            context.read<MockScreenViewModel>().loadServices();
          },
          icon: Icon(Icons.refresh_outlined),
        ),
      ),
      body: viewModel.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: viewModel.model.length,
              itemBuilder: (context, index) {
                var model = viewModel.model[index];
                return MockCard(model: model);
              },
            ),
    );
  }
}

class MockCard extends StatelessWidget {
  const MockCard({super.key, required this.model});

  final MockModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text("ID: ${model.id}"),
        title: Text("Title: ${model.title}"),
        trailing: Text("Amount: ${model.amount}"),
      ),
    );
  }
}
