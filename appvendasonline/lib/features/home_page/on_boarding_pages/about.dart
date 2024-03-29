import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/background.dart';

class OBAbout extends StatelessWidget {
  const OBAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
return const OBBackground(
      imageProvider: AssetImage('assets/images/about.jpeg'), 
      topText: 'Seja bem-vindo(a) ao Fashion Fusion!',
    );
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        // color: Colors.amber,
        image: DecorationImage(
          colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.7),
            BlendMode.darken,
          ),
          fit: BoxFit.cover,
          // alignment: Alignment.topCenter,
          image: const AssetImage(
            'assets/images/about.jpeg'),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 60.0, 
          left: 8, 
          right: 8,
        ),
        child: Text(
          'Seja bem-vindo(a) ao Fashion Fusion!',
          style: TextStyle(
            color: Colors.white, 
            fontSize: 30, 
            fontWeight: FontWeight.bold,
    
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}