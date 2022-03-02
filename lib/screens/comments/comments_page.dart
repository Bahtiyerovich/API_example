import 'package:api25/core/constants/color_const.dart';
import 'package:api25/models/comment_model.dart';
import 'package:api25/services/comment_service.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
              future: CommentService.getComment(),
              builder: (context, AsyncSnapshot<List<CommentModel>> snap) {
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
                          data[__].postId.toString(),
                        ),
                        ),
                        title: Text(
                          data[__].name.toString(),
                        ),
                        subtitle: Text(
                          data[__].body.toString(),
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