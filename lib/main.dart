import 'package:demo_form_validation/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyAppBar());

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
