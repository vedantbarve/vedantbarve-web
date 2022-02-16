import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vedantbarve/sections/aboutme.dart';
import 'package:vedantbarve/sections/contactme.dart';
import 'package:vedantbarve/sections/courses.dart';
import 'package:vedantbarve/sections/education.dart';
import 'package:vedantbarve/sections/ongoing_projects.dart';
import 'package:vedantbarve/sections/past_projects.dart';
import 'package:vedantbarve/sections/skills.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemController = ItemScrollController();
    final itemPositionListener = ItemPositionsListener.create();

    scrollToIndex(int index) {
      itemController.scrollTo(
        index: index,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutBack,
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        List<Widget> _widgets = [
          AboutMe(width: constraints.maxWidth),
          const Skills(),
          const OngoingProjects(),
          const PastProjects(),
          const Courses(),
          const Education(),
          const ContactMethods(),
        ];

        return Scaffold(
          endDrawer: (constraints.maxWidth > 800)
              ? null
              : Drawer(
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          scrollToIndex(1);
                        },
                        title: const Text('Skills'),
                        leading: const Icon(Icons.navigate_before),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          scrollToIndex(2);
                        },
                        title: const Text('Projects'),
                        leading: const Icon(Icons.navigate_before),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          scrollToIndex(4);
                        },
                        title: const Text('Courses & Certificates'),
                        leading: const Icon(Icons.navigate_before),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          scrollToIndex(5);
                        },
                        title: const Text('Education'),
                        leading: const Icon(Icons.navigate_before),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          scrollToIndex(6);
                        },
                        title: const Text('Contact Methods'),
                        leading: const Icon(Icons.navigate_before),
                      ),
                      ListTile(
                        onTap: () {
                          launch(
                              'https://firebasestorage.googleapis.com/v0/b/vedant-barve.appspot.com/o/Vedant%20Barve.pdf?alt=media&token=d1417a77-098e-4aac-8f62-b0000f94ee97');
                        },
                        title: const Text('View Resume'),
                        leading: const Icon(Icons.open_in_browser),
                      ),
                    ],
                  ),
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => scrollToIndex(
              _widgets.indexOf(_widgets.last),
            ),
            child: const Icon(
              Icons.arrow_downward,
              color: Colors.blueAccent,
            ),
          ),
          appBar: AppBar(
            title: const Text('Vedant Barve'),
            actions: (constraints.maxWidth > 800)
                ? [
                    TextButton(
                      onPressed: () => scrollToIndex(1),
                      child: Text(
                        'Skills',
                        style: Theme.of(context).appBarTheme.toolbarTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToIndex(2),
                      child: Text(
                        'Projects',
                        style: Theme.of(context).appBarTheme.toolbarTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToIndex(4),
                      child: Text(
                        'Courses & Certificates',
                        style: Theme.of(context).appBarTheme.toolbarTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToIndex(5),
                      child: Text(
                        'Education',
                        style: Theme.of(context).appBarTheme.toolbarTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToIndex(6),
                      child: Text(
                        'Contact Methods',
                        style: Theme.of(context).appBarTheme.toolbarTextStyle,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () => launch(
                          'https://firebasestorage.googleapis.com/v0/b/vedant-barve.appspot.com/o/Vedant%20Barve.pdf?alt=media&token=d1417a77-098e-4aac-8f62-b0000f94ee97'),
                      icon: const Icon(
                        Icons.open_in_browser,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Resume',
                        style: Theme.of(context).appBarTheme.toolbarTextStyle,
                      ),
                    )
                  ]
                : [],
          ),
          body: ScrollablePositionedList.builder(
            itemScrollController: itemController,
            itemPositionsListener: itemPositionListener,
            itemCount: _widgets.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: (constraints.maxWidth > 800)
                    ? const EdgeInsets.symmetric(horizontal: 100)
                    : EdgeInsets.zero,
                child: _widgets[index],
              );
            },
          ),
        );
      },
    );
  }
}
