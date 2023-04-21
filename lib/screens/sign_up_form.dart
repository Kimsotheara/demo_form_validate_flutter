import 'package:flutter/material.dart';

import 'login_screen.dart';

 void main()=> runApp(const SignUpPage());
 
 class SignUpPage extends StatefulWidget {
   const SignUpPage({Key? key}) : super(key: key);
 
   @override
   State<SignUpPage> createState() => _SignUpPageState();
 }
 
 class _SignUpPageState extends State<SignUpPage> {
   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       home: FormPageSignUp(),
     );
   }
 }
 
 class FormPageSignUp extends StatelessWidget {
   const FormPageSignUp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Login()),
            )
         ),
         title: const Text('Back to LogIn'),
         centerTitle: false,
       ),
       body: const Text('Form Sign Up')
     );
   }
 }
 
 