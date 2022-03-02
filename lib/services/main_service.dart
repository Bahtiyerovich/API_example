import 'package:api25/core/constants/url_const.dart';
import 'package:api25/models/main_user_model.dart';
import 'package:api25/userdata/user_data.dart';
import 'package:dio/dio.dart';

class MainService {
  static Future<List<MainUserModel>> getMainUsers() async {
    Response res = await Dio().get(UrlConst.mainUrl + "/pixelastic/fakeusers/master/pictures/");
    print("DATA: ${res.data}");
    return (res.data as List).map((e) => MainUserModel.fromJson(e)).toList();
  }
}
