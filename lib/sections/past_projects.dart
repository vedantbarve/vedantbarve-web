import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PastProjects extends StatelessWidget {
  const PastProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Past Projects',
                style: GoogleFonts.dmSerifDisplay(fontSize: 32),
              ),
            ),
          ),
          const RSI(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Divider(),
          ),
          const Resume(),
        ],
      ),
    );
  }
}

class RSI extends StatelessWidget {
  const RSI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: Text('RSI Calculator : '),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'This app was made to fetches quotes from the MarketStack Api ,manipulate its data and output RSI values of selected stock (NSE).',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: Text('Resume :'),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'This website is a Flutter Firebase project.',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
