// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soundstore2/widgets/listHeadphone_product._widgetdart.dart';

import '../model/destenasi_model.dart';
import '../Pages/search_pageScreen.dart';
import '../widgets/big_title_widget.dart';
import '../widgets/star_rating_display_widget.dart';
import 'details_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(_handleTabSelection);
  }

  @override
  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
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
              height: 10,
            ),
            Container(
              height: 70,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Search Product",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "List",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SearchPage()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20),
                height: 50,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search Here..",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  indicatorColor: Colors.grey,
                  unselectedLabelColor: Colors.grey,
                  labelPadding: const EdgeInsets.only(left: 10, right: 0),
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 0.0),
                      insets:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5)),
                  tabs: [
                    Tab(
                      icon: Icon(
                        FontAwesomeIcons.thLarge,
                        // color: _tabController! == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        FontAwesomeIcons.list,
                        // color: _tabController! == 1 ? Colors.blue : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: size.height / 2 + 20,
              margin: EdgeInsets.all(5),
              child: TabBarView(
                controller: _tabController,
                children: [
                  GridListProduct(
                    crosAxisCount: 2,
                    size: size,
                  ),
                  GrindSingleProduct(
                    crosAxisCount: 1,
                    size: size,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GridListProduct extends StatelessWidget {
  const GridListProduct({
    Key? key,
    required this.size,
    required this.crosAxisCount,
  }) : super(key: key);

  final Size size;
  final int? crosAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(vertical: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crosAxisCount!,
        childAspectRatio: 1 / 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: SearchModel.map((searchModel) {
        return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(
                  phoneModel: searchModel,
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
                          image: AssetImage(searchModel.imageAsset!)),
                    ),
                    child: Container(
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Container(
                              height: 50,
                              width: size.width,
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    searchModel.name!,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    searchModel.harga!,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.green),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 10,
                                    ),
                                    child: StarRatingDisplay(
                                        value: searchModel.starRating!),
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
    );
  }
}

class GrindSingleProduct extends StatelessWidget {
  const GrindSingleProduct({
    Key? key,
    required this.size,
    required this.crosAxisCount,
  }) : super(key: key);

  final Size size;
  final int? crosAxisCount;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crosAxisCount!,
          mainAxisExtent: 100,
          childAspectRatio: 1,
          mainAxisSpacing: 20,
        ),
        children: SearchModel.map((searchModel) {
          return FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailsScreen(
                    phoneModel: searchModel,
                  );
                }));
              },
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
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
                            image: AssetImage(searchModel.imageAsset!)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            height: double.infinity,
                            width: size.width,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                            decoration: BoxDecoration(
                              // color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  searchModel.name!,
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    searchModel.harga!,
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.green),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                IconTheme(
                                  data: IconThemeData(
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  child: StarRatingDisplay(
                                      value: searchModel.starRating!),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ));
        }).toList(),
      ),
    );
  }
}
