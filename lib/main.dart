import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Project'),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.cyan,
            child: Text('Test text', style: TextStyle(fontSize: 30),),
            //margin: EdgeInsets.all(20.5),
            // margin:  EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            margin: EdgeInsets.fromLTRB(30.0, 30.0, 10.0, 10.0),
            padding: EdgeInsets.all(15.0),
          ),

          // child: Image(
          //   image: AssetImage('assets/android_fly.jpg'),
          //   //image: NetworkImage('https://ru.tab-tv.com/wp-content/uploads/android-logo-white.png'),
          // ),

          // child: TextButton.icon(
          //   icon: Icon(Icons.settings),
          //   label: Text('Press on me'),
          //   onPressed: () {},
          // )

          //RaisedButton(onPressed: () {}, child: Text('Press on me'), color: Colors.green),

          //FlatButton(onPressed: () {}, child: Text('Press on me'), color: Colors.green),

          //Icon(Icons.settings, size: 45, color: Colors.deepPurple,),

          // Text('Albert Danilov', style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.deepPurple,
          //     fontFamily: 'Fredoka'
          // ),),
        floatingActionButton: FloatingActionButton(
          child: Text('Press'),
          backgroundColor: Colors.amber,
          onPressed: () {
            print('Clicked');
          },
        ),
      ),
    );
  }

}
