import 'package:api25/models/user_model.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  final Map<String, dynamic> user;
  const InfoPage({Key? key, required this.user}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.user['name'],
        ),
      ),
    );
  }
}
