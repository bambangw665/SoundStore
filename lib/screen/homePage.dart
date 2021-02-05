import 'package:flutter/material.dart';
import 'package:sound_store/model/destenasi_model.dart';
import 'package:sound_store/screen/details_screen.dart';
import 'package:sound_store/widgets/big_title_widget.dart';
import 'package:sound_store/widgets/star_rating_display_widget.dart';

// import 'widgets/costume_appbar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> listGambar = [
    'assets/images/earphone1.png',
    'assets/images/earphone2.png',
    'assets/images/headphone3.png'
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
                  firstTitle: 'Discover Your', secondTitle: 'Perfect Sound'),
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
                height: 50,
              ),
              Container(
                // color: Colors.blue,
                margin: EdgeInsets.only(left: 15),
                height: 250,
                child: ListView(
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
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            destinations.imageAsset))),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 60),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconTheme(
                                          data: IconThemeData(
                                            color: Colors.amber,
                                            size: 13,
                                          ),
                                          child: StarRatingDisplay(value: 4))
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
        'AirPods menghadirkan pengalaman mendengarkan yang tak tertandingi di seluruh perangkat Anda. Setiap model terhubung dengan mudah dan dilengkapi suara yang kaya dan berkualitas tinggi dalam desain nirkabel yang inovatif.',
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
