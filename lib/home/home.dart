// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   child:Slider(
            //     onChanged: ,
            //   ),

            // ),
            // CarouselSlider(
            //   items: [],
            //   options: ,
            //   carouselController: ,
            //   key: ,

            // ),
            slider(),

            // Container(
            //   color: Colors.blue[200],
            //   height: 250,
            //   width: 500,
            // ),
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
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(88, 174, 239, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detail()),
                      );
                    },
                    child: Text(
                      'BOTTEL',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(88, 174, 239, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detail()),
                      );
                    },
                    child: Text(
                      'BOTTEL',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(88, 174, 239, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detail()),
                      );
                    },
                    child: Text(
                      'BOTTEL',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(88, 174, 239, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detail()),
                      );
                    },
                    child: Text(
                      'BOTTEL',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(88, 174, 239, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detail()),
                      );
                    },
                    child: Text(
                      'BOTTEL',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.blue))),
        width: 150,
        // height: 100,
        child: Row(
          children: [
            Container(
              child: Text(
                'AHMAR',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class slider extends StatefulWidget {
  slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  final List imgList = [
    // 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2015%2F04%2F23%2F22%2F00%2Ftree-736885__480.jpg&imgrefurl=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&tbnid=DH7p1w2o_fIU8M&vet=12ahUKEwjSi8GBofL2AhVRwCoKHa0iCosQMygCegUIARDXAQ..i&docid=Ba_eiczVaD9-zM&w=771&h=480&q=images&ved=2ahUKEwjSi8GBofL2AhVRwCoKHa0iCosQMygCegUIARDXAQ',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(height: 400.0),
      // carouselController:,
      items: imgList.map((ahmar) {
        return Builder(
          builder: (_) {
            return
                // return Image.network(
                //   'imgList',
                //   fit: BoxFit.cover,
                // );
                Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: Image.network(
                'imgList',
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}
