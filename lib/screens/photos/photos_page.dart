import 'package:api25/models/user_photo_model.dart';
import 'package:api25/services/user_photo_service.dart';
import 'package:flutter/material.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
              future: UsersPhotoService.getUsersPhoto(),
              builder: (context, AsyncSnapshot<List<UsersPhotoModel>> snap) {
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
                          backgroundImage: NetworkImage(
                            data[__].url.toString(),
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
