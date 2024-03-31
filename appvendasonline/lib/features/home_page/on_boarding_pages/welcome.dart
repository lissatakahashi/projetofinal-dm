import 'package:appvendasonline/features/home_page/on_boarding_pages/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OBWelcome extends StatelessWidget {
  
  const OBWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OBBackground(
      imageProvider: NetworkImage(
        'https://images.pexels.com/photos/3765550/pexels-photo-3765550.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), 
      topText: 'Fashion Fusion',
    );
  }
}