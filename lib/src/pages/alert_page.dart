import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  
  final fontStyleW = new TextStyle(color: Colors.white, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Alert Page', style:fontStyleW),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}