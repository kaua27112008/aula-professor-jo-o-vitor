import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:Colors.black,
        textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[900],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          labelStyle: const TextStyle(color: Colors.blueAccent),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(
          color: Colors.blueAccent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: const LoginPage(),
      
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passoworController = TextEditingController();
  String _message = '';

  final String _validusername = 'admin';
  final String _validPassword = '12345';
  void _login() {
    setState(() {
          if (_usernameController.text == _validusername && _passoworController.text == _validPassword) {
            _message = 'Login seccessful';
          } else {
              _message = 'invalid username or password';
          }
        });
  }
  @override
Widget build(BuildContext context) {
  return Scaffold (
    appBar: AppBar(
      title: const Text('Login'),
      backgroundColor: Colors.brown[900],
    ),

    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 24,
              color: Colors.yellowAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            
          )
        ]
      )
    )
  );
}
}
