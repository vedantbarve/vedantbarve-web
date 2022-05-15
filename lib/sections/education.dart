import 'package:flutter/material.dart';

import '../global/font_style.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

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
                'Education',
                style: poppins(),
              ),
            ),
          ),
          Stepper(
            physics: const NeverScrollableScrollPhysics(),
            controlsBuilder: ((context, details) {
              return Container();
            }),
            currentStep: 2,
            steps: [
              Step(
                state: StepState.complete,
                title: const Text(
                  '2021 - current',
                  style: TextStyle(fontFamily: 'Sofia-Pro'),
                ),
                subtitle: const ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text(
                    'Pune Institute of Computer Technology, Pune',
                    style: TextStyle(fontFamily: 'Sofia-Pro'),
                  ),
                ),
                content: Container(),
                isActive: true,
              ),
              Step(
                state: StepState.complete,
                title: const Text(
                  '2019-2021',
                  style: TextStyle(fontFamily: 'Sofia-Pro'),
                ),
                subtitle: const ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text(
                    'Dr. Kalmadi Shamarao High School and Jr. College',
                    style: TextStyle(fontFamily: 'Sofia-Pro'),
                  ),
                ),
                content: Container(),
                isActive: true,
              ),
              Step(
                state: StepState.complete,
                title: const Text(
                  '2009-2019',
                  style: TextStyle(fontFamily: 'Sofia-Pro'),
                ),
                subtitle: const ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text(
                    'Bal Shikshan Mandir English Medium School, Pune',
                    style: TextStyle(fontFamily: 'Sofia-Pro'),
                  ),
                ),
                content: Container(),
                isActive: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
