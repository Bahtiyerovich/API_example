import 'package:api25/routes/my_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoutes _myRoutes = MyRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App with API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _myRoutes.onGenerateRoute,
      initialRoute: '/',
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final text = MediaQuery.of(context).platformBrightness == Brightness.dark
      ? 'DarkTheme'
      : 'LightTheme';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello $text',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
