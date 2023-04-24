import 'package:flutter/material.dart';

import 'navigation/account.dart';
import 'navigation/add.dart';
import 'navigation/report.dart';
import 'navigation/saving.dart';
import 'navigation/transaction.dart';

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
  final List _navItems = [
    {"screen": const Transaction(), "title": "Screen Transaction"},
    {"screen": const Saving(), "title": "Screen Saving"},
    {"screen": const Add(), "title": "Screen Add"},
    {"screen": const Report(), "title": "Screen Report"},
    {"screen": const Account(), "title": "Information"}
  ];

  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_navItems[selectedPageIndex]["title"]),
      ),
      body: _navItems[selectedPageIndex]["screen"],
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
                ? const Icon(Icons.list_alt_rounded)
                : const Icon(Icons.list_alt_rounded),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: selectedPageIndex == 1
                ? const Icon(Icons.savings)
                : const Icon(Icons.savings),
            label: 'Saving',
          ),
          BottomNavigationBarItem(
            icon: selectedPageIndex == 3
                ? const Icon(Icons.add_circle, size: 50.0,)
                : const Icon(Icons.add_circle, size: 50.0,),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: selectedPageIndex == 4
                ? const Icon(Icons.report)
                : const Icon(Icons.report),
            label: 'Report',
          ),
          BottomNavigationBarItem(
              icon: selectedPageIndex == 5
                  ? const Icon(Icons.manage_accounts_sharp)
                  : const Icon(Icons.manage_accounts_sharp),
              label: 'Account')
        ],
      ),
    );
  }
}
