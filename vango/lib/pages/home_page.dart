// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vango/pages/messages_page.dart';
import 'package:vango/services/book.dart';
import 'package:vango/services/near_me.dart';
import 'package:vango/services/rent.dart';
import 'package:vango/services/shipment.dart';
import 'package:vango/util/my_trips.dart';
import 'package:vango/util/slider_cards.dart';
import 'package:vango/util/services_button.dart';
import 'package:vango/pages/ticket_page.dart';
import 'package:vango/util/profile.dart';
import 'package:vango/util/history.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      //sidebar
      endDrawer: const Profile(),
      //appbar
      appBar: AppBar(
        actions: [
          Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://bnz06pap003files.storage.live.com/y4mXhL0Ti7QLGMMP6bikyFpZUZ7SltyjdWQTCNiJTXUmWgJh0s1iQGLedmsTv1e3EVgLIc0ZalgvPgt8g9IUOfTVF17D9Q07GAIV2wlSKm3PYeWX7bTmmovz_GhUPYusdlLgcFqtoq3Q5Q_ToZvDgBvX9n4z2NrfkW0EuZZxd_8cnGfJqVZIFEwY-Wv6nK1QzOi?width=500&height=500&cropmode=none')),
              ),
            );
          }),
        ],
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        title: Container(
          padding: EdgeInsets.only(top: 35, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                icon: Container(
                  width: 150,
                  height: 50,
                  child: Image.network(
                    'https://bnz06pap003files.storage.live.com/y4mQuGK3JBICWjgxMeHsuTxUaAvqongE7pHXtIxOxO2EHm7JzTERdBpskRtNkQjbqzASjN_jMr4xehhBlvKthj-N0ZaVYiLMb1zvAsw6XdVu1v9Hlxp7ljiOdAvwHsZ37yq_yvfePoLe5XnRsPcq60cY7SOB1KW4akZAuxv9v070JYShWtOY-Qkvh377PeCanMM?width=1875&height=1563&cropmode=none',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade50,
      ),

      //botnavbar
      bottomNavigationBar: Container(
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 12.5,
          ),
          child: GNav(
            selectedIndex: 0,
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
            SizedBox(height: 10),

            //search bar
            Column(
              children: [
                //carousel slider
                Container(
                  height: 220,
                  child: SliderP(),
                ),

                SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        'Services',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 13),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //pick up
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NearMe()),
                          );
                        },
                        icon: MyButton(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mFYFMEkaE7CEsLisUYS3yr1dwCIrMbKG3ZZWlOEpc8LlC4GAuxnDgaFcFjLFg6F7fns8TjjWcgfmJTysjZQtAcHdQtTAzdQKnt2xyHZqcu_RgHswhV5We2AiAIYiavm4M4bopICDonu_U7ynWR_Z3Nk7a8QHuDMdQyIHmOyByZOiZU9fy83u-SelXlfq8VLE1?width=512&height=512&cropmode=none',
                          buttonText: 'Near Me',
                        ),
                      ),

                      //book
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyBook()),
                          );
                        },
                        icon: MyButton(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mgT7H2TnP4e6GG70IYQyx3h0KtUW75guLmxQEirPcu83OTFrl3G2ZLJncDEIaEo3YyioLrrxhV106Svt7MyWRFEfqxMGEcCQWSS4gX9p_uLA3CI60p-XKdecW_lHts1AM8wGgpjUjrrH5AfkB7pQi5807Ma1IOjVkqBegbMMx9UvuPNJFb6MlYHjyLN5-U6Nv?width=512&height=512&cropmode=none',
                          buttonText: 'Book',
                        ),
                      ),
                      //rent
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyRent()),
                          );
                        },
                        icon: MyButton(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mzw8erWAQePMaWJ_vDb--mlUK0niakfak32vQJWWMz3kYkm87edsqtXFi_NBIc_3_iKnGopGuvFgt38URCpQ6paPSsMjblkP1Db3dXd0iwE_2g-w32DbCFblGpUVF66F3vEehl1KWLPMyoea6EGU_olfLh5e8uAIIisxtfkBNJGJOS5A_bZOznpDEMNB_1BuI?width=512&height=512&cropmode=none',
                          buttonText: 'Rent',
                        ),
                      ),
                      //shipment
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyShipment()),
                          );
                        },
                        icon: MyButton(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4m40nqmHTqknC09oOGfJ1CBTYkzmPBfSQfLRZTe8qmOnv_e08RDxzR9qUaetpcsValp7XqB4XoHiZh0-8UhOz2NvrJG2evIYlHdFrcuRh9XaOJthPVQruPnXxhwZdu1cErOdZuoNOOF5_LsUo5OVqX8uVJ35XrVv-t86e-vcHug-x3x8FVgHiZTaqXBI3mkqTr?width=512&height=512&cropmode=none',
                          buttonText: 'Shipment',
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 18),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                        'Your Trips',
                      ),
                      Row(
                        children: [
                          Text(
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[300],
                            ),
                            'Recent',
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => historyPage()),
                              );
                            },
                            icon: Icon(Icons.history_rounded),
                            color: Colors.deepPurple[300],
                            style: ButtonStyle(
                              iconSize: MaterialStatePropertyAll(20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13),

                Padding(
                  //trips
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      MyTrips(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mXikSHn1oNOaWR6QKUFEiaE2YFh-Kg-A1lLPmwBVn02_1RFR33rBm4Sp_FigZ7tLD07o6zzYA_lKqwOpOT-KbcOdCsNeaJVm7-0Dp2zNH8Zqz24ZxfeqWCxknkg-dbbDvThwVrq0SE37mnd9uuopkXcFnnqHXnYROZnZBtBloCI9uFWsDvgFvrqQDRj5PkOM7?width=512&height=512&cropmode=none',
                          tileTitle: 'Home',
                          tileSubtitle: 'Flora, Apayao'),
                      MyTrips(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mChUyzjGgPIuH3VjVdSlJ2m0XcJJasPy-b4KaDLOb1u8I6KFQm5q1EI5jg-pFDElKcCmkZ-abWjbuZF9y8FQOzAVq8gnI-Gyjlsf0qKNFGEqwg6v9_ghnQmSNat44nvMBOF6r2NvD10bMWUdBe8MPCquv6-kA7VkVYe_PYoHogU8gb3bYqFmIBraGP7hldQOG?width=512&height=512&cropmode=none',
                          tileTitle: 'CSU-Carig',
                          tileSubtitle: 'Carig Sur, Tugue'),
                      MyTrips(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4m920mNxs9JNhK04t5yOwQUZZR8VtztxJI-UDJsppl3dxZDxxx6zpUm20DuH-38FlRcb_YcNKbUvxs63nvOkJyjdz-xtBZ9BfKYSgMxJmGmHq764IUGJG7lZFmPMA-06u_5DNgxNR64qk_H7ZXK2a1yHn6WBZC8WCX_ZsXBGWEGeAkh7B81PpPBHyzABY3Wy4P?width=512&height=512&cropmode=none',
                          tileTitle: 'CVMC',
                          tileSubtitle: 'Asideg DepEd, Tugue'),
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
