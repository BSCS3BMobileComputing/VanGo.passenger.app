// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vango/util/drawerheader.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        children: [
          const MyDrawerHeader(),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            leading: const Icon(
              Icons.person,
            ),
            title: const Text('Manage Account'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.wallet_travel,
            ),
            title: const Text('Bookings & Trips'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.rate_review,
            ),
            title: const Text('Reviews'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.credit_card_sharp,
            ),
            title: const Text('Payment Options'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.policy,
            ),
            title: const Text('Legal'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app_sharp,
            ),
            title: const Text('Exit'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
            ),
            title: const Text('About us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0, top: 10.0),
            child: FloatingActionButton(
              backgroundColor: Colors.deepPurple[400],
              foregroundColor: Colors.white,
              shape: const CircleBorder(),
              onPressed: () {
                Navigator.pop(context);
              },
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.headset_mic,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
