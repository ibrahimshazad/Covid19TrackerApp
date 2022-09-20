import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  String _email;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var mainAxisAlignment;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      backgroundColor: Colors.deepOrange[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.all(20),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 24.0, right: 16.0),
                  child: Icon(
                    Icons.alternate_email_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            // ignore: deprecated_member_use
            TextButton.icon(
              label: Text('Reset Password'),
              icon: Icon(Icons.email_outlined),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.cyan,
                shadowColor: Colors.grey,
                elevation: 5,
              ),
              onPressed: () {
                auth.sendPasswordResetEmail(email: _email);
                Navigator.of(context).pop();
              },
            ),
          ]),
        ],
      ),
    );
  }
}
