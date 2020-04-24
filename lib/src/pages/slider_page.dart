import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 250.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column( 
          children: <Widget>[
            _crearSlider(),
            _chekBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      min: 20.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: (_bloquearCheck) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
      image: NetworkImage(
          'https://www.stickpng.com/assets/images/584e837f6a5ae41a83ddee3b.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
      placeholder: AssetImage('assets/cargando.gif'),
      fadeInDuration: Duration(milliseconds: 200),
    );
  }

  Widget _chekBox() {
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );*/   
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );


  }

  Widget _crearSwitch() {
    return  SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }
}
