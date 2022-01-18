import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMethods extends StatelessWidget {

  const ContactMethods({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Methods :',
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
