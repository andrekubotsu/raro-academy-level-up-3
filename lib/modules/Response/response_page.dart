import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/shared/widgets/background_widget/background_widget.dart';
import 'package:level_up_3/shared/widgets/close_button_widget/close_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_button_widget/custom_button_widget.dart';

class ResponsePage extends StatefulWidget {
  ResponsePage({Key? key}) : super(key: key);

  @override
  _ResponsePageState createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Success!",
                            style: GoogleFonts.oswald(fontSize: 36),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/passrecovery");
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Text(
                            "Forgot password!",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButtonWidget(
                  label: "Login",
                  typeColorOrange: true,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          CloseButtonWidget()
        ],
      ),
    );
  }
}
