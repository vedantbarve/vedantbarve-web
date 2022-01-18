import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {

  final bool mobile;
  const Heading({Key? key,required this.mobile,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
      child: (mobile == true) ? Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile-picture.jfif',
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'I am a Student',
                      style: GoogleFonts.oswald(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20),
                      child: SvgPicture.asset(
                        'assets/svg/student.svg',
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'I am a Developer',
                      style: GoogleFonts.oswald(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 15),
                      child: SvgPicture.asset(
                        'assets/svg/coder.svg',
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'I am a Student',
                    style: GoogleFonts.oswald(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: SvgPicture.asset(
                      'assets/svg/student.svg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'I am a Developer',
                    style: GoogleFonts.oswald(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15),
                    child: SvgPicture.asset(
                      'assets/svg/coder.svg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile-picture.jfif',
                height: 220,
                width: 220,
              ),
            ),
          ),
        ],
      ),
    );
  }
}