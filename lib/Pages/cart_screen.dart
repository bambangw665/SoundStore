import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/payement_screen.dart';
import '../constants.dart';
import '../model/destenasi_model.dart';
import '../widgets/star_rating_display_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
            "Chart",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kTextColor,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 0.7.sh,
              // margin: EdgeInsets.only(left: 30.h),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: HomeModelHeadset.map((chartModel) {
                    return Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 180.w,
                                height: 200.h,
                                margin: EdgeInsets.only(
                                    bottom: 50, top: 20, left: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color:
                                            Colors.grey[400]!.withOpacity(0.8),
                                        blurRadius: 8,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(chartModel.imageAsset!),
                                      fit: BoxFit.cover,
                                    )),
                                child: Container(
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          height: 50,
                                          // width: 180,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10, top: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                chartModel.name!,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  IconTheme(
                                                    data: IconThemeData(
                                                      color: Colors.amber,
                                                      size: 13,
                                                    ),
                                                    child: StarRatingDisplay(
                                                        value: chartModel
                                                            .starRating!),
                                                  ),
                                                  Text(
                                                    chartModel.harga!,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.green),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    );
                  }).toList()),
            ),
            Container(
              height: size.height * 0.1 - 30,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                child: Text(
                  "CONFIRM PAYMENT",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
          ],
        ));
  }
}
