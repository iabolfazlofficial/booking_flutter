
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularBGWhiteIcon extends StatelessWidget {
  final String url;
  const CircularBGWhiteIcon({
    Key? key, required this.url,
    
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 49,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(url))),
    );
  }
}
