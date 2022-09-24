import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDownShowItems extends StatefulWidget {
  const DropDownShowItems({super.key});

  @override
  State<DropDownShowItems> createState() => _DropDownShowItemsState();
}

class _DropDownShowItemsState extends State<DropDownShowItems> {
  String dropdownvalue = 'Popular';

  var items = [
    'Popular',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        underline: SizedBox(),
        elevation: 0,
        value: dropdownvalue,
        icon: Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(146, 48, 255, 1),),
        items: items.map((String items) {
          return DropdownMenuItem(
              value: items,
              child: Text(
                items,
                style: Theme.of(context).textTheme.headline4,
              ));
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            dropdownvalue = value!;
          });
        },
      ),
    );
  }
}
