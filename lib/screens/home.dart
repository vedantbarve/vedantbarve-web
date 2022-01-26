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

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 768) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (_controller.hasClients) {
                final position = _controller.position.maxScrollExtent;
                _controller.animateTo(
                  position,
                  duration: const Duration(seconds: 3),
                  curve: Curves.easeInOutBack,
                );
              }
            },
            isExtended: true,
            child: const Icon(Icons.arrow_downward),
          ),
          appBar: AppBar(
            centerTitle: true,
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
        );
      }
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_controller.hasClients) {
              final position = _controller.position.maxScrollExtent;
              _controller.animateTo(
                position,
                duration: const Duration(seconds: 3),
                curve: Curves.easeInOutBack,
              );
            }
          },
          isExtended: true,
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
            const CustomDivider(),
          ],
        ),
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
