import 'package:bmicalc/input_page.dart';
import 'package:bmicalc/global_styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: GlobalStyles.backgroundColorApp,
        scaffoldBackgroundColor: GlobalStyles.backgroundColorApp,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
