import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  String? text;
  IconData? icon;
  double size;
  final Color BorderColor;
  bool isIcon;

  AppButtons(
      {Key? key,
      this.isIcon = false,
      this.icon,
      this.text,
      required this.size,
      required this.backgroundcolor,
      required this.BorderColor,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 191, 212, 210),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundcolor,
      ),
    );
  }
}
