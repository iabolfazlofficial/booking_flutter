
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 206,
        height: 71,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                width: 68,
                height: 58,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/backgroundsplash.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(width: 8,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Text(
                  "Grindelwald",
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
                      "Iran",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
