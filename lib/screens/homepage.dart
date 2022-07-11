import 'package:flutter/material.dart';
import 'package:sample_app/screens/password.dart';
import 'package:sample_app/screens/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Container(
              child: Column(
                children: [
                  TextFormField(
                    initialValue: 'Email',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    initialValue: 'Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: Text("Forgot Password"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Password()),
                              ),
                            );
                          },
                        ),
                      ]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => SignUp()),
                      ),
                    );
                  },
                  child: Text('Sign Up'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign in'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
