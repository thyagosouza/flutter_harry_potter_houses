import 'package:flutter/services.dart';
import 'package:harry_potter_houses_starting/pages/harry_potter_page.dart';
import 'package:flutter/material.dart';

import 'pages/splash_page.dart';

void main() => runApp(HarryPotterHouses());

class HarryPotterHouses extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      //home: HarryPoterPage(),
      home: SplashPage(duration: 10, goToPage: HarryPotterPage()),
      //home: SplashPage(),
    );
  }
}
