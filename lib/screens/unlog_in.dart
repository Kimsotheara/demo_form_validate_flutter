import 'dart:collection';

import 'package:demo_form_validation/screens/navigation/account.dart';
import 'package:demo_form_validation/screens/scan_qr/qr_scanner.dart';
import 'package:flutter/material.dart';

class UnLogin extends StatelessWidget {
  const UnLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Back"),
          centerTitle: false,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.man),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Your")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.scanner),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Scan")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.image),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Kawasaki")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.girl),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Cairo")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.calculate),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("calculate")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        "https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-1308881.jpg&fm=jpg",
                        fit: BoxFit.fill,
                        height: 300,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      height: 5.5,
                    ),
                    const Text('Snacks (Burger)',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 5.5,
                    ),
                    const Text(
                        'The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                    const Text(
                        'The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                  ],
                ),
              ),
            ),

            const Padding(
                padding:  EdgeInsets.all(20.0),
                child:  QrScanner(),
            ),

            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Account(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      "https://images.pexels.com/photos/675920/pexels-photo-675920.jpeg?cs=srgb&dl=pexels-min-an-675920.jpg&fm=jpg",
                      fit: BoxFit.fill,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    height: 5.5,
                  ),
                  const Text('Workout (Exercise)',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5.5,
                  ),
                  const Text(
                      "Exercise is a body activity that enhances or maintains physical fitness and overall health and wellness. It is performed for various reasons, to aid growth and improve strength, develop muscles and the cardiovascular system, hone athletic skills, weight loss or maintenance, improve health."),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          //action code for button 1
                        },
                        child: const Text('hello button 1'),
                      )), //but
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          //action code for button 1
                        },
                        child: const Text('hello button 2'),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
