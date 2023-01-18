import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:supercharged/supercharged.dart';
import '../models/model_button_soal3.dart';
import '../models/model_pertanyaan.dart';
import '../pilihkomunitas.dart';
import '../models/model_button_soal1.dart';
import '../models/model_button_soal2.dart';
import '../models/model_komunitas.dart';

class syarat_gabung extends StatefulWidget {
  late final Komunitas? komunitas;

  syarat_gabung(this.komunitas);

  @override
  State<syarat_gabung> createState() => _syarat_gabungState();
}

class _syarat_gabungState extends State<syarat_gabung> {
  bool isButtonActive = true;
  bool isLoading = false;

  String SelectedButton1 = '';
  String SelectedButton2 = '';
  String SelectedButton3 = '';

  String SelectedData1 = '';
  String SelectedData2 = '';
  String SelectedData3 = '';

  final double _initial0 = 0.0;
  double _initial1 = 0.0;
  double _initial2 = 0.0;
  double _initial3 = 0.0;

  List<Soal1> soal1 = [
    Soal1(
      id: '1',
      pilihan: 'A.',
      jawaban: 'Ya',
    ),
    Soal1(
      id: '2',
      pilihan: 'B.',
      jawaban: 'Tidak',
    ),
  ];

  List<Soal2> soal2 = [
    Soal2(
      id: '3',
      pilihan: 'A.',
      jawaban: '1',
    ),
    Soal2(
      id: '4',
      pilihan: 'B.',
      jawaban: '2',
    ),
    Soal2(
      id: '5',
      pilihan: 'C.',
      jawaban: 'Lebih dari 2',
    ),
    Soal2(
      id: '6',
      pilihan: 'D.',
      jawaban: 'Belum Punya Anak',
    ),
  ];

  List<Soal3> soal3 = [
    Soal3(
      id: '7',
      jawaban: 'Ibu Rumah Tangga',
    ),
    Soal3(
      id: '8',
      jawaban: 'Wiraswasta',
    ),
    Soal3(
      id: '9',
      jawaban: 'Karyawan',
    ),
    Soal3(
      id: '10',
      jawaban: 'Lainnya',
    ),
  ];

