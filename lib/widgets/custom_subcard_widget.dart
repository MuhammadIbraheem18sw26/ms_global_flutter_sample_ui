import 'package:flutter/material.dart';

class CustomSubCardWidget extends StatelessWidget {
  String? subCardImageUrl;
  String? subCardText;

  CustomSubCardWidget(
      {Key? key, required this.subCardImageUrl, required this.subCardText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(4),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 3)
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Image.asset(
              subCardImageUrl!,
              height: 50,
              width: 80,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subCardText!,
          style: const TextStyle(
              fontSize: 12,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
