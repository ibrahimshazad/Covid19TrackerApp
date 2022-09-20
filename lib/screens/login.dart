import 'package:covid_19_live_tracker/screens/tracker.dart';
import 'package:covid_19_live_tracker/screens/verify.dart';
import 'package:covid_19_live_tracker/screens/reset.dart';
import 'package:covid_19_live_tracker/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  double _opacity = 0;
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CoVID-19 Tracker App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: kBkgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Center(
              child: Container(
                width: 200,
                height: 150,
                /*decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50.0)),*/

                child: const Image(
                  image: AssetImage('assets/images/image_covid.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, bottom: 5.0, top: 5.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(12),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 12.0),
                  child: Icon(
                    Icons.alternate_email_outlined,
                    color: Colors.cyan[100],
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
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, bottom: 5, top: 5),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(12),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 12.0),
                  child: Icon(
                    Icons.remove_red_eye_rounded,
                    color: Colors.cyan[100],
                    size: 28,
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TextButton.icon(
              label: Text('Login'),
              icon: Icon(Icons.login_outlined),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.cyan,
                shadowColor: Colors.grey,
                elevation: 5,
              ),
              onPressed: () {
                auth
                    .signInWithEmailAndPassword(
                        email: _email, password: _password)
                    .then((_) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Tracker()));
                });
              },
            ),
            TextButton.icon(
              label: Text('Sign-up'),
              icon: Icon(Icons.person_add_outlined),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.orange[600],
                shadowColor: Colors.grey,
                elevation: 5,
              ),
              onPressed: () {
                auth
                    .createUserWithEmailAndPassword(
                        email: _email, password: _password)
                    .then((_) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => VerifyScreen()));
                });
              },
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text('Forgot Password?'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ResetScreen()),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
