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
               backgroundImage: NetworkImage('https://avatars0.githubusercontent.com/u/35353333?s=460&u=58ff2f7d762d6a047bdfa0eee4142827a97debaf&v=4'),
               radius: 26.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('AO'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body:Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/cargando.gif'), 
          image: NetworkImage('https://i2.wp.com/tintachida.com/wp-content/uploads/2017/01/ganadores-concurso.jpg?resize=999%2C603&ssl=1'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
        ) ,
    );
  }
} 