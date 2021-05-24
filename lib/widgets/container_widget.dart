import 'package:bmicalc/global_styles.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget? child;
  final Color color;

  const ContainerWidget({
    Key? key,
    this.child,
    this.color = GlobalStyles.activeCardColorApp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      height: MediaQuery.of(context).size.height * 0.23,
      child: child,
    );
  }
}
