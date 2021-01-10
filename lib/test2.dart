import 'package:flutter/material.dart';

class test2 extends StatefulWidget {
  int index;
  test2(this.index);
  @override
  _test2State createState() => _test2State(index);
}

class _test2State extends State<test2> {
  int index;
  _test2State(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index.toString()),
      ),
      body: Container(
        child: Text("test2Page"),
      ),

    );
  }
}
