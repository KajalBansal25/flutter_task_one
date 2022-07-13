import 'package:flutter/material.dart';
import 'package:top_tabbar/customCard.dart';

class MyStatefulWidgetTwo extends StatefulWidget {
  const MyStatefulWidgetTwo({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetTwo> createState() => _MyStatefulWidgetTwoState();
}

class _MyStatefulWidgetTwoState extends State<MyStatefulWidgetTwo> {
  final Map<String,dynamic> paymentData={
    'receivedFrom':'Received from',
    'phone':'943879987654323456785',
    'amount':'₹9,500',
    'time':'09:20 PM',
    'transactionType':'credited to',
    'accountNo':'AC XX1288'
  };

  Widget _listViewBuilderTwo(int n){
    return const CustomCard();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children:  <Widget>[
        ExpansionTile(
          title:const Text('Earlier'),
            children: [1,2].map(_listViewBuilderTwo).toList()

        ),


      ],
    );
  }
}
