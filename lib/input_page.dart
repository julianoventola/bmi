import 'package:flutter/material.dart';

import 'widgets/container_widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: ContainerWidget()),
              Expanded(child: ContainerWidget()),
            ],
          ),
          Expanded(child: ContainerWidget()),
          Row(
            children: [
              Expanded(child: ContainerWidget()),
              Expanded(child: ContainerWidget()),
            ],
          ),
        ],
      ),
    );
  }
}
