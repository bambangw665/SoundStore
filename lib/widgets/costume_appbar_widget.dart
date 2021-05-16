import 'package:flutter/material.dart';

class CostumeAppbar extends StatelessWidget {
  const CostumeAppbar({
    Key key,
    this.leftIcon,
    this.rightIcon,
    this.linkLeft,
    this.linkRight,
  }) : super(key: key);

  final IconData rightIcon;
  final IconData leftIcon;
  final Widget linkLeft;
  final Widget linkRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(
              leftIcon,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => linkLeft,
                  ));
            },
          ),
          IconButton(
            icon: Icon(
              rightIcon,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => linkRight,
                  ));
            },
          ),
        ],
      ),
    );
  }
}
