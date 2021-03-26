import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.teal[900],
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[900],
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    
    );
  }
  
  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.teal[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            title: Text('Danger', style: TextStyle(color: Colors.white)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Warning hacking detectec', style: TextStyle(color: Colors.white)),
                Image.asset('assets/cheems.png')
                //FlutterLogo(size: 100.0)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Evitar', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ceder', style: TextStyle(color: Colors.red)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }
  
}
