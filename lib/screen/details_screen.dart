import 'package:flutter/material.dart';
import 'package:sound_store/widgets/star_rating_display_widget.dart';

class DetailsScreen extends StatelessWidget {
  final String attchmentIcons = 'assets/svg/details_icons.svg';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: size.height * 0.4,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/Headphone_noBG.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 15),
              height: size.height / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.1 - 50,
                    width: double.infinity,
                    child: Stack(
                      overflow: Overflow
                          .visible, // this vidget digunain buat keluar dari parrent
                      alignment: Alignment.topRight,
                      children: [
                        Positioned(
                          bottom: 10,
                          right: 40,
                          child: IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: Colors.blue[900],
                              size: 65,
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
                    height: size.height * 0.1,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    margin: EdgeInsets.only(top: 10),
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
                                      width: 2, style: BorderStyle.solid),
                                ),
                              ),
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Beats',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rp 0',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
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
                  Container(
                    color: Colors.blue,
                    height: size.height * 0.2,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Text('This is example text for mobile apps in screen details, '),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
