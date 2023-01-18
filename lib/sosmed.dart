import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';

class sosmed extends StatefulWidget {
  @override
  State<sosmed> createState() => _sosmedState();
}

class _sosmedState extends State<sosmed> {
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
              'Social Media',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: '747474'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lebih Dekat dengan Parentoday',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: '323232'.toColor(),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Follow dan dapatkan informasi terkini mengenai komunitas di akun sosial media kami.',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                color: '7A7A7A'.toColor(),
              ),
            ),
            SizedBox(height: 11),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/ig.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday Official',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlIG =
                          'https://www.instagram.com/parentoday/?hl=id';

                      if (await canLaunch(_urlIG)) {
                        await launch(_urlIG);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/tik-tok.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday.com',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlTT =
                          'https://www.tiktok.com/@parentoday.com?is_from_webapp=1&sender_device=pc';

                      if (await canLaunch(_urlTT)) {
                        await launch(_urlTT);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/tik-tok.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday Vibes',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlTTvibes =
                          'https://www.tiktok.com/@parentoday.vibes?is_from_webapp=1&sender_device=pc';

                      if (await canLaunch(_urlTTvibes)) {
                        await launch(_urlTTvibes);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/tik-tok.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday Samawa',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlTTsamawa =
                          'https://www.tiktok.com/@parentoday.samawa?is_from_webapp=1&sender_device=pc';

                      if (await canLaunch(_urlTTsamawa)) {
                        await launch(_urlTTsamawa);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/tik-tok.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday Daily',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlTTdaily =
                          'https://www.tiktok.com/@parentoday.daily?is_from_webapp=1&sender_device=pc';

                      if (await canLaunch(_urlTTdaily)) {
                        await launch(_urlTTdaily);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/tik-tok.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday React',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlTTreact =
                          'https://www.tiktok.com/@parentoday.react?is_from_webapp=1&sender_device=pc';

                      if (await canLaunch(_urlTTreact)) {
                        await launch(_urlTTreact);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 13),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/tik-tok.png'),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        // padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
                        child: Text(
                          'Parentoday Kwave',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ),
                    ],
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
                      final _urlTTkwave =
                          'https://www.tiktok.com/@parentoday.kwave?is_from_webapp=1&sender_device=pc';

                      if (await canLaunch(_urlTTkwave)) {
                        await launch(_urlTTkwave);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Follow Us',
                          style: GoogleFonts.poppins().copyWith(
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
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
