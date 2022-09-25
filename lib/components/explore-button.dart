import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/home.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) => Home(),
          transitionDuration: Duration(seconds: 2),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        ));
      },
      child: Container(
        width: width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromARGB(255, 164, 48, 255)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset("assets/images/arrow-svgrepo-com.png")
            ],
          ),
        ),
      ),
    );
  }
}
