import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'komunitaswhatsapp.dart';

class Pregnancyprogram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(komunitaswhatsapp());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: 'EAEAEA'.toColor(),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 126,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                child: Image(
                  image: AssetImage('assets/trying to conceive.jpg'),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 126,
              padding: EdgeInsets.only(top: 6, bottom: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Text(
                'Pregnancy Program',
                style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: '5E5E5E'.toColor(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
