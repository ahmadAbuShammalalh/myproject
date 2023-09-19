

import 'package:flutter/material.dart';
import 'package:text_api_mohammed/test.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}
