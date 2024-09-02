import 'package:flutter/material.dart';

class content extends StatelessWidget {
  const content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'FLUTTER WEB. \n THE BASICS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          'In this course we will go over the basics of using\nFlutter Web for development. Topics will include\nResponsive Layout, Deploying, Font Changes, Hover\nfunctionality, Modals and more.',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
