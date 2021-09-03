import 'package:bmicalc/global_styles.dart';
import 'package:bmicalc/widgets/bottom_button.dart';
import 'package:bmicalc/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmiResult;
  final String recommendation;

  const ResultPage(
      {Key? key,
      required this.result,
      required this.bmiResult,
      required this.recommendation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 10),
                      child: Text(
                        'Your Result',
                        style: TextStyle(
                          fontSize: GlobalStyles.largeTextFontSize,
                          fontWeight: GlobalStyles.largeTextFontBold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ContainerWidget(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              result,
                              style: TextStyle(
                                color: GlobalStyles.resultTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: GlobalStyles.textResultFontSize,
                              ),
                            ),
                            Text(
                              bmiResult,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: GlobalStyles.textBMIFontSize,
                              ),
                            ),
                            Text(
                              recommendation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    GlobalStyles.textRecomendationFontSize,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButtonWidget(
              label: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
              size: MediaQuery.of(context).size,
            )
          ],
        ),
      ),
    );
  }
}
