import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/card_content.dart';
import 'widgets/container_widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ContainerWidget(
                  child: GenderContent(
                    icon: FontAwesomeIcons.mars,
                    size: size,
                    title: 'MALE',
                  ),
                ),
              ),
              Expanded(
                  child: ContainerWidget(
                child: GenderContent(
                  icon: FontAwesomeIcons.venus,
                  size: size,
                  title: 'FEMALE',
                ),
              )),
            ],
          ),
          //Expanded(child: ContainerWidget()),
          /*Row(
            children: [
              Expanded(child: ContainerWidget()),
              Expanded(child: ContainerWidget()),
            ],
          ),*/
        ],
      ),
    );
  }
}
