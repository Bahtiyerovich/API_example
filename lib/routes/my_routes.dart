import 'package:api25/models/user_model.dart';
import 'package:api25/screens/users/info_page.dart';
import 'package:api25/screens/users/user_page.dart';
import 'package:api25/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings r) {
    var args = r.arguments;
    switch (r.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
        case '/user_page':
        return MaterialPageRoute(builder: (_) => const UserPage());
        case '/user_page/info':
        return MaterialPageRoute(builder: (_) => InfoPage(user: (args as dynamic)));
       
        
    }
  }
}
