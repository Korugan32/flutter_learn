import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/mock_json/model/mock_model.dart';
import 'package:flutter_learn/staj/mock_json/services/mock_service.dart';

class MockScreenViewModel extends ChangeNotifier{
  final _mockService = MockService();

  MockScreenViewModel(){
    loadServices();
  }

  List<MockModel> _model = [];
  bool _isLoading = false;

  List<MockModel> get model => _model;
  bool get isLoading => _isLoading;

  Future<void> loadServices() async{
    _isLoading = true;
    notifyListeners();
    _model = await _mockService.fetchMockData();
    await Future.delayed(const Duration(seconds: 2));
    _isLoading = false;
    notifyListeners();
  }

}