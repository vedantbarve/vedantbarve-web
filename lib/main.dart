import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vedantbarve/screens/home.dart';

void main() {
  runApp(
    const RootWidget(),
  );
}

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(13, 35, 58, 1),
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.robotoMono(
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        colorScheme: const ColorScheme.light(primary: Colors.white),
      ),
      home: const HomeView(),
    );
  }
}
