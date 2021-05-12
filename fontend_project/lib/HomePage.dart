import 'dart:ui';

import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( // Background
          child: Center(
            child: Text("TravelApp", style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.bold,


                color: Colors.red),),),
          color: Colors.white,

          height: MediaQuery
              .of(context)
              .size
              .height * 0.2,
          width: MediaQuery
              .of(context)
              .size
              .width,
        ),

        Container(), // Required some widget in between to float AppBar



        Positioned( // To take AppBar Size only
          top: 100.0,
          left: 20.0,
          right: 20.0,
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Builder(
              builder: (context) => IconButton(
                  icon: Icon(Icons.menu)
                  , onPressed: () => Scaffold.of(context).openDrawer()
              ),
            ),

            primary: false,
            title: TextField(
                decoration: InputDecoration(
                    hintText: "Tìm kiếm",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.red), onPressed: () {},),
              IconButton(icon: Icon(Icons.notifications, color: Colors.red),
                onPressed: () {},)
            ],
          ),



        )


      ],
    );


  }
}
class Menu extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(decoration: BoxDecoration(
                color: Colors.red),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Trở thành chủ nhà'),
            ),
            ListTile(
              title: Text('Đăng nhập'),
            ),
            ListTile(
              title: Text('Đăng ký'),
            ),
            ListTile(
              title: Text('Đăng xuất '),
            )
          ],
        ),
      ),
    );
  }

}
