import 'package:flutter/material.dart';
import 'package:todo_list/pages/splash_page.dart';
import 'package:todo_list/pages/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/splash": (context) => const SplashPage(),
        "/todo_list": ((context) => TodoListPage()),
      },
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      //home: TodoListPage(),
      theme: ThemeData(
        primaryColor: const Color(0xff8C2EB2),
        
      ),
    );
  }
}
