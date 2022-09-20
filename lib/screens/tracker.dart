import 'package:covid_19_live_tracker/screens/donate.dart';
import 'package:covid_19_live_tracker/screens/login.dart';
import 'package:covid_19_live_tracker/screens/sos.dart';
import 'package:covid_19_live_tracker/services/service_locator.dart';
import 'package:covid_19_live_tracker/services/sos_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import '../utils/constants.dart';
import '../screens/navigation_option.dart';
import '../screens/global.dart';
import '../screens/country.dart';
import '../screens/symptom.dart';

enum NavigationStatus {
  GLOBAL,
  COUNTRY,
  SYMPTOM,
  SOS,
  DONATE,
}

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  NavigationStatus navigationStatus = NavigationStatus.GLOBAL;
  final SosService _service = locator<SosService>();
  final String number = "911";
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text(
          "CoVID-19 Tracker",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        actions: <Widget>[
          // ignore: deprecated_member_use
          TextButton.icon(
            label: Text('Logout'),
            icon: Icon(Icons.logout),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.cyan[600],
              shadowColor: Colors.grey,
              elevation: 5,
            ),
            onPressed: () {
              _firebaseAuth.signOut().then((_) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              });
              signOut();
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: kBkgColor,
                /*borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  )*/
              ),
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 250),
                child: navigationStatus == NavigationStatus.GLOBAL
                    ? Global()
                    : navigationStatus == NavigationStatus.COUNTRY
                        ? Country()
                        : navigationStatus == NavigationStatus.SYMPTOM
                            ? Symptom()
                            : Donate(),
              ),
            ),
          ),
          Container(
            height: size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NavigationOption(
                  title: "World",
                  selected: navigationStatus == NavigationStatus.GLOBAL,
                  onSelected: () {
                    setState(() {
                      navigationStatus = NavigationStatus.GLOBAL;
                    });
                  },
                ),
                NavigationOption(
                  title: "Country",
                  selected: navigationStatus == NavigationStatus.COUNTRY,
                  onSelected: () {
                    setState(() {
                      navigationStatus = NavigationStatus.COUNTRY;
                    });
                  },
                ),
                NavigationOption(
                  title: "Donate",
                  selected: navigationStatus == NavigationStatus.DONATE,
                  onSelected: () {
                    setState(() {
                      navigationStatus = NavigationStatus.DONATE;
                    });
                  },
                ),
                NavigationOption(
                  title: "Symptoms",
                  selected: navigationStatus == NavigationStatus.SYMPTOM,
                  onSelected: () {
                    setState(() {
                      navigationStatus = NavigationStatus.SYMPTOM;
                    });
                  },
                ),
                /* NavigationOption(
                  title: "SOS",
                  selected: navigationStatus == NavigationStatus.SOS,
                  onSelected: () {
                    setState(() {
                      navigationStatus = NavigationStatus.SOS;
                    });
                  },
                )*/
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 280, bottom: 55),
            child: FloatingActionButton.extended(
              onPressed: () => _service.call(number), //URL_Launch_test_remove
              label: Text('SOS'),
              icon: Icon(Icons.call_outlined),
              backgroundColor: Colors.cyan,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
