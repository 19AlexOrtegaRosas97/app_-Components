import 'package:flutter/material.dart';

final icons = <String,IconData>{
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'folder_open'   : Icons.folder_open,
  'donut_small'   : Icons.donut_small,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list,
};

Icon getIcon(String name){
  return Icon(icons[name], color: Colors.black);
}

 