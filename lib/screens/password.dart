import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Password"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          TextFormField(
            style: TextStyle(fontWeight: FontWeight.bold),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: ("Email or Phone number")),
            onChanged: (value) {
              if (mounted)
                setState(() {
                  email = value;
                });
            },
          ),
          ElevatedButton(
            onPressed: () {
              // auth.sendPasswordRestEmail(email:_email);

              Navigator.of(context).pop();
            },
            child: Text('Send Request'),
          ),
        ],
      ),
    );
  }
}
