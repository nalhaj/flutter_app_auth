import 'package:flutter/material.dart';
import 'package:sample_app/screens/authentication_service.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await authService.signInWithEmailAndPassword(
              emailController.text,
              _passwordController.text,
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
