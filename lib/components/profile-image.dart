
import 'package:flutter/cupertino.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromRGBO(0, 0, 0, .15),
              shape: BoxShape.rectangle),
        ),
        Positioned(
          top: 6,
          left: 6,
          bottom: 6,
          right: 6,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/profile.png"))),
          ),
        )
      ],
    );
  }
}
