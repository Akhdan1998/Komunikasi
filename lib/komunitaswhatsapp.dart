import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'gabungkomunitas.dart';
import 'models/model_komunitas.dart';

class komunitaswhatsapp extends StatefulWidget {
  @override
  State<komunitaswhatsapp> createState() => _komunitaswhatsappState();
}

class _komunitaswhatsappState extends State<komunitaswhatsapp> {
// list
  String SelectedKomunitas = '';

  List<Komunitas> komunitas = [
    Komunitas(
      id: '1',
      image: 'assets/mompreneur.jpg',
      judul: 'Business Moms',
      deskripsi:
          'Halo Momsday! Momsday sekarang punya usaha tapi bingung cara untuk mengembangkan usaha Moms? Mau sharing tentang kendala? Mau konsultasi sama Moms yang sama-sama punya usaha? Mau tambah networking untuk jualan? Langsung gabung disini yuk!',
    ),
    Komunitas(
      id: '2',
      image: 'assets/trying to conceive.jpg',
      judul: 'Pregnancy Program',
      deskripsi:
          'Halo Momsday. Semangat yuk promil-nya! Semoga cepat diberikan momongan ya. Kalau Momsday butuh info atau sharing mengenai program kehamilan, join disini yuk!',
    ),
    Komunitas(
      id: '3',
      image: 'assets/pregnancy.jpg',
      judul: 'Pregnancy',
      deskripsi:
          'Momsday, Selamat ya sebentar lagi jadi ibu! Momsday boleh banget sharing tentang kecemasan atau pengalaman seputar kehamilan Momsday, join grup ini yuk!',
    ),
    Komunitas(
      id: '4',
      image: 'assets/toodler.jpg',
      judul: 'Toddler',
      deskripsi:
          'Momsday punya anak berumur 1-5 tahun? Gabung di grup ini yuk biar bisa diskusi bareng dengan Moms yang lain!',
    ),
    Komunitas(
      id: '5',
      image: 'assets/single mom.jpg',
      judul: 'Independent Moms',
      deskripsi:
          'Moms, terimakasih ya untuk keteguhannya mengurus si kecil seorang diri. Kalau Moms lagi capek dan butuh tempat untuk berbagi cerita. Boleh banget nih cerita disini, bareng sama Single Fighter Moms yang lain!',
    ),
    Komunitas(
      id: '6',
      image: 'assets/newborn.jpg',
      judul: 'Baby and Kids',
      deskripsi:
          'Asik! Selamat untuk kelahiran buah hatinya Moms. Mengurus newborn baby pastinya pengalaman pertama yang sangat menantang b ukan Moms? Tapi jangan panik, disini ada Moms yang siap support kok!',
    ),
    Komunitas(
      id: '7',
      image: 'assets/working mom.jpg',
      judul: 'Working Moms',
      deskripsi:
          'Bekerja sambil mengurus anak pastinya bikin capek ya Moms? Bahkan terkadang merasa kurang waktu dengan anak. Gapapa Moms, cerita disini yuk!',
    ),
    Komunitas(
      id: '8',
      image: 'assets/special kids.jpg',
      judul: 'Special Kids',
      deskripsi:
          'Memiliki anak berkebutuhan khusus, memang menjadi tantangan tersendiri Momsday. Tapi tenang Moms, Moms disini siap membantu untuk mendengarkan dan memberikan solusi kok Moms!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'Komunitas Whatsapp',
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
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Wrap(
            spacing: 14,
            runSpacing: 15,
            children: komunitas.map((e) => kw_Business(e)).toList()
          ),
        ),
      ),
    );
  }
}
