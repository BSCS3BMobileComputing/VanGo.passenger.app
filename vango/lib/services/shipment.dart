// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vango/util/my_shipment.dart';

class MyShipment extends StatefulWidget {
  const MyShipment({super.key});

  @override
  State<MyShipment> createState() => _MyShipmentState();
}

class _MyShipmentState extends State<MyShipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.grey.shade50,
        title: Text(
          'Shipping',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                width: 370,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade100,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      'https://bnz06pap003files.storage.live.com/y4miM-sxTF697njM-vg2x9EJegCzgqRtnhE3iTabNtK3xMA-lFzLu8rf-SwG7X-Rf1xH30KxZ3xoCM1eo5f-CzGVv_WjUid70NuWX0aCWjTaJtRDDZly-uT3Inx76fhlLzhXaKspfTmRonj_O0F9dou6vRcgmd90c3IMkl2etb-FBhVVNx-4DmQa1FFECwqg64d?width=400&height=250&cropmode=none',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 13),
            Column(
              children: [
                Container(
                  height: 390,
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
                                  'Shipping plans',
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        MyShip(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mGeM6ABOL9jXixlEQUjIpeT4amrZyk8uM8BYflI99eF2CkB8b2htU8ICdc9dLmcWckm5pLKjvtmh1jE_PkVKnGHmzVDXruLBpGwL2RDQ44rt-DqPe5gSFayu0CeGrUA3hdhhTsQENy3NmZU1542psZprU56tgZ5A2WU0woetLgcRBraczqL_yXRy-j2MWQc0U?width=512&height=512&cropmode=none',
                          tileTitle: 'Rate',
                          tileSubtitle: '        ₱999',
                          tileSubtitle1: '/10 km',
                        ),
                        MyShip(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mGeM6ABOL9jXixlEQUjIpeT4amrZyk8uM8BYflI99eF2CkB8b2htU8ICdc9dLmcWckm5pLKjvtmh1jE_PkVKnGHmzVDXruLBpGwL2RDQ44rt-DqPe5gSFayu0CeGrUA3hdhhTsQENy3NmZU1542psZprU56tgZ5A2WU0woetLgcRBraczqL_yXRy-j2MWQc0U?width=512&height=512&cropmode=none',
                          tileTitle: 'Rate',
                          tileSubtitle: '        ₱108',
                          tileSubtitle1: '/km',
                        ),
                        MyShip(
                          iconImagePath:
                              'https://bnz06pap003files.storage.live.com/y4mGeM6ABOL9jXixlEQUjIpeT4amrZyk8uM8BYflI99eF2CkB8b2htU8ICdc9dLmcWckm5pLKjvtmh1jE_PkVKnGHmzVDXruLBpGwL2RDQ44rt-DqPe5gSFayu0CeGrUA3hdhhTsQENy3NmZU1542psZprU56tgZ5A2WU0woetLgcRBraczqL_yXRy-j2MWQc0U?width=512&height=512&cropmode=none',
                          tileTitle: 'Rate',
                          tileSubtitle: '        ₱4',
                          tileSubtitle1: '/meter',
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
                                Icons.shopping_bag_rounded,
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
                                'Send now',
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
