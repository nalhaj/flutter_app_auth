import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/screens/authentication_service.dart';
import 'package:sample_app/screens/homepage.dart';
import 'package:sample_app/screens/signiin.dart';
import 'package:sample_app/screens/usermodel.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? LoginScreen() : SecondPage();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
