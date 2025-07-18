import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: viewModel.isLoading
              ? null // Yükleniyorsa butonu pasif yap
              : () => context.read<HomeViewModel>().fetchCryptoTickers(),
          icon: Icon(Icons.refresh_outlined),
        ),
        title: const Text("Crypto Tickers"),
        backgroundColor: Colors.amber,
      ),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: viewModel.cryptoTickers?.length,
              itemBuilder: (context, index) {
                final ticker = viewModel.cryptoTickers?[index];
                return Card(
                  child: ListTile(
                    title: Text(ticker?.name ?? "Unknown"),
                    subtitle: Text("Price: ${ticker?.quotes?["USD"]?.price.toString()}" ?? "0"),
                  ),
                );
              },
            ),
    );
  }
}
