import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  final fontStyleW = new TextStyle(color: Colors.white, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Avatar Page', style:fontStyleW),
        backgroundColor: Colors.black,
      ),
    );
  }
}