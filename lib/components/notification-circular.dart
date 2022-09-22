
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCircular extends StatelessWidget {
  const NotificationCircular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 49,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/notification.png"))),
    );
  }
}
