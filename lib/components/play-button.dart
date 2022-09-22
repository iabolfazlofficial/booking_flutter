
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
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
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(255, 255, 255, 0.3)),
        ),
        Positioned(
          top: 6,
          left: 6,
          bottom: 6,
          right: 6,
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
    );
  }
}
