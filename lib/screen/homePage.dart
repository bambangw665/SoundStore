import 'package:flutter/material.dart';

import '../model/destenasi_model.dart';
import '../widgets/big_title_widget.dart';
import '../widgets/star_rating_display_widget.dart';
import 'details_screen.dart';

// import 'widgets/costume_appbar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final List<String> listGambar = [
  //   'assets/images/earphone1.png',
  //   'assets/images/earphone2.png',
  //   'assets/images/headphone3.png',
  //   'assets/images/headphone3.png',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.blue,
        shadowColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,

        leading: IconButton(
          icon: Icon(
            Icons.border_all,
            color: Colors.black,
          ),
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
              }),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              BigTitle(
                firstTitle: 'Discover Your',
                secondTitle: 'Perfect Sound',
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Earphone',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Headset',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Headphone',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 300,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: destinasiModels.map((destinations) {
                    return FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailsScreen(destination: destinations);
                          }));
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: 180,
                                height: 200,
                                margin: EdgeInsets.only(bottom: 50, top: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey[400]!.withOpacity(0.8),
                                      blurRadius: 8,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(destinations.imageAsset!),
                                  ),
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
                                                destinations.name!,
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
                                                        value: destinations
                                                            .starRating!),
                                                  ),
                                                  Text(
                                                    destinations.harga!,
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
                              ),
                            ),
                          ],
                        ));
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var destinasiModels = [
  DestinasiModel(
    name: 'Airpods',
    harga: 'Rp 2.000.000',
    starRating: 5,
    largeText:
        'AirPods menghadirkan pengalaman mendengarkan yang tak tertandingi di seluruh perangkat Anda. Setiap model terhubung dengan mudah dan dilengkapi suara yang kaya dan berkualitas tinggi dalam desain nirkabel yang inovatif dnkasdnlasndlasdnladnladnlsa daosndladnasld dioasndlasdnla dnasdkasnkn dadnaosdnas doasndoasn.',
    imageAsset: 'assets/images/earphone1.png',
  ),
  DestinasiModel(
    name: 'Airpods pro',
    harga: 'Rp 4.000.000',
    starRating: 5,
    largeText:
        'AirPods Pro adalah satu-satunyaheadphone in-ear denganPeredam Kebisingan Aktif yang terus beradaptasi dengan telinga Anda dan pas dikenakan — mencegah suara luar agar Anda dapat fokus pada apa yang sedang Anda dengarkan.',
    imageAsset: 'assets/images/earphone2.png',
  ),
  DestinasiModel(
    name: 'Airpods Max',
    harga: 'Rp 10.000.000',
    starRating: 5,
    largeText:
        'Memperkenalkan AirPods Max — keseimbangan sempurna dari audio high-fidelity yang mempesona dan kemudahan dari AirPods. Pengalaman mendengar terbaik yang begitu personal hadir di sini..',
    imageAsset: 'assets/images/headphone3.png',
  ),
];
