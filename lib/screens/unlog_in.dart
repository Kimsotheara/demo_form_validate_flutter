import 'package:flutter/material.dart';

class UnLogin extends StatelessWidget {
  const UnLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Back"),
        centerTitle: false,
      ),
      body: const Center(
        child: Text('Back to LogIn'),
      ),
    );
  }
}
