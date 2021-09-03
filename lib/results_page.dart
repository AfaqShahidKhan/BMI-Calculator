import 'package:bmi/bottomButton.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottomButton.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;
  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'BMI Calculater',
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    resultText!,
                    style: kResultTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText!,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult!,
                        style: kBMItextStyle,
                      ),
                      Text(
                        interpretation!,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                buttonTittle: 'Re-Calculate',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          )),
    );
  }
}
