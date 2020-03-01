import 'package:flutter/material.dart';
class SortBy extends StatefulWidget {
  SortBy({Key key}) : super(key: key);

  @override
  _SortByState createState() => _SortByState();
}
class _SortByState extends State<SortBy> {
  String dropdownValue = 'sort by';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text("sort by"),
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
          color: Colors.black,
          fontSize: 20
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['sort by', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
