import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../widgets/appbtn_widget.dart';

import 'complete_payment.dart';

// class PayementScreen extends StatefulWidget {
//   const PayementScreen({Key? key}) : super(key: key);

//   @override
//   State<PayementScreen> createState() => _PayementScreenState();
// }

// class _PayementScreenState extends State<PayementScreen> {

// }

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  // selected index
  int selectedIndex = -1;

  final List<String?> listImage = [
    "assets/images/visa.png"
        "assets/images/ovo.png"
        "assets/images/linkAja.png"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Payment",
          style: GoogleFonts.poppins(
            color: kTextColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  AmmoutPayment(),
                  selectedPayment(),
                  SizedBox(
                    height: 20.h,
                  ),
                  payment_select(),
                  insertNumber(),
                ],
              ),
            ),
            SizedBox(
              height: 0.2.sh - 20,
            ),
            btnConfirmPayment(size, context)
          ],
        ),
      ),
    );
  }

  Container btnConfirmPayment(Size size, BuildContext context) {
    return Container(
      height: size.height * 0.1 - 30,
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => PayementScreen()));
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => CompletePaymentScreen()),
              (Route<dynamic> route) => false);
        },
        child: Text(
          "CONFIRM PAYMENT",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  Container insertNumber() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 50.h,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 193, 188, 188), width: 1.2),
          ),
          hintText: '08xxxxxxxx',
        ),
      ),
    );
  }

  Container payment_select() {
    return Container(
      height: 0.2.sh,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 50,
        children: [
          Column(
            children: [
              Container(
                height: 80.h,
                width: 60.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/visa.png"),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 20.h,
                width: 20.w,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 80.h,
                width: 60.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/ovo.png"),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 20.h,
                width: 20.w,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 80.h,
                width: 60.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/linkAja.png"),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 20.h,
                width: 20.w,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container selectedPayment() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 0.1.sh,
      child: Row(
        children: [
          SvgPicture.asset("assets/svg/icon_selectedPayment.svg"),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "Select Pyment Method",
            style: GoogleFonts.poppins(
              color: kTextColor,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  Container AmmoutPayment() {
    return Container(
      // 20% screen height with package flutter_screenutil
      height: 0.2.sh,
      child: Center(
        child: Text(
          "Rp 5.250.000",
          style: GoogleFonts.poppins(
              color: kTextColor, fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
