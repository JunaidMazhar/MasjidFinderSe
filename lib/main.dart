import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());

}
//}
//
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: "My App",
//       home: new HomePage(),//provides the structure of the app
//
//    );
//  }
//}
//class HomePage extends StatefulWidget {
//
//  @override
//  _HomePageState createState() => _HomePageState();
//}

//class _HomePageState extends State<HomePage> {
//  String mytext = "Hello World";
//
//  void _changeText() {
//    setState(() {
//      if (mytext.startsWith("H")) {
//        mytext = "Welcome to my app";
//      }
//      else {
//        mytext = "Hello World";
//      }
//    });
//  }
//
//
//  Widget _bodyWidget() {
//    return new Container(
//      padding: const EdgeInsets.all(8.0),
//      child: new Center(
//        child: new Column(
//          children: <Widget>[
//            new Text(mytext),
//            new RaisedButton(
//                child: new Text("Click"),
//                onPressed: _changeText
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//
//
//
//
//  @override
//  // TODO: implement widget
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        centerTitle: true,
//        title: new Text("Home Page"),
//      ),
//         body: _bodyWidget(),
//     // body: new Center(child: new Text("Hello Stateful widget"),),
//    );
//  }
//}


  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "My App",
       home: new FirstRoute( //provides the structure of the app
        // appBar: new AppBar(
          //centerTitle: true,
           //title: new Text("Pro Masjid Finder"),
         ),

          //body: new Center(child: new Text("Lets Find a Mosque ",
          //style: TextStyle(fontSize: 40, color: Colors.green ),),)
        // ,
       //),

    );
    }

}


class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find My Masjid ?'),
      ),
      body: Center(



        child: RaisedButton(
          child: Text('Press Enter Continue'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}







class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find My Masjid ?"),
      ),


    body: new Center(child: new Text("Lets Find a Mosque ",
    style: TextStyle(fontSize: 40, color: Colors.green ),),)
     ,
    );
  }
}



