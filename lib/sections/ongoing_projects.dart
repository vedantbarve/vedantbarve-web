import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../global/font_style.dart';

class OngoingProjects extends StatelessWidget {
  const OngoingProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Ongoing Projects',
                style: poppins(),
              ),
            ),
          ),
          const ContentTile(
            title: 'PCSB-Offical App :',
            description: '''
\u2022 PCSB is the PICT Student Branch.
\u2022 All communication between members and Admins will be shifted here.
\u2022 One to one Chat feature enabled.
''',
          ),
          const ContentTile(
            title: 'Janhavee Tamboli :',
            description:
                'Janhavee Tamboli Gallery is an on-going project.It is a stand alone platform to showcase originals and prints by Janhavee Tamboli.',
          )
        ],
      ),
    );
  }
}

class ContentTile extends StatelessWidget {
  final String title;
  final String description;

  const ContentTile({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: const TextStyle(
              fontFamily: 'Sofia-Pro',
              wordSpacing: 1,
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              const Text(
                'Technologies Used :',
                style: TextStyle(
                  fontFamily: 'Sofia-Pro',
                  fontSize: 16,
                ),
              ),
              SvgPicture.asset(
                'assets/svg/logo/dart.svg',
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
              SvgPicture.asset(
                'assets/svg/logo/flutter.svg',
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/svg/logo/firebase.png',
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
