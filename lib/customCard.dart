import 'package:flutter/material.dart';

class CustomCard  extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text('Received from',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 8,),
                    Row(
                      children: <Widget>[
                        Column(
                          children: const <Widget>[Icon(Icons.arrow_circle_down),],
                        ),
                        const SizedBox(width: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text('9876543235678',style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 8,),
                            Text('875234567',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: const <Widget>[
                    Text('data',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 8,),
                    Text('data',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 8,),
                    Text('data',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)

                  ],
                ),
                // Text('09:20 PM'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
