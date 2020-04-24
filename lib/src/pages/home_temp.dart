import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['One', 'Two', 'Three', 'Four', 'Five','Six','Seven','Eight','Nine','Ten','Eleven','Twelve','Thirteen','Fourteen'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Componentes Temp'),
        ),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  /*List<Widget> _crearItems() {
    List<Widget> listaWidgets = new List<Widget>();

    for (String opc in opciones) {
      final tmpWidget = ListTile(
        title: Text(opc),
      );

      listaWidgets..add(tmpWidget)..add(Divider());
    }

    return listaWidgets;
  }*/

  List<Widget> _crearItemsCorta(){

    return opciones.map( (String item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            leading: Icon(Icons.computer),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

  }
}
