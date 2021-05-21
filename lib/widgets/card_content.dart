import 'package:flutter/material.dart';

class GenderContent extends StatelessWidget {
  final Size size;
  final IconData icon;
  final String title;
  final Color genderTextColor;

  const GenderContent({
    Key? key,
    required this.size,
    required this.icon,
    required this.title,
    required this.genderTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: size.height * 0.1,
          color: genderTextColor,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: genderTextColor,
          ),
        )
      ],
    );
  }
}
