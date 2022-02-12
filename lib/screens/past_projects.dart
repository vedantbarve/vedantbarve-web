import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vedantbarve/screens/home.dart';

class PastProjects extends StatelessWidget {
  const PastProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Past Projects :',
            style: Theme.of(context).textTheme.headline5,
          ),
          const RSIWidget(),
          const CustomDivider(),
          const Resume(),
        ],
      ),
    );
  }
}

class RSIWidget extends StatelessWidget {
  const RSIWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text('1.'),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text('RSI : '),
          ),
          Text(
              'This app was made to fetches quotes from the MarketStack Api ,manipulate its data and output RSI values of selected stock (NSE).')
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
          ],
        ),
      ),
    );
  }
}

class Attendence extends StatelessWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text('3.'),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text('Attendence Automation : '),
          ),
          Text(
              'This command line application was used for attendence automation.')
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
              'assets/svg/python.svg',
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

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text('2.'),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text('Resume / CV : '),
          ),
          Text('This website is a Flutter Firebase project.')
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
