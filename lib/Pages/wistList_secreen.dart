// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/destenasi_model.dart';
import '../widgets/big_title_widget.dart';
import '../widgets/star_rating_display_widget.dart';
import 'details_screen.dart';

class WistListScreen extends StatelessWidget {
  const WistListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
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
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                child: BigTitle(firstTitle: 'Your', secondTitle: 'Wist List')),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              height: 10,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.thLarge),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.list),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: size.height,
              margin: EdgeInsets.all(5),
              child: GridView.builder(
                padding: EdgeInsets.only(bottom: 10),
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                // children: WistListModel.map(
                //   (destinations) {
                itemCount: WistListModel.length,
                itemBuilder: (context, index) {
                  final wistListmodel = WistListModel[index];
                  return TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsScreen(
                          phoneModel: wistListmodel,
                        );
                      }));
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.grey[400]!.withOpacity(0.8),
                                  blurRadius: 8,
                                  offset: Offset(0, 5),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(wistListmodel.imageAsset!)),
                            ),
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
                                      width: size.width,
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            wistListmodel.name!,
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            wistListmodel.harga!,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.green),
                                          ),
                                          IconTheme(
                                            data: IconThemeData(
                                              color: Colors.amber,
                                              size: 13,
                                            ),
                                            child: StarRatingDisplay(
                                                value:
                                                    wistListmodel.starRating!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                //   },
                // ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
