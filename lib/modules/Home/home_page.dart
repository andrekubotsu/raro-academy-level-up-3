import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/shared/app_colors.dart';
import 'package:level_up_3/shared/widgets/custom_button_widget/custom_button_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButtonWidget(
                    label: "Create Account",
                    typeColorOrange: true,
                    onTap: () {
                      Navigator.pushNamed(context, "/createaccount");
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButtonWidget(
                    label: "Login",
                    typeColorOrange: false,
                    onTap: () {
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
            Positioned(
              top: 160,
              left: 50,
              child: Text(
                "Let's learn",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 50,
              child: Text(
                "Prepare yourself!",
                style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w200),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.school_outlined,
                  color: AppColors.orange,
                  size: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
