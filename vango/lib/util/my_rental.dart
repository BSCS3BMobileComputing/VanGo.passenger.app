// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyRental extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;
  final String tileSubtitle1;

  const MyRental({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
    required this.tileSubtitle1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple.shade500,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(iconImagePath)),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      tileTitle,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 42,
                    ),
                    Text(
                      tileSubtitle,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[400],
                      ),
                    ),
                    Text(
                      tileSubtitle1,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
