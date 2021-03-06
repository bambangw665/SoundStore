
// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sound_store/model/destenasi_model.dart';
import 'package:sound_store/screen/details_screen.dart';
import 'package:sound_store/widgets/big_title_widget.dart';
import 'package:sound_store/widgets/star_rating_display_widget.dart';

class WishListScreen extends StatefulWidget {
  // const WishListScreen({ Key? key }) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                    firstTitle: 'Your', secondTitle: 'Wish List')),
            SizedBox(
              height: 20,
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
            SizedBox(height: 40,),
            Container(
              height: size.height / 2,
              margin: EdgeInsets.all(5),
              // color: Colors.blue,
              child: GridView(
                padding: EdgeInsets.only(bottom: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: destinasiModels.map((destinations) {
                  return FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsScreen(
                            destination: destinations,
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
                                      color: Colors.grey[400].withOpacity(0.8),
                                      blurRadius: 8,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(destinations.imageAsset)),
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
                                              destinations.name,
                                              style: TextStyle(fontSize: 15),
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
                                                      value: destinations
                                                          .starRating),
                                                ),
                                                Text(
                                                  destinations.harga,
                                                  style: TextStyle(
                                                      fontSize: 10,
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
                            ),
                          )
                        ],
                      ));
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

var destinasiModels = [
  DestinasiModel(
    name: 'Airpods 1',
    harga: 'Rp 2.000.000',
    starRating: 5,
    largeText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    imageAsset: 'assets/images/headphone1.png',
  ),
  DestinasiModel(
    name: 'Airpods 2',
    harga: 'Rp 4.000.000',
    starRating: 5,
    largeText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    imageAsset: 'assets/images/headphone2.png',
  ),
  DestinasiModel(
    name: 'Airpods 3',
    harga: 'Rp 10.000.000',
    starRating: 5,
    largeText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    imageAsset: 'assets/images/headphone3.png',
  ),
  DestinasiModel(
    name: 'Airpods 4',
    harga: 'Rp 3.000.000',
    starRating: 5,
    largeText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    imageAsset: 'assets/images/headphone4.png',
  ),
  DestinasiModel(
    name: 'Airpods 5',
    harga: 'Rp 2.000.000',
    starRating: 5,
    largeText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    imageAsset: 'assets/images/earphone1.png',
  ),
  DestinasiModel(
    name: 'Airpods 6',
    harga: 'Rp 1.000.000',
    starRating: 5,
    largeText:
        'Memperkenalkan AirPods Max — keseimbangan sempurna dari audio high-fidelity yang mempesona dan kemudahan dari AirPods. Pengalaman mendengar terbaik yang begitu personal hadir di sini..',
    imageAsset: 'assets/images/earphone2.png',
  ),
];
