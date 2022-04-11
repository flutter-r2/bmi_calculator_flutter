import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  final Color color;
  final Widget child;
  final void Function()? tap;

  // ignore: use_key_in_widget_constructors
  const BMICard(
      {required this.color, this.child = const SizedBox.expand(), this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
