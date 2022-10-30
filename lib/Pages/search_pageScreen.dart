import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.cancel_outlined,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          controller: _controller,
          decoration: InputDecoration(
              hintText: "Search Anything..",
              suffixIcon: IconButton(
                icon: Icon(Icons.cancel, size: 15.0),
                onPressed: _controller.clear,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              )),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 0.5.sh,
            width: double.infinity,
            child: SvgPicture.asset("assets/svg/illustration_search.svg"),
          ),
        ),
      ),
    );
  }
}
