// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vango/pages/home_page.dart';
import 'package:vango/pages/messages_page.dart';
import 'package:vango/pages/ticket_page.dart';

class MyBookmarks extends StatefulWidget {
  const MyBookmarks({super.key});

  @override
  State<MyBookmarks> createState() => _MyBookmarksState();
}

class _MyBookmarksState extends State<MyBookmarks> {
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
            'Bookmarks',
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
            selectedIndex: 3,
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
              // ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          'https://bnz06pap003files.storage.live.com/y4mYA0E5oBqLp-CXgltpxn2XuADEQwDDnn0APoxmg2Tqk7DG2H5aRPxChFkIg9DjJPu0ebGiht14Czuofzpn4X7Yq7yQvZshMQpihewFMUWXyl52KZj98dQV7oNHXMn5CPYjUdYWnzwng9Ypkil4uVNrEEESFqZZznnuZffYKKUuLjEcBrkz2BFCE1NneQvVY5u?width=800&height=600&cropmode=none'))),
            ),
          ),
        )),
      ),
    );
  }
}
