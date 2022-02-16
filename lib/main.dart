import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vedantbarve/screens/home.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    const RootWidget(),
  );
}

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const ScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: const Color(0xff083c5d),
          titleTextStyle: GoogleFonts.dmSerifDisplay(
            fontSize: 32,
            color: Colors.white,
          ),
          toolbarTextStyle: GoogleFonts.dmSerifDisplay(color: Colors.white),
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.dmSerifDisplay(),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color(0xffd98310),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff083c5d),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
