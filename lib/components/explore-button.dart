
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                style: Theme.of(context).textTheme.headline6,
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
