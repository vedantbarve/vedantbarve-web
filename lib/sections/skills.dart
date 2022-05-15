import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vedantbarve/global/font_style.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Skills',
                style: poppins(),
              ),
            ),
          ),
          GridView.extent(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            maxCrossAxisExtent: 150,
            children: [
              const Logo(title: 'C++', logoName: 'c++'),
              const Logo(title: 'Python', logoName: 'python'),
              const Logo(title: 'Java', logoName: 'java'),
              const Logo(title: 'Html5', logoName: 'html'),
              const Logo(title: 'CSS3', logoName: 'css'),
              const Logo(title: 'Dart', logoName: 'dart'),
              const Logo(title: 'Flutter', logoName: 'flutter'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/svg/logo/firebase.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Firebase',
                      style: TextStyle(fontFamily: 'Sofia-Pro'),
                    ),
                  ),
                ],
              ),
              const Logo(title: 'Git', logoName: 'git'),
              const Logo(title: 'Javascript', logoName: 'javascript'),
              const Logo(title: 'Nodejs', logoName: 'nodejs'),
            ],
          ),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final String title;
  final String logoName;
  const Logo({Key? key, required this.title, required this.logoName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          'assets/svg/logo/$logoName.svg',
          height: 80,
          width: 80,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            style: const TextStyle(fontFamily: 'Sofia-Pro'),
          ),
        ),
      ],
    );
  }
}
