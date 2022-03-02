import 'package:api25/core/constants/url_const.dart';
import 'package:api25/models/user_photo_model.dart';
import 'package:dio/dio.dart';

class UsersPhotoService {
  static Future<List<UsersPhotoModel>> getUsersPhoto() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/photos');
    // print("DATA: ${res.data}");
    return (res.data as List).map((e) => UsersPhotoModel.fromJson(e)).toList();
  }
}
