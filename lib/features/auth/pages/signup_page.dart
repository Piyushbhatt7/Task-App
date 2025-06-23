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
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            TextFormField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Name'),
            ),

            const SizedBox(height: 15.0),

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),

            const SizedBox(height: 15),

            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),

            const SizedBox(height: 20.0,),

            ElevatedButton(
              onPressed: () {
                
              },
              child: Text("SignUp"),

            )
          ],
        ),
      ),
    );
  }
}
