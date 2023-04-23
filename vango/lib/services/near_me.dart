// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NearMe extends StatefulWidget {
  const NearMe({super.key});

  @override
  State<NearMe> createState() => _NearMeState();
}

class _NearMeState extends State<NearMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.grey.shade50,
        title: Text(
          'Near me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://bnz06pap003files.storage.live.com/y4mVXPOuNBZuWBx6DlN3PR2r0r-QxIdEobJ0KkvXOi4WIs9AK67YvaNRTluVAsBgZ6orUFL3IlQKVtJUY2BOCqcmi7FqLcGZk53-jyOVa3BmJy4zt5AgRqD8q4UE-UXbedtQOTg5euyFsUno69VOb7af6b-Ph7_weNB-ItH54YSWwjSU0GWtSis4DZhvj8XZZtF?width=750&height=1275&cropmode=none',
                ),
              ),
            ),
            height: 709,
            width: 600,
            child: Column(children: [
              SizedBox(height: 12.5),
              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(3, 3),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade50,
                        offset: Offset(-3, -3),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ],
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.location_on_rounded,
                        size: 25,
                        color: Colors.deepPurple[400],
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey[30],
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter route',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0, left: 275),
                child: FloatingActionButton(
                  shape: CircleBorder(),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple[300],
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: IconButton(
                    icon: Icon(
                      Icons.my_location_sharp,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 280,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15,
                    ),
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
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.deepPurple.shade400),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            // <-- Icon
                            Icons.near_me_outlined,
                            size: 25.0,
                          ),
                          label: Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              'Find nearby rides',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // <-- Text
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
