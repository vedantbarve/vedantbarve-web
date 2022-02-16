import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.dmSerifDisplay(fontSize: 32),
              ),
            ),
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text('PCSB-Offical App :'),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('PCSB is the PICT Student Branch.'),
                    Text(
                        'All communication between members and Admins will be shifted here.'),
                    Text('One to one Chat feature enabled.'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Text(
                        'Technologies Used :',
                        style: GoogleFonts.robotoMono(),
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
                ),
              ],
            ),
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text('Janhavee Tamboli :'),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Janhavee Tamboli Gallery is an on-going project.It is a stand alone platform to showcase originals and prints by Janhavee Tamboli.',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Text(
                        'Technologies Used :',
                        style: GoogleFonts.robotoMono(),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
