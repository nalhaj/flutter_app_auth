import 'package:flutter/material.dart';
import 'package:sample_app/screens/authentication_service.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.all(10)),
        Spacer(
          flex: 1,
        ),
        TextFormField(
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: ("Email ddress ")),
        ),
        TextFormField(
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          controller: _passwordController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(hintText: ("Password")),
        ),
        TextFormField(
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          controller: _passwordController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: ("Confirm Password "),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            await authService.createUserWithEmailAndPassword(
              emailController.text,
              _passwordController.text,
            );
            Navigator.pop(context);
          },
          child: Text('/register'),
        ),
        Spacer(
          flex: 1,
        ),
      ]),
    );
  }
}
