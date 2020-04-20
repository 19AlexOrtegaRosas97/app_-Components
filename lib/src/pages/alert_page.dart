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
          color: Colors.blueGrey[600],
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () {
            mostrarAlert(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, //para poder cerrar alerta al tocar afuera
      builder: (context) {
        //crear el elemento

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          title: Text('Titulooo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(
                size: 100.0,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancelar'),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
