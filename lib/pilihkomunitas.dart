import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komunitas/cubit/user_cubit.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/model_pertanyaan.dart';

class pilihkomunitas extends StatefulWidget {
  pilihkomunitas(this.token, this.community_Id, {super.key});

  String token;
  String community_Id;

  @override
  State<pilihkomunitas> createState() => _pilihkomunitasState();
}

class _pilihkomunitasState extends State<pilihkomunitas> {
  Future<Pertanyaan> getDataUser() async {
    try {
      Uri url = Uri.parse(
          "https://dashboard.parentoday.com/api/community/group?community_id=1");
      var res = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          "Accept": "application/json",
          "Authorization":
              "Bearer 1178|NLb4RAnT2mUgRP9L5aArh9FQ4ECWGiWsRlujOprZ",
        },
      );
      Map<String, dynamic> body = jsonDecode(res.body);

      if (res.statusCode == 200) {
        return Pertanyaan.fromJson(body["data"]);
      } else {
        throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
      }
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserCubit>().getProfile(widget.token, widget.community_Id);
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
              'Bergabung ke Komunitas',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: '747474'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, snapshot) {
          if (snapshot is UserLoaded) {
            if (snapshot.user != null) {
              return SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                // physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/Grup.png'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Pilih grup komunitas yang kamu suka',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor(),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Kamu bisa pilih grup apabila kamu memiliki kenalan atau teman di komunitas tersebut.',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: '7A7A7A'.toColor(),
                        ),
                      ),
                      SizedBox(height: 15),
                      //blocbuiler
                      Column(
                          children: snapshot.user!
                              .map(
                                (e) => Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: 'EAEAEA'.toColor(),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 13, top: 10, bottom: 10),
                                        child: Text(
                                          e.title ?? '',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: '323232'.toColor(),
                                          ),
                                        ),
                                      ),
                                      FlatButton(
                                        color: 'FF6969'.toColor(),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        onPressed: () async {
                                          final _urlWhatsapp = e.url_whatsapp;

                                          if (await canLaunch(_urlWhatsapp!)) {
                                            await launch(_urlWhatsapp);
                                          }
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              'Join',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w300,
                                                color: 'FFFFFF'.toColor(),
                                              ),
                                            ),
                                            Icon(
                                              Icons.chevron_right_outlined,
                                              size: 18,
                                              color: 'FFFFFF'.toColor(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList()),

                      SizedBox(height: 20),
                      Text(
                        'Bantuan Komunitas',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
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
                        padding: EdgeInsets.only(
                            top: 9, left: 12, right: 12, bottom: 9),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
              );
            } else {
              return const Center(
                child: SizedBox(),
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
