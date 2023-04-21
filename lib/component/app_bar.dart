import 'package:flutter/material.dart';
import 'app_body.dart';

class AppBarDefault extends StatelessWidget {
  const AppBarDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: const Text("Appbar actions"),
              actions: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                  ),
                  IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                  ),
              ],
          ),
          body: const MyDefaultBody(),
      );
   }
}
