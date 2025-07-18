import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/crypto.dart';

class CryptoService {
  final Dio _dio;
  CryptoService() : _dio = Dio(BaseOptions(baseUrl: "https://api.coinpaprika.com/v1/"));
  Future<List<CryptoTicker>?> getCryptoTickers() async {
    try{
      final response = await _dio.get("tickers");
      if (response.statusCode == HttpStatus.ok){
        final data = response.data;
        if (data is List) {
          return data.map((e) => CryptoTicker.fromJson(e)).toList();
        }
      }
    }catch (e) {
      print("Error fetching crypto tickers: $e");
      return null;
    }
  }
}