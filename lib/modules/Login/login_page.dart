import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/shared/widgets/background_widget/background_widget.dart';
import 'package:level_up_3/shared/widgets/close_button_widget/close_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_button_widget/custom_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_text_form_field/custom_text_field_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
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
                            "Welcome back:",
                            style: GoogleFonts.oswald(fontSize: 36),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                      CustomTextFormField(
                        icon: Icon(
                          Icons.vpn_key_outlined,
                          color: Colors.black,
                        ),
                        label: "Password",
                        helperText: "8 characteres minimum",
                        obscureText: passwordVisible,
                        suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.lock_outlined
                                  : Icons.lock_open_outlined,
                              color: Colors.black,
                              size: 16,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            }),
                        validator: (value) {},
                        onChanged: (value) {},
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
