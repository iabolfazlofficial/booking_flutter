import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/background-image.dart';
import '../components/explore-button.dart';

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
                    Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                              color: Color.fromRGBO(255, 255, 255, 0.3)),
                        ),
                        Positioned(
                          top: 4,
                          left: 4,
                          bottom: 4,
                          right: 4,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2,
                                      offset: Offset(0, 0))
                                ]),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.play_arrow),
                              color: Color.fromARGB(255, 164, 48, 255),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )

              // Container(
              //   decoration:
              //       BoxDecoration(
              //         color: Color.fromARGB(255, 164, 48, 255)
              //         ),
              //   child: Text(
              //     "Explore",
              //     style: Theme.of(context).textTheme.headline6,
              //   ),
              // )
            ],
          ),
        )
        // Positioned(
        //   width: width/2,
        //   child: Text(
        //     "Enjoy your vacations with us",
        //     style: Theme.of(context).textTheme.headline1,
        //   ),
        // ),
        // Container(
        //   child: Row(
        //     children: [
        //       Text("Explore", style: Theme.of(context).textTheme.headline6,)
        //     ],
        //   ),
        // )
      ]),
    );
  }
}
