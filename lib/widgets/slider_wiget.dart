import 'package:bmicalc/global_styles.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final void Function(double) onChanged;
  final int personHeight;

  const SliderWidget(
      {Key? key, required this.onChanged, required this.personHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.white,
              overlayColor: GlobalStyles.overlaySliderColorApp,
              thumbColor: GlobalStyles.bottomContainerColorApp,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
            ),
            child: Slider(
                inactiveColor: GlobalStyles.inactiveSliderColorApp,
                min: 120,
                max: 230,
                value: personHeight.toDouble(),
                onChanged: onChanged),
          ),
        ],
      ),
    );
  }
}
