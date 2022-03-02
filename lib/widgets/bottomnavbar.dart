import 'package:api25/core/constants/color_const.dart';
import 'package:api25/screens/albums/albums_page.dart';
import 'package:api25/screens/comments/comments_page.dart';
import 'package:api25/screens/photos/photos_page.dart';
import 'package:api25/screens/posts/posts_page.dart';
import 'package:api25/screens/todos/todos_page.dart';
import 'package:api25/screens/users/user_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

 
  int _currentIndex = 0;

  List<Widget>? _pages;
  final keyUserPage = const PageStorageKey('users_value');
  final keyPostsPage = const PageStorageKey('posts_value');
  final keyCommentsPage = const PageStorageKey('comments_value');
  final keyAlbumsPage = const PageStorageKey('albums_value');
  final keyPhotosPage = const PageStorageKey('photos_value');
  final keyTodosPage = const PageStorageKey('todos_value');

  @override
  void initState() {
    super.initState();
    _pages = [
      UserPage(key: keyUserPage),
      PostsPage(key: keyPostsPage),
      CommentsPage(key: keyCommentsPage),
      AlbumsPage(key: keyAlbumsPage),
      PhotosPage(key: keyPhotosPage),
      TodosPage(key: keyTodosPage),
    ];
  }

  List<String> pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryBlack,
      body: _pages![_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: ColorConst.kPrimaryColor,
        unselectedItemColor: ColorConst.kPrimaryGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Users'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Posts'),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Comments'),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album), label: 'Albums'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Photos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.checklist_rtl_outlined), label: 'Todos'),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
