import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OBWelcome extends StatelessWidget {
  final PageController controller;
  
  const OBWelcome({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              colorFilter:
                ColorFilter.mode(Colors.black.withOpacity(0.7),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
              // alignment: Alignment.topCenter,
              image: const NetworkImage(
                'https://media.istockphoto.com/id/1267770726/pt/vetorial/woman-trying-on-clothes-in-a-clothing-store.jpg?s=612x612&w=0&k=20&c=4CaH9TQVszGDMp31C50VrPPeJ4TKVY2hHwkqyBnjPMM='),
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
        ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {}, 
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
      ],
    );
  }
}