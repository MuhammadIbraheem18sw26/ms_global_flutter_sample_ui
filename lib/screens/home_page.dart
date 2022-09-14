import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:get/get.dart';
import './screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheck = true;
  String repeatValue = 'Every Week';
  int repeatTimesValue = 1;

  List<String> repeatFrequencyList = [
    'Every Week',
    'Twice in a Week ',
    'Once a Month',
    'Once a Year',
  ];
  List<int> noOfTimesList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 20.0, color: Colors.grey);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.blue,
          shadowColor: Colors.blue,
          elevation: 10,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 25,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Pickup Date",
            style: TextStyle(fontSize: 23, color: Colors.blue),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
          ],
          actionsIconTheme: const IconThemeData(
              size: 25.0, color: Colors.blue, opacity: 10.0),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text(
                    "When would you like your pickup?",
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                  Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.blue,
                    size: 35,
                  )
                ],
              ),
            ),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomDayWidget(
                    cardBgColor: Colors.red,
                    date: "25 Jun",
                    day: "Fri",
                    dayType: "Yesterday",
                    dayColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomDayWidget(
                    cardBgColor: Colors.blue,
                    date: "26 Jun",
                    day: "Sat",
                    dayType: "Today",
                    dayColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomDayWidget(
                    cardBgColor: Colors.white,
                    date: "27 Jun",
                    day: "Sun",
                    dayType: "Tomorrow",
                    dayColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomDayWidget(
                    cardBgColor: Colors.red,
                    date: "28 Jun",
                    day: "Mon",
                    dayType: "BlockDay",
                    dayColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13),
            const SizedBox(
              height: 30,
              child: Text("Available time slots", style: textStyle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTimeWidget(
                    isActive: true, fromTime: "10am", toTime: " 12pm"),
                CustomTimeWidget(
                    isActive: false, fromTime: "7am", toTime: " 1pm"),
                CustomTimeWidget(
                    isActive: false, fromTime: "6am", toTime: " 8pm"),
              ],
            ),
            const SizedBox(height: 13),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              shadowColor: Colors.black,
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text("Repeat Pickup", style: textStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Switch(
                      value: isCheck,
                      onChanged: (bool value) {
                        setState(() {
                          isCheck = value;
                        });
                      },
                      activeColor: Colors.white,
                      activeTrackColor: Colors.blue,
                      thumbColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 13),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text("How Often Repeat ?",
                  textAlign: TextAlign.left, style: textStyle),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              shadowColor: Colors.black,
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(repeatValue, style: textStyle),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                        color: Colors.grey,
                      ),
                      items: repeatFrequencyList.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          repeatValue = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text("How Many Times ?",
                  textAlign: TextAlign.left, style: textStyle),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              shadowColor: Colors.black,
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(repeatTimesValue.toString(), style: textStyle),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                        color: Colors.grey,
                      ),
                      items: noOfTimesList.map((int items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items.toString()));
                      }).toList(),
                      onChanged: (int? newValue) {
                        setState(() {
                          repeatTimesValue = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Flexible(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const PackageScreen());
                  },
                  // ignore: sort_child_properties_last
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 35, right: 35, top: 8, bottom: 8),
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.blue))))),
            ),
          ],
        ),
      ),
    );
  }
}
