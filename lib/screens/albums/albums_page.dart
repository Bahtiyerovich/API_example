import 'package:api25/core/constants/color_const.dart';
import 'package:api25/models/album_model.dart';
import 'package:api25/services/album_service.dart';
import 'package:flutter/material.dart';

class AlbumsPage extends StatelessWidget {
  const AlbumsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
              future: AlbumService.getAlbum(),
              builder: (context, AsyncSnapshot<List<AlbumModel>> snap) {
                if (!snap.hasData) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snap.hasError) {
                  return const Center(
                    child: Text('Error'),
                  );
                } else {
                  var data = snap.data!;
                  return ListView.builder(
                    itemBuilder: (_, __) {
                      return ListTile(
                        leading: CircleAvatar(
                         child: Text(
                          data[__].userId.toString(),
                        ),
                        ),
                        title: Text(
                          data[__].title.toString(),
                        ),
                        subtitle: Text(
                          data[__].id.toString(),
                        ),
                      );
                    },
                    itemCount: 20,
                  );
                }
              }),
        ),
      
      ]),
    );
  }
}