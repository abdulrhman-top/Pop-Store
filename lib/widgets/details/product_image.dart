import 'package:flutter/material.dart';

import '../../theme/color.dart';

class productImage extends StatelessWidget {
  const productImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.66,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.6,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.67,
            width: size.width * 0.67,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
