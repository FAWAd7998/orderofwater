// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:oow/checkout.dart';
import 'package:oow/main.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class detail extends StatelessWidget {
  const detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Detail',style:TextStyle(    fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                      width: 300,
                      height: 400,
                      child: Image.asset('assets/katra.png')),
                  SizedBox(
                    // height: 50,
                    width: 120,
                  ),
                  Wrap(
                    // crossAxisAlignment: CrossAxisAlignment.center
                    direction: Axis.vertical,
                    alignment: WrapAlignment.spaceAround,
                    spacing: 50,
                    runSpacing: 30,
                    children: [
                      Container(
                        height: 40,
                        width: 190,
                        child: ElevatedButton(
                            child: Text(
                              'Enter',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            // style: ButtonStyle(color:Color.),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 33, 150, 243)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )))),
                      ),
                      Container(
                        height: 40,
                        width: 190,
                        child: ElevatedButton(
                            child: Text(
                              'Enter',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            // style: ButtonStyle(color:Color.),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 33, 150, 243)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )))),
                      ),
                      Container(
                        height: 40,
                        width: 190,
                        child: ElevatedButton(
                            child: Text(
                              'Enter',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            // style: ButtonStyle(color:Color.),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 33, 150, 243)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.amber,
              // child: ,
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 300,
              width: 700,
              child: Center(
                  child: Text(
                'COMMENT HERE ',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => checkout()));
                  },
                  child: Text(
                    'ORDER NOW',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
