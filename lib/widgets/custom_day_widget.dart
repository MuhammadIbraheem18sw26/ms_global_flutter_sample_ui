import 'package:flutter/material.dart';

class CustomDayWidget extends StatelessWidget {
  String? day;
  String? dayType;
  String? date;
  Color? cardBgColor;
  Color? dayColor;

  CustomDayWidget(
      {Key? key,
      required this.day,
      required this.dayType,
      required this.date,
      required this.cardBgColor,
      required this.dayColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
              color: Colors.black, blurRadius: 5, blurStyle: BlurStyle.outer)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                color: cardBgColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                day!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: dayColor!,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
            child: Text(
              date!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 4, 2, 1),
            child: Text(dayType!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
