import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vedantbarve/screens/home.dart';

void main() {
  setPathUrlStrategy();
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const ScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(13, 35, 58, 1),
        textTheme: TextTheme(
          headline5: GoogleFonts.merriweather(fontSize: 28),
          headline6: GoogleFonts.merriweather(),
          subtitle1: GoogleFonts.playfairDisplay(),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.merriweather(
            fontSize: 28,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        colorScheme: const ColorScheme.dark(primary: Colors.white),
      ),
      home: const HomeView(),
    );
  }
}
