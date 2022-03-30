import 'package:flutter/material.dart';
import 'package:oow/signin.dart';

class signup extends StatelessWidget {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _area = TextEditingController();
  signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(width: 250, child: Image.asset('assets/katra.png')),
            Container(
              margin: EdgeInsets.only(left: 90, top: 7),
              child: Text(
                'Order Of Water',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 50, 0, 0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signin()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    // Container(
                    //   margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    //   height: 3,
                    //   width: 55,
                    //   decoration: BoxDecoration(color: Colors.blue),
                    // ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 30, 0),
                      child: MaterialButton(
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            // color: Colors.grey.shade500
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                      height: 3,
                      width: 80,
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Container(
            //       margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
            //       child: MaterialButton(
            //         onPressed: () {
            //           Navigator.pop(
            //             context,
            //             MaterialPageRoute(builder: (context) => signin()),
            //           );
            //         },
            //         child: Text(
            //           'Login',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.grey.shade500,
            //           ),
            //         ),
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
            //           child: MaterialButton(
            //             child: Text(
            //               'Sign UP',
            //               style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //                 // color: Colors.grey.shade500
            //               ),
            //             ),
            //             onPressed: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) => signup()),
            //               );
            //             },
            //           ),
            //         ),
            //         SizedBox(
            //           height: 4,
            //         ),
            //         Container(
            //           margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            //           height: 3,
            //           width: 60,
            //           decoration: BoxDecoration(color: Colors.blue),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 500,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    // blurRadius: 1,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        'NAME',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Container(
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // label: Text('EMAIL'),
                          hintText: 'enter your name',
                          // border: OutlineInputBorder(borderSide: BorderSide.mer),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        'Phone Nmber',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Container(
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // label: Text('EMAIL'),
                          hintText: 'enter your phone number',
                          // border: OutlineInputBorder(borderSide: BorderSide.mer),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        'City',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    Container(
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // label: Text('EMAIL'),
                          hintText: 'enter your city name',
                          // border: OutlineInputBorder(borderSide: BorderSide.mer),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        'Area',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Container(
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // label: Text('EMAIL'),
                          hintText: 'enter your area',
                          // border: OutlineInputBorder(borderSide: BorderSide.mer),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        'EMAIL',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Container(
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // label: Text('EMAIL'),
                          hintText: 'enter your email id',
                          // border: OutlineInputBorder(borderSide: BorderSide.mer),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //   width: 260,
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       // label: Text('EMAIL'),
                    //       hintText: 'enter your email',
                    //       // border: OutlineInputBorder(borderSide: BorderSide.mer),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //   width: 260,
                    //   child: Text(
                    //     'PASSWORD',
                    //     style: TextStyle(
                    //         fontSize: 12,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.blue),
                    //   ),
                    // ),
                    // // SizedBox(
                    // //   height: 20,
                    // // ),
                    // Container(
                    //   width: 260,
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       // label: Text('EMAIL'),
                    //       hintText: 'enter your password',
                    //       hintStyle: TextStyle(
                    //           fontWeight: FontWeight.w400, fontSize: 15),
                    //       // border: OutlineInputBorder(borderSide: BorderSide.mer),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Container(
                        //   child: Text(
                        //     'FORGOT PASSWORD?',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue),
                        //   ),
                        // ),
                        // Container(
                        //   child: Text(
                        //     'REGISTER NOW',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.orange),
                        //   ),
                        // ),
                        MaterialButton(
                          child: Text(
                            'Sign UP',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signup()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Row(
            //   children: [
            //     SizedBox(
            //       height: 150,
            //       width: 30,
            //     ),
            //     Container(
            //       child: Text('or'),
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //     Container(
            //       child: Text(
            //         'Join With',
            //         style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     ElevatedButton(
            //         child: Text('FACEBOOKS'),
            //         onPressed: () {},
            //         // style: ButtonStyle(color:Color.),
            //         style: ButtonStyle(
            //             backgroundColor:
            //                 MaterialStateProperty.all<Color>(Colors.blue),
            //             shape:
            //                 MaterialStateProperty.all<RoundedRectangleBorder>(
            //                     RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(18.0),
            //                         side: BorderSide(color: Colors.blue))))),
            //     ElevatedButton(
            //         child: Text('GOOGLE'),
            //         onPressed: () {},
            //         // style: ButtonStyle(color:Color.),
            //         style: ButtonStyle(
            //             backgroundColor:
            //                 MaterialStateProperty.all<Color>(Colors.red),
            //             shape:
            //                 MaterialStateProperty.all<RoundedRectangleBorder>(
            //                     RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(18.0),
            //                         side: BorderSide(color: Colors.red))))),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
