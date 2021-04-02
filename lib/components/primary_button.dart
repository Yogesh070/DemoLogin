import 'package:flutter/material.dart';
import 'package:khajaghar/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  PrimaryButton({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(5),
      // color: Colors.black,
      width: double.infinity,
      child: ElevatedButton(
        child: Text(title),
        onPressed: () {
          print('login button pressed');
        },
        style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.symmetric(vertical: 15),
          // style: ButtonStyle(
          //   padding: EdgeInsetsGeometry.lerp(),
          //   elevation: MaterialStateProperty.all(10),
          //   backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          // ),
        ),
      ),
    );
  }
}
