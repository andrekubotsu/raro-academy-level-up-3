import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/modules/Login/login_controller.dart';
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
  final controller = LoginController();

  bool passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
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
                    padding:
                        const EdgeInsets.only(top: 40, left: 50, right: 50),
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
                          validator: (value) =>
                              controller.emailValidator(value),
                          onChanged: (value) {
                            controller.onChange(email: value);
                          },
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
                          validator: (value) => controller.passValidator(value),
                          onChanged: (value) {
                            controller.onChange(password: value);
                          },
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
                    onTap: () {
                      controller.getUser();
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (context) => Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                      color: Colors.green,
                                      shadowColor: Color(0xFFCCCCCC),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "You are logged in! Unfortunatelly the app does not go further ;( \n ... \n TODO: next logged pages, logout etc",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                      }
                    },
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
      ),
    );
  }
}
