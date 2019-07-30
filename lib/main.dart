import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.deepOrange,
                    Colors.orangeAccent
                  ])
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
//                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8),
                        child: Image.asset('images/avatar-yasuo.jpg', width: 80, height: 80,),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8),
                    child: Text('Drawer Flutter', style: TextStyle(fontSize: 20, color: Colors.white),),
                    )
                  ],
                ),
              )
            ),
            CustomListTitle(Icons.person, 'Profile', () => {}),
            CustomListTitle(Icons.notifications, 'notifications', () => {}),
            CustomListTitle(Icons.settings, 'Settings', () => {}),
            CustomListTitle(Icons.lock, 'Log Out', () => {}),
          ],
        ),
      ),
    );
  }

}

class CustomListTitle extends StatelessWidget{

  IconData iconTitle;
  String textTitle;
  Function onTapTitle;

  CustomListTitle(this.iconTitle, this.textTitle, this.onTapTitle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
    child: Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade400))
      ),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: onTapTitle,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(iconTitle),
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(textTitle, style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                  )
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    ),
    );
  }

}
