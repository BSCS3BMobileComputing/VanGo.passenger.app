// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class historyList extends StatelessWidget {
  final String tileTitle;
  final String tileSubtitle;
  final String tileDate;
  final String tileTime;

  const historyList(
      {Key? key,
      required this.tileTitle,
      required this.tileSubtitle,
      required this.tileDate,
      required this.tileTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurple,
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
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tileTitle,
                      style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      tileSubtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      tileDate,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      tileTime,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.pin_drop,
              color: Colors.deepPurple[300],
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
