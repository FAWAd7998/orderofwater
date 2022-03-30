import 'package:flutter/material.dart';
import 'package:oow/home/home.dart';
import 'package:oow/location.dart';

class codepage extends StatelessWidget {
  const codepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Code'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(88, 174, 239, 1),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          margin: EdgeInsets.fromLTRB(0, 5, 80, 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //     child: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_back),
              // )),
              SizedBox(
                height: 120,
              ),
              Container(
                  margin: EdgeInsets.only(left: 80),
                  width: 250,
                  child: Image.asset('assets/katra.png')),
              Container(
                margin: EdgeInsets.only(left: 160, top: 7),
                child: Text(
                  'Order Of Water',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // SizedBox(
              //   height: ,
              // ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.5,
                // height: MediaQuery.of(context).size.height * 0.5,
                margin: EdgeInsets.fromLTRB(80, 70, 0, 0),
                child: Text(
                  'Enter Your Plant Code',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                // width: 200,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(78, 10, 0, 0),
                width: 190,
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Enter Your Code',
                      style: TextStyle(fontSize: 25),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 190,
                    margin: EdgeInsets.fromLTRB(80, 40, 0, 0),
                    child: ElevatedButton(
                        child: Text(
                          'Enter',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                          );
                        },
                        // style: ButtonStyle(color:Color.),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red))))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(80, 20, 0, 0),
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => location()),
                        );
                      },
                      child: Text('FIND NEAREST',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.blue,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
