import 'package:flutter/material.dart';

import 'on_boarding_pages/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final PageController controller = PageController();
    return Material(
      child: PageView(
        // scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),

        // controller: controller,
        children: const <Widget>[
          OBWelcome(),  
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