import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'global_styles.dart';
import 'widgets/card_content.dart';
import 'widgets/container_widget.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = GlobalStyles.inactiveCardColorApp;
  Color femaleCardColor = GlobalStyles.inactiveCardColorApp;
  Color maleTextCardColor = GlobalStyles.inactiveTextColorApp;
  Color femaleTextCardColor = GlobalStyles.inactiveTextColorApp;

  void selectGenderCard({required Gender gender}) {
    if (gender == Gender.male) {
      maleCardColor = GlobalStyles.activeCardColorApp;
      maleTextCardColor = GlobalStyles.activeTextColorApp;
      femaleCardColor = GlobalStyles.inactiveCardColorApp;
      femaleTextCardColor = GlobalStyles.inactiveTextColorApp;
    } else {
      maleCardColor = GlobalStyles.inactiveCardColorApp;
      maleTextCardColor = GlobalStyles.inactiveTextColorApp;
      femaleCardColor = GlobalStyles.activeCardColorApp;
      femaleTextCardColor = GlobalStyles.activeTextColorApp;
    }
  }

  // This var must be outside widget
  int personHeight = 183;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectGenderCard(gender: Gender.male);
                    setState(() {});
                  },
                  child: ContainerWidget(
                    color: maleCardColor,
                    child: GenderContent(
                      icon: FontAwesomeIcons.mars,
                      size: size,
                      title: 'MALE',
                      genderTextColor: maleTextCardColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectGenderCard(gender: Gender.female);
                    setState(() {});
                  },
                  child: ContainerWidget(
                    color: femaleCardColor,
                    child: GenderContent(
                      icon: FontAwesomeIcons.venus,
                      size: size,
                      title: 'FEMALE',
                      genderTextColor: femaleTextCardColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: ContainerWidget(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: GlobalStyles.textFontSize,
                      fontWeight: GlobalStyles.textFontBold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline
                        .alphabetic, // required for crossAxisAlignment as baseline
                    children: [
                      Text(
                        personHeight.toString(),
                        style: TextStyle(
                          fontSize: GlobalStyles.largeTextFontSize,
                          fontWeight: GlobalStyles.largeTextFontBold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: GlobalStyles.textFontSize,
                          fontWeight: GlobalStyles.textFontBold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                      activeColor: GlobalStyles.bottomContainerColorApp,
                      inactiveColor: GlobalStyles.inactiveSliderColorApp,
                      min: 120,
                      max: 230,
                      value: personHeight.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          personHeight = value.round();
                        });
                      }),
                ],
              ),
            ),
          )),
          Row(
            children: [
              Expanded(child: ContainerWidget()),
              Expanded(child: ContainerWidget()),
            ],
          ),
          Container(
            width: double.maxFinite,
            height: size.height * 0.08,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: GlobalStyles.bottomContainerColorApp,
                ),
                onPressed: () {},
                child: Text('CALCULATE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
          )
        ],
      ),
    );
  }
}
