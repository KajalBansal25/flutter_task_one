import 'package:flutter/material.dart';
import 'package:top_tabbar/customCard.dart';
import 'dart:collection';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // final Map<String,dynamic> paymentsData={
  //   'receivedFrom':'Received from',
  //   'phone':'943879987654323456785',
  //   'amount':'₹9,500',
  //   'time':'09:20 PM',
  //   'transactionType':'credited to',
  //   'accountNo':'AC XX1288'
  // };

  Widget _listViewBuilder(int n){
    return const CustomCard();
  }
  @override
  Widget build(BuildContext context) {
    List<String> keypair=[ 'receivedFrom','phone','amount','time','transactionType','accountNo'];
    List<dynamic> valuepair=['Received from','943879987654323456785','₹9,500','09:20 PM','credited to','AC XX1288'];
    Map<String,dynamic> map6=Map.fromIterables(keypair,valuepair);
    print(map6);

    return  Column(
      children:   <Widget>[
        ExpansionTile(
          title: const Text('Today',style: TextStyle(color: Colors.grey),),
          children: [1,2].map(_listViewBuilder).toList() 
          // children: paymentsData.map((paymentData){
          //   return CustomCard();
          // }),
        ),
      ],
    );
  }
}

