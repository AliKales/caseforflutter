import 'package:flutter/material.dart';

import 'circle_icon.dart';
import 'container_with_text.dart';

class HPItemView extends StatelessWidget {
  const HPItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Stack(
        alignment: Alignment.center,
        children: const [
          ContainerWithText(),
          Align(
            alignment: Alignment.centerRight,
            child: CircleIcon(),
          ),
        ],
      ),
    );
  }
}
