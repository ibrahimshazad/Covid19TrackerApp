import 'package:covid_19_live_tracker/services/service_locator.dart';
import 'package:covid_19_live_tracker/services/sos_service.dart';
import 'package:flutter/material.dart';

class Sos extends StatefulWidget {
  @override
  _SosState createState() => _SosState();
}

class _SosState extends State<Sos> {
  final SosService _service = locator<SosService>();

  final String number = "911";
  final String email = "family.member@help.com";
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
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton.icon(
            label: Text('Call $number'),
            icon: Icon(Icons.call_outlined),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.cyan,
              shadowColor: Colors.grey,
              elevation: 5,
            ),
            onPressed: () => _service.call(number),
          ),
          SizedBox(height: 10),
          TextButton.icon(
            label: Text('Text-to-$number'),
            icon: Icon(Icons.textsms_outlined),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.cyan,
              shadowColor: Colors.grey,
              elevation: 5,
            ),
            onPressed: () => _service.sendSms(number),
          ),
          SizedBox(height: 10),
          TextButton.icon(
            label: Text('E-mail family'),
            icon: Icon(Icons.email_outlined),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.cyan,
              shadowColor: Colors.grey,
              elevation: 5,
            ),
            onPressed: () => _service.sendEmail(email),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
