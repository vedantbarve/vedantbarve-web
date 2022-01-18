import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me :',
            style: GoogleFonts.oswald(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Hello my name is Vedant Barve'),
                Text('PICT 25'),
                Text('18 | Pune '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
