// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:vango/pages/home_page.dart';
import 'package:vango/util/my_rental.dart';

class MyRent extends StatefulWidget {
  const MyRent({super.key});

  @override
  State<MyRent> createState() => _MyRentState();
}

class _MyRentState extends State<MyRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.grey.shade50,
        title: Text(
          'Rentals',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              width: 360,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    'https://bnz06pap003files.storage.live.com/y4mzzJWUpINl5JZ3bfs3Z3mEvkT9uquEKFl_FR0HuroTWZ6qEqWgvx2hbKUGKrZqLo2CH4f0sODsgXpoQA9Myp7t2GfNReZSdfjdIuPghzmJlFZoVr3UcLsC3XObUJtcT_674khZ9lQx5k09bfI4Yyw9dL33YzxdZns107WVq-_PSs-pqVx473Sc8myos8a15Yb?width=400&height=250&cropmode=none',
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Container(
                  height: 390,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    //trips
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700],
                                  ),
                                  'Rent plans',
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        MyRental(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mbx2uVJcv8rC6tdJkIXp5DebFgmdlEqNxHB8h7mNWZBTNuir9_Huhgm2M5ufZ3gQecQNvBJ-Ix331S_6hTStQlXx_n_jycc6fGNsRJWqZ22V2MAezApH76el0Bz-s6EOdoTgzYQrsaQ4lCJz-tgKcSHT8Sa0QnKpajScBDhfpL-2DxHTlYEDREU6LPJS3SNYg?width=512&height=512&cropmode=none',
                          tileTitle: 'Day rate',
                          tileSubtitle: '₱4999.00',
                          tileSubtitle1: '/day',
                        ),
                        MyRental(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mbx2uVJcv8rC6tdJkIXp5DebFgmdlEqNxHB8h7mNWZBTNuir9_Huhgm2M5ufZ3gQecQNvBJ-Ix331S_6hTStQlXx_n_jycc6fGNsRJWqZ22V2MAezApH76el0Bz-s6EOdoTgzYQrsaQ4lCJz-tgKcSHT8Sa0QnKpajScBDhfpL-2DxHTlYEDREU6LPJS3SNYg?width=512&height=512&cropmode=none',
                          tileTitle: 'Hour rate',
                          tileSubtitle: '₱208.00',
                          tileSubtitle1: '/hr',
                        ),
                        MyRental(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mbx2uVJcv8rC6tdJkIXp5DebFgmdlEqNxHB8h7mNWZBTNuir9_Huhgm2M5ufZ3gQecQNvBJ-Ix331S_6hTStQlXx_n_jycc6fGNsRJWqZ22V2MAezApH76el0Bz-s6EOdoTgzYQrsaQ4lCJz-tgKcSHT8Sa0QnKpajScBDhfpL-2DxHTlYEDREU6LPJS3SNYg?width=512&height=512&cropmode=none',
                          tileTitle: 'Minute rate',
                          tileSubtitle: '₱4.00',
                          tileSubtitle1: '/min',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.deepPurple.shade400),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Icon(
                                // <-- Icon
                                Icons.car_rental_rounded,
                                size: 25.0,
                              ),
                            ),
                            label: Padding(
                              padding: const EdgeInsets.only(
                                right: 50.0,
                                top: 8,
                                bottom: 8,
                              ),
                              child: Text(
                                'Rent now',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // <-- Text
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
