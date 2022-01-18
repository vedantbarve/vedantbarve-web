import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {

  const AboutMe({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me :',
            style: GoogleFonts.oswald(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 500),
        ],
      ),
    );
  }
}
