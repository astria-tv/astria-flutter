import 'package:flutter/material.dart';

import '../colors.dart';

/// Landing page for the app. Redirects to the dashboard or login page depending
/// on the user's authentication status.
class Landing extends StatelessWidget {

  /// Constructor
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AstriaColors.bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('logo/logo-sbs-h75.png'), height: 75),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 150,
                child: LinearProgressIndicator(
                  color: AstriaColors.highlight,
                  backgroundColor: AstriaColors.bgDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}