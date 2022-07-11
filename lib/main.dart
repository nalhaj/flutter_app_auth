import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sample_app/screens/Homepage.dart';
import 'package:sample_app/screens/authentication_service.dart';
import 'package:sample_app/screens/signup.dart';
import 'package:sample_app/screens/wrapper.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(title: "SampleApp", initialRoute: '/', routes: {
        '/': (context) => Wrapper(),
        '/Login': (context) => LoginScreen(),
        '/register': (context) => SignUp(),
      }),
    );
  }
}
