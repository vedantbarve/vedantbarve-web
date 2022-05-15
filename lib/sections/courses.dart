import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../global/font_style.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> _content = [
      {
        'title': 'Internship Jantu Labs',
        'image': 'assets/images/jantulabs.jpg',
        'url':
            'https://firebasestorage.googleapis.com/v0/b/vedant-barve.appspot.com/o/Exp_letter_Vedant%20(1).pdf?alt=media&token=3b03d009-868d-44bd-a11f-539dc594d167',
      },
      {
        'title': 'Git and Github Bootcamp',
        'image': 'assets/images/git_course_certificate.jpg',
        'url':
            'https://firebasestorage.googleapis.com/v0/b/vedant-barve.appspot.com/o/git_course_certificate.pdf?alt=media&token=dfe45f3d-28f8-4cef-9eff-1573767d60e2',
      },
    ];
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Courses & Certificates',
                style: poppins(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 20, left: 20),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              children: _content
                  .map(
                    (item) => SizedBox(
                      height: 250,
                      width: 250,
                      child: GestureDetector(
                        onTap: () => launch(item['url']),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 2,
                          child: Column(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    item['image'],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  item['title'],
                                  style:
                                      const TextStyle(fontFamily: 'Sofia-Pro'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
