import 'package:flutter/material.dart';
import 'package:top_tabbar/payments.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            leading: Container(
                decoration: const BoxDecoration(
                    color: Colors.white54,
                    shape: BoxShape.circle,

                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                )),
            centerTitle: true,
          ),
          body: DefaultTabController(
              length: 3,
              child: Column(
                children: const <Widget>[
                  Material(
                      color: Colors.white70,
                      child: TabBar(
                        labelColor: Colors.black, //<-- selected text color
                        unselectedLabelColor:
                            Colors.green, //<-- Unselected text
                        tabs: [
                          Tab(
                            text: 'Payments',
                          ),
                          Tab(
                            text: 'Alerts',
                          ),
                          Tab(
                            text: 'Offers',
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        Payments(),
                        Icon(Icons.directions_transit),
                        Icon(Icons.directions_bike),
                      ],
                    ),
                  )
                ],
              )) // This trailing comma makes auto-formatting nicer for build methods.

          ),
    );
  }
}
