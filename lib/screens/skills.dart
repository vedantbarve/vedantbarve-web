import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Skills :',
            style: GoogleFonts.oswald(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 20.0,
              children: [
                SvgPicture.asset(
                  'assets/svg/c++.svg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                SvgPicture.asset(
                  'assets/svg/python.svg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                SvgPicture.asset(
                  'assets/svg/dart.svg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                SvgPicture.asset(
                  'assets/svg/flutter.svg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
