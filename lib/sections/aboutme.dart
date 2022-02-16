import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  final double width;
  const AboutMe({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (width > 768)
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
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
                          style: GoogleFonts.oswald(fontSize: 48),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 20),
                          child: SvgPicture.asset(
                            'assets/svg/logo/student.svg',
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
                          style: GoogleFonts.oswald(fontSize: 48),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 15),
                          child: SvgPicture.asset(
                            'assets/svg/logo/coder.svg',
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
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 92, 134),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/developer.gif',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: 30,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 92, 134), width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/developer.gif',
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
                          style: GoogleFonts.oswald(fontSize: 38),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 20),
                          child: SvgPicture.asset(
                            'assets/svg/logo/student.svg',
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'I am a Developer',
                          style: GoogleFonts.oswald(fontSize: 38),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 15),
                          child: SvgPicture.asset(
                            'assets/svg/logo/coder.svg',
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