  void submit(String SelectedJawaban1, String SelectedJawaban2,
      String SelectedJawaban3) async {
    // try {
    Uri url =
        Uri.parse("https://dashboard.parentoday.com/api/community/submit");
    var res = await http.post(
      url,
      body: {
        "community_id": widget.komunitas!.id.toString(),
        "kehamilan": SelectedJawaban1,
        "jumlah_anak": SelectedJawaban2,
        "pekerjaan": SelectedJawaban3,
      },
      headers: {
        // 'Content-Type': 'application/json',
        "Accept": "application/json",
        "Authorization": "Bearer 1178|NLb4RAnT2mUgRP9L5aArh9FQ4ECWGiWsRlujOprZ",
      },
    );
    print(res.body.toString());
    Map<String, dynamic> body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      PertanyaanUser data = PertanyaanUser.fromJson(body["data"]);
      print(res.statusCode);
      Get.to(pilihkomunitas(
          'Bearer 1178|NLb4RAnT2mUgRP9L5aArh9FQ4ECWGiWsRlujOprZ',
          widget.komunitas!.id.toString()));
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
    // } catch (e) {
    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    // }
  }

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
              'Komunitas Business Moms',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: '747474'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lengkapi Data Diri',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Halo Moms! Biar sharing dan ceritanya lebih asik, lengkapi data diri Moms dulu yuk!',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: '7A7A7A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 7, right: 7),
              child: LinearPercentIndicator(
                // animation: true,
                // animationDuration: 1000,
                lineHeight: 15,
                percent: _initial0 + _initial1 + _initial2 + _initial3,
                barRadius: Radius.circular(20),
                progressColor: 'FF6969'.toColor(),
                backgroundColor: 'D9D9D9'.toColor(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1.',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor(),
                        ),
                      ),
                      SizedBox(width: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apakah Moms dalam keadaan hamil?',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: '323232'.toColor(),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: MediaQuery.of(context).size.width - 130,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _initial1 = 0.34;
                                      SelectedButton1 = '1';
                                      SelectedData1 = 'Ya';
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 5, bottom: 5, right: 45),
                                    width: 104,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: (SelectedButton1 == '1')
                                            ? 'FF6969'.toColor()
                                            : 'D9D9D9'.toColor(),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                              width: 1,
                                              color: (SelectedButton1 == '1')
                                                  ? 'FF6969'.toColor()
                                                  : 'D9D9D9'.toColor(),
                                            ),
                                          ),
                                          child: Text(
                                            'A.',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: (SelectedButton1 == '1')
                                                  ? 'FF6969'.toColor()
                                                  : 'D9D9D9'.toColor(),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Ya',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: (SelectedButton1 == '1')
                                                ? 'FF6969'.toColor()
                                                : 'D9D9D9'.toColor(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _initial1 = 0.34;
                                      SelectedButton1 = '2';
                                      SelectedData1 = 'Tidak';
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 5, bottom: 5, right: 30),
                                    width: 104,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: (SelectedButton1 == '2')
                                            ? 'FF6969'.toColor()
                                            : 'D9D9D9'.toColor(),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                              width: 1,
                                              color: (SelectedButton1 == '2')
                                                  ? 'FF6969'.toColor()
                                                  : 'D9D9D9'.toColor(),
                                            ),
                                          ),
                                          child: Text(
                                            'B.',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: (SelectedButton1 == '2')
                                                  ? 'FF6969'.toColor()
                                                  : 'D9D9D9'.toColor(),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Tidak',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: (SelectedButton1 == '2')
                                                ? 'FF6969'.toColor()
                                                : 'D9D9D9'.toColor(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2.',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor(),
                        ),
                      ),
                      SizedBox(width: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Berapa anak yang moms miliki saat ini?',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: '323232'.toColor(),
                            ),
                          ),
                          SizedBox(height: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 44,
                                child: Wrap(
                                  runSpacing: 12,
                                  spacing: 12,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _initial2 = 0.33;
                                          SelectedButton2 = '3';
                                          SelectedData2 = '1';
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 8, top: 5, bottom: 5),
                                        width: 104,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: (SelectedButton2 == '3')
                                                ? 'FF6969'.toColor()
                                                : 'D9D9D9'.toColor(),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(1),
                                              alignment: Alignment.center,
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      (SelectedButton2 == '3')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                              child: Text(
                                                'A.',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color:
                                                      (SelectedButton2 == '3')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '1',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: (SelectedButton2 == '3')
                                                    ? 'FF6969'.toColor()
                                                    : 'D9D9D9'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _initial2 = 0.33;
                                          SelectedButton2 = '4';
                                          SelectedData2 = '2';
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                          left: 8,
                                          top: 5,
                                          bottom: 5,
                                        ),
                                        width: 104,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: (SelectedButton2 == '4')
                                                ? 'FF6969'.toColor()
                                                : 'D9D9D9'.toColor(),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(1),
                                              alignment: Alignment.center,
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      (SelectedButton2 == '4')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                              child: Text(
                                                'B.',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color:
                                                      (SelectedButton2 == '4')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '2',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: (SelectedButton2 == '4')
                                                    ? 'FF6969'.toColor()
                                                    : 'D9D9D9'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _initial2 = 0.33;
                                          SelectedButton2 = '5';
                                          SelectedData2 = 'Lebih dari 2';
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 8,
                                            top: 5,
                                            bottom: 5,
                                            right: 8),
                                        width: 120,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: (SelectedButton2 == '5')
                                                ? 'FF6969'.toColor()
                                                : 'D9D9D9'.toColor(),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(1),
                                              alignment: Alignment.center,
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      (SelectedButton2 == '5')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                              child: Text(
                                                'C.',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color:
                                                      (SelectedButton2 == '5')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Lebih dari 2',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: (SelectedButton2 == '5')
                                                    ? 'FF6969'.toColor()
                                                    : 'D9D9D9'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _initial2 = 0.33;
                                          SelectedButton2 = '6';
                                          SelectedData2 = 'Belum Punya Anak';
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 8,
                                            top: 5,
                                            bottom: 5,
                                            right: 8),
                                        width: 163,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: (SelectedButton2 == '6')
                                                ? 'FF6969'.toColor()
                                                : 'D9D9D9'.toColor(),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(1),
                                              alignment: Alignment.center,
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      (SelectedButton2 == '6')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                              child: Text(
                                                'D.',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color:
                                                      (SelectedButton2 == '6')
                                                          ? 'FF6969'.toColor()
                                                          : 'D9D9D9'.toColor(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Belum Punya Anak',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: (SelectedButton2 == '6')
                                                    ? 'FF6969'.toColor()
                                                    : 'D9D9D9'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3.',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor(),
                        ),
                      ),
                      SizedBox(width: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pekerjaan Anda saat ini?',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: '323232'.toColor(),
                            ),
                          ),
                          SizedBox(height: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _initial3 = 0.33;
                                    SelectedButton3 = '7';
                                    SelectedData3 = 'Ibu Rumah Tangga';
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: (SelectedButton3 == '7')
                                            ? 'FF8182'.toColor()
                                            : Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: 'D9D9D9'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 9),
                                    Text(
                                      'Ibu Rumah Tangga',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: '6D6767'.toColor()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _initial3 = 0.33;
                                    SelectedButton3 = '8';
                                    SelectedData3 = 'Wiraswasta';
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: (SelectedButton3 == '8')
                                            ? 'FF8182'.toColor()
                                            : Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: 'D9D9D9'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 9),
                                    Text(
                                      'Wiraswasta',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: '6D6767'.toColor()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _initial3 = 0.33;
                                    SelectedButton3 = '9';
                                    SelectedData3 = 'Karyawan';
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: (SelectedButton3 == '9')
                                            ? 'FF8182'.toColor()
                                            : Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: 'D9D9D9'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 9),
                                    Text(
                                      'Karyawan',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: '6D6767'.toColor()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _initial3 = 0.33;
                                    SelectedButton3 = '10';
                                    SelectedData3 = 'Lainnya';
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: (SelectedButton3 == '10')
                                            ? 'FF8182'.toColor()
                                            : Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: 'D9D9D9'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 9),
                                    Text(
                                      'Lainnya',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: '6D6767'.toColor()),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 25),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 39,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: (_initial1 + _initial2 + _initial3 == 1.0)
                ? 'FF6969'.toColor()
                : 'D9D9D9'.toColor(),
            onPressed: () {
              double jumlah_loading = _initial1 + _initial2 + _initial3;

              print("${jumlah_loading}");

              if (jumlah_loading == 1.0) {
                print("WAKAKKAKA");

                submit(SelectedData1, SelectedData2, SelectedData3);
              }
              //loading
              setState(() {
                isLoading = true;
              });
              Future.delayed(const Duration(seconds: 3), () {
                setState(() {
                  isLoading = false;
                });
              });
            },
            child: isLoading
                ? Container(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
            )
                : Text(
              'Submit dan Bergabung',
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
