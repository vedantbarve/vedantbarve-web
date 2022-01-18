import 'package:flutter/material.dart';

import 'about_me.dart';
import 'contact_methods.dart';
import 'heading.dart';
import 'ongoing_projects.dart';
import 'past_projects.dart';
import 'skills.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();

    animateToBottom() {
      _controller.animateTo(
        _controller.position.maxScrollExtent,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOutBack,
      );
    }

    // List<Widget> action = [
    //   TextButton(
    //     onPressed: () {},
    //     child: const Text('About Me'),
    //   ),
    //   TextButton(
    //     onPressed: () {},
    //     child: const Text('Skills'),
    //   ),
    //   TextButton(
    //     onPressed: () {},
    //     child: const Text('Ongoing Projects'),
    //   ),
    //   TextButton(
    //     onPressed: () {},
    //     child: const Text('Past Projects'),
    //   ),
    //   TextButton(
    //     onPressed: () {},
    //     child: const Text('Contact Methods'),
    //   ),
    // ];

    // List<String> drawerList = [
    //   'About Me',
    //   'Skills',
    //   'Ongoing Projects',
    //   'Past Projects',
    //   'Contact Methods',
    // ];

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 768) {
        return Scaffold(
          floatingActionButton: FloatingActionButton.small(
            onPressed: () => animateToBottom(),
            child: const Icon(Icons.arrow_downward),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Vedant Barve'),
            // actions: (constraints.maxWidth > 768) ? action : [],
          ),
          body: ListView(
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            children: [
              Heading(mobile: (constraints.maxWidth < 768) ? true : false),
              const CustomDivider(),
              const AboutMe(),
              const CustomDivider(),
              const Skills(),
              const CustomDivider(),
              const OnGoingProjects(),
              const CustomDivider(),
              const PastProjects(),
              const CustomDivider(),
              const ContactMethods(),
            ],
          ),
        );
      }
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => animateToBottom(),
          child: const Icon(Icons.arrow_downward),
        ),
        appBar: AppBar(
          centerTitle: (constraints.maxWidth < 768) ? true : false,
          title: const Text('Vedant Barve'),
        ),
        body: ListView(
          controller: _controller,
          physics: const BouncingScrollPhysics(),
          children: [
            Heading(mobile: (constraints.maxWidth < 768) ? true : false),
            const CustomDivider(),
            const AboutMe(),
            const CustomDivider(),
            const Skills(),
            const CustomDivider(),
            const OnGoingProjects(),
            const CustomDivider(),
            const PastProjects(),
            const CustomDivider(),
            const ContactMethods(),
          ],
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       ListTile(
        //         onTap: () {},
        //         title: const Text('About Me'),
        //       ),
        //       ListTile(
        //         onTap: () {},
        //         title: const Text('Skills'),
        //       ),
        //       ListTile(
        //         onTap: () {},
        //         title: const Text('Ongoing Projects'),
        //       ),
        //       ListTile(
        //         onTap: () {},
        //         title: const Text('Past Projects'),
        //       ),
        //       ListTile(
        //         onTap: () {},
        //         title: const Text('Contact Methods'),
        //       ),
        //     ],
        //   ),
        // ),
      );
    });
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: const Divider(color: Colors.white),
    );
  }
}
