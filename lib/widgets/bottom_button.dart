import 'package:bmicalc/global_styles.dart';
import 'package:flutter/material.dart';

class BottomButtonWidget extends StatelessWidget {
  final Size size;
  final VoidCallback onPressed;
  final String label;
  const BottomButtonWidget(
      {Key? key,
      required this.size,
      required this.onPressed,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: size.height * 0.08,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: GlobalStyles.bottomContainerColorApp,
          ),
          onPressed: onPressed,
          child: Text(label,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
