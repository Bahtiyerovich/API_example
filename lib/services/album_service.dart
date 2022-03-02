import 'package:api25/core/constants/url_const.dart';
import 'package:api25/models/album_model.dart';
import 'package:dio/dio.dart';

class AlbumService {
  static Future<List<AlbumModel>> getAlbum() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/albums');
    // print("DATA: ${res.data}");
    return (res.data as List).map((e) => AlbumModel.fromJson(e)).toList();
  }
}
