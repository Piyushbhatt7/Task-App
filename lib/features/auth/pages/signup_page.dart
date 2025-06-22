import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
  emailController.dispose();
  passwordController.dispose();
  nameController.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up", 
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),),

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding: const EdgeInsets.all(27)
              ),
            ),

            TextFormField(
              controller: passwordController,
            ),

            TextFormField(
              controller: nameController,
            )
          ],
        ),
      )
      
    );
  }
}