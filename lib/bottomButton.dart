import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? buttonTittle;
  BottomButton({this.buttonTittle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Container(
        child: Center(
          child: Text(
            buttonTittle!,
            style: kLargeButton,
          ),
        ),
        color: kbootomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}
