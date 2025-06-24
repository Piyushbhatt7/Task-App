import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    formKey.currentState!.validate();
    super.dispose();
  }
  void loginUser(){

    if(formKey.currentState!.validate())
    {

    }
  }            
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LogIn",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
          
              const SizedBox(height: 30),
          
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Email'),
                 validator: (value)
                {
                  if(value == null || value.trim().isEmpty || !value.contains("@"))
                  {
                    return "Email field is empty!";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 15),
          
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(hintText: 'Password'),
                 validator: (value)
                {
                  if(value == null || value.trim().isEmpty || value.trim().length <= 6)
                  {
                    return "Password field is invalid!";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 20.0),
          
              ElevatedButton(
                onPressed: loginUser,
                child: Text(
                  "LogIn",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
          
              const SizedBox(height: 20.0),
          
              RichText(
                text: TextSpan(
                  text: "Don't have an account?",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
