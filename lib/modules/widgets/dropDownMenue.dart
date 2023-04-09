import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
BuildPopMenuButton() {
  return PopupMenuButton(
      iconSize: 27,
      itemBuilder: (context) =>  [
            PopupMenuItem(child: Text('New groub',style:BuildTextStyle()),),
            PopupMenuItem(child: Text('New broadcast',style:BuildTextStyle()),),
            PopupMenuItem(child: Text("WhatsApp web",style:BuildTextStyle()),),
            PopupMenuItem(child: Text('starred massage',style:BuildTextStyle())),
            PopupMenuItem(child: Text('Setting',style:BuildTextStyle())),
        ]);
}
 // ignore: non_constant_identifier_names
 BuildTextStyle(){
  return const TextStyle(fontSize: 17,fontWeight: FontWeight.w500) ;
}