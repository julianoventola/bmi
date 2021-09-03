import 'package:bmicalc/widgets/card_content.dart';
import 'package:bmicalc/widgets/slider_wiget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'global_styles.dart';
import 'widgets/container_widget.dart';

enum Gender {
  male,
  female,
}

enum CalcMethod {
  add,
  remove,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int personHeight = 183;
  int personWeight = 65;
  int personAge = 25;
  bool _buttonPressed = false;
  bool _loopActive = false;

  void _increaseCounterWhilePressed(
      CalcMethod method, String valueToChange) async {
    // make sure that only one loop is active
    if (_loopActive) return;

    _loopActive = true;

    while (_buttonPressed) {
      setState(() {
        if (valueToChange == 'age') {
          if (method == CalcMethod.add && personAge > 0) {
            personAge++;
          }
          if (method == CalcMethod.remove && personAge > 1) {
            personAge--;
          }
        }
        if (valueToChange == 'weight') {
          if (method == CalcMethod.add && personWeight > 0) {
            personWeight++;
          }
          if (method == CalcMethod.remove && personWeight > 1) {
            personWeight--;
          }
        }
      });
      await Future.delayed(Duration(milliseconds: 100));
    }

    _loopActive = false;
  }

  var maleEnabled = false;
  var femaleEnabled = false;

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
                    setState(() {
                      maleEnabled = true;
                      femaleEnabled = false;
                    });
                  },
                  child: ContainerWidget(
                    color: maleEnabled
                        ? GlobalStyles.activeCardColorApp
                        : GlobalStyles.inactiveCardColorApp,
                    child: GenderContent(
                      icon: FontAwesomeIcons.mars,
                      size: size,
                      title: 'MALE',
                      genderTextColor: maleEnabled
                          ? GlobalStyles.activeTextColorApp
                          : GlobalStyles.inactiveTextColorApp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      maleEnabled = false;
                      femaleEnabled = true;
                    });
                  },
                  child: ContainerWidget(
                    color: femaleEnabled
                        ? GlobalStyles.activeCardColorApp
                        : GlobalStyles.inactiveCardColorApp,
                    child: GenderContent(
                      icon: FontAwesomeIcons.venus,
                      size: size,
                      title: 'FEMALE',
                      genderTextColor: femaleEnabled
                          ? GlobalStyles.activeTextColorApp
                          : GlobalStyles.inactiveTextColorApp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: ContainerWidget(
            child: SliderWidget(
              onChanged: (value) {
                setState(() {
                  personHeight = value.round();
                });
              },
              personHeight: personHeight,
            ),
          )),
          Row(
            children: [
              Expanded(
                child: ContainerWidget(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          fontSize: GlobalStyles.textFontSize,
                          fontWeight: GlobalStyles.textFontBold,
                        ),
                      ),
                      Text(
                        personWeight.toString(),
                        style: TextStyle(
                          fontSize: GlobalStyles.largeTextFontSize,
                          fontWeight: GlobalStyles.largeTextFontBold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Listener(
                            onPointerDown: (details) async {
                              _buttonPressed = true;
                              _increaseCounterWhilePressed(
                                  CalcMethod.remove, 'weight');
                            },
                            onPointerUp: (details) {
                              _buttonPressed = false;
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff4c4f5e),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Listener(
                            onPointerDown: (details) async {
                              _buttonPressed = true;
                              _increaseCounterWhilePressed(
                                  CalcMethod.add, 'weight');
                            },
                            onPointerUp: (details) {
                              _buttonPressed = false;
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff4c4f5e),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ContainerWidget(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: GlobalStyles.textFontSize,
                          fontWeight: GlobalStyles.textFontBold,
                        ),
                      ),
                      Text(
                        personAge.toString(),
                        style: TextStyle(
                          fontSize: GlobalStyles.largeTextFontSize,
                          fontWeight: GlobalStyles.largeTextFontBold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Listener(
                            onPointerDown: (details) async {
                              _buttonPressed = true;
                              _increaseCounterWhilePressed(
                                  CalcMethod.remove, 'age');
                            },
                            onPointerUp: (details) {
                              _buttonPressed = false;
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff4c4f5e),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Listener(
                            onPointerDown: (details) async {
                              _buttonPressed = true;
                              _increaseCounterWhilePressed(
                                  CalcMethod.add, 'age');
                            },
                            onPointerUp: (details) {
                              _buttonPressed = false;
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff4c4f5e),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
