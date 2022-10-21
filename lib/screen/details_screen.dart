import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/destenasi_model.dart';
import '../widgets/star_rating_display_widget.dart';

class DetailsScreen extends StatelessWidget {
  final String attchmentIcons = 'assets/svg/details_icons.svg';
  final DestinasiModel? destination;
  DetailsScreen({this.destination});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 20.sp,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.h),
            height: size.height / 3,
            // width: size.height * 0.5,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Image.asset(
                    destination!.imageAsset!,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(
                  top: 0.h, left: 15.w, right: 15.w, bottom: 20.h),
              height: size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.1 - 50.h,
                    width: size.height,
                    child: Stack(
                      overflow: Overflow
                          .visible, // this widget digunain buat keluar dari parrent
                      // alignment: Alignment.topRight,
                      children: [
                        Positioned(
                          bottom: 3,
                          right: 40,
                          child: IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: Colors.blue[900],
                              size: 50.sp,
                            ),
                            onPressed: () {
                              // Navigation Here
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.1.h,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    // margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 2.w,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: Text(
                                destination!.name!,
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                destination!.harga!,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              IconTheme(
                                data: IconThemeData(
                                  color: Colors.amber,
                                  size: 13,
                                ),
                                child: StarRatingDisplay(value: 4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      height: size.height * 0.2 - 5.h,
                      // color: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Text(
                        destination!.largeText!,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.1 - 10,
                    // margin: EdgeInsetsDirectional.only(top: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          child: TextButton(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: size.height * 0.1 + 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: TextButton(
                            child: Text(
                              'ADD Chart',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
