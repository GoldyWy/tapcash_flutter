import 'package:flutter/material.dart';

class GeneralFunction {
  static void redirectTo(BuildContext context, dynamic pageRoute) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => pageRoute));
  }

  static void redirectToClearTop(BuildContext context, dynamic pageRoute) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => pageRoute),
        (Route<dynamic> route) => false);
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
