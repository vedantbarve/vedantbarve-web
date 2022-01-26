import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class OnGoingProjects extends StatelessWidget {
  const OnGoingProjects({
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
            'Ongoing Projects :',
            style: Theme.of(context).textTheme.headline5,
          ),
          Column(
            children: const [JTGallery()],
          )
        ],
      ),
    );
  }
}

class JTGallery extends StatelessWidget {
  const JTGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // trailing: IconButton(
      //   icon: const Icon(Icons.open_in_browser),
      //   onPressed: () async {
      //     await launch('https://janhavee-tamboli-gallery.web.app/');
      //   },
      // ),
      leading: const Text('1.'),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text('Janhavee Tamboli Gallery : '),
          ),
          Text(
            'Janhavee Tamboli Gallery is an on-going project.It is a stand alone platform to showcase originals and prints by Janhavee Tamboli.',
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          children: [
            Text(
              'Technologies Used :',
              style: GoogleFonts.robotoMono(),
            ),
            SvgPicture.asset(
              'assets/svg/dart.svg',
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
            SvgPicture.asset(
              'assets/svg/flutter.svg',
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
            SvgPicture.asset(
              'assets/svg/firebase.svg',
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
