import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/components/circular-bg-icon.dart';

import '../components/list-image-detail.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: height,
          color: Color.fromRGBO(248, 230, 253, 1),
          child: Column(
            children: [
              // Header Text
              SizedBox(
                height: 16,
              ),
              Container(
                  height: 24,
                  child: Text(
                    "Detail",
                    style: Theme.of(context).textTheme.headline4,
                  )),
              SizedBox(
                height: 16,
              ),
              // Image Detail
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: height / 2,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/detail.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: double.infinity,
                    height:(height / 2) / 1.4,
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                    child: Positioned(
                    top: 45,
                    left: 0,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // List Image
                        ListImageDetail(),
                        // Location
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Istanbul",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Turkey",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.location_on,
                                  color: Color.fromRGBO(164, 48, 255, 1),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 0, 145)
                    ),
                  ),
                  
                  Positioned(
                    top: -25,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircularBGWhiteIcon(
                              url: "assets/images/arrow-back.png",
                            ),
                            CircularBGWhiteIcon(
                              url: "assets/images/more.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromRGBO(0, 0, 0, 0.5)
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
