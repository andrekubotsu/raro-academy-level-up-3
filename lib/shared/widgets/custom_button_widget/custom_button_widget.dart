import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_up_3/shared/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final bool typeColorOrange;

  const CustomButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
    required this.typeColorOrange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: typeColorOrange ? AppColors.orange : Colors.white,
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                label,
                style: GoogleFonts.oswald(
                  color: typeColorOrange ? Colors.white : AppColors.orange,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // To remember: inkwell don't works fine with containers etc

    // return InkWell(
    //   borderRadius: BorderRadius.circular(25),
    //   onTap: onTap,
    //   child: Container(
    //     width: 220,
    //     height: 50,
    //     decoration: BoxDecoration(
    //       shape: BoxShape.rectangle,
    //       color: color,
    //       borderRadius: BorderRadius.circular(25),
    //     ),
    //     child: Center(
    //       child: Text(label),
    //     ),
    //   ),
    // );
  }
}
