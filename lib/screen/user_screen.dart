import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sound_store/constants.dart';

class UserScreen extends StatefulWidget {
  // const UserScreen({ Key? key }) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        // height: size.height / 4,
        width: double.infinity,
        // color: Colors.yellow,
        child: Column(
          children: [
            Container(
              height: 130,
              width: 130,
              child: SvgPicture.asset(
                svgUser,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  "Bambang Wijiyatmoko",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "bambangw665@gmail.com",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: size.height / 3 + 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Akun",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListRowUser(
                            iconUser: "assets/svg/user.svg",
                            nameUser: "Profile",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListRowUser(
                            iconUser: "assets/svg/icon_bahasa.svg",
                            nameUser: "Language",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListRowUser(
                            iconUser: "assets/svg/icon_setting.svg",
                            nameUser: "Settings",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListRowUser(
                            iconUser: "assets/svg/icon_feedback.svg",
                            nameUser: "Feedback",
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: size.height * 0.1 - 30,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListRowUser extends StatelessWidget {
  const ListRowUser({
    Key key,
    @required this.iconUser,
    @required this.nameUser,
  }) : super(key: key);

  final String iconUser;
  final String nameUser;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(iconUser),
          // SizedBox(
          //   width: 30,
          // ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(left: 10),
            width: size.width / 2 + 20,
            height: 30,
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Colors.grey[200],
              ),
            )),
            child: Text(
              nameUser,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.blue[900],
              ),
            ),
          ),

          Flexible(
            child: IconButton(
              icon: SvgPicture.asset("assets/svg/right_fill.svg"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}



