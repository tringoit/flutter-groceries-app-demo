import 'package:flutter/material.dart';

class ButtonSecond extends StatefulWidget {
  final index;
  final content;

  const ButtonSecond({super.key, required this.index, required this.content});

  @override
  State<ButtonSecond> createState() => _ButtonSecond();
}

class _ButtonSecond extends State<ButtonSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.index}")),
      body: Center(
          child: Column(children: [
        Text("${widget.index}"),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Trở về'),
        ),
      ])),
    );
  }
}
