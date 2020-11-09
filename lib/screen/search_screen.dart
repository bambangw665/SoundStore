// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sound_store/widgets/big_title_widget.dart';
import 'package:sound_store/widgets/star_rating_display_widget.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> listGambar = [
      'assets/images/headphone1.png',
      'assets/images/headphone2.png',
      'assets/images/headphone3.png',
      'assets/images/headphone4.png',
      'assets/images/earphone1.png',
      'assets/images/earphone2.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 5),
                child: BigTitle(
                    firstTitle: 'Search Product', secondTitle: 'List')),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              width: size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Seatch Here....',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    )),
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.thLarge),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.list),
                      onPressed: null,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.6,
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(listGambar[index]),
                              )),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconTheme(
                                  data: IconThemeData(
                                    color: Colors.amber,
                                    size: 13,
                                  ),
                                  child: StarRatingDisplay(value: 4),
                                ),
                                Text(
                                  'Rp 0',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: listGambar.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
