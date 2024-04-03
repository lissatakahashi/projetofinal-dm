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
      topText: 'Está em busca de conforto, praticidade e elegância? Venha descobrir o que a Fashion Fusion tem a oferecer no mundo da moda feminina.',
    );
  }
}