import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(),
        SizedBox(
          height: 50,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Made with '),
                Icon(
                  Icons.favorite,
                  color: Colors.pinkAccent,
                ),
                Text(' in Flutter')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
