import 'package:flutter/material.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    Key key,
    this.firstTitle,
    this.secondTitle,
  }) : super(key: key);

  final String secondTitle;
  final String firstTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            firstTitle,
            style: TextStyle(fontSize: 35),
          ),
          Text(
            secondTitle,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
