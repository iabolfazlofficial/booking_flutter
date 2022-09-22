
import 'package:flutter/cupertino.dart';

class GroupGrid extends StatelessWidget {
  const GroupGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 54,
        height: 55,
        decoration: BoxDecoration(
            color: Color.fromRGBO(164, 48, 255, 0.3),
            borderRadius: BorderRadius.circular(16),
            shape: BoxShape.rectangle),
            child: Image.asset("assets/images/gridgroup.png"),
      ),
    );
  }
}
