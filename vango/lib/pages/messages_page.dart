// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vango/pages/home_page.dart';
import 'package:vango/util/my_messages.dart';
import 'package:vango/pages/ticket_page.dart';

class MyMessages extends StatefulWidget {
  const MyMessages({super.key});

  @override
  State<MyMessages> createState() => _MyMessagesState();
}

class _MyMessagesState extends State<MyMessages> {
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
          padding: const EdgeInsets.only(
            left: 22.0,
          ),
          child: Text(
            'Messages',
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
            selectedIndex: 2,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyTicket()),
                  );
                },
              ),
              GButton(
                icon: Icons.messenger_outline_rounded,
                text: 'Messages',
                backgroundColor: Colors.deepPurple[100],
                iconActiveColor: Colors.purple[700],
                textColor: Colors.purple[700],
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
          child: Column(children: [
            SizedBox(height: 12.5),

            //search bar
            Column(
              children: [
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
                          blurRadius: 6,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-3, -3),
                          blurRadius: 6,
                          spreadRadius: 1.0,
                        ),
                      ],
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.deepPurple[400],
                        ),
                        border: InputBorder.none,
                        hintText: 'Find conversations',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  //trips
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      MyConvo(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mrH3bAas9lmgE-Q5OL-62FuwnMXUwpFpATEoGl0sa2xpsX949mea5m26XVQya3R_dQuiUxJFzUMyTQTHbcXYzLwU1I8T3y2C7aWxfYJ8J9xClRRpPIzI7Q5c8GmMjlsJHvVsULgFSS0kizyuM02xRjevVWTOaZm4hjNkVtPw7LGFrzsxf4EXQBSA9XhOoXx-n?width=720&height=912&cropmode=none',
                          tileTitle: 'Mang Ray',
                          tileSubtitle: 'Iiwan kana namin :<      5:05 PM'),
                      MyConvo(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4m2H55_pqhBJxlFbuK4_pTLQQ8Jd-FMDo7mznPh_fwgzcW6e_kOYaTIhBgBDCTfnoKBCSxtU-cm8s4KHuxKG0oVn7PaBNVS7RFUJEP1ZqZfq-gl9ZiJMkN6vbFjW8bmHoYPsbayy7mc8KUzSRRrYxsf561UzIAog66GqGxNl9-SPzIWwJh0mUxlSHQJBmWkTvk?width=1552&height=1552&cropmode=none',
                          tileTitle: 'Elon Mark',
                          tileSubtitle: 'Wer na u, dito na me      2:32 PM'),
                    ],
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
