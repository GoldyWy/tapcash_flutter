import 'package:flutter/material.dart';
import 'package:mbank_tapcash/modules/general/classes/general_function.dart';
import 'package:mbank_tapcash/modules/tapcash/pages/menu_tapcash_page.dart';
import 'package:mbank_tapcash/theme.dart';
import 'package:mbank_tapcash/constants.dart' as _constants;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSaveUserId = false;

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: whiteColor,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            toolbarHeight: 70,
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/menu_lain.png',
                ),
                iconSize: 110.0,
              ),
            ],
          ),
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/46.png'),
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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/welcome_message.png',
                        width: widthPage * 0.7,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "USER ID",
                                ),
                                keyboardType: TextInputType.text,
                                style: montserratStyle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "MPIN",
                                ),
                                keyboardType: TextInputType.number,
                                style: montserratStyle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.topLeft,
                              child: CheckboxListTile(
                                activeColor: orangeColor,
                                contentPadding: const EdgeInsets.all(0),
                                title: Text(
                                  "Simpan User ID",
                                  style: montserratStyle.copyWith(
                                      color: orangeColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                value: isSaveUserId,
                                onChanged: (value) {
                                  setState(() {
                                    isSaveUserId = value!;
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(10, 50),
                                          primary: primaryColor),
                                      onPressed: () {
                                        GeneralFunction.redirectTo(
                                            context, MenuTapcashPage());
                                      },
                                      child: Text('Login',
                                          style: montserratStyle.copyWith(
                                              color: whiteColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: primaryColor,
                                      minimumSize: const Size(10, 50),
                                    ),
                                    onPressed: () {},
                                    child: Image.asset(
                                      "assets/images/loginBio.gif",
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "Lupa User ID ?",
                                      style: montserratStyle.copyWith(
                                          color: oldGreenColor,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "Lupa MPIN ?",
                                      style: montserratStyle.copyWith(
                                        color: oldGreenColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
