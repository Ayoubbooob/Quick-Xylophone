import 'package:flutter/material.dart';

import 'my_xylophone_widget.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: MyXylophoneWidget(),
        ),
      ),
    );
  }
}
