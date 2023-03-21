import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
    new MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Screen"), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Card(
                child: Row(children: [
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstScreen()));
                    },
                    child: Icon(
                      Icons.looks_one_outlined,
                      color: Colors.green,
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                    child: Icon(
                      Icons.looks_two_outlined,
                      color: Colors.green,
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdScreen()));
                    },
                    child: Icon(
                      Icons.looks_3_outlined,
                      color: Colors.green,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("First Screen"), backgroundColor: Colors.green),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            child: const Center(child: Text('0000')),
          ),
          Divider(),
          Container(
            height: 50,
            child: const Center(child: Text('0001')),
          ),
          Divider(),
          Container(
            height: 50,
            child: const Center(child: Text('0010')),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<String> _array = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Screen"), backgroundColor: Colors.green),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return new Text('Строка $index');
        },
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  List<String> _array = [];
  int A = 2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Third Screen"), backgroundColor: Colors.green),
      body: ListView.builder(
        itemBuilder: (context, i) {

          if (i.isOdd) return new Divider();

          final int index = i ~/ 2;

          if (index >= _array.length)
            _array.addAll(['$index', '${index + 1}', '${index + 2}']);
          final Nums = pow(A, index);
          return new ListTile(title: new Text('2 ^ ${_array[index]} = $Nums'));
        },
      ),
    );
  }
}
