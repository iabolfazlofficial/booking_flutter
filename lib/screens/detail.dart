import 'dart:ui';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Container(
              width: double.infinity,
              height: height,
              color: Color.fromRGBO(248, 230, 253, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text("Detail",
                      style: Theme.of(context).textTheme.headline4),
                ),
              ),
              // Stack Image
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  width: double.infinity,
                  height: height / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/detail.png"),
                          fit: BoxFit.cover)),
                ),
                // Header (Buttons)
                Positioned(
                  top: -25,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularBGWhiteIcon(
                            url: "assets/images/arrow-back.png"),
                        CircularBGWhiteIcon(url: "assets/images/more.png"),
                      ],
                    ),
                  ),
                ),
                // Footer Box
                Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: (height / 2) / 4,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                          shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(children: [
                          Container(
                            width: 44,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(164, 48, 255, 0.3),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/clock.png"))),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Trip Duration",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(164, 48, 255, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "5 Days",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: 44,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(164, 48, 255, 0.3),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/star.png"))),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rating",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(164, 48, 255, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ))
              ]),
      
              SizedBox(
                height: 8,
              ),
      
              // Second Container
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color.fromRGBO(248, 230, 253, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Details",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              width: 36,
                            ),
                            Text(
                              "Tourlist",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(children: [
                          Text(
                            'About',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ]),
                        SizedBox(
                          height: 16,
                        ),
                        Row(children: [
                          Container(
                            width: width / 1.2,
                            child: Text(
                              'Istanbul is a major city in Turkey that straddles Europe and Asia across the Bosphorus Strait. Its Old City reflects cultural influences of the many empires that once ruled here. In the Sultanahmet district, the open-air, Roman-era Hippodrome was for centuries the site of chariot races, and Egyptian obelisks also remain.',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '\$226',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 168,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color.fromRGBO(164, 48, 255, 1),
                                  shape: BoxShape.rectangle),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("Book Now",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
