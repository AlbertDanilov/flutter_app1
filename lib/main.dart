import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Back office'),
        centerTitle:  true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Text('Danilov Albert', style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Fredoka'
                )),
                Padding(padding: EdgeInsets.only(top: 10)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/android_fly.jpg'),
                  radius: 50,
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Icon(Icons.mail, size: 25, color: Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Text('albert95danilov@gmail.com', style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Fredoka'
                    ))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text('Count: $_count', style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Fredoka'
                ))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.access_alarm),
        backgroundColor: Colors.black26,
      ),
    );
  }
}
