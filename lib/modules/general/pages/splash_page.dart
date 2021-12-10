import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mbank_tapcash/modules/auth/pages/login_page.dart';
import 'package:mbank_tapcash/theme.dart';
import 'package:mbank_tapcash/constants.dart' as _constants;

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/splash_top_bg.png'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/bg_footer.png'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15, right: 15),
                  child: Text(
                    _constants.version,
                    style: montserratStyle.copyWith(
                        fontSize: 12,
                        color: whiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
