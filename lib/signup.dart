import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:oow/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _area = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: _name,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: _phoneNumber,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: _city,
                          decoration: InputDecoration(
                            // label: Text('CITY'),
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: _area,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: _email,
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
                      Container(
                        width: 260,
                        child: Text(
                          'Password',
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: _password,
                          decoration: const InputDecoration(
                            // label: Text('EMAIL'),
                            hintText: 'enter your password',
                            // border: OutlineInputBorder(borderSide: BorderSide.mer),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (_) => const AlertDialog(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    content: SpinKitCubeGrid(
                                      color: Colors.amber,
                                    ),
                                  ),
                                );
                                try {
                                  FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(
                                          email: _email.text,
                                          password: _password.text)
                                      .then((value) {
                                    Get.back();
                                    Get.snackbar('Success',
                                        'User Registered successfully',
                                        margin: const EdgeInsets.all(0),
                                        borderRadius: 0,
                                        colorText: Colors.white,
                                        backgroundColor: Colors.green);
                                  }).onError((error, stackTrace) {
                                    Get.back();
                                    Get.snackbar('Error', error.toString(),
                                        margin: const EdgeInsets.all(0),
                                        borderRadius: 0,
                                        colorText: Colors.white,
                                        backgroundColor: Colors.red);
                                    print(error.toString());
                                  });
                                } on FirebaseAuthException catch (error) {
                                  print(error.code);
                                }
                              }
                            },
                            hoverColor: Colors.transparent,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  border:
                                      Border.all(color: Colors.pink, width: 10),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(5, 5))
                                  ]),
                              child: const Text('SignUp'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
