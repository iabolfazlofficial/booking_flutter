import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/components/play-button.dart';

import '../components/notification-circular.dart';
import '../components/profile-image.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(248, 230, 253, 1),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
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
                    NotificationCircular()
                  ],
                ),
              
              // 

              ],
            ),
          ),
        ),
      ),
    );
  }
}
