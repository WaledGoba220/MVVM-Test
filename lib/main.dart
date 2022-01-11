import 'package:flutter/material.dart';
import 'package:mvvm_test/view/post_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'MVVM  Test',
      home: PostView(),
    );
  }
}
