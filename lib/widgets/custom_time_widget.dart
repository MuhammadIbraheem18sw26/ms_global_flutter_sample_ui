import 'package:flutter/material.dart';

class CustomTimeWidget extends StatelessWidget {
  String? fromTime;
  String? toTime;
  bool? isActive;

  CustomTimeWidget(
      {Key? key,
      required this.fromTime,
      required this.toTime,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        color: (isActive!) ? Colors.blue : Colors.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "$fromTime - $toTime",
            style: TextStyle(color: (isActive!) ? Colors.white : Colors.grey),
          ),
        ),
      ),
    );
  }
}
