import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final fontWhithe = new TextStyle(color: Colors.white);
  final opciones = ['One', 'Two', 'Three', 'Four', 'Five','Six','Seven','Eight','Nine','Ten','Eleven','Twelve','Thirteen','Fourteen'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text('Componentes Temp'),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> listaWidgets = new List<Widget>();

    for (String opc in opciones) {
      final tmpWidget = ListTile(
        title: Text(opc, style: fontWhithe),
      );

      listaWidgets..add(tmpWidget)..add(Divider());
    }

    return listaWidgets;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map( (String item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item, style: fontWhithe),
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
