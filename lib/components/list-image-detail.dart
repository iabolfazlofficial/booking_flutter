import 'package:flutter/cupertino.dart';

class ListImageDetail extends StatelessWidget {
  const ListImageDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(0, 0, 0, 0.2)),
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
                    borderRadius:
                        BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/detail.png"),
                        fit: BoxFit.cover)),
              ),
            )
          ]),
        ),
      
      ],
    );
  }
}
