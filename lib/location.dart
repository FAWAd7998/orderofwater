import 'package:flutter/material.dart';

class location extends StatelessWidget {
  const location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant List'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(450, 20, 0, 0),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(120.0),
          border: TableBorder.all(
              color: Colors.black, style: BorderStyle.solid, width: 2),
          children: [
            TableRow(children: [
              Column(children: [
                Text('NO.',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
              ]),
              Column(children: [
                Text('NAME',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
              ]),
              Column(children: [
                Text('Plant Code',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
              ]),
              Column(children: [
                Text('Location',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
              ]),
            ]),
            TableRow(children: [
              Column(children: [Text('1', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('a', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('a', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('a', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('2', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('b', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('b', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('b', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('3', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('c', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('c', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('c', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('3', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('d', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('d', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('d', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('4', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('e', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('e', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('e', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('5', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('f', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('f', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('f', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('6', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('g', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('g', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('g', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('7', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('h', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('h', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('h', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('9', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('i', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('i', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('i', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('10', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('j', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('j', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('j', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('11', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('k', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('k', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('k', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('12', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('l', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('l', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('l', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('13', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('m', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('m', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('m', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('14', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('n', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('n', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('n', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('15', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('o', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('o', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('o', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('16', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('p', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('p', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('p', style: TextStyle(fontSize: 20.0))]),
            ]),
            TableRow(children: [
              Column(children: [Text('17', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('q', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('q', style: TextStyle(fontSize: 20.0))]),
              Column(children: [Text('q', style: TextStyle(fontSize: 20.0))]),
            ]),
          ],
        ),
      ),
    );
  }
}
