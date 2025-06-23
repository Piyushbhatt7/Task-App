import 'package:flutter/material.dart';
import 'package:task_app/features/auth/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
                contentPadding: const EdgeInsets.all(27),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3.0,
                  ),
                ),
              ),

              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                )
              ),
              useMaterial3: true,
      ),
      home: const SignupPage(),
    );
  }
}
