import 'package:api25/core/constants/color_const.dart';
import 'package:api25/models/main_user_model.dart';
import 'package:api25/services/main_service.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);
  final String _img =
      'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/';
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      // body: Column(children: [
      //   Expanded(
      //     child: 
      //     FutureBuilder(
      //         future: MainService.getMainUsers(),
      //         builder: (context, AsyncSnapshot<List<MainUserModel>> snap) {
      //           if (!snap.hasData) {
      //             return const Center(
      //               child: CircularProgressIndicator.adaptive(),
      //             );
      //           } else if (snap.hasError) {
      //             return const Center(
                //     child: Text('Error'),
                //   );
                // } else {
                //  var data = snap.data!;
                //   return ListView.builder(
                //     itemBuilder: (_, __) {
                //       return ListTile(
                //         leading: 
                          
                          // CircleAvatar(
                          //   backgroundImage: NetworkImage(
                              // '$_img${__}'
                          //   ),
                          // ),
                        //   title: Text(snap.data![__].firstName.toString()),
                        //  subtitle: Text(snap.data![__].lastName.toString()),
                          // Text(data[__].username.toString()),
                          // Text(data[__].title.toString()),
                          // Text(data[__].gender.toString()),
                          // Text(data[__].phoneNumber.toString()),
                          // Text(data[__].email.toString()),
                          // Text(data[__].password.toString()),
                          // Text(data[__].birthdate.toString()),
                          // Text(data[__].location.toString()),
                          // Text(data[__].location.toString()),
                        
                      // );
                    // },
              //       itemCount: data.length, 
              //     );
              //   }
              // }),
      //   ),
      // ]),
    );
  }
}
