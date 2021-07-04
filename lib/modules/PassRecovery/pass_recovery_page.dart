import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/shared/widgets/background_widget/background_widget.dart';
import 'package:level_up_3/shared/widgets/close_button_widget/close_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_button_widget/custom_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_text_form_field/custom_text_field_widget.dart';

class PassRecovery extends StatefulWidget {
  PassRecovery({Key? key}) : super(key: key);

  @override
  _PassRecoveryState createState() => _PassRecoveryState();
}

class _PassRecoveryState extends State<PassRecovery> {
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
                            "Your email:",
                            style: GoogleFonts.oswald(fontSize: 36),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomTextFormField(
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        label: "E-mail",
                        helperText: "youremail@mail.com",
                        validator: (value) {},
                        onChanged: (value) {},
                      ),
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
                  label: "Recover password",
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
