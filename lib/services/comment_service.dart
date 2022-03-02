import 'package:api25/core/constants/url_const.dart';
import 'package:api25/models/comment_model.dart';
import 'package:dio/dio.dart';

class CommentService {
  static Future<List<CommentModel>> getComment() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/comments');
    // print("DATA: ${res.data}");
    return (res.data as List).map((e) => CommentModel.fromJson(e)).toList();
  }
}
