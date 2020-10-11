import 'package:flutter/material.dart';
import 'package:sound_store/widgets/big_title_widget.dart';
import 'package:sound_store/widgets/star_rating_display_widget.dart';

// import 'widgets/costume_appbar_widget.dart';

class HomePage extends StatelessWidget {

  final List<String> listGambar = [
    'assets/images/earphone1.png',
    'assets/images/earphone2.png',
    'assets/images/soundstore.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.border_all, color: Colors.black),
          onPressed: () => {
            // ExtendedNavigator.root.push(Routes.searchScreen),
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {
                // navigation here
              })
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              BigTitle(
                  firstTitle: 'Discover Your', secondTitle: 'Perfect Sound'),
              SizedBox(
                height: 50,
              ),
              kategoriHorizontal(),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 300,
                child: ListView.builder(
                  itemCount: listGambar.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image:
                                      AssetImage(listGambar[index]),
                                )),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 60),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 13,
                                    ),
                                    child: StarRatingDisplay(value: 4),
                                  ),
                                  Text('Rp 0'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container kategoriHorizontal() {
    return Container(
      height: 25,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Earphone',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(
            'Headset',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(
            'Headphone',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  // same Container methods
}
