import 'package:flutter/material.dart';
import 'package:todo/Pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // initial the hive

  await Hive.initFlutter();

  // open a Box
  var box = await Hive.openBox('mybox');

  // initial app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'toDo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}
