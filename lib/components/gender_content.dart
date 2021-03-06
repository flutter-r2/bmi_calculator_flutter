import 'package:flutter/material.dart';

import '../constants.dart';

class GenderContent extends StatelessWidget {
  final IconData? genderIcon;
  final String label;

  // ignore: use_key_in_widget_constructors
  const GenderContent({required this.genderIcon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
