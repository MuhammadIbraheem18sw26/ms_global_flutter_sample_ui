import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:get/get.dart';
import './screens.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.blue,
        shadowColor: Colors.blue,
        elevation: 10,
        leading: GestureDetector(
          onTap: () {
            Get.to(const HomePage());
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Package",
          style: TextStyle(fontSize: 23, color: Colors.blue),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
        actionsIconTheme:
            const IconThemeData(size: 25.0, color: Colors.blue, opacity: 10.0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomPackageWidget(
              imageUrl: "assets/dress.png",
              title: "white dress for iron",
              subtitle: "100 Rs off on first time",
              price: "1000",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomPackageWidget(
              imageUrl: "assets/cloths.png",
              title: "5- shirts for Dry and clean",
              subtitle: "100 Rs off on first time",
              price: "800",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomPackageWidget(
              imageUrl: "assets/dress.png",
              title: "dress for drycleaning",
              subtitle: "100 Rs off on first time",
              price: "900",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomPackageWidget(
              imageUrl: "assets/cloths.png",
              title: "Cloths for drycleaning",
              subtitle: "100 Rs off on first time",
              price: "700",
            ),
          )
        ],
      ),
    ));
  }
}
