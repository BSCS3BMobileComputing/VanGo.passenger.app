// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vango/pages/home_page.dart';
import 'package:vango/pages/messages_page.dart';

class MyTicket extends StatefulWidget {
  const MyTicket({super.key});

  @override
  State<MyTicket> createState() => _MyTicketState();
}

class _MyTicketState extends State<MyTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.grey.shade50,
        title: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(
            'My Ticket',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 12.5,
          ),
          child: GNav(
            selectedIndex: 1,
            padding: EdgeInsets.all(8),
            backgroundColor: Colors.grey.shade50,
            color: Colors.grey[800],
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
                backgroundColor: Colors.deepPurple[100],
                iconActiveColor: Colors.purple[700],
                textColor: Colors.purple[700],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              GButton(
                icon: Icons.upcoming_outlined,
                text: 'Ticket',
                backgroundColor: Colors.deepPurple[100],
                iconActiveColor: Colors.purple[700],
                textColor: Colors.purple[700],
              ),
              GButton(
                icon: Icons.messenger_outline_rounded,
                text: 'Messages',
                backgroundColor: Colors.deepPurple[100],
                iconActiveColor: Colors.purple[700],
                textColor: Colors.purple[700],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyMessages()),
                  );
                },
              ),
              // GButton(
              //   icon: Icons.bookmarks_outlined,
              //   text: 'Bookmark',
              //   backgroundColor: Colors.deepPurple[100],
              //   iconActiveColor: Colors.purple[700],
              //   textColor: Colors.purple[700],
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const MyBookmarks()),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 475,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage(
                                'https://bnz06pap003files.storage.live.com/y4mQuGK3JBICWjgxMeHsuTxUaAvqongE7pHXtIxOxO2EHm7JzTERdBpskRtNkQjbqzASjN_jMr4xehhBlvKthj-N0ZaVYiLMb1zvAsw6XdVu1v9Hlxp7ljiOdAvwHsZ37yq_yvfePoLe5XnRsPcq60cY7SOB1KW4akZAuxv9v070JYShWtOY-Qkvh377PeCanMM?width=1875&height=1563&cropmode=none'))),
                  ),
                  Column(
                    children: [
                      Text(
                        'Trip',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2ND',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'STUD',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Flora, Apayao',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'FLA',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: Colors.purple[400],
                  ),
                  Column(
                    children: [
                      Text(
                        'Tuguegarao, Cagayan',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'TGC',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Passenger',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1/JESSIE C.',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Seat',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'C4',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '5/10/2023',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Departure',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '5:00 AM',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Arrival',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '8:30 AM',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Fare',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₱225',
                        style: TextStyle(
                          color: Colors.purple[400],
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Container(
                  height: 140,
                  width: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://bnz06pap003files.storage.live.com/y4mBVN4xAvmKMh4fuaZQWEZjQAzial1rkKjxiL1mQtrOtlWQa0RCSKdLniVgPjVXfpPgSWwUiKAHjo8wU0lNXpvMCjJ7qeoj2W3oPRf8g1oSJablEuXOTTVXiWEwtouNInVI6F2JR6NdmsVMhQqavwigQa8GdKYp4K_AWBNuLoGmwecgclRLf0_XcEJq0PnVc7v?width=1285&height=964&cropmode=none'))),
                ),
              )
            ]),
          ),
        )),
      ),
    );
  }
}
