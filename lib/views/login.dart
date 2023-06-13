import 'package:flutter/material.dart';

import '../colors.dart';

/// Login page widget
class Login extends StatefulWidget {
  /// Constructor
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

/// Login page state class
class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;

  void onPressed() {

  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Image(image: AssetImage('logo/logo-sbs-h75.png'), height: 75),
              ),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePassword,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: FilledButton(onPressed: onPressed, child: const Text('Login')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}