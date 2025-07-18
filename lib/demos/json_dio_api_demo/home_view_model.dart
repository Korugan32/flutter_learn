import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/crypto.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/crypto_service.dart';

class HomeViewModel extends ChangeNotifier {

  final CryptoService _cryptoService;
  HomeViewModel({required CryptoService cryptoService}) : _cryptoService = cryptoService;

  bool _isLoading = false;
  List<CryptoTicker>? _cryptoTickers;
  String _errorMessage = '';
  
  
  bool get isLoading => _isLoading;
  List<CryptoTicker>? get cryptoTickers => _cryptoTickers;  
  String get errorMessage => _errorMessage;

  Future<void> fetchCryptoTickers() async{
    _isLoading = true;
    notifyListeners();

    try {
      _cryptoTickers = await _cryptoService.getCryptoTickers();
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
