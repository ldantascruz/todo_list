import 'package:flutter/material.dart';
import 'package:todo_list/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.openTodo(context);
    return Scaffold(
      backgroundColor: const Color(0xff8C2EB2),
      body: Stack(children: const [
        Center(
          child: Image(image: AssetImage('assets/images/taskList.png')),
        )
      ]),
    );
  }
}
