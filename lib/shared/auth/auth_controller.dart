import 'package:flutter/material.dart';

class AuthController {
  Future<void> openTodo(context) async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/todo_list');
  }
}
