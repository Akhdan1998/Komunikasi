import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komunitas/persetujuan/syarat_gabung.dart';
import 'package:supercharged/supercharged.dart';

import '../models/model_komunitas.dart';

class persetujuan extends StatefulWidget {
  late final Komunitas? komunitas;

  persetujuan(this.komunitas);

  @override
  State<persetujuan> createState() => _persetujuanState();
}

class _persetujuanState extends State<persetujuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: '747474'.toColor(),
                ),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'Komunitas' + ' ' + (widget.komunitas?.judul ?? ''),
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: '747474'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(widget.komunitas?.image ?? ''),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang di komunitas' + ' ' + (widget.komunitas?.judul ?? ''),
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: '323232'.toColor(),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.komunitas?.deskripsi ?? '',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: '7A7A7A'.toColor(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 25),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 39,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: 'FF6969'.toColor(),
            onPressed: () {
              Get.to(syarat_gabung(widget.komunitas));
            },
            child: Text(
              'Bergabung Sekarang',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: 'FFFFFF'.toColor(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
