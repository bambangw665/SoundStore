import 'package:flutter/material.dart';
import 'package:sound_store/widgets/star_rating_display_widget.dart';

class ListProductHorizontal extends StatelessWidget {
  const ListProductHorizontal({
    Key key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 300,
      child: ListView.builder(
        itemCount: 3,
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
                            AssetImage('assets/images/earphone1.png'),
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
    );
  }
}