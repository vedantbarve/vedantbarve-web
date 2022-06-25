import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vedantbarve/global/constants.dart';
import '../../global/font_style.dart';

class ContactMethods extends StatelessWidget {
  const ContactMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Contact Methods',
              style: poppins(),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () async => await launch(github),
                  child: SvgPicture.asset(
                    'assets/svg/logo/github.svg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 17),
                GestureDetector(
                  onTap: () async => await launch(instagram),
                  child: SvgPicture.asset(
                    'assets/svg/logo/instagram.svg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () async => await launch(linkedin),
                  child: SvgPicture.asset(
                    'assets/svg/logo/linkedin.svg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
