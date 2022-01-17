import 'package:flutter/material.dart';

import 'travel_view.dart';

enum _TravelPages { home, bookmark, notification, profile }

class TravelTabView extends StatelessWidget {
  const TravelTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _TravelPages.values.length,
      child: const Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: TabBar(tabs: [
            Tab(icon: Icon(Icons.accessibility_outlined)),
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(icon: Icon(Icons.ac_unit)),
          ]),
        ),
        body: TabBarView(children: [
          TravelView(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ]),
      ),
    );
  }
}
