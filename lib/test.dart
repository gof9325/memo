import 'package:flutter/material.dart';
import 'package:flutter_project00/test2.dart';

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();

}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test2"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.network("https://cdn.pixabay.com/photo/2015/02/15/03/04/japanese-umbrellas-636870__480.jpg"),
          ),
          Container(
            height: 300.0,
            child: ListView.builder(
              itemCount: 3,
                itemBuilder: (BuildContext context, int index) => GestureDetector(
                  onTap: (){
                    // print(index);
                    // Navigator.of(context).push(new MaterialPageRoute(builder: ));
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => new test2(index),
                        )
                    );
                  },
                  child: ListTile(
                    leading: Image.network("https://cdn.pixabay.com/photo/2020/08/26/06/06/cobweb-5518710__480.jpg"),
                    title: Text("title"),
                    subtitle: Text("subtitle"),
                    trailing: Icon(Icons.send),
                  ),
                )
            )
            ),
        ],
      )
      );
  }
}

