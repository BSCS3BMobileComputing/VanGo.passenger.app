// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:vango/util/my_history.dart';

class historyPage extends StatefulWidget {
  const historyPage({super.key});

  @override
  State<historyPage> createState() => _historyPageState();
}

class _historyPageState extends State<historyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.grey.shade50,
        title: Text(
          'Trips History',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 20.0, bottom: 30.0, left: 20.0),
          //   child: IconButton(
          //     icon: const Icon(
          //       Icons.arrow_back,
          //       size: 25,
          //       color: Colors.deepPurple,
          //     ),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => const HomePage()),
          //       );
          //     },
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 35.0),
          //   child: Text(
          //     "Trips history",
          //     style: TextStyle(color: Colors.deepPurple, fontSize: 35),
          //   ),
          // ),
          const SizedBox(height: 13),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                child: Text(
                  "April",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              historyList(
                  tileTitle: 'Home',
                  tileSubtitle: 'From CSU-Carig(School) to Home',
                  tileDate: 'April 3, 2023',
                  tileTime: '6:00 pm'),
              historyList(
                  tileTitle: 'CSU-Carig(School)',
                  tileSubtitle: 'From Home to CSU-Carig(School)',
                  tileDate: 'April 3, 2023',
                  tileTime: '6:00 am'),
              historyList(
                  tileTitle: 'Robinsons',
                  tileSubtitle: 'From Home to Robinsons',
                  tileDate: 'April 1, 2023',
                  tileTime: '10:00 am'),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                child: Text(
                  "March",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              historyList(
                  tileTitle: 'Home',
                  tileSubtitle: 'From CSU-Carig(School) to Home',
                  tileDate: 'March 31, 2023',
                  tileTime: '6:00 pm'),
              historyList(
                  tileTitle: 'CSU-Carig(School)',
                  tileSubtitle: 'From Home to CSU-Carig(School)',
                  tileDate: 'March 31, 2023',
                  tileTime: '6:00 am'),
              historyList(
                  tileTitle: 'CVMC',
                  tileSubtitle: 'From Home to CVMC',
                  tileDate: 'March 29, 2023',
                  tileTime: '6:00 pm'),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 40.0))
        ],
      ))),
    );
  }
}
