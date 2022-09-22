
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: width / 1.8,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: Color.fromRGBO(148, 48, 255, 1),
          onSaved: (email) {},
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.search, color: Color.fromRGBO(121, 121, 121, 1),),
            ),
          ),
        ),
      ),
    );
  }
}
