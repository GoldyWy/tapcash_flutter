import 'package:flutter/material.dart';
import 'package:mbank_tapcash/modules/general/classes/general_function.dart';
import 'package:mbank_tapcash/theme.dart';
import 'dart:html';

class MenuTapcashPage extends StatefulWidget {
  final 
  @override
  _MenuTapcashPageState createState() => _MenuTapcashPageState();
}

class _MenuTapcashPageState extends State<MenuTapcashPage> {
  var a = window.localStorage["asd"];

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: whiteColor,
          appBar: AppBar(
            backgroundColor: whiteColor,
            centerTitle: true,
            elevation: 0.3,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: blackColor,
              ),
              onPressed: () {
                GeneralFunction.goBack(context);
              },
            ),
            title: Text(
              "Tapcash",
              style: montserratStyle.copyWith(
                  color: blackColor, fontSize: 18, fontWeight: FontWeight.w700),
            ),
            actions: <Widget>[
              // IconButton(
              //     onPressed: () {
              //       GeneralFunction.redirectToClearTop(context, const HomePage());
              //     },
              //     icon: SizedBox(
              //       width: 25,
              //       height: 25,
              //       child: Image.asset(
              //         icon_bni.menuHome,
              //       ),
              //     )),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/tapcash/scan_tapcash.png',
                          width: widthPage * 0.6,
                        ),
                        Text(
                          "Letakan kartu TapCash dibelakang device. Jika tidak memiliki kartu TapCash yang ingin ditopup silahkan klik Lanjut",
                          style: montserratStyle.copyWith(color: oldGreenColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50),
                              primary: primaryColor),
                          onPressed: () {},
                          child: const Text(
                            'Lanjut',
                            style: montserratStyle,
                          ),
                        )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
