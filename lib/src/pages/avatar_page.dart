import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/place.jpg'),
              radius: 25.0,
            ),
            
          ),
          Container(
            
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('EM'),
              backgroundColor: Colors.orange,
            ),
            
          )
        ],
      ),
      
      body: Center(
          child: Container(
        margin: EdgeInsets.all(12.0),
        child: FadeInImage(
          image: NetworkImage('https://www.wired.com/wp-content/uploads/images_blogs/wiredscience/2012/04/elon-musk-portrait.jpg'),
          placeholder: AssetImage('assets/load.gif'),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        backgroundColor: Colors.teal[900],
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      
    );
  }
}
