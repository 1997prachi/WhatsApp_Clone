import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_models.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummydata.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          new SizedBox(
            height:5.0,
            width:250.0,
            child:Divider(
           // height: 10.0,
           // thickness: 3.0,
          ),
          ),
          
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummydata[i].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: new Text(
                    dummydata[i].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: new Text(
                    dummydata[i].date,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[500],
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top:5.0),
              child: Text(dummydata[i].message,
              style: TextStyle(fontSize: 15.0,
              color: Colors.grey[500],
              ),
              ),
            ), 
            
            //isThreeLine:true,
          )
        ],
      ),
    );
  }
}
