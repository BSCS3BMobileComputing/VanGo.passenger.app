// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vango/util/history.dart';

class MyTrips extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;

  const MyTrips({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //icon
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => historyPage()),
                    );
                  },
                  icon: Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Image.network(iconImagePath),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tileTitle,
                      style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      tileSubtitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => historyPage()),
                );
              },
              icon: Icon(Icons.arrow_forward_ios),
              color: Colors.deepPurple[300],
            ),
          ],
        ),
      ),
    );
  }
}
