import 'package:flutter/material.dart';

class GenderContent extends StatelessWidget {
  final Size size;
  final IconData icon;
  final String title;

  const GenderContent({
    Key? key,
    required this.size,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: size.height * 0.1,
          color: Color(0xff8d8e98),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff8d8e98),
          ),
        )
      ],
    );
  }
}
