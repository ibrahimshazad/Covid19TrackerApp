import 'package:covid_19_live_tracker/services/service_locator.dart';
import 'package:covid_19_live_tracker/services/sos_service.dart';
import 'package:covid_19_live_tracker/utils/app_strings.dart';
import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  final SosService _service = locator<SosService>();
  String txt = '';
  double _opacity = 0;
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      setState(() {
        _opacity = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/sewausa-logo.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_1_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
          /*trailing: TextButton(
            child: Text('Donate'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.cyan,
              shadowColor: Colors.grey,
              elevation: 5,
            ),
            onPressed: () => _service.openURL(AppStrings.donation_1_url),
          ),*/
          onTap: () => _service.openURL(AppStrings.donation_1_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/irc-logo.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_2_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_2_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/unicef.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_3_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_3_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/fda.png'), fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_4_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_4_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/unf-logo.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_5_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_5_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/direct-relief.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_6_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_6_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/united-way.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_7_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_7_url),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          leading: Container(
            padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1.0, color: Colors.white))),
            child: const Image(
                image: AssetImage('assets/images/global-giving.png'),
                fit: BoxFit.cover),
          ),
          title: Text(
            AppStrings.donation_8_name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onTap: () => _service.openURL(AppStrings.donation_8_url),
        ),
      ],
    );
  }
}
