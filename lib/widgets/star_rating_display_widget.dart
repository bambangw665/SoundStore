import 'package:flutter/material.dart';

class StarRatingDisplay extends StatelessWidget {
  const StarRatingDisplay({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) => Icon(index < value ? Icons.star : Icons.star_border),
        ),
      ),
    );
  }
}
