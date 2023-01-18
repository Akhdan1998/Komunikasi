import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komunitas/models/model_komunitas.dart';
import 'package:supercharged/supercharged.dart';

import 'persetujuan/persetujuan.dart';

class kw_Business extends StatefulWidget {
  late final Komunitas? komunitas;

  kw_Business(this.komunitas);

  State<kw_Business> createState() => _kw_BusinessState();
}

class _kw_BusinessState extends State<kw_Business> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(persetujuan(widget.komunitas));
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
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 210,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                child: Image(
                  image: AssetImage(widget.komunitas?.image ?? ''),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 151,
              padding: EdgeInsets.only(top: 6, bottom: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Text(
                widget.komunitas?.judul ?? '',
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
