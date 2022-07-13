import 'package:flutter/material.dart';
import 'package:top_tabbar/expanseCollapseViewOne.dart';
import 'package:top_tabbar/expanseCollapseViewTwo.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: const <Widget>[
            MyStatefulWidget(),
          ],
        ),
        Column(
          children: const <Widget>[
            MyStatefulWidgetTwo(),
          ],
        ),
      ],
    );
  }
}
