import 'package:flutter/material.dart';

final opciones = ['Raul', 'Fenix', 'German', 'Aldo', 'Ezequiel'];

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  /*
  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }
  */
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Contacto registrado'),
            leading: Icon(Icons.phone_iphone),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
