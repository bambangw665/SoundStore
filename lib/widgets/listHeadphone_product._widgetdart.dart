import 'package:flutter/material.dart';

import '../Pages/details_screen.dart';
import '../model/destenasi_model.dart';
import 'star_rating_display_widget.dart';

class ListProductHeadphone extends StatelessWidget {
  ListProductHeadphone({
    Key? key,
    required this.modelChange,
    required this.directonAxis,
  }) : super(key: key);

  List<PhoneModel>? modelChange;
  Axis? directonAxis;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 300,
      child: ListView(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: directonAxis!,
        children: modelChange!.map((homeModel) {
          return TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailsScreen(phoneModel: homeModel)));
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
                          image: AssetImage(homeModel.imageAsset!),
                        ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      homeModel.name!,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconTheme(
                                          data: IconThemeData(
                                            color: Colors.amber,
                                            size: 10,
                                          ),
                                          child: StarRatingDisplay(
                                              value: homeModel.starRating!),
                                        ),
                                        Text(
                                          homeModel.harga!,
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
    );
  }
}
