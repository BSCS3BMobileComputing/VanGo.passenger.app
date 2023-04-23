// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class MyBook extends StatefulWidget {
  const MyBook({super.key});

  @override
  State<MyBook> createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  // int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.grey.shade50,
        title: Text(
          'Book a seat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 1260,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://bnz06pap003files.storage.live.com/y4mVXPOuNBZuWBx6DlN3PR2r0r-QxIdEobJ0KkvXOi4WIs9AK67YvaNRTluVAsBgZ6orUFL3IlQKVtJUY2BOCqcmi7FqLcGZk53-jyOVa3BmJy4zt5AgRqD8q4UE-UXbedtQOTg5euyFsUno69VOb7af6b-Ph7_weNB-ItH54YSWwjSU0GWtSis4DZhvj8XZZtF?width=750&height=1275&cropmode=none'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://bnz06pap003files.storage.live.com/y4mu79_TI1WFyspRJTZ7Iia4yfvZFdtBnVl8VbWt6OKG0ZudrjhHmouQB05IxsxsB7CJCiF6qffUmHP6NnOQkCSN6UusHRURvoiMZ9-_uhdIwKHPwST-Za76NbWZJ-zLwmiEk2-0DrV35uFJExPHYDtx88szTjFCr_GdDMs2ngoLG8nsb8zEgLcjVTfUf7XvhK8?width=400&height=300&cropmode=none',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 960,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'One Way',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.transparent,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.deepPurple[400],
                                    decorationThickness: 3,
                                    shadows: [
                                      Shadow(
                                        offset: Offset(0, -10),
                                        color: Colors.deepPurple.shade400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Round Trip',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.transparent,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.grey[600],
                                    decorationThickness: 3,
                                    shadows: [
                                      Shadow(
                                        offset: Offset(0, -10),
                                        color: Colors.grey.shade600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 160,
                                      ),
                                      Text(
                                        'Time',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.calendar_month_sharp,
                                            color: Colors.purple.shade300,
                                            size: 20,
                                          ),
                                          hintText: '23 May 2023',
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          )),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.alarm,
                                            color: Colors.purple.shade300,
                                            size: 20,
                                          ),
                                          hintText: '8:00 AM',
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'From',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.my_location,
                                          color: Colors.grey[400],
                                          size: 20,
                                        ),
                                        border: InputBorder.none,
                                        hintText: 'Enter your location',
                                        hintStyle: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'To',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.location_on,
                                          color: Colors.deepPurple[400],
                                          size: 20,
                                        ),
                                        border: InputBorder.none,
                                        hintText: 'Enter your destination',
                                        hintStyle: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Passengers',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.groups,
                                          color: Colors.deepPurple[400],
                                          size: 20,
                                        ),
                                        border: InputBorder.none,
                                        hintText: '1',
                                        hintStyle: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            // Column(
                            //   children: [
                            //     Stepper(
                            //       currentStep: currentStep,
                            //       onStepTapped: (index) {
                            //         setState(() => currentStep = index);
                            //       },
                            //       onStepContinue: () {
                            //         if (currentStep != 2) {
                            //           setState(() => currentStep++);
                            //         }
                            //       },
                            //       steps: [
                            //         Step(
                            //           isActive: currentStep >= 0,
                            //           title: Text(
                            //             'From',
                            //             style: TextStyle(
                            //               color: Colors.grey.shade600,
                            //               fontSize: 15,
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //           content: TextField(
                            //             decoration: InputDecoration(
                            //                 prefixIcon: Icon(
                            //                   Icons.my_location,
                            //                   color: Colors.grey[400],
                            //                   size: 20,
                            //                 ),
                            //                 border: InputBorder.none,
                            //                 hintText: 'Enter your location',
                            //                 hintStyle: TextStyle(
                            //                   fontSize: 15,
                            //                 )),
                            //           ),
                            //         ),
                            //         Step(
                            //           isActive: currentStep >= 1,
                            //           title: Text(
                            //             'To',
                            //             style: TextStyle(
                            //               color: Colors.grey.shade600,
                            //               fontSize: 15,
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //           content: TextField(
                            //             decoration: InputDecoration(
                            //                 prefixIcon: Icon(
                            //                   Icons.location_on_rounded,
                            //                   color: Colors.purple.shade300,
                            //                   size: 20,
                            //                 ),
                            //                 border: InputBorder.none,
                            //                 hintText: 'Enter Destination',
                            //                 hintStyle: TextStyle(
                            //                   fontSize: 15,
                            //                 )),
                            //           ),
                            //         ),
                            //         Step(
                            //           isActive: currentStep >= 2,
                            //           title: Text(
                            //             'Number of ticket',
                            //             style: TextStyle(
                            //               color: Colors.grey.shade600,
                            //               fontSize: 15,
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //           content: TextField(
                            //             decoration: InputDecoration(
                            //                 prefixIcon: Icon(
                            //                   Icons.local_attraction_rounded,
                            //                   color: Colors.purple.shade300,
                            //                   size: 20,
                            //                 ),
                            //                 border: InputBorder.none,
                            //                 hintText: '1',
                            //                 hintStyle: TextStyle(
                            //                   fontSize: 15,
                            //                 )),
                            //           ),
                            //         ),
                            //       ],
                            //     )
                            //   ],
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Choose your seat',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.shade200,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.purple.shade300,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Reserved',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Selected',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Available',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25.0, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.purple.shade300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 17),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.redAccent.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 55.0),
                                child: SlideAction(
                                  onSubmit: () {
                                    Navigator.pop(context);
                                  },
                                  sliderButtonIconSize: 15,
                                  sliderButtonIconPadding: 9,
                                  height: 45,
                                  text: 'Slide to confirm',
                                  textStyle: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                  innerColor: Colors.white,
                                  outerColor: Colors.deepPurple[400],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
