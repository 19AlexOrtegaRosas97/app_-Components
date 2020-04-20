import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      color: Colors.blueGrey[200],
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),//Circular el card
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Alejandro Ortega Rosas'),
            subtitle: Text('CEO: Gugu'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.videogame_asset),
                onPressed: () {},
                iconSize: 30.0,
              ),
              IconButton(
                icon: Icon(Icons.face),
                onPressed: () {},
                iconSize: 30.0,
              ),
              SizedBox(width: 10.0),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      color: Colors.blueGrey[200],
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://syndlab.com/files/view/5db9b150252346nbDR1gKP3OYNuwBhXsHJerdToc5I0SMLfk7qlv951730.jpeg'),
            placeholder: AssetImage('assets/cargando.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Paisaje Hermoso')
            ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
          )
        ],   
      ),
    );
  }
}
