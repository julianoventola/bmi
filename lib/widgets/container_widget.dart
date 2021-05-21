import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;
  final Color color;

  const ContainerWidget({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: child,
    );
  }
}
