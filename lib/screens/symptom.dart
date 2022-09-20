import 'package:covid_19_live_tracker/utils/constants.dart';
import 'package:covid_19_live_tracker/utils/symptom_container.dart';
import 'package:covid_19_live_tracker/utils/app_animations.dart';
import 'package:covid_19_live_tracker/utils/app_strings.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Symptom extends StatefulWidget {
  @override
  _SymptonState createState() => _SymptonState();
}

class _SymptonState extends State<Symptom> {
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
    return SingleChildScrollView(
      child: AnimatedOpacity(
        duration: Duration(seconds: 2),
        opacity: _opacity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _header(AppStrings.symptoms),
                SymptomContainer(
                    header: AppStrings.symptom1,
                    animationPath: AppAnimations.temperature),
                SymptomContainer(
                    header: AppStrings.symptom2,
                    animationPath: AppAnimations.sneezing),
                SymptomContainer(
                    header: AppStrings.symptom3,
                    animationPath: AppAnimations.hardSneezing),
              ],
            ),
            Column(
              children: <Widget>[
                _header(AppStrings.advices),
                SymptomContainer(
                    header: AppStrings.advice1,
                    animationPath: AppAnimations.washHands),
                SymptomContainer(
                    header: AppStrings.advice2,
                    animationPath: AppAnimations.disinfect),
                SymptomContainer(
                    header: AppStrings.advice3,
                    animationPath: AppAnimations.socialDistance),
                SymptomContainer(
                    header: AppStrings.advice4,
                    animationPath: AppAnimations.mask),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _header(String header) => Text(header, style: _headerStyle);

  TextStyle get _headerStyle => GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.68,
      fontSize: 18);
}
