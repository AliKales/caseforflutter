import 'package:flutter/material.dart';

import 'circle_icon.dart';
import 'container_with_text.dart';

class HPItemView extends StatelessWidget {
  const HPItemView({Key? key, required this.onTap, required this.text})
      : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ContainerWithText(text: text),
            const Align(
              alignment: Alignment.centerRight,
              child: CircleIcon(),
            ),
          ],
        ),
      ),
    );
  }
}
