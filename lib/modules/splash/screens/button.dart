import 'package:flutter/material.dart';
import 'package:groceries_app/modules/splash/screens/buttonSecond.dart';

class Button extends StatefulWidget {
  @override
  State<Button> createState() => _Button();
}

List ListData = [
  {'id': 'Index 1', 'content': 'First Position'},
  {'id': 'Index 2', 'content': 'Second Position'},
  {'id': 'Index 3', 'content': 'Third Position'}
];

class _Button extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      ListView.builder(
        itemCount: ListData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ListData[index]['content']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ButtonSecond(
                            index: ListData[index]['id'],
                            content: ListData[index]['content'],
                          )));
            },
          );
        },
      ),
      // Center(
      //     child: ElevatedButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => ButtonSecond(index: ListData[index])));
      //   },
      //   child: Text('Chuyển hướng'),
      // )),
    ]));
  }
}
