import 'package:flutter/material.dart';
import 'package:app_componentes/src/providers/menu_provider.dart'; 
//Libreria para utilizar los Future builder para que cuando haga una promesas este componente se carge y no parezca que esta bugeada la app
//una vez que carga la promesa se llena el componente con los datos.
import 'package:app_componentes/src/utils/icono_strin_util.dart';

class HomePage extends StatelessWidget {
  final fontStyleW = new TextStyle(color: Colors.white, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Componentes')),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      }
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [ ];

    data.forEach((opc){
      final widgetTemp = ListTile(
        title: Text(opc['texto'], style: fontStyleW),
        leading: getIcon(opc['icon']),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
        onTap: (){
          Navigator.pushNamed(context, opc['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
