import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Camera_Screen.dart';
import 'Screens/Chats_Screen.dart';
import 'Screens/Status_Screen.dart';
import 'package:whatsapp_clone/Screens/Calls_Screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // //TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    //initialIndx=>it is in default mode(chat) and l=>4 we have 4 tabs to open
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          //tabs is a required property of tab bar
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.camera_alt)),
            new Tab(
              text: 'CHATS',
            ),
            new Tab(
              text: 'STATUS',
            ),
            new Tab(
              text: 'CALLS',
            ),
          ],
        ),
        actions: <Widget>[
         new Icon(Icons.search),
         new Padding(padding:const EdgeInsets.symmetric(horizontal:6.0)),
          new Icon(Icons.more_vert),
          
        ],
      ),
      //now,i want gesture of tabs that i can swap it quickly
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,
        color: Colors.white,
        ),
        onPressed: () {
          print('chats are opend');
        },
      ),
    );
  }
}
