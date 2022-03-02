import 'package:api25/core/constants/url_const.dart';
import 'package:api25/models/user_model.dart';
import 'package:dio/dio.dart';

class UsersService {
  static Future<List<UsersModel>> getUsers() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/users');
    print("DATA: ${res.data}");
    return (res.data as List).map((e) => UsersModel.fromJson(e)).toList();
  }
}
