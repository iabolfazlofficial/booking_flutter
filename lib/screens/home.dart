import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/components/play-button.dart';

import '../components/Image_location_card.dart';
import '../components/categories-item.dart';
import '../components/dropdown-showitem.dart';
import '../components/groupgrid-button.dart';
import '../components/circular-bg-icon.dart';
import '../components/profile-image.dart';
import '../components/recomended-card.dart';
import '../components/search-input.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  Header Profile and Notification
                  Row(
                    children: [
                      ProfileImage(),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Jess",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Image(image: AssetImage("assets/images/hand.png"))
                            ],
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      CircularBGWhiteIcon(url: "assets/images/notification.png",)
                    ],
                  ),
                  // Header Ttitle
                  Padding(
                    padding: const EdgeInsets.only(top: 36),
                    child: Container(
                      width: width / 1.5,
                      child: Text(
                        "Plan your trip with us.",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  // Search Input and Grid
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        width: width / 1.5,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SearchInput(width: width),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      GroupGrid(),
                    ],
                  ),
                  // Categories
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  // Categories Item
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(children: [
                        CategoriesItem(),
                        CategoriesItem(),
                        CategoriesItem(),
                        CategoriesItem(),
                        CategoriesItem(),
                        CategoriesItem(),
                        CategoriesItem(),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  // Selected Item for show Booking Item with
                  Container(
                    child: Row(
                      children: [
                        DropDownShowItems(),
                        Expanded(child: Container()),
                        Text(
                          "Explore",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                  // Card Image and Location
                  SizedBox(
                    height: 0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Row(
                          children: [
                            ImageAndLocationCard(),
                            ImageAndLocationCard(),
                            ImageAndLocationCard(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Categories
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Recomended",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          RecomendedCard(),
                          RecomendedCard(),
                          RecomendedCard(),
                          RecomendedCard(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
