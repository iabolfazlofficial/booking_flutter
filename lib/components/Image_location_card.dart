
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageAndLocationCard extends StatelessWidget {
  const ImageAndLocationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 151,
        height: 212,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            shape: BoxShape.rectangle),
        child: OverflowBox(
          maxHeight: 240,
          child: Stack(children: [
            Positioned(
                top: 0,
                left: 6,
                right: 6,
                bottom: 100,
                child: Container(
                  width: 149,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    shape: BoxShape.rectangle,
                    image: const DecorationImage(
                      image: AssetImage(
                          "assets/images/backgroundsplash.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
              left: 10,
              bottom: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Kazaneh",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(164, 48, 255, 1),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Jordan",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
