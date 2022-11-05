import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';
import '../constants.dart';
import '../Pages/homePage.dart';

class CompletePaymentScreen extends StatelessWidget {
  const CompletePaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarProgrss() async {
      var duration = const Duration(seconds: 4);
      return Timer(duration, () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
          return CompliteOrder();
        }));
      });
    }

    @override
    Size size = MediaQuery.of(context).size;

    return Builder(builder: (context) {
      StarProgrss();
      return Scaffold(
          backgroundColor: kPrimaryColor,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 0.7.sh,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.3.sh,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () async {
                            await Future.delayed(Duration(seconds: 4));
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) {
                              return CompliteOrder();
                            }));
                          },
                          child: RiveAnimation.asset(
                            "assets/rive/sounstore_orderanimation.riv",
                            fit: BoxFit.contain,
                            animations: ["book"],
                            artboard: "OrderProgress",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Order Progress",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy \n text of the printing and \n typesetting industry. ",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      // Text(StarProgrss().then((value) => null))
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
  }
}

class CompliteOrder extends StatelessWidget {
  const CompliteOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 0.6.sh,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 0.3.sh,
                      width: double.infinity,
                      child: RiveAnimation.asset(
                        "assets/rive/sounstore_orderanimation.riv",
                        fit: BoxFit.contain,
                        animations: ["compliteOrder"],
                        artboard: "OurderComplite",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Order Complete",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy \n text of the printing and \n typesetting industry. ",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.1 - 30,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/BottomNavBar');
                  },
                  child: Text(
                    "Back to Home",
                    style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
