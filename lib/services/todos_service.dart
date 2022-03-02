import 'package:api25/core/constants/url_const.dart';
import 'package:api25/models/todos_model.dart';
import 'package:dio/dio.dart';

class TodosService {
  static Future<List<TodosModel>> getTodos() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/todos');
    // print("DATA: ${res.data}");
    return (res.data as List).map((e) => TodosModel.fromJson(e)).toList();
  }
}
