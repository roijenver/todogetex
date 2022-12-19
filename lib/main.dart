import 'package:flutter/material.dart';
import 'list_page.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'TODO TODO',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const ListPage(),
  ));
}

