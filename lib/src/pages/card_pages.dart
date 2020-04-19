import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final fontStyleW = new TextStyle(color: Colors.white, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page', style: fontStyleW),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }

   Widget _cardTipo1() {
      return Card(
        color: Colors.blueGrey[200],
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
                  onPressed: (){},
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.face),
                  onPressed: (){
                    
                  },
                  iconSize: 30.0,
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ],
          ),
      );
   }
}
