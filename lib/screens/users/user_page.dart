// import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:api25/core/constants/color_const.dart';
import 'package:api25/core/constants/font_const.dart';
import 'package:api25/core/constants/p_m_const.dart';
import 'package:api25/core/constants/radius_const.dart';
import 'package:api25/models/user_model.dart';
import 'package:api25/screens/users/info_page.dart';
import 'package:api25/services/user_service.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: ColorConst.kPrimaryGold,
                  gradient: LinearGradient(
                    colors: [
                      ColorConst.kPrimaryColor,
                      ColorConst.kPrimaryGold,
                    ],
                    begin: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 177,
              top: 60,
              child: CircleAvatar(
                backgroundColor: ColorConst.kPrimaryWhite,
                radius: 43,
                child: CircleAvatar(
                  backgroundImage: const NetworkImage(
                    'https://source.unsplash.com/random',
                  ),
                  backgroundColor: ColorConst.kPrimaryWhite,
                  radius: 40,
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 140,
              child: Text(
                'Herbert Patrick',
                style: TextStyle(
                  color: ColorConst.kPrimaryWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: FontConst.kLargeFont,
                ),
              ),
            ),
            Positioned(
              top: 200,
              child: Container(
                padding: PMConst.kExtraSmallPM,
                height: MediaQuery.of(context).size.height,
                width: 430,
                child: FutureBuilder(
                  future: UsersService.getUsers(),
                  builder: (context, AsyncSnapshot<List<UsersModel>> snap) {
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
                          return Card(
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    RadiusConst.kExtraSmallRadius),
                                color: ColorConst.kPrimaryGold,
                                gradient: LinearGradient(
                                  colors: [
                                    ColorConst.kPrimaryColor,
                                    ColorConst.kPrimaryGold,
                                  ],
                                  begin: Alignment.topCenter,
                                ),
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: ColorConst.kPrimaryWhite,
                                  radius: 30,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      'https://source.unsplash.com/random/$__',
                                    ),
                                    backgroundColor: ColorConst.kPrimaryWhite,
                                    radius: 27,
                                  ),
                                ),
                                title: Text(
                                  data[__].name.toString(),
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryWhite,
                                  ),
                                ),
                                subtitle: Text(
                                  data[__].email.toString(),
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryWhite,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.chevron_right,
                                  color: ColorConst.kPrimaryWhite,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/user_page/info',
                                    arguments: data[__],
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        itemCount: data.length,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
