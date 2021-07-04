import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/modules/CreateAccount/create_account_controller.dart';
import 'package:level_up_3/shared/widgets/background_widget/background_widget.dart';
import 'package:level_up_3/shared/widgets/close_button_widget/close_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_button_widget/custom_button_widget.dart';
import 'package:level_up_3/shared/widgets/custom_text_form_field/custom_text_field_widget.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final controller = CreateAccountController();

  bool passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext createContext) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackgroundWidget(),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
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
                                "New account:",
                                style: GoogleFonts.oswald(fontSize: 36),
                              ),
                            ],
                          ),
                          CustomTextFormField(
                            icon: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                            label: "E-mail",
                            helperText: "youremail@mail.com",
                            validator: (value) {},
                            onChanged: (value) {
                              controller.onChange(email: value);
                            },
                          ),
                          CustomTextFormField(
                            icon: Icon(
                              Icons.person_outline,
                              color: Colors.black,
                            ),
                            label: "Name",
                            helperText: "Full Name",
                            validator: (value) {},
                            onChanged: (value) {
                              controller.onChange(name: value);
                            },
                          ),
                          CustomTextFormField(
                            icon: Icon(
                              Icons.vpn_key_outlined,
                              color: Colors.black,
                            ),
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
                              },
                            ),
                            label: "Password",
                            helperText: "8 characteres minimum",
                            obscureText: passwordVisible,
                            validator: (value) {},
                            onChanged: (value) {
                              controller.onChange(password: value);
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButtonWidget(
                    label: "Create Account",
                    typeColorOrange: true,
                    onTap: () {
                      controller.saveUser(createContext);
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
