import 'package:api25/core/constants/color_const.dart';
import 'package:api25/models/todos_model.dart';
import 'package:api25/services/todos_service.dart';
import 'package:flutter/material.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: TodosService.getTodos(),
                builder: (context, AsyncSnapshot<List<TodosModel>> snap) {
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
                          trailing: Text(
                            data[__].completed.toString(),
                          ),
                        );
                      },
                      itemCount: 20,
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
