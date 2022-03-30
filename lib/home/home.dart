// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:oow/detail.dart';
import 'package:oow/home/drawer%20screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool abc = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerscreen(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                this.abc = !this.abc;
              });
            },
            icon: Icon(Icons.search),
          )
        ],
        title: !abc
            ? Center(
                child: Container(

                    // width: MediaQuery.of(context).size.width * 0.5,
                    width: 150,
                    height: 150,
                    // height: 100,
                    child: Image.asset('assets/katra.png')),
              )
            // ? Text(
            //     'OOW (Order Of Water)',
            //     style: TextStyle(fontSize: 20),
            //   )
            : TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    'Search Here',
                    style: TextStyle(fontSize: 20),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide:
                  //       const BorderSide(color: Colors.white, width: 2.0),
                  //   // borderRadius: BorderRadius.zero,
                  // ),
                ),
              ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue[200],
            height: 250,
            width: 500,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              spacing: 50,
              runSpacing: 30,
              children: [
                MaterialButton(
                  color: Color.fromRGBO(88, 174, 239, 1),
                  // splashColor: Colors.[600],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detail()),
                    );
                  },
                  child: Text(
                    'BOTTEL',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  color: Color.fromRGBO(88, 174, 239, 1),
                  onPressed: () {},
                  child: Text(
                    'BOTTEL',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  color: Color.fromRGBO(88, 174, 239, 1),
                  onPressed: () {},
                  child: Text(
                    'BOTTEL',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  color: Color.fromRGBO(88, 174, 239, 1),
                  onPressed: () {},
                  child: Text(
                    'BOTTEL',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  color: Color.fromRGBO(88, 174, 239, 1),
                  onPressed: () {},
                  child: Text(
                    'BOTTEL',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  color: Color.fromRGBO(88, 174, 239, 1),
                  onPressed: () {},
                  child: Text(
                    'BOTTEL',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
