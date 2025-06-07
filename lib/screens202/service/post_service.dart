import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_learn/screens202/service/post_model.dart';

class PostService {
  final Dio dio;
  PostService(): dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<List<PostModel>?> getItemsFromService() async {
    final response = await dio.get("posts");

    if(response.statusCode == HttpStatus.ok){
      final datas = response.data;
      if(datas is List){
        return datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}