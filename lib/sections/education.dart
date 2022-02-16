import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.dmSerifDisplay(fontSize: 32),
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
                title: const Text('2021 - current '),
                subtitle: const ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text('Pune Institute of Computer Technology, Pune'),
                ),
                content: Container(),
                isActive: true,
              ),
              Step(
                state: StepState.complete,
                title: const Text('2019-2021'),
                subtitle: const ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text(
                    'Dr. Kalmadi Shamarao High School and Jr. College',
                  ),
                ),
                content: Container(),
                isActive: true,
              ),
              Step(
                state: StepState.complete,
                title: const Text('2009-2019'),
                subtitle: const ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text(
                    'Bal Shikshan Mandir English Medium School, Pune',
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
