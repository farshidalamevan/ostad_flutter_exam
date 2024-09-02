import 'package:flutter/material.dart';

class Responsivebuilder extends StatelessWidget {
  const Responsivebuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    if (size < 640) {
      return mobile;
    } else if (size >= 640 && size < 1008) {
      return tablet;
    }

    return desktop;
  }
}
