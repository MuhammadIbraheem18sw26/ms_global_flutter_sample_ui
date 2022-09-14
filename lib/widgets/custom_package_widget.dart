import 'package:flutter/material.dart';
import 'custom_subcard_widget.dart';

class CustomPackageWidget extends StatelessWidget {
  String? imageUrl;
  String? title;
  String? subtitle;
  String? price;

  CustomPackageWidget(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 5, blurStyle: BlurStyle.outer)
          ],
        ),
        height: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 6,
                        blurStyle: BlurStyle.outer)
                  ],
                ),
                child: Image.asset(
                  imageUrl!,
                  height: 150,
                  width: 110,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Expanded(
              // ignore: sort_child_properties_last
              child: Container(
                margin: const EdgeInsets.only(left: 3, right: 3),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          title!,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          subtitle!,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.lightBlue),
                        ),
                        trailing: Text(
                          price!,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomSubCardWidget(
                            subCardImageUrl: "assets/washing.png",
                            subCardText: "Wash",
                          ),
                          CustomSubCardWidget(
                            subCardImageUrl: "assets/coat_subcard.png",
                            subCardText: "Drycleaning ",
                          ),
                          CustomSubCardWidget(
                            subCardImageUrl: "assets/iron1.png",
                            subCardText: "Iron ",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
