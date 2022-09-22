import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/background-image.dart';
import '../components/explore-button.dart';
import '../components/play-button.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        BackgroundImage(height: height),
        Positioned(
          left: width/8,
          bottom: height / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width / 2,
                child: Text(
                  "Enjoy your vacations with us",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              SizedBox(height: 8,),
              Container(
                child: Row(
                  children: [
                    ExploreButton(width: width),
                    SizedBox(
                      width: 16,
                    ),
                    PlayButton(),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
