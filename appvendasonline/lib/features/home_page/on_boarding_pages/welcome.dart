import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OBWelcome extends StatelessWidget {
  const OBWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          image: NetworkImage(
            ''),
        ),
      ),
    );
  }
}