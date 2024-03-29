import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'on_boarding_pages/about.dart';
import 'on_boarding_pages/welcome.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageViewController = PageController();
  int _selectedPage = 0;

  final List<Widget> _pages = [
    const OBWelcome(),  
    const OBAbout(),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Third Page'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),         
            controller: _pageViewController,
            children: _pages,
            onPageChanged: (value) => setState(() {}),
          ),
          Visibility(visible: _selectedPage<2,
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () =>
                _pageViewController.animateToPage(
                  ++_selectedPage, 
                  duration: const Duration(seconds: 1), 
                  curve: Curves.bounceInOut,
                ), 
                child: const Text(
                  'Próximo', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 30, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          if(_selectedPage > 0)
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () =>
                _pageViewController.animateToPage(
                  --_selectedPage, 
                  duration: const Duration(seconds: 1), 
                  curve: Curves.decelerate,
                ), 
                child: const Text(
                  'Anterior', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 30, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}