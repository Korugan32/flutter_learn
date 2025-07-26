import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_learn/staj/mock_json/model/mock_model.dart';
class MockService {
Future<List<MockModel>> fetchMockData() async {
  final String response = await rootBundle.loadString("assets/mock.json");
  final List<dynamic> data = jsonDecode(response);
  final List<MockModel> models = data.map((e) => MockModel.fromJson(e)).toList();
  return models;
}
}
