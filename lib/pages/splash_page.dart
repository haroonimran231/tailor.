import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/measurement_list_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  // static var routeName;

  // static var routeName;

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => MeasurementListScreen()));
    });
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tailor",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.deepPurple,
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0),
                ),
                Text(
                  "Diary",
                  style: GoogleFonts.pattaya(
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Image.asset(
              "assets/images/tailor.png",
              height: 160.0,
              width: 160,
            ),
          ],
        ),
      ),
    );
  }
}
