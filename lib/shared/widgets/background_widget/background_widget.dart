import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_colors.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.w200),
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
        ),
      ],
    );
  }
}
