import 'package:flutter/material.dart';

class MyDefaultBody extends StatelessWidget {
  const MyDefaultBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          child: ListView(
            shrinkWrap: true,
            children: const <Widget>[
              ListTile(title: Text('Tours')),
              ListTile(title: Text('Bookings')),
              ListTile(title: Text('Profiles')),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: selectedPageIndex == 0
                ? const Icon(Icons.travel_explore)
                : const Icon(Icons.travel_explore_outlined),
            label: 'Tab1',
          ),
          BottomNavigationBarItem(
            icon: selectedPageIndex == 1
                ? const Icon(Icons.airplane_ticket)
                : const Icon(Icons.airplane_ticket_outlined),
            label: 'Tab2',
          ),
          BottomNavigationBarItem(
            icon: selectedPageIndex == 3
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outlined),
            label: 'Tab3',
          ),
          BottomNavigationBarItem(
            icon: selectedPageIndex == 4
                ? const Icon(Icons.access_alarm)
                : const Icon(Icons.cabin),
            label: 'Tab4',
          ),
          BottomNavigationBarItem(
              icon: selectedPageIndex == 5
                  ? const Icon(Icons.cable_sharp)
                  : const Icon(Icons.cabin),
              label: 'Tab5')
        ],
      ),
    );
  }
}
