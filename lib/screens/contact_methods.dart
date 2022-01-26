import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMethods extends StatelessWidget {
  const ContactMethods({
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
            'Contact Methods :',
            style: Theme.of(context).textTheme.headline5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launch('https://github.com/vedantbarve');
                  },
                  child: SvgPicture.asset(
                    'assets/svg/github.svg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () async {
                    await launch('https://www.instagram.com/vedant_barve/');
                  },
                  child: SvgPicture.asset(
                    'assets/svg/instagram.svg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () async {
                    await launch(
                        'https://www.linkedin.com/in/vedant-barve-54411a1b8?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BxrSBObGET8y0bJGHH7j6yg%3D%3D');
                  },
                  child: SvgPicture.asset(
                    'assets/svg/linkedin.svg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
