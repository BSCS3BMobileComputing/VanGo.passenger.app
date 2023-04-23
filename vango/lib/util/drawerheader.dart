import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.deepPurple[400],
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 255),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 25,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            CircleAvatar(
                backgroundColor: Colors.white38,
                radius: 45,
                child: Container(
                  margin: const EdgeInsets.only(top: 0.0),
                  height: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://bnz06pap003files.storage.live.com/y4mXhL0Ti7QLGMMP6bikyFpZUZ7SltyjdWQTCNiJTXUmWgJh0s1iQGLedmsTv1e3EVgLIc0ZalgvPgt8g9IUOfTVF17D9Q07GAIV2wlSKm3PYeWX7bTmmovz_GhUPYusdlLgcFqtoq3Q5Q_ToZvDgBvX9n4z2NrfkW0EuZZxd_8cnGfJqVZIFEwY-Wv6nK1QzOi?width=500&height=500&cropmode=none',
                        ),
                      )),
                )),
            const Text(
              "Jayjay pogi",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const Text(
              "Jayjay@gmail.com",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
