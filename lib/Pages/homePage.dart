import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/destenasi_model.dart';
import '../widgets/big_title_widget.dart';
import '../widgets/listHeadphone_product._widgetdart.dart';
import '../widgets/star_rating_display_widget.dart';
import 'details_screen.dart';

// import 'widgets/costume_appbar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

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
      body: SingleChildScrollView(
        child: SafeArea(
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
                height: 20,
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      controller: _tabController,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(width: 3.0),
                          insets: EdgeInsets.symmetric(horizontal: 40.0)),
                      indicatorColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      labelPadding: const EdgeInsets.only(left: 30, right: 25),
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Text(
                            "Earphone",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text("Headset",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Tab(
                          child: Text("SoundBar",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 300.h,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListProductHeadphone(
                      modelChange: HomeModelHeadphone,
                      directonAxis: Axis.horizontal,
                    ),
                    ListProductHeadphone(
                      modelChange: HomeModelHeadset,
                      directonAxis: Axis.horizontal,
                    ),
                    ListProductHeadphone(
                      modelChange: HomeSoundBar,
                      directonAxis: Axis.horizontal,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
