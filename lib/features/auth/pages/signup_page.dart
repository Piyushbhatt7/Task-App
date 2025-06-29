import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {

  static route() => MaterialPageRoute(builder: (context) => SignupPage());
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    formKey.currentState!.validate();
    super.dispose();
  }
  void signUpUser(){

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
                "Sign Up",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
          
              const SizedBox(height: 30),
          
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Name'),
                validator: (value)
                {
                  if(value == null || value.trim().isEmpty)
                  {
                    return "Name field cannot be empty!";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 15.0),
          
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
                onPressed: signUpUser,
                child: Text(
                  "SignUp",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
          
              const SizedBox(height: 20.0),
          
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: const [
                    TextSpan(
                      text: ' LogIn',
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
