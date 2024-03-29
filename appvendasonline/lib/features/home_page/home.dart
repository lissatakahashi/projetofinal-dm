import 'package:flutter/material.dart';

import 'on_boarding_pages/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageViewController = PageController();
    return Material(
      child: PageView(
        // scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),

        controller: pageViewController,
        children: <Widget>[
          OBWelcome(controller: pageViewController),  
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          ),
        ],
      ),
    );
  }
}