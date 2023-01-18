import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komunitas/Business.dart';
import 'package:supercharged/supercharged.dart';

import 'BabyandKids.dart';
import 'Pregnancy.dart';
import 'IndependentMom.dart';
import 'Toddler.dart';
import 'Pregnancyprogram.dart';
import 'komunitaswhatsapp.dart';

class komunitas extends StatefulWidget {
  @override
  State<komunitas> createState() => _komunitasState();
}

class _komunitasState extends State<komunitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 265,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  color: 'D9D9D9'.toColor(),
                  width: MediaQuery.of(context).size.width,
                  height: 187,
                  padding: EdgeInsets.only(left: 16, top: 43),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Komunitas',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: '747474'.toColor(),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 135,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: 'F0F0F0'.toColor(),
                        ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    // height: 131,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Bunda, Selamat Datang!!',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '323232'.toColor(),
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Gabung bersama moms lainnya di komunitas parentoday dan dapatkan giveaway.',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                            color: '7A7A7A'.toColor(),
                          ),
                        ),
                        SizedBox(height: 11),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 32,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: 'FF6969'.toColor(),
                            onPressed: () {},
                            child: Text(
                              'Gabung Komunitas Parentoday',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: 'FFFFFF'.toColor(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Komunitas Whatsapp',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: '323232'.toColor(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(komunitaswhatsapp());
                    },
                    child: Row(
                      children: [
                        Text(
                          'Lihat semua',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: 'FF6969'.toColor(),
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 10,
                          color: 'FF6969'.toColor(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Business(),
                  SizedBox(width: 15),
                  Pregnancyprogram(),
                  SizedBox(width: 15),
                  pregnancy(),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  toddler(),
                  SizedBox(width: 15),
                  IndependentMom(),
                  SizedBox(width: 15),
                  BabyandKids(),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 23),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bantuan Komunitas',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Moms bisa hubungi Atika di Hari Senin-Jumat jam 09.00-17.00, jika ada pertanyaan ya!',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: '7A7A7A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.only(top: 9, left: 12, right: 12, bottom: 9),
                    decoration: BoxDecoration(
                      color: 'FFFFFF'.toColor(),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: 'EAEAEA'.toColor(),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                child: Image.asset('assets/fak.png'),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Alami Kendala?',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: '323232'.toColor(),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                width: 136,
                                child: Text(
                                  'Klik jika moms mengalami kendala/gangguan.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: '7A7A7A'.toColor(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          child: VerticalDivider(
                            width: 20,
                            thickness: 2,
                            color: 'EAEAEA'.toColor(),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                child: Image.asset('assets/shake-hand.png'),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Ingin Kerjasama?',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: '323232'.toColor(),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                width: 136,
                                child: Text(
                                  'Klik jika Anda ingin mengajukan kerjasama.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: '7A7A7A'.toColor(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
